from pathlib import Path
import subprocess,struct,json,re,hashlib
root=Path('/home/john/Desktop/cheat_re')
out=root/'dump_analysis/semantic_reconstruction/field_wrappers'
image=root/'dump_analysis/unpacked/cheat.unpacked.dll'
b=image.read_bytes()
rows=[]
def instructions(a,z):
 text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--start-address={a}',f'--stop-address={z}',str(image)],text=True)
 (out/f'{a:x}.asm').write_text(text)
 decoded=[]
 for line in text.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s)+)\s*(.*)',line)
  if m:
   p=int(m[1],16);raw=bytes.fromhex(m[2]);asm=m[3]
   assert b[p:p+len(raw)]==raw
   decoded.append((p,raw,asm))
 assert decoded[0][0]==a and decoded[-1][0]+len(decoded[-1][1])==z
 assert all(p+len(raw)==decoded[i+1][0] for i,(p,raw,_) in enumerate(decoded[:-1]))
 return decoded
def norm(asm):return re.sub(r'\s+',' ',asm.strip())
for x in json.loads((out.parent/'all_simple_field_candidates.json').read_text()):
 a,z=x['range'];d=instructions(a,z)
 assert [(p,norm(asm)) for p,raw,asm in d]==[(p,norm(asm)) for p,asm in x['instructions']]
 starts={p for p,_,_ in d}
 branches=[]
 for p,raw,asm in d:
  m=re.match(r'(j\w+)\s+(0x[0-9a-f]+)',asm)
  if m:assert int(m[2],16) in starts;branches.append(f'{p:x}->{m[2]}')
 rows.append(f'[C] Getter {a:#x}..{z:#x}: {len(d)} instructions all catalog bytes/operands match; branches {branches}; SHA256 {hashlib.sha256(b[a:z]).hexdigest()}')
 # Verify every declared kind/offset/sentinel against byte patterns, not load-only heuristics.
 assert bytes.fromhex('ba')+struct.pack('<I',int(x['offset'],16)) in b[a:z]
 assert d[-1][2].startswith('ret')
 if a in [0x371604,0x372220,0x37236c]:assert bytes.fromhex('83c8ff') in b[a:z]
 if a==0x372184:assert bytes.fromhex('0f97c0') in b[a:z] and b[0x28d24c:0x28d250]==bytes(4)
specs=[(0x33479c,0x33480b,0x3f9860,0x3f9858,0x3f9870,0x3339fc,0x2dda18),
(0x33480c,0x334893,0x3f9ef0,0x3f9ee8,0x3f9f00,0x3339e4,0x2d2094),
(0x3344b0,0x334528,0x3f9e00,0x3f9df8,0x3f9e10,0x333a0c,0x2cb9fc),
(0x334528,0x3345c2,0x3fa2b0,0x3fa2a8,0x3fa2c0,0x333a34,0x2cba50),
(0x334660,0x3346e7,0x3f9950,0x3f9948,0x3f9960,0x333a2c,0x2d2094),
(0x3345c4,0x33465d,0x3fa3a0,0x3fa398,0x3fa3b0,0x333a3c,0x332e8c),
(0x335140,0x3351b8,0x3f9b30,0x3f9b28,0x3f9b40,0x2ee70c,0x2cb9fc),
(0x335040,0x3350b8,0x3fa490,0x3fa488,0x3fa4a0,0x3339ec,0x2cb9fc),
(0x3351b8,0x33523e,0x3f9a40,0x3f9a38,0x3f9a50,0x3339f4,0x32b1c8)]
for a,z,flags,target,context,getter,executor in specs:
 d=instructions(a,z);starts={p for p,_,_ in d}
 comments=[int(m[1],16) for _,_,asm in d if (m:=re.search(r'# (0x[0-9a-f]+)',asm))]
 assert all(r in comments for r in [flags,target,context,0x3d5e60])
 calls=[int(m[1],16) for _,_,asm in d if (m:=re.match(r'call\s+(0x[0-9a-f]+)',asm))]
 assert getter in calls and 0x2cbd24 in calls
 assert executor in calls or d[-1][2]==f'jmp    {executor:#x}'
 # all local conditional paths and short jumps must target complete decoded instructions.
 for p,raw,asm in d:
  m=re.match(r'(j\w+)\s+(0x[0-9a-f]+)',asm)
  if m:assert int(m[2],16) in starts or (m[1]=='jmp' and int(m[2],16)==executor)
 store1=next(p for p,_,asm in d if 'DWORD PTR' in asm and asm.startswith('mov') and asm.endswith(f'# {flags:#x}') and not asm.startswith('mov    eax'))
 call1=next(p for p,_,asm in d if asm==f'call   {getter:#x}')
 assert store1<call1
 # Verify resolver result store and flag reload before bit2 test, and both commits.
 call2=next(p for p,_,asm in d if asm=='call   0x2cbd24')
 bit2=next(p for p,raw,asm in d if raw==bytes.fromhex('a802'))
 reloads=[p for p,raw,asm in d if raw[:2]==bytes.fromhex('8b05') and asm.endswith(f'# {flags:#x}')]
 assert any(call1<p<bit2 for p in reloads)
 stores=[p for p,raw,asm in d if raw[:2]==bytes.fromhex('8905') and asm.endswith(f'# {flags:#x}')]
 assert len(stores)==2 and stores[0]<call1 and bit2<stores[1]<call2
 dispatcher_loads=[p for p,_,asm in d if asm.startswith('mov    rcx,') and asm.endswith('# 0x3d5e60')]
 assert len(dispatcher_loads)==2 and bit2<dispatcher_loads[0]<stores[1] and call2<dispatcher_loads[1]
 rows.append(f'[C] Metadata wrapper {a:#x}..{z:#x}: flags {flags:#x}, target {target:#x}, context {context:#x}, getter {getter:#x}, executor {executor:#x}; full conditional branch destinations audited; SHA256 {hashlib.sha256(b[a:z]).hexdigest()}')
for a,z in [(0x2caf08,0x2caf28),(0x2dee3c,0x2dee4a),(0x3339f4,0x3339f9),(0x332d24,0x332d48),(0x334470,0x334478),(0x3333fc,0x3334a5)]:instructions(a,z)
assert b[0x33340f:0x333419]==bytes.fromhex('48bdd30e6700085651f6')
assert 0x334477+struct.unpack_from('<i',b,0x334473)[0]==0x3fa7a8
rows.append('[C] Supplemental export 3339f4 ->332d24 ->3333fc, cache334470 LEA3fa7a8, key f651560800670ed3 verified against literal bytes.')
rows.append('[C] 28 getter ranges + 9 wrapper ranges + numeric guard/add helper + supplemental export chain audited by disassembling file bytes. No copied instructions executed.')
(out/'byte_verification.txt').write_text('\n'.join(rows)+'\n')
print('\n'.join(rows))
