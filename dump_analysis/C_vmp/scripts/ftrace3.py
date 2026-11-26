import sys,re,json,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from bdis import BD,run,J
from xrefs import IM,secof
GPR='rax rbx rcx rdx rsi rdi rbp rsp r8 r9 r10 r11 r12 r13 r14 r15'.split()
GSET=set(GPR)-{'rsp'}
NOFLAG=('mov','movabs','lea','push','pop','xchg','movsx','movzx','movsxd','not','bswap','cmov','set','nop','call','jmp','cwde','cdqe','cbw','cqo','cdq')
CLR=('test','and','or','xor')
M64=(1<<64)-1
def off(s):
    m=re.match(r'QWORD PTR \[rsp(?:\+(0x[0-9a-f]+))?\]$',s)
    return int(m.group(1),16) if m and m.group(1) else (0 if m else None)
def tracer3(a,name,maxn=1500,init=None,keep=None):
    U=None
    st=list(init or [])   # st[0]=top; each slot known int or None
    regs={}
    cf=of=None; und=0; dec=0; n=0
    window=collections.deque(maxlen=40)
    res=dict(end=None,und=0,dec=0,pushall=False,pushall_at=None,n=0,rets_followed=0,vm_imm=None,vm_entry=None,final=None,depth_min=0)
    seen=collections.Counter()
    def get(i): return st[i] if i<len(st) else U
    def setv(i,v):
        while len(st)<=i: st.append(U)
        st[i]=v
    lastcall=None
    while n<maxn:
        seen[a]+=1
        if seen[a]>3: res['end']='loop';break
        i=yield a; n+=1; t=i[2]
        if keep is not None: keep.append(i)
        if not i[1] or '(bad)' in t: res['end']='bad';break
        nxt=i[0]+len(i[1]); op=t.split(' ')[0]; args=t[len(op)+1:]
        m=re.match(r'push (r\w+)$',t)
        window.append(m.group(1) if m and m.group(1) in GSET else None)
        if len(set(x for x in window if x))>=13 and not res['pushall']:
            res['pushall']=True; res['pushall_at']=hex(a)
            # the vm imm: value at known slot just above the pushes
            kn=[v for v in st if v is not None]
            res['vm_imm']=[hex(v) for v in st[:20] if v is not None][:3]
        m=J.match(t)
        if m:
            tg=int(m.group(2),16); cc=m.group(1)
            if cc=='jmp': a=tg; continue
            if cc=='call':
                st.insert(0,nxt); lastcall=tg; a=tg; continue
            take=None
            if cf is not None and cc in ('jb','jc','jnae'): take=cf
            elif cf is not None and cc in ('jae','jnb','jnc'): take=not cf
            elif of is not None and cc=='jo': take=of
            elif of is not None and cc=='jno': take=not of
            if take is None: und+=1; a=nxt
            else: dec+=1; a=tg if take else nxt
            continue
        # stack model
        if op=='push':
            if args in regs: st.insert(0,regs[args])
            elif re.match(r'0x[0-9a-f]+$',args): st.insert(0,int(args,16)&M64 if int(args,16)<0x80000000 or int(args,16)>0xffffffff else (int(args,16)|0xffffffff00000000))
            else:
                o=off(args)
                st.insert(0,get(o//8) if o is not None and o%8==0 else U)
        elif op=='pushf': st.insert(0,U)
        elif op=='pop':
            v=st.pop(0) if st else U
            if args in GPR: regs[args]=v
            else: pass
        elif op=='popf':
            if st: st.pop(0)
            cf=of=None
        elif op=='lea' and re.match(r'rsp,\[rsp\+(0x[0-9a-f]+)\]$',args):
            k=int(re.match(r'rsp,\[rsp\+(0x[0-9a-f]+)\]$',args).group(1),16)
            if k%8: res['end']='odd-lea';break
            del st[:k//8]
        elif op=='lea' and re.match(r'rsp,\[rsp-(0x[0-9a-f]+)\]$',args):
            k=int(re.match(r'rsp,\[rsp-(0x[0-9a-f]+)\]$',args).group(1),16)
            st[0:0]=[U]*(k//8)
        elif op.startswith('ret'):
            v=st.pop(0) if st else U
            k=re.match(r'ret\s+(0x[0-9a-f]+)',t)
            if k: del st[:int(k.group(1),16)//8]
            if v is not None and secof(name,v):
                res['rets_followed']+=1; a=v; continue
            res['end']='ret-dynamic' if v is None else 'ret-to-%x'%v; res['final']=v; break
        else:
            dst=args.split(',')[0] if args else ''
            o=off(dst)
            src=args.split(',',1)[1] if ',' in args else None
            if o is not None and o%8==0:
                idx=o//8
                if op=='mov' and src and re.match(r'0x[0-9a-f]+$',src):
                    v=int(src,16); v= v|0xffffffff00000000 if 0x80000000<=v<=0xffffffff else v
                    setv(idx,v&M64)
                elif op in('add','sub') and src and re.match(r'0x[0-9a-f]+$',src) and get(idx) is not None:
                    v=int(src,16); v= v-(1<<64) if v>=1<<63 else v
                    if 0x80000000<=v<=0xffffffff: v-=1<<32
                    setv(idx,(get(idx)+v if op=='add' else get(idx)-v)&M64)
                elif op=='mov' and src in regs: setv(idx,regs[src])
                elif op=='xchg' and src in GPR:
                    r=regs.get(src); regs[src]=get(idx); setv(idx,r)
                else: setv(idx,U)
            elif op=='xchg' and src is not None and off(src) is not None and off(src)%8==0 and dst in GPR:
                idx=off(src)//8; r=regs.get(dst); regs[dst]=get(idx); setv(idx,r)
            elif op=='mov' and dst in GPR and src is not None and off(src) is not None and off(src)%8==0:
                regs[dst]=get(off(src)//8)
            elif dst in GPR:
                if op=='movabs' and re.match(r'\w+,0x[0-9a-f]+$',args): regs[dst]=int(args.split(',')[1],16)
                else: regs.pop(dst,None)
            elif 'rsp' in dst and op not in ('cmp','test'):
                # partial write to stack slot -> unknown
                m2=re.search(r'\[rsp(?:\+(0x[0-9a-f]+))?\]',dst)
                if m2:
                    o2=int(m2.group(1),16) if m2.group(1) else 0; setv(o2//8,U)
            if dst=='rsp' or dst=='esp': res['end']='rsp-write';break
        if op in CLR: cf=False;of=False
        elif op=='stc': cf=True
        elif op=='clc': cf=False
        elif op.startswith(NOFLAG) or op in('push','pop','lea'): pass
        else: cf=of=None
        a=nxt
    res.update(und=und,dec=dec,n=n,final_stack=[(hex(v) if v is not None else None) for v in st[:4]])
    return res
if __name__=='__main__':
    name=sys.argv[1]
    F=json.load(open('final_sites.json'))[name]
    bd=BD(IM[name][0])
    R=run(bd,{x['tgt']:tracer3(x['tgt'],name,init=[x['site']+5]+([None] if x['pushreg'] else [])) for x in F})
    json.dump({hex(k):v for k,v in R.items()},open(f'{name}_ft3.json','w'))
    c=collections.Counter((r['end'] if not r['end'].startswith('ret-to') else 'ret-to-nonVMP', r['pushall']) for r in R.values())
    print(name,len(R)); [print('   ',k,v) for k,v in c.most_common(12)]
    print('   und hist',sorted(collections.Counter(min(r['und'],8) for r in R.values()).items()))
    print('   rets_followed hist',sorted(collections.Counter(min(r['rets_followed'],10) for r in R.values()).items()))
