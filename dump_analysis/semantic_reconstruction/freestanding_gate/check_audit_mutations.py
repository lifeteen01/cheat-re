"""Mutate authored assembly copies; disassemble them only, never execute them."""
from pathlib import Path
import importlib.util
import json
import os
import subprocess

OUT = Path(__file__).resolve().parent
ROOT = OUT.parents[2]
verifier = ROOT / "source/freestanding/verify.py"
spec = importlib.util.spec_from_file_location("gate_verify", verifier)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
record = json.loads((OUT / "strict/verification.json").read_text())
if not record["passed"] or any(module.digest(ROOT / p) != h for p, h in record["sources_before"].items()):
    raise ValueError("Run current strict verification before audit controls")
command = next(c for c in record["commands"] if "-c" in c and any(p.endswith("gate_x64.S.s") for p in c))
original = Path(command[command.index("-c") + 1]).read_text()
env = os.environ.copy()
env["PATH"] = str(Path(command[0]).parent) + os.pathsep + env["PATH"]
tests = {}
for name, old, new in (("thread_offset", "[rsp], 0x21", "[rsp], 0x22"),
                       ("branch_destination", "je .L3cdd24", "je .L3cdd36"),
                       ("restore_reference", "[rip+re_gate_restore_3cdbba]", "[rip+re_gate_execute_3cdbd4]")):
    if old not in original: raise ValueError("Missing mutation point: " + name)
    source, obj = OUT / (name + ".s"), OUT / (name + ".o")
    source.write_text(original.replace(old, new, 1))
    compile_command = list(command)
    compile_command[compile_command.index("-c") + 1] = str(source)
    compile_command[compile_command.index("-o") + 1] = str(obj)
    subprocess.run(compile_command, env=env, check=True)
    try:
        module.executor_audit(Path("/usr/bin/objdump"), obj, env)
    except ValueError as error:
        tests[name] = {"rejected": True, "reason": str(error)}
    else:
        tests[name] = {"rejected": False}
result = {"passed": all(t["rejected"] for t in tests.values()), "tests": tests,
          "verifier_sha256": module.digest(verifier), "runner_sha256": module.digest(Path(__file__)),
          "source_hashes": record["sources_before"], "mutated_objects_executed": False}
(OUT / "audit_negative_controls.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
raise SystemExit(0 if result["passed"] else 1)
