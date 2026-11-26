import sys,re,json,collections,time
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from bdis import BD,run,J
from xrefs import IM
PREF={'loader':0x140000000,'starter':0x180000000,'hooks':0x180000000,'cheat':0x180000000}
RTB={'loader':0x7ff6187a0000,'starter':0x1ecadc70000,'hooks':0x7ffa2e5a0000,'cheat':0x7ffa2a960000}
GPR=set('rax rbx rcx rdx rsi rdi rbp r8 r9 r10 r11 r12 r13 r14 r15'.split())
def walker(start,delta,base,maxn=1500):
    """BFS over CFG (jmp/call followed, jcc both). yields addrs. returns features"""
    q=collections.deque([(start,0,frozenset(),0)]); seen=set(); n=0
    f=dict(delta=False,pushall=False,pushall_at=None,rets=0,xchg_rsp=0,ret_after_xchg=0,maxpush=0,firstxfer=None,imm_then_call=None,base=False,depth_delta=None)
    while q and n<maxn:
        a,depth,pushes,pw=q.popleft()
        if a in seen: continue
        seen.add(a)
        # linear block
        while n<maxn:
            i=yield a; n+=1; t=i[2]
            if not i[1] or '(bad)' in t: break
            nxt=i[0]+len(i[1])
            m=re.match(r'push\s+(r\w+)$',t)
            if m and m.group(1) in GPR: pushes=pushes|{m.group(1)}; pw=0
            else:
                pw+=1
                if pw>12: pushes=frozenset()
            if len(pushes)>f['maxpush']: f['maxpush']=len(pushes)
            if len(pushes)>=12 and not f['pushall']: f['pushall']=True; f['pushall_at']=a
            m=re.match(r'movabs \w+,0x([0-9a-f]+)$',t)
            if m:
                v=int(m.group(1),16)
                if v==delta: f['delta']=True; f['depth_delta']=depth
                if v==base: f['base']=True
            if re.match(r'xchg QWORD PTR \[rsp\],',t) or re.match(r'xchg \w+,QWORD PTR \[rsp\]',t): f['xchg_rsp']+=1
            m=J.match(t)
            if m:
                tg=int(m.group(2),16)
                if m.group(1) in ('jmp','call'):
                    if f['firstxfer'] is None: f['firstxfer']=tg
                    a=tg; continue
                q.append((tg,depth+1,pushes,pw)); a=nxt; continue
            if t.startswith('ret'): f['rets']+=1; break
            if t.startswith(('jmp','call','int3','hlt','ud2','retf','iret')): break
            a=nxt
            if a in seen: break
            seen.add(a)
    f['n']=n
    return f
if __name__=='__main__':
    name=sys.argv[1]
    raw=json.load(open(f'{name}_raw.json'))
    sel=[x for x in raw if x['vote']>=0.3 or (x['pushreg'] and x['pushreg']==x['tpop'])]
    if name=='cheat': sel=[x for x in sel if 0x2b2000<=x['site']<0x3cf000]
    tg=sorted(set(x['tgt'] for x in sel))
    bd=BD(IM[name][0]); delta=RTB[name]-PREF[name]
    t=time.time()
    res=run(bd,{a:walker(a,delta,RTB[name]) for a in tg})
    json.dump({hex(a):res[a] for a in tg},open(f'{name}_bfs.json','w'))
    print(name,len(tg),'%.1fs'%(time.time()-t))
    c=collections.Counter((r['delta'],r['pushall'],r['base']) for r in res.values())
    print(' (delta,pushall,base)',c.most_common())
    print(' maxpush hist',sorted(collections.Counter(r['maxpush'] for r in res.values()).items()))
