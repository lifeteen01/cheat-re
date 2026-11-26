#!/usr/bin/env python3
"""Check retained owned-scene evidence against the current checkout; never run a PE."""
from pathlib import Path
import argparse
import hashlib
import json
import re


ROOT = Path(__file__).resolve().parents[2]
WORK = ROOT / "dump_analysis/semantic_reconstruction"
OUT = WORK / "test_scene"
MODES = ("strict", "sanitizer", "windows")


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load(path):
    return json.loads(path.read_text())


def matches(records):
    return all((ROOT / name).is_file() and digest(ROOT / name) == expected
               for name, expected in records.items())


def observed_changes(events):
    stages = {event["stage"]: event for event in events}
    baseline = stages["01_menu_and_esp"]
    disabled = stages["02_checkbox_esp_off"]
    color = stages["03_color_changes_esp"]
    pasted = stages["03b_hex_paste_changes_esp"]
    filtered = stages["04_slider_filters_esp"]
    hidden = stages["05_hotkey_menu_hidden"]
    camera = stages["06_camera_moved"]
    entities = stages["07_entities_moved"]
    offsets = stages["08_offset_reload_changes_labels"]
    checks = {
        "baseline_boxes_and_native_name_passes": baseline["boxes"] == 3 and
            baseline["names"] == 3 and baseline["name_raster_passes"] == 27 and
            baseline["name_font_size"] == 10,
        "checkbox_suppresses_output": disabled["boxes"] == disabled["names"] == 0,
        "picker_changes_geometry_not_projection": color["bounds"] == baseline["bounds"] and
            color["esp_geometry_hash"] != baseline["esp_geometry_hash"],
        "editor_paste_changes_color_and_geometry": pasted["rgba"] == [1, 0, 0, 1] and
            pasted["bounds"] == color["bounds"] and
            pasted["esp_geometry_hash"] != color["esp_geometry_hash"],
        "recovered_color_popup_lifecycle": not baseline["color_popup"] and color["color_popup"] and
            pasted["color_popup"] and not filtered["color_popup"],
        "submission_and_display_share_selected_order": all(
            event["submitted_lists"] == event["presented_lists"] and
            len(event["submitted_lists"]) == len(set(event["submitted_lists"]))
            for event in events),
        "hidden_menu_excludes_window_lists": hidden["submitted_lists"] == [0x40000],
        "menu_consumes_recovered_io": all(
            event["ui_delta"] == event["recovered_io_delta"] and
            event["ui_mouse"] == event["recovered_io_mouse"]
            for event in events if event["menu_visible"]),
        "copied_client_install_supplies_saved_target": all(
            event["owned_client_cached_methods"] > 0 and event["owned_client_original"] != 0 and
            event["owned_client_original"] == event["owned_client_record_original"] and
            event["owned_client_detour"] == event["owned_client_method_after"] ==
            event["owned_client_module"] + 0x2f8574 and event["ordinary_context_boundary"]
            for event in events),
        "slider_filters_and_restores_entities": filtered["distance"] == 10 and
            filtered["boxes"] == filtered["names"] == 0 and hidden["boxes"] == 4,
        "camera_and_entities_change_projection": camera["bounds"] != hidden["bounds"] and
            entities["bounds"] != camera["bounds"],
        "offsets_change_actual_labels": offsets["labels"] and
            all(label.startswith("Alt ") for label in offsets["labels"]),
        "resize_stages_exist": "09_small_clipped_scene" in stages and "10_resized_scene" in stages,
        "owned_frame_submission_not_native_gpu": all(event["frame_finalized"] and
            event["frame_vertices"] > 0 and event["frame_indices"] > 0 and
            not event["gpu_executed"] for event in events),
    }
    return {key: bool(value) for key, value in checks.items()}


def check_mode(mode):
    directory = OUT / mode
    built = load(directory / "build.json")
    verified = load(directory / "verification.json")
    events_path = directory / "runtime/events.jsonl"
    events = [json.loads(line) for line in events_path.read_text().splitlines() if line]
    trace_path = directory / "runtime/entrypoints.json"
    transcript = (directory / "runtime.log").read_text()
    counts = re.search(r"frames=(\d+) platform_paints=(\d+)", transcript)
    scene_files = set(path.relative_to(ROOT).as_posix()
                      for path in (ROOT / "source/test_scene").glob("*.cpp"))
    reconstructed_files = {"source/reconstructed/" + name for name in
                           (ROOT / "source/test_scene/reconstruction_sources.txt").read_text().splitlines()
                           if name}
    expected_units = scene_files | reconstructed_files
    recorded_units = {name for name in built["sources_before"] if name.endswith(".cpp")}
    changed = observed_changes(events)
    required_entries = (
        "replay_unity_frame_2f8574", "FrameLifecycle::recorded_submission",
        "replay_menu_page_3354b4", "replay_menu_page_35013c",
        "imgui_window_begin_38cfa4", "imgui_window_child_38e97c",
        "menu_controls_color_386438", "menu_color_popup_begin_3868be",
        "replay_world_player_overlay_30ea17", "game_runtime_wrapper:315a54",
        "project_screen_36cd20", "menu_controls_apply", "menu_color_picker_379680",
        "font_text_plain_361bcc", "font_text_draw_3a31f8", "draw_core_reserve_3a719c",
    )
    checks = {
        "reported_pass": built["passed"] and verified["passed"] and verified["exit_code"] == 0,
        "inputs_current": matches(built["sources_before"]) and matches(built["dependencies"]),
        "unit_set_current": expected_units == recorded_units,
        "artifact_current": matches({built["artifact"]: built["artifact_sha256"]}) and
            built["artifact_sha256"] == verified["artifact_sha256"],
        "captures_current": matches(verified["captures"]),
        "capture_set_current": set(verified["captures"]) == {
            path.relative_to(ROOT).as_posix() for path in (directory / "runtime").glob("*.png")},
        "traces_match_record": load(trace_path) == verified["entrypoints"],
        "required_entries_executed": all(verified["entrypoints"].get(name, 0) > 0
                                         for name in required_entries),
        "observed_output_checks": all(changed.values()),
        "frame_counts_present": counts is not None,
    }
    if mode == "windows":
        checks["wine_not_mislabelled_native"] = verified["native_windows_validated"] is False and \
            verified["inside_rust_validated"] is False
        checks["actual_window_capture_pairs"] = all(
            verified["captures"].get(name[:-4] + "_window.png") == expected
            for name, expected in verified["captures"].items() if not name.endswith("_window.png"))
    return {
        "passed": all(checks.values()), "checks": checks, "observed_changes": changed,
        "frames": int(counts[1]) if counts else None,
        "platform_paints": int(counts[2]) if counts else None,
        "png_captures": len(verified["captures"]), "translation_units": len(recorded_units),
        "artifact_sha256": built["artifact_sha256"],
        "verification_sha256": digest(directory / "verification.json"),
        "events_sha256": digest(events_path), "entrypoints_sha256": digest(trace_path),
    }


def check_full_regression(prefix, mode):
    record_path = WORK / f"{prefix}_{mode}_sources.json"
    record = load(record_path)
    unchanged = matches(record["sources_before"]) and matches(record["sources_after"])
    transcript = (ROOT / record["log"]).read_text()
    passed = record["passed"] and record["exit_status"] == 0 and unchanged and \
        "EXIT_STATUS=0" in transcript and "SOURCE_SET_UNCHANGED=True" in transcript
    return {"passed": passed, "inputs_current": unchanged,
            "translation_units": sum(name.endswith(".cpp") for name in record["sources_before"]),
            "record_sha256": digest(record_path), "log_sha256": digest(ROOT / record["log"])}


def check_originals():
    manifest = ROOT / "dump_analysis/MANIFEST.sha256"
    records = {}
    for line in manifest.read_text().splitlines():
        expected, name = line.split(maxsplit=1)
        records["dump_analysis/" + name.lstrip("*")] = expected
    return {"passed": matches(records), "entries": len(records), "manifest_sha256": digest(manifest)}


def check_cmake():
    snapshot_path = OUT / "fidelity_cmake_inputs.json"
    record = load(snapshot_path)
    verification = load(OUT / "cmake_verification.json")
    current = matches(record["sources_before"]) and matches(record["dependencies"])
    log_path = OUT / "cmake_ctest.log"
    transcript = log_path.read_text()
    artifact = ROOT / verification["artifact"]
    paired = verification["snapshot_sha256"] == digest(snapshot_path) and \
        matches({verification["artifact"]: verification["artifact_sha256"]}) and \
        all(matches({step["log"]: step["log_sha256"]}) and step["exit_code"] == 0
            for step in verification["steps"]) and verification["runner_sha256"] == \
        digest(ROOT / "source/test_scene/verify_cmake.py")
    return {"passed": verification["passed"] and current and paired and
            "100% tests passed" in transcript and "1/1 Test #1" in transcript,
            "inputs_current": current, "record_pairing_current": paired,
            "snapshot_sha256": digest(snapshot_path), "log_sha256": digest(log_path),
            "artifact_sha256": digest(artifact)}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--full-prefix", default="test_scene_fidelity_regression")
    options = parser.parse_args()
    def checked(callback):
        try:
            return callback()
        except (OSError, ValueError, KeyError, TypeError) as error:
            return {"passed": False, "evidence_error": str(error)}
    report = {mode: checked(lambda mode=mode: check_mode(mode)) for mode in MODES}
    report.update({"full_regression_" + mode:
                   checked(lambda mode=mode: check_full_regression(options.full_prefix, mode))
                   for mode in ("strict", "sanitizer")})
    report["original_inputs"] = checked(check_originals)
    report["cmake_ctest"] = checked(check_cmake)
    report["owned_verification_passed"] = all(item["passed"] for item in report.values()
                                               if isinstance(item, dict) and "passed" in item)
    report["semantic_fidelity"] = {
        "source_95_percent_established": False,
        "percentage": None,
        "reason": "No complete original-source semantic denominator or matching native runtime oracle",
        "scope": "Owned menu/ESP subset; typed camera, platform and resource boundaries are not native proof",
    }
    report["native_windows"] = {"validated": False}
    report["inside_rust"] = {"validated": False, "game_bindings": "Needed / To do"}
    report["required_inputs"] = {name: "Needed / To do" for name in
                                 ("GameAssembly.dll", "UnityPlayer.dll", "global-metadata.dat")}
    report["spoof_executor"] = {"implemented": False, "validated": False,
                                 "scene_call_mode": "ordinary calls"}
    report["trace_units"] = "Owned entry/caller/boundary counters; not original instruction coverage"
    target = OUT / "final_audit.json"
    target.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({key: value for key, value in report.items() if key not in MODES}, indent=2))
    raise SystemExit(0 if report["owned_verification_passed"] else 1)


if __name__ == "__main__":
    main()
