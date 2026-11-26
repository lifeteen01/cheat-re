from pathlib import Path
import json,os,subprocess,sys
root=Path(__file__).resolve().parents[4]
directory=Path(__file__).resolve().parent
record=json.loads((root/'dump_analysis/semantic_reconstruction/test_scene/strict/build.json').read_text())
environment=os.environ.copy(); environment['PATH']=str(Path(record['compiler']['compiler']).parent)+os.pathsep+environment['PATH']
common=[record['compiler']['compiler'],*record['flags'],'-I'+str(root/'source/reconstructed'),'-I'+str(root/'source/test_scene')]
if '--compile' in sys.argv: subprocess.run([*common,'-c',str(root/'source/test_scene/menu.cpp'),'-o',str(directory/'menu.o')],env=environment,check=True)
subprocess.run([*common,'-c',str(root/'source/reconstructed/menu_tooltip_analysis.cpp'),'-o',str(directory/'tooltip.o')],env=environment,check=True)
objects=[str(directory/'tooltip.o')]+[entry['object'] for entry in record['objects'] if entry['source'].endswith('/source/test_scene/resources.cpp')]
subprocess.run([*common,str(directory/'probe.cpp'),str(directory/'menu.o'),*objects,str(root/'dump_analysis/semantic_reconstruction/test_scene/strict/libreconstructed.a'),'-o',str(directory/'probe')],env=environment,check=True)
result=subprocess.run([str(directory/'probe')],text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
(directory/'probe.log').write_text(result.stdout)
print(result.stdout,end='');sys.exit(result.returncode)
