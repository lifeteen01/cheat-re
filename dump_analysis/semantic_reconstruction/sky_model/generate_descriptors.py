exec(open('dump_analysis/semantic_reconstruction/sky_model/extract.py').read().split('result={}')[0])
# [I] Extraction produces evidence descriptors, never executes sample instructions.
for w in wrappers:
 if w==0x375abc: continue
 b=body(w); cut=next((i for i,(_,t) in enumerate(b) if t=='call   0x2cbd24'),None)
 if cut is None:continue
 bs=b[:cut+1]
 flag=next(int(t.split('# 0x')[1],16) for a,t in bs if t.startswith('mov    eax,DWORD PTR [rip'))
 target=next(int(t.split('# 0x')[1],16) for a,t in bs if t.startswith('mov    QWORD PTR [rip'))
 context=next(int(t.split('# 0x')[1],16) for a,t in reversed(bs) if t.startswith('lea    rdx,[rip'))
 calls=[(a,int(re.search(r'0x([0-9a-f]+)',t)[1],16)) for a,t in bs if t.startswith('call')]
 pairs=[]
 for (a,x),(bb,y) in zip(calls,calls[1:]):
  try:s,enc,dec=literal(x,y);pairs.append(s)
  except Exception:pass
 if w==0x3151bc:pairs=['GetComponentsInChildren','UnityEngine','Component']
 elif w in [0x368280,0x368370,0x37301c]:pairs=[pairs[1],pairs[0],pairs[2]]
 elif w==0x36b2d4:pairs=['','','']
 # Other wrappers place method then namespace then class.
 selector='parameter'; count=1 if w==0x3151bc else -1; occurrence=0
 if w in [0x367fe0,0x36ad9c]:selector='counted';count=1
 if w==0x370d64:selector='counted';count=2
 if w in [0x368280,0x368370,0x37301c]:selector='occurrence';count=-1 if w==0x368370 else 2;occurrence=0
 print('    {0x%x,0x%x,0x%x,0x%x,"%s","%s","%s",Selector::%s,%d,%d},'% (w,flag,target,context,pairs[0],pairs[1],pairs[2],selector,count,occurrence))
