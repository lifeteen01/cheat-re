from pathlib import Path
import importlib.util
import json
import os
import subprocess

directory = Path(__file__).resolve().parent
root = directory.parents[3]
specification = importlib.util.spec_from_file_location("scene_build", root / "source/test_scene/build.py")
builder = importlib.util.module_from_spec(specification)
specification.loader.exec_module(builder)
builder.OUT = directory / "menu_followup_build"
record = builder.build("strict")
environment = os.environ.copy()
environment["PATH"] = str(Path(record["compiler"]["compiler"]).parent) + os.pathsep + environment["PATH"]
compiler = record["compiler"]["compiler"]
flags = record["flags"]
objects = [entry["object"] for entry in record["objects"] if Path(entry["source"]).name in {
    "esp.cpp", "frame.cpp", "menu.cpp", "menu_lifecycle_checks.cpp", "owned_client.cpp",
    "resources.cpp", "scene.cpp"} and "/source/test_scene/" in entry["source"]]
target = directory / "menu_followup_probe"
command = [compiler, *flags, "-I" + str(root / "source/reconstructed"),
           "-I" + str(root / "source/test_scene"), str(directory / "menu_followup_probe.cpp"),
           *objects, str(builder.OUT / "strict/libreconstructed.a"), "-o", str(target)]
subprocess.run(command, env=environment, check=True)
result = subprocess.run([str(target)], text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
(directory / "menu_followup_probe.log").write_text(result.stdout)
(directory / "menu_followup_probe.json").write_text(json.dumps({
    "passed": result.returncode == 0, "exit_code": result.returncode,
    "source_hashes": record["sources_before"], "probe_sha256": builder.digest(target),
    "scope": "Only authored menu lifecycle probe. No original sample execution."
}, indent=2) + "\n")
print(result.stdout, end="")
raise SystemExit(result.returncode)
