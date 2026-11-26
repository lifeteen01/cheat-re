from pathlib import Path
import evidence as E,re,json,struct,hashlib,subprocess
# Explicit assembly/leaf ranges; no pdata entry is claimed for these.
spans={'03_stack/executor_exact.asm':(0x3cdbd4,0x3cddf0),'03_stack/restore_exact.asm':(0x3cdbba,0x3cdbd4),'03_stack/allocator_thunks_exact.asm':(0x38a3c4,0x38a3d4),'04_esp/culling_menu_exact.asm':(0x339b3b,0x339ba1),'04_esp/team_stub_exact.asm':(0x2cd32c,0x2cd32f)}
for name,(lo,hi) in spans.items():
 ls=[x for x in E.lines if lo<=x[0]<hi];out=['; explicit RVA span 0x%x..0x%x; not inferred from pdata'%(lo,hi)]
 for i,(a,t,tag) in enumerate(ls):
  end=ls[i+1][0] if i+1<len(ls) else hi
  out.append('%06x  %-30s %s%s'%(a,E.img[a:end].hex(' '),t,tag))
 (E.OUT/name).write_text('\n'.join(out)+'\n')
# Missing short getter: independent literal XOR derivation, never execute sample.
raw=bytes.fromhex('63 77 7d 65 68 57 44 3e');dec=bytes(b^(0x37+i) for i,b in enumerate(raw))
(E.OUT/'01_hooks/TOD_Sky_getter.txt').write_text('getter RVA 0x2f6b7c copies immediate '+raw.hex(' ')+'; decrypt consumer 0x2e3614.\nXOR key 0x37+i (8 bytes): '+repr(dec)+'\nCallsite 0x315e8a -> getter; 0x315e92 -> decryptor; resulting class argument at 0x315e97.\n')
# Complete dead-key index.
dead={k:v for k,v in E.cfg.items() if not v['users']}
(E.OUT/'05_server/dead_config_keys.json').write_text(json.dumps(dead,indent=2)+'\n')
# Bounded negative string searches; not a whole-program absence proof.
patterns=['RenderPipelineManager','UniversalRenderPipeline|URP','HDRenderPipeline|HDRP','AddCommandBuffer|RemoveCommandBuffer|CameraEvent','D3D11|DXGI|Present','DisablePlayerCulling','UnityFS']
out=[]
for pat in patterns:
 out.append('PATTERN '+pat)
 matches=[l for l in (E.D/'static/cheat_decstr.txt').read_text().splitlines() if re.search(pat,l,re.I)]
 out+=matches or ['NO MATCH in supplied decoded string inventory']
(E.OUT/'02_rendering/string_searches.txt').write_text('\n'.join(out)+'\n')
# Re-disassemble representative ranges directly from the read-only bytes, offline.
for label,lo,hi in [('installers',0x2ea90c,0x2eaac0),('setup',0x3162ee,0x3164fc),('spoof',0x3cdbba,0x3cddf0),('team_stub',0x2cd32c,0x2cd33b),('desync_gate',0x32cf47,0x32cffe)]:
 p=E.OUT/('raw_'+label+'.asm')
 cmd=['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','-w','--start-address='+str(lo),'--stop-address='+str(hi),str(E.D/'unpacked/cheat.unpacked.dll')]
 r=subprocess.run(cmd,text=True,capture_output=True,check=True);p.write_text('COMMAND: '+' '.join(cmd)+'\n'+r.stdout)
# Embedded bundle signatures (no decompression and no code execution).
occ=[];pos=0
while True:
 pos=E.img.find(b'UnityFS\x00',pos)
 if pos<0:break
 occ.append(pos);pos+=1
(E.OUT/'02_rendering/embedded_bundle_headers.txt').write_text('\n'.join('RVA 0x%x: %r'%(p,E.img[p:p+64]) for p in occ)+'\n')
print('Dead keys:',len(dead),'UnityFS headers:',len(occ),'TOD_Sky:',repr(dec))
