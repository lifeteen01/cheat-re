#!/usr/bin/env python3
"""Check completion records without converting pending work into claimed completion."""
from pathlib import Path
from collections import Counter
import json
import sys

ROOT = Path(__file__).resolve().parents[2]
ledger = json.loads((ROOT / "source/reconstructed/completion_ledger.json").read_text())
closed = {"verified", "scoped_complete"}
unit_states = closed | {"pending", "in_progress", "translated", "inventory_required", "audit_required", "artifact_required"}
pass_states = {"pending", "in_progress", "passed", "failed"}
issues = []
ids = set()
for unit in ledger["units"]:
    if unit["id"] in ids:
        issues.append("duplicate unit " + unit["id"])
    ids.add(unit["id"])
    if unit["status"] not in unit_states:
        issues.append("unknown unit status: " + unit["id"])
    for name in unit["implementation"]:
        if not (ROOT / name).is_file():
            issues.append("missing implementation " + name)
    for name in unit["verification"]:
        if not (ROOT / name).is_file() or not (ROOT / name).stat().st_size:
            issues.append("missing/empty verification " + name)
    if unit["status"] == "scoped_complete" and not unit.get("scope_justification"):
        issues.append("scoped completion without explicit justification: " + unit["id"])
    if unit["status"] == "verified":
        if not unit["implementation"] or not unit["verification"]:
            issues.append("verified without implementation/evidence: " + unit["id"])
        if unit["remaining_ranges_or_dependencies"]:
            issues.append("verified despite outstanding required work: " + unit["id"])
pass_ids = set()
for item in ledger["passes"]:
    if item["id"] in pass_ids:
        issues.append("duplicate pass " + item["id"])
    pass_ids.add(item["id"])
    if item["status"] not in pass_states:
        issues.append("unknown pass status: " + item["id"])
    if item["status"] == "passed":
        if not item.get("verification"):
            issues.append("pass without evidence: " + item["id"])
        for name in item.get("verification", []):
            path = ROOT / name
            if not path.is_file() or not path.stat().st_size:
                issues.append("missing/empty pass evidence " + name)
pending = [unit["id"] for unit in ledger["units"] if unit["required"] and unit["status"] not in closed]
pending_passes = [item["id"] for item in ledger["passes"] if item["status"] != "passed"]
result = {"goal_state": ledger["goal_state"], "unit_status_counts": dict(Counter(unit["status"] for unit in ledger["units"])),
          "required_open_units": pending, "open_passes": pending_passes, "issues": issues,
          "complete": not pending and not pending_passes and not issues}
(Path(__file__).resolve().parent / "completion_audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({key: value for key, value in result.items() if key != "required_open_units"}, indent=2))
if issues or ("--require-complete" in sys.argv and not result["complete"]):
    raise SystemExit(1)
