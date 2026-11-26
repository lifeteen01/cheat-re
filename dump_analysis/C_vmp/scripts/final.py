import sys,json,collections,re
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from xrefs import IM,secof
from rf import rfs
from vdis import D
COMMON={0x48,0x4c,0x85,0x8b,0x33,0x89,0xe8,0xeb,0x0f,0x83,0x44,0x49,0x41,0x45,0x8d,0x90,0xc7,0x40,0x84,0x3b,0x74,0x75,0xff,0x4d}
OUT={}
for name in ['loader','starter','hooks','cheat']:
    img,p,r=rfs(name)
    raw=json.load(open(f'{name}_raw.json'))
    v1=IM[name][2][0]
    cand=[x for x in raw if v1[1]<=x['tgt']<v1[2] and x['op']=='call']
    if name=='cheat': cand=[x for x in cand if 0x2b2000<=x['site']<0x3cf000]
    d=D(IM[name][0])
    fin=[]
    rej=collections.Counter()
    for x in cand:
        head=d.ins(x['tgt'])[2]
        pushmatch=x['pushreg'] and x['pushreg']==x['tpop']
        if pushmatch: kind='push_reg+call'
        elif x['vote']>=0.5 and re.match(r'(push|pushf|pop)\b',head) : kind='call+pad'
        elif x['vote']>=0.5: kind='call+pad?'
        else: rej['vote<0.5']+=1; continue
        after=img[x['site']+5]
        tail = pushmatch and after in (0xcc,0xc3,0x90)
        x.update(kind=kind,head=head,tail=bool(tail),after=after)
        fin.append(x)
    c=collections.Counter(x['kind'] for x in fin)
    heads=collections.Counter((x['kind'],x['head'].split()[0]) for x in fin)
    npad=[x for x in fin if x['kind']!='push_reg+call']
    chance=sum(1 for x in npad if img[x['site']+5] in COMMON)
    chance6=sum(1 for x in npad if img[x['site']+6] in COMMON)
    print(f'== {name}: accepted {len(fin)} kinds {dict(c)} rejected {dict(rej)} infunc {sum(1 for x in fin if x["func"])} tail(jmp-import) {sum(x["tail"] for x in fin)}')
    print('   heads',heads.most_common(10))
    print(f'   pad-variant: site+5 in common-opcode set {chance}/{len(npad)} (~{len(COMMON)/256:.0%} expected if random); site+6 in set {chance6}/{len(npad)}')
    print('   questionable', [(hex(x['site']),hex(x['tgt']),x['head']) for x in fin if x['kind']=='call+pad?'][:20])
    OUT[name]=fin
json.dump(OUT,open('final_sites.json','w'))
