import sys,re,json,bisect,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs
img,p,r=rfs('cheat')
fs=sorted((b,e) for b,e,u in r if 0x2b2000<=b<0x3cf000); st=[f[0] for f in fs]; fe=dict(fs)
def fn(a):
    i=bisect.bisect_right(st,a)-1
    return fs[i][0] if i>=0 and fs[i][0]<=a<fs[i][1] else None
E=collections.defaultdict(set); math=collections.Counter(); trig=collections.Counter()
MATH=re.compile(r'^(sqrtss|sqrtps|mulss|divss|addss|subss|mulps|addps|subps|dpps|rsqrtss|minss|maxss|cvt\w+|vfmadd\w+|andps|xorps)')
for l in open('cheat_code.asm'):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if not m: continue
    a=int(m.group(1),16); t=re.sub(r'\s+',' ',m.group(2)); f=fn(a)
    if f is None: continue
    mm=re.match(r'(call|jmp) 0x([0-9a-f]+)$',t)
    if mm:
        x=int(mm.group(2),16); g=fn(x) if x not in fe else x
        if g and g!=f: E[f].add(g)
    if MATH.match(t): math[f]+=1
    if t.startswith('sqrtss'): trig[f]+=1
json.dump({hex(k):sorted(hex(x) for x in v) for k,v in E.items()},open('cheat_cg.json','w'))
json.dump({hex(k):v for k,v in math.items()},open('cheat_math.json','w'))
ROOTS={'0x2f8574':'Client.LateUpdate','0x32ae10':'Projectile.Update','0x332554':'WaterOverlay.Update','0x32f038':'SmokeGrenade.Update','0x32f408':'obf.LateUpdate','0x3215cc':'ItemIcon.%ff5c768a','0x32a9f8':'PWM.%123bd3a0','0x324b30':'PWM.%9a4b1fd1','0x322aec':'PWM.%1d9a027b','0x3cabc0':'main thread'}
reach={}
for r_,nm in ROOTS.items():
    seen=set([int(r_,16)]); q=[int(r_,16)]
    while q:
        x=q.pop()
        for y in E.get(x,()):
            if y not in seen: seen.add(y); q.append(y)
    reach[nm]=seen
FS=json.load(open('fn_strings.json'))
def info(f):
    roots=[nm for nm,s in reach.items() if f in s]
    ss=[s for s in FS.get(hex(f),[]) if not re.match(r'(Bools|F|i|K|C|V2|V3|S|VectorBools)\.',s)]
    return dict(size=hex(fe.get(f,0)-f),math=math[f],sqrt=trig[f],roots=roots,strings=ss[:12],ncallees=len(E[f]))
if __name__=='__main__':
    for a in sys.argv[1:]:
        print(a,info(int(a,16)))
    json.dump({nm:sorted(hex(x) for x in s) for nm,s in reach.items()},open('cheat_reach.json','w'))
