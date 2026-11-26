import sys,re,json,csv,bisect,collections,hashlib
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs,secname
from xrefs import IM,secof
A='/home/john/malware-lab/analysis/'
OUTD=A+'run5/C_vmp/'
def funcs(name):
    img,p,r=rfs(name); lo,hi=IM[name][1]
    if name=='cheat': lo,hi=0x2b2000,0x3cf000
    fs=sorted((b,e) for b,e,u in r if lo<=b<hi); st=[f[0] for f in fs]
    def fn(a):
        i=bisect.bisect_right(st,a)-1
        return fs[i][0] if i>=0 and fs[i][0]<=a<fs[i][1] else None
    return img,p,r,fn
STR={}
def addS(name,fn,a,s):
    f=fn(a)
    if f is None: return
    s=s.strip()
    if len(s)<3 or s.startswith('?'): return
    STR.setdefault(name,collections.defaultdict(list))[f].append(s[:60])
# loader
img,p,r,fn=funcs('loader')
for l in open(A+'run2/static/decstr.txt'):
    q=l.rstrip('\n').split(' ',3)
    if len(q)==4: addS('loader',fn,int(q[0],16),q[3])
for l in open(A+'run2/static/xref.txt'):
    m=re.match(r'FUNC (0x[0-9a-f]+) (.*)',l)
    if m:
        f=int(m.group(1),16)
        for s in m.group(2).split(' | '): STR.setdefault('loader',collections.defaultdict(list))[f].append(s[:60])
img,p,r,fn=funcs('starter')
for l in open(A+'run3/static/starter_decstr.txt'):
    m=re.match(r'([0-9a-f]+) .*?N=[0-9a-f]+ (.*)',l)
    if m: addS('starter',fn,int(m.group(1),16),m.group(2))
for l in open(A+'run3/static/starter_xref.txt'):
    m=re.match(r'FUNC (0x[0-9a-f]+) (.*)',l)
    if m:
        for it in m.group(2).split(' | '):
            mm=re.match(r'([0-9a-f]+):(.*)',it)
            if mm: addS('starter',fn,int(mm.group(1),16),mm.group(2))
img,p,r,fn=funcs('hooks')
for l in open(A+'run4/static/hooks_decstr.txt'):
    m=re.match(r'([0-9a-f]+) .*?N=[0-9a-f]+ (.*)',l)
    if m: addS('hooks',fn,int(m.group(1),16),m.group(2))
for l in open(A+'run4/static/hooks_xref.txt'):
    m=re.match(r'\s+[DS] ([0-9a-f]+) (.*)',l)
    if m: addS('hooks',fn,int(m.group(1),16),m.group(2))
FS=json.load(open('fn_strings.json'))
img,p,r,fn=funcs('cheat')
for f,ss in FS.items():
    if f!='none': STR.setdefault('cheat',collections.defaultdict(list))[int(f,16)]+=ss
def ctx(name,f,n=3):
    if f is None: return ''
    ss=[s for s in STR.get(name,{}).get(f,[]) if not re.match(r'(Bools|F|i|K|C|V2|V3|S|VectorBools)\.',s)]
    seen=[];[seen.append(s) for s in ss if s not in seen]
    return ' | '.join(seen[:n])
rows=[]; summ={}
SITES=json.load(open('final_sites.json'))
for name in IM:
    img,p,r,fn=funcs(name)
    ft=json.load(open(f'{name}_ft3.json'))
    perf=collections.Counter()
    for x in SITES[name]:
        if name=='cheat' and x['site']<0x2b25c8: continue   # VMP fragment area, not cheat code
        f=fn(x['site']); perf[f]+=1
        t=ft.get(hex(x['tgt']),{})
        end=t.get('end','');end='ret-to-'+('nonVMP' if end.startswith('ret-to') else '') if end.startswith('ret-to') else end
        site0=x['site']-(2 if x['pushreg'] and x['pushreg'][1:].isdigit() else (1 if x['pushreg'] else 0))
        notes='variant=%s%s; stub_head=%s; stub_trace_end=%s; undecided_jcc=%s; pushall_seen=%s; ctx=%s'%(
            x['kind'].replace('?',''),';tail_jmp_import' if x['tail'] else '',x['head'].split(' ')[0],end,t.get('und'),t.get('pushall'),ctx(name,f))
        rows.append([name,hex(x['tgt']),'import_thunk','site=%#x func=%s'%(site0,hex(f) if f else 'none'),notes])
    summ[name]=dict(thunks=sum(perf.values()),funcs_with_thunks=len([k for k in perf if k]),top=[(hex(k) if k else None,v,ctx(name,k,4)) for k,v in perf.most_common(12)])
# VMP-section pdata classes
V={}
for n in IM:
    img,p,r=rfs(n)
    lo,hi=IM[n][1]
    v=sorted(x for x in r if not (lo<=x[0]<hi) and not (n=='cheat' and x[0]<0x418000))
    V[n]=(img,v)
for n in IM:
    img,v=V[n]
    for i,(b,e,u) in enumerate(v):
        if i<777:
            same=all(V[m][0][V[m][1][i][0]:V[m][1][i][1]]==img[b:e] for m in IM)
            kind='vmp_runtime_native' if same else 'vmp_runtime_overwritten'
            note='VMProtect runtime template fn #%d (layout identical in all 4 images); %s'%(i,'bytes identical in all 4 images (plain native MSVC code)' if same else 'original body overwritten by VMP-generated mutated code/VM fragments')
        elif e-b>=0x100000:
            kind='vmp_vm_region'; note='single RUNTIME_FUNCTION covering %#x bytes of VM handler/bytecode area'%(e-b)
        elif secof(n,b)==IM[n][2][0][0] or (n=='starter' and b<0x911000):
            kind='vmp_loader_mutated'; note='image-specific contiguous block at end of first VMP section (VMP loader/stub code, mutated)'
        else:
            kind='vmp_sec2_func'; note='function in second VMP section (packed-loader section)'
        rows.append([n,hex(b),kind,'',note+'; size=%#x; sec=%s'%(e-b,secof(n,b) or '?')])
M=json.load(open('delta_movabs.json'))
from bfs import RTB,PREF
for n,xs in M.items():
    for x in xs:
        rows.append([n,hex(x),'vm_internal_rebase_site','','movabs reg,%#x (relocated image delta) inside VM code; 20 per VMP section in every image -> VMP template, not app code; sec=%s'%(RTB[n]-PREF[n],secof(n,x) or '.sD](ext)')])
rows.append(['cheat','0x2808e0','vmp_fragment_in_original_section','140 rel32 refs from .B-)/.wWM; 0 from cheat code','VMP mutated stub fragments (push [rsp+x];popf;lea rsp;call) placed in slack of .5ba23b 0x2808e0-0x28cf0b; reached only from VMP code'])
rows.append(['cheat','0x2b2440','vmp_fragment_in_original_section','refs only from VMP code','VMP mutated fragment in slack before first cheat function (0x2b2440-0x2b25c8)'])
for x in SITES['cheat']:
    if x['site']<0x2b25c8:
        rows.append(['cheat',hex(x['tgt']),'vmp_internal_call_from_fragment','site=%#x (inside VMP fragment)'%x['site'],'call from VMP fragment in .5ba23b slack into .B-); not cheat code'])
with open(OUTD+'vmp_inventory.csv','w',newline='') as fh:
    w=csv.writer(fh); w.writerow(['image','rva','kind','callers','notes']); w.writerows(rows)
c=collections.Counter((r_[0],r_[2]) for r_ in rows)
for k in sorted(c): print(k,c[k])
json.dump(summ,open('summary.json','w'),indent=1)
for n in summ: print(n,summ[n]['thunks'],summ[n]['funcs_with_thunks']); [print('   ',t) for t in summ[n]['top'][:8]]
