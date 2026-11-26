import json
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');specs=json.loads((root/'dump_analysis/semantic_reconstruction/unity_backend/cache_specs.json').read_text())
lines=['// [C] Generated from DLL-checked pdata bodies; see unity_backend/cache_specs.json.','static const UnityCacheSpec cache_specs[]={']
for s in specs:
 w=s['wrapper'];resolver=s['resolver'];
 if w==0x375abc:s['target']=0x402c18
 ss=[p[1] for p in s['strings']];ns=cl=method=param='';count=index=-1
 if w in [0x376154,0x376084,0x3b4d28]:resolver=0x3caed0;method=ss[0];cl=ss[1]
 elif w==0x373378:resolver=0x33416c;ns,method,cl=ss;count=1;index=0
 elif w==0x375c08:method=ss[2]
 elif resolver==0x333bf4:
  count={0x373138:1,0x375abc:2,0x3af424:2,0x3af54c:2,0x3b1980:0,0x3b2004:1,0x3b3614:6,0x3b383c:0,0x3b39dc:1,0x3b3c90:1,0x3b40d0:1}.get(w,-1)
  ns,*rest=ss
  if len(rest)==3:param,method,cl=rest
  else:method,cl=rest
 elif resolver==0x3349ac:method,ns,cl=ss
 elif resolver==0x3b4d28:
  method=ss[0] if ss else ({0x3b3798:'Unity.Collections.LowLevel.Unsafe.UnsafeUtility::PinSystemObjectAndGetAddress',0x3b3e5c:'UnityEngine.Mesh::SetAllSubMeshesAtOnceFromNativeArray_Injected'}[w])
 elif w==0x3b45c4:resolver=0x333a2c
 elif w==0x3b4824:resolver=0x3b106c;ns='UnityEngine.Rendering';cl='RenderTargetIdentifier';method='.ctor';param='Texture';count=1;index=0
 elif resolver in [0x2dee4c,0x2cc164,0x2cc174,0x2cc16c,0x3339ec,0x333a24,0x2ee70c,0x3339dc]:pass
 else:
  if not s['signature']:continue
 fields=[f'0x{w:x}',f'0x{s["flags"]:x}',f'0x{s["target"]:x}',f'0x{s["context"]:x}',f'0x{resolver:x}',f'0x{s["signature"]:x}',json.dumps(ns),json.dumps(cl),json.dumps(method),json.dumps(param),str(count),str(index)]
 lines.append('    {'+','.join(fields)+'},')
lines.append('};')
(root/'source/reconstructed/unity_backend_cache_specs.inc').write_text('\n'.join(lines)+'\n')
