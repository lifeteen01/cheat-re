from pathlib import Path
import re,json
root=Path('/home/john/Desktop/cheat_re')
s=(root/'dump_analysis/semantic_reconstruction/frame_dependencies/frame_dependencies_menu35d5ac_compact.asm').read_text().splitlines()
labels={}; rows=[]; key=None;label=None;before=[]
for l in s:
 a=int(l[:6],16)
 if 0x35d617<=a<0x35e9e6:
  m=re.search(r'mov    edx,DWORD PTR.*# (0x[0-9a-f]+)',l)
  if m:key=int(m[1],16)
  m=re.search(r'STRING getter=.*? (.*)',l)
  if m and m[1]!=')':label=m[1]
  if 'call   0x2cad38' in l:
   dest=next(x for x in reversed(before) if 'lea    rcx,[rbp' in x)
   off=re.search(r'\[rbp([+-]0x[0-9a-f]+)\]',dest)[1]
   off=int(off,16);labels[off]=(key,label)
 before.append(l)
rows=[];latch=None;off=None;en=None
for l in s:
 a=int(l[:6],16)
 if 0x35ebc4<=a<=0x35efb6:
  m=re.search(r'mov    r8b,BYTE PTR.*# (0x[0-9a-f]+)',l)
  if m:latch=int(m[1],16)
  m=re.search(r'lea    rcx,\[rbp([+-]0x[0-9a-f]+)\]',l)
  if m:off=int(m[1],16)
  m=re.search(r'mov    dl,BYTE PTR.*# (0x[0-9a-f]+)',l)
  if m:en=int(m[1],16)
  if 'call   0x35bc70' in l:
   key,label=labels[off];rows.append(dict(key=hex(key),enabled=hex(en),latch=hex(latch),label=label,offset=off))
out=root/'source/reconstructed/frame_dependencies_hotkeys.inc'
out.write_text('// [C] Extracted from35d617..35efb6; see frame_dependencies_catalog.py.\n'+''.join('    { %s, %s, %s, %s },\n'%(r['key'],r['enabled'],r['latch'],json.dumps(r['label'])) for r in rows))
print('Generated',len(rows),'rows',len(labels),'labels')
