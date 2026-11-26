import copy
import importlib.util
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[4]
source = ROOT / "source/test_scene/audit.py"
specification = importlib.util.spec_from_file_location("scene_evidence_audit", source)
audit = importlib.util.module_from_spec(specification)
specification.loader.exec_module(audit)
directory = audit.OUT / "strict"
events_path = directory / "runtime/events.jsonl"
runtime_path = directory / "runtime.log"
build_path = directory / "build.json"
tracked_sources = (source, ROOT / "source/test_scene/verify.py", ROOT / "source/test_scene/host.cpp")
tracked_evidence = (events_path, runtime_path, build_path, directory / "verification.json")


def hashes(paths):
    return {str(path.relative_to(ROOT)): audit.digest(path) for path in paths}


sources_before = hashes(tracked_sources)
evidence_before = hashes(tracked_evidence)
tests = {}


def reject_replacement(name, path, check):
    original = path.read_bytes()
    try:
        path.write_bytes(original + b"\n")
        result = audit.check_mode("strict")
        tests[name] = not result["passed"] and not result["checks"][check] and \
            result["checks"]["observed_output_checks"]
    finally:
        path.write_bytes(original)
    tests[name + "_restored"] = audit.digest(path) == evidence_before[str(path.relative_to(ROOT))]


tests["baseline_passes"] = audit.check_mode("strict")["passed"]
reject_replacement("changed_event_bytes_rejected", events_path, "runtime_evidence_paired")
reject_replacement("changed_runtime_log_rejected", runtime_path, "runtime_evidence_paired")
reject_replacement("changed_build_record_rejected", build_path, "build_record_paired")
events = [json.loads(line) for line in events_path.read_text().splitlines() if line]
for field, value in (("frame_submitted", False), ("frame_status", 1), ("frame_stopped_at", 0x3924bc)):
    changed_events = copy.deepcopy(events)
    changed_events[0][field] = value
    tests[field + "_failure_rejected"] = not audit.observed_changes(changed_events)[
        "owned_frame_submission_not_native_gpu"]
for field in ("ui_preparations", "ui_finalizations", "full_overlay_completions", "cold_menu_graphs"):
    changed_events = copy.deepcopy(events)
    changed_events[0][field] = 0
    tests[field + "_failure_rejected"] = not audit.observed_changes(changed_events)[
        "shared_lifecycle_once_and_cold_graph_once"]
tests["restored_mode_passes"] = audit.check_mode("strict")["passed"]
sources_after = hashes(tracked_sources)
evidence_after = hashes(tracked_evidence)
record = {
    "passed": all(tests.values()) and sources_before == sources_after and evidence_before == evidence_after,
    "tests": tests,
    "sources_before": sources_before,
    "sources_after": sources_after,
    "evidence_before": evidence_before,
    "evidence_after": evidence_after,
    "inputs_frozen": sources_before == sources_after,
    "evidence_restored": evidence_before == evidence_after,
    "runner_sha256": audit.digest(Path(__file__)),
    "python": sys.version,
    "scope": "Owned evidence files only; temporary byte changes restored; no executable or original sample run",
}
target = Path(__file__).with_name("evidence_pairing_checks.json")
target.write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps(record, indent=2))
raise SystemExit(0 if record["passed"] else 1)
