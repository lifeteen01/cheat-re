#!/usr/bin/env python3
"""Initialize the explicit remaining-work ledger; do not overwrite later decisions."""
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parents[2]
target = ROOT / "source/reconstructed/completion_ledger.json"
if target.exists():
    raise SystemExit("Ledger already exists; update explicit records instead of reinitializing it")
def unit(key, area, rvas, owner, state="pending", implementation=None, notes=None):
    return {"id": key, "area": area, "rvas": rvas, "required": True, "confidence": "I",
            "status": state, "owner": owner, "implementation": implementation or [],
            "verification": [], "remaining_ranges_or_dependencies": notes or []}

units = [
    unit("main_movement", "movement", ["0x324b30..0x32911e"], "movement_main", "in_progress"),
    unit("automation", "interaction", ["0x2e6b20..0x2e890d", "0x2e91fc"], "interaction_workers", "in_progress"),
    unit("melee_farming", "interaction", ["0x2e12e0..0x2e231d"], "interaction_workers", "in_progress"),
    unit("classifier_remainder", "entities", ["0x31acd0"], "world_esp", "in_progress"),
    unit("world_draw", "entities", ["0x2fb72c..0x307637"], "world_esp", "in_progress"),
    unit("player_overlay", "entities", ["0x3098a4..0x314929"], "world_esp", "in_progress"),
    unit("game_base_helpers", "game_base", ["0x2e0e9c", "0x2e5a54", "0x367668", "0x3693b0", "0x369df4",
         "0x36a178", "0x36acb8", "0x36b288", "0x36a20c", "0x369738", "0x36a2c8", "0x369400",
         "0x36ca34", "0x36cd20", "0x36c638", "0x368cb0", "0x36b758", "0x31530c", "0x2d7e18"],
         "parent", "translated", ["source/reconstructed/game_base_analysis.cpp"],
         ["Integrate concrete helpers into existing callback contracts", "Independent semantic review and sanitizer pass"]),
    unit("sky_detour", "hooks", ["0x32f408..0x32fac3"], "unassigned"),
    unit("helicopter_aim", "aim", ["0x2fa300..0x2fabf6"], "unassigned"),
    unit("launcher_aim", "aim", ["0x317c3c..0x3185a0"], "unassigned"),
    unit("model_chams", "rendering", ["0x36a464..0x36ac75"], "unassigned"),
    unit("unity_backend", "rendering", ["0x3b2b38", "0x3b337c", "0x3b3028", "0x3b1a94", "0x3b4250", "0x3b2004"],
         "unassigned", notes=["Existing geometry/scissor calculations are concrete; resource, backend and cache bodies remain"]),
    unit("frame_integration", "rendering", ["0x2f8574..0x2f8dae"], "unassigned"),
    unit("metadata_export_adapters", "game_base", ["0x334224", "0x33416c", "0x334960", "0x3349ac", "0x334a90", "0x333d10"],
         "parent", notes=["Existing selection loops concrete; resolve remaining sample-local caches/export adapters and overload variants"]),
    unit("sample_containers", "game_base", ["0x2ef724", "0x2df608", "0x32b838", "0x32cb8c", "0x3176bc", "0x3177b4"],
         "parent", notes=["Native allocator ABI may use an explicitly justified owned-container adaptation; no fabricated lookups"]),
    unit("projectile_folded_ranges", "projectiles", ["0x32c2d9..0x32c3c4", "0x32c47f..0x32c502"], "parent"),
    unit("other_sample_local_dependencies", "cross_domain", [], "parent", "inventory_required",
         notes=["Reconcile every boundary ledger and direct callee; newly discovered required local bodies must be added as units"]),
    unit("stack_detection_scope", "stack_analysis", ["0x2cbd24", "0x2ce3dc", "0x3cdbd4", "0x3cdbba"], "parent", "audit_required",
         ["source/reconstructed/03_stack_spoof_spoofcall.cpp"],
         ["Keep executor detection-level only; close metadata/detection gaps without executable stack fabrication"]),
    unit("matching_game_artifacts", "game_base", [], "artifact_owner", "artifact_required",
         notes=["No matching GameAssembly/UnityPlayer/global-metadata filename or minidump module record identified",
                "Evidence: dump_analysis/semantic_reconstruction/artifact_inventory.json",
                "Caller semantics can be reconstructed; verified external implementations/ABI require matching artifacts"]),
]
ledger = {"schema_version": 1, "goal_state": "active", "confidence_legend": {"C": "byte/test confirmed", "I": "analyst scope/name", "U": "unresolved"},
          "completion_rule": "No required unit may remain pending, in_progress, translated, inventory_required, audit_required or artifact_required. Passing compilation alone does not close a unit.",
          "scope_constraints": ["Offline owned data only", "No sample execution, upload or IOC contact", "Spoof-call executor detection-level only"],
          "units": units,
          "passes": [{"id": key, "status": "pending", "confidence": "I"} for key in
                     ["scope_reconciliation", "native_body_translation", "transitive_dependency_resolution", "independent_semantic_audit",
                      "strict_integrated_build", "meaningful_fixtures", "integrated_sanitizers", "input_integrity", "docs_links_tags", "output_checksums"]]}
target.write_text(json.dumps(ledger, indent=2) + "\n")
print(f"Initialized {len(units)} required work units and {len(ledger['passes'])} verification passes")
