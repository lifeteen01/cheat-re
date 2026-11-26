#!/usr/bin/env python3
"""Inventory callback contracts and the bounded existing Unity backend path.

This is source inventory, not dynamic reachability or native ABI verification.
No fixture-provided return is classified as a real game adapter.
"""
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
SOURCE = ROOT / "source/reconstructed"
callbacks = []
nonfields = []
for path in sorted(SOURCE.glob("*.hpp")):
    if any(part in path.name for part in ("_fixture", "_internal")): continue
    text = path.read_text()
    for match in re.finditer(r"std::function\s*<", text):
        depth, end = 1, match.end()
        while depth and end < len(text):
            if text[end] == "<": depth += 1
            elif text[end] == ">": depth -= 1
            end += 1
        tail = text[end:]
        declaration = re.match(r"\s+([A-Za-z_]\w*(?:\s*,\s*[A-Za-z_]\w*)*)\s*;", tail)
        line = text.count("\n", 0, match.start()) + 1
        if not declaration:
            nonfields.append({"source": str(path.relative_to(ROOT)), "line": line,
                              "declaration_context": " ".join(text[max(0, text.rfind("\n", 0, match.start())):end].split()),
                              "following_text": tail[:100].strip(),
                              "reason": "parameter, alias or non-simple field declaration; retained for explicit review"})
            continue
        structs = list(re.finditer(r"^struct\s+(\w+)[^{;]*\{", text[:match.start()], re.M))
        owner = structs[-1].group(1) if structs else "<free>"
        signature = " ".join(text[match.start():end].split())
        for name in declaration.group(1).replace(" ", "").split(","):
            excluded = name in ("observe_context", "detect_context", "context_2cbd24")
            callbacks.append({
                "interface": owner, "field": name, "signature": signature,
                "source": str(path.relative_to(ROOT)), "line": line,
                "live_binding_in_current_dll": "none; current DLL links only owned draw-core and platform code",
                "reconstruction_status": "local binder may already exist; this row is not a missing local-body finding",
                "priority": "selected Unity path" if owner in
                    ("UnityApi", "UnityMetadataAdapter", "MetadataApi", "UnityFrameApi") else "optional/backlog unless reached by selected path",
                "restriction": "detection/observation only; executable spoof context remains excluded" if excluded else None,
            })

# These entrypoints define the bounded candidate Unity bring-up path. The
# standalone Win32 owned host uses no game/Unity callbacks. A selected root
# includes its retries/resize branches, rather than counting a warm fixture.
text = (SOURCE / "unity_backend_analysis.cpp").read_text()
root_names = ["initialize_unity_backend_3b2b38", "create_unity_resources_3b337c",
              "build_unity_font_texture_3b3240", "resize_unity_target_3b1904",
              "upload_unity_geometry_3b4250", "record_unity_commands_3b1a94",
              "execute_unity_commands_3b2004", "submit_unity_draw_data_3b3028",
              "update_unity_io_3b2eec"]
def function(name):
    start = re.search(r"\b" + name + r"\([^;]*?\)\s*\{", text)
    if not start: raise RuntimeError(name)
    index, depth = start.end(), 1
    while depth:
        if text[index] == "{": depth += 1
        elif text[index] == "}": depth -= 1
        index += 1
    return text[start.start():index]
helpers = ["allocate", "managed_type", "load_asset", "component", "load_bundle", "pin"]
stages = {}
reached = set()
for name in root_names + helpers:
    body = function(name)
    operations = {int(x, 16) for x in re.findall(
        r"(?:get<[^>]+>|effect|call)\(s,a,(0x[0-9a-fA-F]+)", body)}
    operations |= {int(x, 16) for x in re.findall(r"external\(a,(0x[0-9a-fA-F]+)", body)}
    stages[name] = {"operations": [hex(x) for x in sorted(operations)],
                   "source": "source/reconstructed/unity_backend_analysis.cpp",
                   "line": text[:text.index(body)].count("\n") + 1}
    reached |= operations
# Dynamic class/type and button/asset arguments, with explicit source evidence.
dynamic = {0x2cd7f4, 0x2cea84, 0x3346e8, 0x335358, 0x375e6c, 0x376214,
           0x3af54c, 0x3af424, 0x3b2358, 0x3b27f8, 0x3b2474, 0x3b2120, 0x3b223c}
reached |= dynamic
catalog = json.loads((HERE / "runtime_callback_inventory.json").read_text())
operations = catalog["unity_operations"] if "unity_operations" in catalog else catalog.get("unity_backend_operations", [])
if not operations:
    # Preserve the earlier catalog schema without relying on an arbitrary key.
    operations = next(v for v in catalog.values() if isinstance(v, list) and v and
                      isinstance(v[0], dict) and "method_or_export" in v[0])
by_rva = {int(v["rva"], 16): v for v in operations}
for r in list(reached):
    if r in by_rva and int(by_rva[r]["resolver"], 16) in (0x3b4d28, 0x376154):
        reached.add(int(by_rva[r]["resolver"], 16))
local = {0x3926ac: "local IO state bridge; copied model exists",
         0x3a49ec: "local font atlas producer/builder exists; mapped runtime storage still needed",
         0x38cd28: "concrete editor-owned input event queue exists; runtime IO mapping still needed",
         0x3c8d4c: "actual writable texture-byte transfer; owned copy is not runtime writeback"}
selected = []
for r in sorted(reached):
    value = dict(by_rva.get(r, {"rva": hex(r), "method_or_export": local.get(r, "uncatalogued") }))
    value["minimum_path_status"] = "local implementation exists; runtime storage binding required" if r in local and r != 0x3c8d4c else "real runtime operation unimplemented"
    value["callback"] = "UnityApi.external"
    selected.append(value)

inventory = {
    "scope": "All direct std::function fields in public reconstruction headers, plus bounded current Unity-backend candidate path",
    "limits": ["Lexical inventory is not dynamic call reachability, ABI validation or proof of missing local bodies",
               "Current Windows DLL has zero game callback implementations and does not use fixture callbacks",
               "77-operation full Unity cache catalog remains runtime_callback_inventory.json; it is a superset",
               "Extra generic frame/domain/game features stay on backlog; native game-hook signature still unknown"],
    "public_callback_fields": callbacks, "nonfield_occurrences_retained": nonfields,
    "selected_existing_unity_path": {"roots": root_names, "helpers": helpers, "stages": stages,
        "dynamic_argument_operations": [hex(r) for r in sorted(dynamic)], "operations": selected,
        "additional_dependencies": [
            "Matching Client.LateUpdate identity/signature/thread/callback target from artifacts",
            "Ordinary ABI original call, game hook installation, restoration, in-flight draining and lifetime",
            "IL2CPP thread attachment, metadata/class/method enumeration, strings, allocation, array layout and exception handling",
            "Actual bundle/shader/resource data, pin handles and matching resource destruction/unpin on rollback/shutdown",
            "Validated managed/native object and input-control storage layouts",
            "Current analysis cache has detection-only context state; never return a successful dummy context for a live adapter",
            "Direct ordinary-ABI runtime adapter must be distinct from excluded spoof/executor reconstruction",
            "Authorized Windows/game validation environment"],
        "artifact_status": "Needed / To do: matching GameAssembly.dll, UnityPlayer.dll, paired global-metadata.dat"},
    "owned_host_platform_path": {"callbacks_to_implement": [], "implementation": "source/windows_base/base_dll.cpp",
        "actual_os_operations": ["GetWindowThreadProcessId", "SetWindowSubclass", "DefSubclassProc", "RemoveWindowSubclass",
            "GetClientRect", "GetCursorPos", "ScreenToClient", "GetDC", "StretchDIBits", "ReleaseDC", "GetModuleHandleW"],
        "runtime_validation": "authored owned-host lifecycle/input/pixels test passes under Wine10/Xvfb; native Windows and in-game unvalidated",
        "runtime_evidence": "dump_analysis/semantic_reconstruction/windows_base/wine_runtime/verification.json"},
    "source_hashes": {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                      for p in sorted(SOURCE.glob("*.hpp")) if "_fixture" not in p.name and "_internal" not in p.name},
}
(HERE / "minimum_path_callbacks.json").write_text(json.dumps(inventory, indent=2) + "\n")
print(json.dumps({"public_callback_fields": len(callbacks), "nonfields_retained": len(nonfields),
                  "bounded_unity_operations": len(selected), "runtime_implemented_game_callbacks": 0}, indent=2))
