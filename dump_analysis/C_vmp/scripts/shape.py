import sys,json,collections,re,subprocess,struct
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from boundary import votes
from xrefs import IM,secof
from rf import rfs
for name in ['loader','starter','hooks','cheat']:
    img,p,r=rfs(name); lo,hi=IM[name][1]
    raw=json.load(open(f'{name}_raw.json'))
    sel=[x for x in raw if (x['vote']>=0.3 or (x['pushreg'] and x['pushreg']==x['tpop'])) and IM[name][2][0][1]<=x['tgt']<IM[name][2][0][2]]
    if name=='cheat': sel=[x for x in sel if 0x2b2000<=x['site']<0x3cf000]
    # boundary vote at site+5 vs site+6
    v5=votes(img,[x['site']+5 for x in sel]); v6=votes(img,[x['site']+6 for x in sel])
    shapes=collections.Counter()
    for x in sel:
        a5=v5[x['site']+5][0]/v5[x['site']+5][1]; a6=v6[x['site']+6][0]/v6[x['site']+6][1]
        if x['pushreg'] and x['pushreg']==x['tpop']: sh='push_reg+call(stub pops same reg)'
        elif x['pushreg']: sh='push_reg+call(stub head differs)'
        elif a6>a5+0.2: sh='call+1pad'
        elif a5>a6+0.2: sh='call(5)'
        else: sh='ambiguous'
        x['shape']=sh; x['a5']=a5; x['a6']=a6
        shapes[(x['op'],sh)]+=1
    tc=collections.Counter(x['tgt'] for x in sel)
    print(name,len(sel),'distinct tgts',len(tc),'max reuse',max(tc.values()))
    for k,v in shapes.most_common(): print('   ',k,v)
    json.dump(sel,open(f'{name}_sel.json','w'))
