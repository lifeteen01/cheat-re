from pathlib import Path
import re,json
import extract as e
widths={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}
def key(reg):
 return {'al':'rax','ax':'rax','eax':'rax','edx':'rdx','dx':'rdx','dl':'rdx','ecx':'rcx','cx':'rcx','cl':'rcx'}.get(reg,reg)
def loader(root):
 regs={};output={}
 for at,raw,text in e.rows:
  if at<root:continue
  if at>root+512:raise ValueError('no literal return')
  if text.startswith('ret'):break
  m=re.match(r'(mov\w*)\s+(\w+),(BYTE|WORD|DWORD|QWORD|XMMWORD) PTR \[rip[^]]*\].*# 0x([0-9a-f]+)',text)
  if m:
   op,reg,size,address=m.groups();n=widths[size];data=e.image[int(address,16):int(address,16)+n]
   regs[key(reg)]=data;continue
  m=re.match(r'movabs\s+(\w+),0x([0-9a-f]+)',text)
  if m:regs[key(m[1])]=int(m[2],16).to_bytes(8,'little');continue
  m=re.match(r'mov\w*\s+(BYTE|WORD|DWORD|QWORD|XMMWORD) PTR \[rdx(?:\+0x([0-9a-f]+))?\],(.+)',text)
  if m:
   size,offset,source=m.groups();n=widths[size];offset=int(offset or '0',16)
   data=int(source,16).to_bytes(n,'little') if source.startswith('0x') else regs[key(source)][:n]
   assert len(data)==n,(hex(root),text,regs)
   output.update({offset+i:x for i,x in enumerate(data)})
 return bytes(output[i] for i in range(max(output)+1))
def decoded(root):
 data=loader(root);return bytes(x^((i%56)+0x37) for i,x in enumerate(data)).split(b'\0')[0].decode()
cases=[(0x36b380,'ItemModProjectile, Assembly-CSharp'),(0x371218,'ItemModProjectile, Assembly-CSharp'),(0x372674,'Projectile, Assembly-CSharp'),(0x372690,'ServerProjectile, Assembly-CSharp'),(0x2dfad0,'Cos'),(0x2dfaf8,'Sin'),(0x2dfbb4,'Range'),(0x372644,'AnimationCurve'),(0x370240,'Type')]
cases += [(0x2df838,'Mathf'),(0x2df95c,'UnityEngine'),(0x2df93c,'Random'),(0x2dfa58,'UnityEngine'),(0x3701d0,'Component'),(0x370208,'GameObject'),(0x370274,'GetComponent'),(0x3702b4,'GetComponent'),(0x370324,'UnityEngine'),(0x370370,'UnityEngine'),(0x3703b0,'System'),(0x3702f4,'GetType'),(0x371278,'get_texture'),(0x37125c,'UnityEngine'),(0x37123c,'Sprite')]
cases += [(0x367a3c,'AttackHelicopter'),(0x367c20,'Minicopter'),(0x367d80,'ScrapTransportHelicopter'),(0x367e40,'CH47Helicopter'),(0x367ebc,'BasicCar'),(0x367ef4,'Bike'),(0x367f28,'MotorRowboat'),(0x367f70,'Kayak'),(0x367fac,'RHIB'),(0x3678c8,'VehicleModuleSeating'),(0x367900,'VehicleModuleEngine'),(0x367934,'ModularCar'),(0x36796c,'RidableHorse')]
records=[]
for root,expected in cases:
 value=decoded(root);assert value==expected,(hex(root),expected,value)
 records.append(dict(loader=hex(root),bytes=loader(root).hex(),decoded=value))
# Independently compare direct target/cell/exit data to source descriptor table.
source=(e.root/'source/reconstructed/game_helpers_analysis.cpp').read_text()
descriptor_matches=list(re.finditer(r'\{\s*'+r'\s*,\s*'.join([r'(0x[0-9a-f]+)']*7)+r'\s*\}',source))
assert len(descriptor_matches)==10,len(descriptor_matches)
for m in descriptor_matches:
 root,end,flags,target,context,offset,executor=map(lambda x:int(x,16),m.groups())
 body='\n'.join(t for a,raw,t in e.rows if root<=a<end)
 for value in [flags,target,context,offset,executor]:assert ('0x%x'%value) in body,(hex(root),hex(value))
 assert any(f[0]==root and f[1]==end for f in e.functions),(hex(root),hex(end),'pdata bounds')
(e.out/'literal_audit.json').write_text(json.dumps(records,indent=2)+'\n')
print('PASS',len(records),'independently copied/XOR-decoded literals; direct descriptor RVAs/ADD immediates match bytes')
