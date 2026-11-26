#!/usr/bin/env python3
"""Render every required unit and pass without silently closing open work."""
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parents[2]
ledger = json.loads((ROOT / "source/reconstructed/completion_ledger.json").read_text())
def link(path, label=None):
    return f"[{label or Path(path).name}]({ROOT / path})"
def cell(text):
    return text.replace("|", "\\|").replace("\n", " ")
lines = [
    "# Reconstruction progress and remaining work", "",
    f"[C] The legacy persistent reconstruction goal is {ledger['goal_state']}. [I] The latest user objective is the DLL menu and one-file offset configuration, tracked separately in source/MENU_OFFSETS_GOAL.md because the goal service cannot replace an unfinished goal. Optional exhaustive reconstruction remains backlog. [U] A passing build or fixture does not prove native Windows or in-game behavior.", "",
    f"[C] This file is rendered from {link('source/reconstructed/completion_ledger.json', 'the completion ledger')}; every required work unit and verification pass appears below. {link('dump_analysis/semantic_reconstruction/audit_completion.py', 'The completion audit')} rejects missing evidence and can enforce actual completion with `--require-complete`. [I] `translated` means an implementation exists; it remains open pending its listed review/dependencies.", "",
    "## Current milestones and findings", "",
    "[C] The three user-requested menu/profile/catalog sub-agents released their modules. The DLL now includes native General/Offsets/About controls and one versioned219-context JSON profile, with actual load/edit/save/reload and loaded-value consumers. Combined strict and ASan/UBSan pass across328 translation units and455 identical unchanged captured inputs. All135 preserved input hashes pass. Direct/CMake Windows builds and fresh Wine-host UI/pixel/profile/lifecycle tests pass. [U] Native Windows, current-game profile validity and in-game operation remain unvalidated.", "",
    f"[I] {link('source/BASE_READINESS.md', 'The minimum-base readiness audit')} distinguishes implemented/verified code, pending integration/runtime verification, missing bindings and unavailable artifacts. It records exact exports, hook/lifecycle code, callback inventory and the ordered next dependencies. Optional library/feature work is backlog. No overall completion percentage is claimed.", "",
    "[C] Follow-up review corrected `392198` from font selection to background draw-list preparation; the font comes from a later context+3c28 read. Widget updates use the first matching key before drawing vector indices. [C] Movement review corrected M1 drag/gravity mapping, M2 grenade initial velocity and M3 exact1.495 scale cap; focused strict/sanitizer and isolated-reversion regressions pass. World output now captures background lists once per native group and consumes geometry synchronously; custom ring identity and signed meter coordinates remain explicit. Expanded combined sanitizer status is tracked below. Definition+34 supplies drag and +38 supplies gravity scale; native table+4/+8 confirm that mapping (`2df2e8`, `2e37c7`, `2e3850`).", "",
    "[I] Missing copied stack/format bytes remain explicit inputs. Matching game/Unity/metadata artifacts and ABI remain unavailable after bounded input/module/memory inventory; local reconstruction continues independently. Context and spoof execution remain detection-only under the user's scope constraint.", "",
    "## All tracked implementation and dependency units", "",
    "| Work unit | Priority | Native evidence | Status | Remaining work |", "|---|---|---|---|---|",
]
for unit in ledger["units"]:
    name = unit["id"].replace("_", " ")
    if unit["implementation"]:
        name = link(unit["implementation"][0], name)
    rvas = ", ".join(f"`{r}`" for r in unit["rvas"]) or "[I] cross-domain/artifact scope"
    remaining = "; ".join(unit["remaining_ranges_or_dependencies"]) or ("No remaining local work in this catalog; external ABI is tracked separately." if unit["status"] == "verified" else "No additional range recorded; review status still controls completion.")
    priority = unit.get('current_priority', 'comprehensive reconstruction').replace('_', ' ')
    lines.append(f"| [I] {name} | [I] {priority} | {rvas} | [{unit['confidence']}] {unit['status']} | {cell(remaining)} |")
lines.extend(["", "## All verification passes", "", "| Pass | Status | Evidence and limits |", "|---|---|---|"])
for item in ledger["passes"]:
    note = item.get("scope_note", "Required before completion.")
    evidence = "; ".join(link(p) for p in item.get("verification", []))
    lines.append(f"| [I] {item['id'].replace('_', ' ')} | [{item['confidence']}] {item['status']} | {cell(note)} {evidence} |")
lines.extend([
    "", "## Evidence and limits", "",
    f"[C] The {link('dump_analysis/semantic_reconstruction/artifact_inventory.json', 'filename/module inventory')} and {link('dump_analysis/semantic_reconstruction/memory_artifact_inventory.json', 'bounded dump-memory scan')} found no identified matching GameAssembly/UnityPlayer/global-metadata artifact. [U] Header-erased, encrypted or uncaptured images are not excluded. Missing ABI/runtime behavior cannot be invented.", "",
    f"[C] The {link('source/reconstructed/world_esp_reconstruction.md', 'world range ledger')} accounts for 114,954 root bytes and 101 append sites. The {link('source/reconstructed/hook_setup_reconstruction.md', 'hook setup ledger')} covers the native initializers/loot folds. The {link('source/reconstructed/native_pe_reconstruction.md', 'literal PE reader ledger')} keeps native acquisition separate from defensive PE helpers. [U] Coverage ledgers do not prove unimplemented transitive callees.", "",
    f"[C] {link('source/reconstructed/trajectory_cache_reconstruction.md', 'Trajectory cache')}, {link('source/reconstructed/interaction_backend_reconstruction.md', 'interaction wrappers')} and {link('source/reconstructed/composition_reconstruction.md', 'typed failure composition')} record the latest parent changes. [U] Broader movement/projectile/aim/rendering/registry/cache semantic reviews remain controlled by the open units/passes above.", "",
    f"[I] Build commands are in {link('source/reconstructed/README.md', 'the package README')}. Output hashes/index are refreshed by `finalize.py`; a checkpoint hash pass does not mark the reconstruction complete.", "",
])
(ROOT / "source/PROGRESS.md").write_text("\n".join(lines))
print(f"Rendered {len(ledger['units'])} units and {len(ledger['passes'])} passes; goal={ledger['goal_state']}")
