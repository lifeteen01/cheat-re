#!/usr/bin/env python3
"""Check retained owned-scene evidence against the current checkout; never run a PE."""
from pathlib import Path
import argparse
import hashlib
import json
import re
import struct


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
        "export_and_display_share_selected_order": all(
            event["exported_lists"] == event["presented_lists"] and
            len(event["exported_lists"]) == len(set(event["exported_lists"]))
            for event in events),
        "hidden_menu_excludes_window_lists": hidden["exported_lists"] == [0x40000],
        "shared_lifecycle_once_and_cold_graph_once": all(
            event["ui_preparations"] == event["ui_finalizations"] == event["full_overlay_completions"] and
            event["cold_menu_graphs"] == 1 for event in events),
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
            event["frame_status"] == 0 and event["frame_stopped_at"] == 0 and
            event["frame_submitted"] and
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
        "replay_frame_menu_35d5ac", "frame_main_menu_35fc8b", "owned_menu_cold_graph_21_pages",
        "replay_world_overlay_3098a4:complete", "owned_world_window_begin_38cfa4",
        "frame_key_edge_2e89e4", "owned_menu_prepare_frame", "owned_menu_finish_frame",
        "replay_menu_page_3354b4", "replay_menu_page_35013c",
        "imgui_window_begin_38cfa4", "imgui_window_child_38e97c",
        "menu_controls_color_386438", "menu_color_popup_begin_3868be",
        "replay_world_player_overlay_30ea17", "game_runtime_wrapper:315a54",
        "project_screen_36cd20", "menu_controls_apply", "menu_color_picker_379680",
        "font_text_plain_361bcc", "font_text_draw_3a31f8", "draw_core_reserve_3a719c",
    )
    evidence_paths = {path.relative_to(ROOT).as_posix() for path in
                      (events_path, trace_path, directory / "runtime.log")}
    checks = {
        "reported_pass": built["passed"] and verified["passed"] and verified["exit_code"] == 0,
        "inputs_current": matches(built["sources_before"]) and matches(built["dependencies"]),
        "unit_set_current": expected_units == recorded_units,
        "artifact_current": matches({built["artifact"]: built["artifact_sha256"]}) and
            built["artifact_sha256"] == verified["artifact_sha256"],
        "verification_runner_current": verified["runner_sha256"] ==
            digest(ROOT / "source/test_scene/verify.py"),
        "build_record_paired": verified["build_record_sha256"] == digest(directory / "build.json"),
        "runtime_evidence_paired": set(verified["runtime_evidence"]) == evidence_paths and
            matches(verified["runtime_evidence"]),
        "captures_current": matches(verified["captures"]),
        "capture_set_current": set(verified["captures"]) == {
            path.relative_to(ROOT).as_posix() for path in (directory / "runtime").glob("*.png")},
        "traces_match_record": load(trace_path) == verified["entrypoints"],
        "required_entries_executed": all(verified["entrypoints"].get(name, 0) > 0
                                         for name in required_entries),
        "all_21_cold_page_entries": len([key for key in verified["entrypoints"]
                                         if key.startswith("owned_menu_cold_page:")]) == 21,
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


def check_pairing_regressions():
    directory = OUT / "fidelity"
    record_path = directory / "evidence_pairing_checks.json"
    record = load(record_path)
    current = matches(record["sources_before"]) and matches(record["evidence_before"]) and \
        record["sources_before"] == record["sources_after"] and \
        record["evidence_before"] == record["evidence_after"] and \
        record["runner_sha256"] == digest(directory / "check_evidence_pairing.py")
    passed = record["passed"] and bool(record["tests"]) and all(record["tests"].values()) and current
    return {"passed": passed, "inputs_current": current, "tests": record["tests"],
            "record_sha256": digest(record_path)}


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


def check_freestanding_gate():
    directory = WORK / "freestanding_gate"
    modes = {}
    for mode in ("strict", "sanitizer", "windows"):
        record = load(directory / mode / "verification.json")
        current = record["sources_before"] == record["sources_after"] and \
            matches(record["sources_before"]) and matches(record["objects"]) and matches(record["artifacts"])
        current = current and record["runtime_log_sha256"] == digest(directory / mode / "runtime.log") and \
            record["build_log_sha256"] == digest(directory / mode / "build.log")
        audited = record["executor_audit"]["passed"] and \
            record["executor_audit"]["instruction_count"] == 126 and \
            record["executor_audit"]["restore_reference_verified"]
        if mode == "windows":
            current = current and record["link_map_sha256"] == digest(directory / mode / "link.map")
            audited = audited and not record["dll_linked_archive_members"] and all(
                record["dll_imports"][key] for key in
                ("no_imported_libraries", "no_iat", "no_delay_imports", "no_tls"))
        modes[mode] = {"passed": record["passed"] and current and audited,
                       "inputs_current": current, "record_sha256": digest(directory / mode / "verification.json")}
    negative = load(directory / "audit_negative_controls.json")
    controls = negative["passed"] and matches(negative["source_hashes"]) and \
        negative["verifier_sha256"] == digest(ROOT / "source/freestanding/verify.py") and \
        negative["runner_sha256"] == digest(directory / "check_audit_mutations.py")
    cmake = load(directory / "cmake_strict/verification.json")
    cmake_current = cmake["passed"] and cmake["sources_before"] == cmake["sources_after"] and \
        matches(cmake["sources_before"]) and matches({cmake["artifact"]: cmake["artifact_sha256"]}) and \
        all(step["exit_code"] == 0 and matches({step["log"]: step["log_sha256"]}) for step in cmake["steps"])
    return {"passed": all(item["passed"] for item in modes.values()) and controls and cmake_current,
            "modes": modes, "mutation_controls_current": controls,
            "standalone_cmake_current": cmake_current,
            "scope": "Executor component only; supplied contexts; existing scene/base still ordinary and CRT-backed"}


def inspect_windows_imports():
    """Read only the freshly built authored PE, using its conventional section layout."""
    record = load(OUT / "windows/build.json")
    path = ROOT / record["artifact"]
    if digest(path) != record["artifact_sha256"]:
        raise ValueError("Windows import evidence does not match the build artifact")
    data = path.read_bytes()
    pe = struct.unpack_from("<I", data, 0x3c)[0]
    if data[:2] != b"MZ" or data[pe:pe + 4] != b"PE\0\0":
        raise ValueError("Authored Windows artifact is not a PE")
    section_count = struct.unpack_from("<H", data, pe + 6)[0]
    optional_size = struct.unpack_from("<H", data, pe + 20)[0]
    optional = pe + 24
    if struct.unpack_from("<H", data, optional)[0] != 0x20b:
        raise ValueError("Authored Windows artifact is not PE32+")
    sections = optional + optional_size
    def offset(rva):
        for index in range(section_count):
            size, start, raw_size, raw = struct.unpack_from("<IIII", data, sections + index * 40 + 8)
            if start <= rva < start + max(size, raw_size):
                relative = rva - start
                if relative >= raw_size:
                    raise ValueError("PE import RVA has no file bytes")
                return raw + relative
        raise ValueError("PE import RVA is outside sections")
    imports = []
    rva, size = struct.unpack_from("<II", data, optional + 112 + 8)
    if rva:
        for index in range(size // 20):
            descriptor = struct.unpack_from("<IIIII", data, offset(rva + index * 20))
            if not any(descriptor):
                break
            start = offset(descriptor[3])
            imports.append(data[start:data.index(b"\0", start)].decode("ascii"))
        else:
            raise ValueError("PE import descriptors lack terminator")
    crt = [name for name in imports if "msvcr" in name.lower() or "ucrt" in name.lower()]
    return {"artifact": record["artifact"], "artifact_sha256": digest(path),
            "imported_libraries": imports, "crt_imports": crt,
            "no_crt_imports_met": not crt, "no_imports_met": not imports,
            "no_crt_dependencies_met": False,
            "dependency_reason": "Scene uses standard-library/runtime facilities and static compiler runtimes",
            "scope": "Authored Windows demo PE; not an import-free internal base or original DLL"}


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
    report["evidence_pairing_regressions"] = checked(check_pairing_regressions)
    report["freestanding_gate_component"] = checked(check_freestanding_gate)
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
    report["spoof_executor"] = {"component_implemented": True,
                                 "full_context_selection_implemented": False,
                                 "scene_uses_executor": False, "live_stack_spoofing_validated": False,
                                 "scene_call_mode": "ordinary calls"}
    try:
        report["windows_imports"] = inspect_windows_imports()
    except (OSError, ValueError, KeyError, struct.error) as error:
        report["windows_imports"] = {"evidence_error": str(error), "no_crt_dependencies_met": False}
    report["overall_requested_base_complete"] = False
    report["open_requirements"] = [
        "Freestanding native context/scanner selection, live unwind validation and gate integration",
        "Freestanding no-CRT runtime and removal/verification of all imports",
        "Live game hooks, executable original-call forwarding, restoration and lifetime",
        "Actual new-pipeline Unity GPU resource/upload/submission/cleanup bindings",
        "Remaining full menu/navigation/search/assets and native frame lifecycle branches",
        "Live ESP collection/camera/object-layout/history and enabled world branches",
        "Matching GameAssembly.dll, UnityPlayer.dll, global-metadata.dat and native/game validation",
        "Original-source equivalence; no fidelity percentage is established",
    ]
    report["trace_units"] = "Owned entry/caller/boundary counters; not original instruction coverage"
    report["audit_runner_sha256"] = digest(Path(__file__).resolve())
    target = OUT / "final_audit.json"
    target.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({key: value for key, value in report.items() if key not in MODES}, indent=2))
    raise SystemExit(0 if report["owned_verification_passed"] else 1)


if __name__ == "__main__":
    main()
