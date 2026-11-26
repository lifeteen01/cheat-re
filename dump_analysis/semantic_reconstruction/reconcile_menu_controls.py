"""Track later implementations of the frozen controls handback's 26 local roots.

This is an explicit analyst mapping, not name-based semantic-equivalence proof.
The frozen native ledger remains unchanged as historical handback evidence.
"""
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent
SOURCE = ROOT / "source/reconstructed"
historical = OUT / "menu_controls/range_branch_dependency_ledger.json"
ledger = json.loads(historical.read_text())
image = (ROOT / "dump_analysis/unpacked/cheat.unpacked.dll").read_bytes()
groups = [
    ({0x379680}, "menu_color_picker_analysis.cpp", "menu_color_picker/menu_color_picker_release.json"),
    ({0x389f18}, "menu_tooltip_analysis.cpp", "menu_tooltip/byte_audit.json"),
    ({0x38cfa4}, "imgui_windows_begin.cpp", "imgui_windows/range_branch_dependency_ledger.json"),
    ({0x38e97c}, "imgui_windows_child.cpp", "imgui_windows/range_branch_dependency_ledger.json"),
    ({0x390994, 0x390a88}, "imgui_windows_end.cpp", "imgui_windows/range_branch_dependency_ledger.json"),
    ({0x38f020, 0x391928, 0x39031c, 0x390260}, "imgui_windows_modal.cpp", "imgui_windows/range_branch_dependency_ledger.json"),
    ({0x392654}, "imgui_navigation_core.cpp", "imgui_navigation/audit.json"),
    ({0x395258, 0x395bc4}, "imgui_navigation_core.cpp", "imgui_navigation/audit.json"),
    ({0x395db8}, "imgui_navigation_scoring.cpp", "imgui_navigation/audit.json"),
    ({0x39f874, 0x3a01f4, 0x3a1148, 0x3a1244}, "draw_shapes_paths.cpp", "draw_shapes/audit.json"),
    ({0x3a1410, 0x3a2010}, "draw_shadows_controllers.cpp", "draw_shadows/audit.json"),
    ({0x3a7400}, "menu_render_bindings.cpp", "menu_controls/parent_raw_strings_verification.txt"),
    ({0x3b54ac, 0x3b54fc, 0x3b5824, 0x3b5890}, "menu_layout_channels.cpp", "menu_layout_channels/audit.json"),
    ({0x3c04d0}, "imgui_navigation_text.cpp", "imgui_navigation/audit.json"),
]
records = []
for row in ledger["remaining_direct_local_ranges"]:
    begin, end = int(row["begin"], 16), int(row["end_exclusive"], 16)
    assert hashlib.sha256(image[begin:end]).hexdigest() == row["sha256"]
    matches = [(source, evidence) for roots, source, evidence in groups if begin in roots]
    assert len(matches) == 1, row["begin"]
    source, evidence = matches[0]
    source_path, evidence_path = SOURCE / source, OUT / evidence
    assert source_path.is_file() and evidence_path.is_file()
    records.append({"begin": row["begin"], "end_exclusive": row["end_exclusive"],
                    "bytes": end - begin, "native_sha256": row["sha256"],
                    "current_status": "Concrete root controller exists; transitive/adaptation limits remain separate",
                    "implementation": str(source_path.relative_to(ROOT)),
                    "implementation_sha256": hashlib.sha256(source_path.read_bytes()).hexdigest(),
                    "evidence": str(evidence_path.relative_to(ROOT))})
record = {
    "confidence": "C: native byte provenance and build status; I: explicit cross-module coverage mapping",
    "historical_ledger": str(historical.relative_to(ROOT)),
    "historical_root_count": len(records), "historical_bytes": sum(x["bytes"] for x in records),
    "records": records,
    "current_combined_checkpoints": ["layout_channels_integrated_sources.json", "layout_channels_sanitizer_sources.json"],
    "remaining_scope": [
        "Active text editor3c0538..3c2a7f and input queue38cd28..38cdc2",
        "Native generic type/flag/format specializations remain in module ledgers",
        "Owned storage/allocator ABI, copied runtime data and broader independent review remain explicit",
        "This mapping does not establish full transitive closure or live ImGui/game compatibility"
    ]
}
(OUT / "menu_controls_current_reconciliation.json").write_text(json.dumps(record, indent=2) + "\n")
print(f"PASS mapping {len(records)} historical roots / {record['historical_bytes']} bytes")
