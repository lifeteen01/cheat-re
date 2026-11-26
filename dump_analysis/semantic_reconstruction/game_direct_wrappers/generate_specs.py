from pathlib import Path
import re,json
out=Path(__file__).parent;src=Path('/home/john/Desktop/cheat_re/source/reconstructed')
rows={}
for fn in ['roots.asm','closure.asm']:
 for block in (out/fn).read_text().split('; '):
  m=re.match(r'(?:roots|closure) independent pdata/next-pdata extent ([0-9a-f]+)\.\.([0-9a-f]+)',block)
  if m: rows[int(m[1],16)]=(int(m[2],16),block.splitlines()[1:])
roles={0x322580:'action',0x366c30:'action',0x366ccc:'action',0x366d7c:'action',0x366e38:'action',0x366ef0:'action',0x36817c:'object',0x36a238:'predicate',0x36b004:'action',0x36b6cc:'scalar',0x370b50:'action',0x373c60:'orientation',0x374168:'predicate',0x36a0e0:'predicate',0x36bacc:'predicate',0x36b9a0:'predicate',0x36c274:'action',0x36c0f0:'action'}
specs=[]
for r,role in roles.items():
 e,lines=rows[r]
 def one(pattern):
  found=[(int(l[:6],16),re.search(pattern,l)) for l in lines if re.search(pattern,l)]
  assert len(found)==1,(hex(r),pattern,found)
  return found[0]
 flagread,m=one(r'mov    (?:edx|ecx|r10d),DWORD PTR \[rip\+.*# 0x([0-9a-f]+)');flag=int(m[1],16)
 base,m=one(r'mov    r8,QWORD PTR \[rip\+.*# 0x3d6f00')
 _,m=one(r'add    r8,0x([0-9a-f]+)');offset=int(m[1],16)
 stores=[(int(l[:6],16),re.search(r'mov    DWORD PTR \[rip\+.*# 0x([0-9a-f]+)',l)) for l in lines if re.search(r'mov    DWORD PTR \[rip\+.*# 0x([0-9a-f]+)',l)]
 assert len(stores)==2,(r,stores)
 flagone,flagtwo=stores[0][0],stores[1][0]
 targetstore,m=one(r'mov    QWORD PTR \[rip\+.*# 0x([0-9a-f]+)');target=int(m[1],16)
 warm,m=one(r'mov    r8,QWORD PTR \[rip\+.*# 0x'+format(target,'x'))
 roots=[int(l[:6],16) for l in lines if re.search(r'mov    rcx,QWORD PTR \[rip\+.*# 0x3d5e60',l)]
 setup,m=one(r'call   0x2cbd24')
 contextline=[re.search(r'lea    rdx,\[rip\+.*# 0x([0-9a-f]+)',l) for l in lines if 'lea    rdx,[rip' in l]
 ctx=int(contextline[0][1],16);assert all(int(m[1],16)==ctx for m in contextline)
 effects=[(int(l[:6],16),int(m[1],16)) for l in lines if (m:=re.search(r'(?:call|jmp)\s+0x([0-9a-f]+)',l)) and int(m[1],16) in [0x32225c,0x2d2094,0x2d2000,0x2cba50,0x365ae0,0x365b70,0x2cb9fc,0x2dea4c,0x32b1c8,0x374050,0x332e8c]]
 assert len(effects)==1
 effectsite,executor=effects[0]
 vals=[r,e,flag,target,ctx,offset,executor,flagread,base,flagone,targetstore,warm,roots[0],flagtwo,setup,roots[-1],effectsite]
 specs.append(dict(wrapper=hex(r),end=hex(e),flags=hex(flag),target=hex(target),context=hex(ctx),game_offset=hex(offset),executor=hex(executor),sites={k:hex(v) for k,v in zip(['flags_read','base_read','flag_one','target_store','warm_target','setup_root','flag_two','setup_site','effect_root','effect_site'],vals[7:])},role=role,guard=r!=0x322580,setup_root_before_flag_two=roots[0]<flagtwo))
lines=['// [C] Exact native direct-target catalogue, generated from byte-verified bodies.','static constexpr GameDirectSpec direct_specs[]{']
for s in specs:
 values=[s[k] for k in ['wrapper','end','flags','target','context','game_offset','executor']]+list(s['sites'].values())
 lines.append('    {'+', '.join(values)+', GameDirectRole::'+s['role']+', '+str(s['guard']).lower()+', '+str(s['setup_root_before_flag_two']).lower()+'},')
lines.append('};')
(src/'game_direct_wrappers_specs.inc').write_text('\n'.join(lines)+'\n');(out/'direct_specs.json').write_text(json.dumps(specs,indent=2)+'\n')
print('PASS exact direct specs',len(specs))
