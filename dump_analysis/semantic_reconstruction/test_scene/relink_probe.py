from pathlib import Path
import json,os,subprocess
root=Path.cwd(); out=root/'dump_analysis/semantic_reconstruction/test_scene'
b=json.loads((out/'strict/build.json').read_text()); env=os.environ.copy(); env['PATH']=str(root/'dump_analysis/semantic_reconstruction/toolchain/usr/bin')+os.pathsep+env['PATH']
objects=[o['object'] for o in b['objects'] if Path(o['source']).parent==root/'source/test_scene' and Path(o['source']).name!='host.cpp']
subprocess.run([b['compiler']['compiler'],*b['flags'],'-I'+str(root/'source/test_scene'),'-I'+str(root/'source/reconstructed'),str(out/'integration_probe.cpp'),*objects,str(out/'strict/libreconstructed.a'),'-o',str(out/'integration_probe')],check=True,env=env)
with (out/'integration_probe.log').open('w') as log: subprocess.run([str(out/'integration_probe')],stdout=log,stderr=subprocess.STDOUT,check=True)
