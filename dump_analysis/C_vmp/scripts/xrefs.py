import sys,re,subprocess,json,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from vdis import LINE
IM={
 'loader':('/home/john/malware-lab/analysis/run2/dumps/process_7144/7ff6187a0000.AcerQuickAccess.exe',(0x1000,0xd8000),[('.*YW',0x113000,0xaee000),('.OVb',0xaf0000,0x1a25000)]),
 'starter':('/home/john/malware-lab/analysis/run3/dumps/process_8572/1ecadc70000.dll',(0x1000,0x6c000),[('.sD]',0x16e000,0x911000),('.FY[',0x912000,0x16b6000)]),
 'hooks':('/home/john/malware-lab/analysis/run4/unpacked/simple_raknet_hooks.unpacked.dll',(0x1000,0x49354),[('.!cw',0xae000,0x7c6676),('.5}"',0x7c8000,0x13e3434)]),
 'cheat':('/home/john/malware-lab/analysis/run4/unpacked/cheat.unpacked.dll',(0x1000,0x417278),[('.B-)',0x419000,0xb581b6),('.wWM',0xb5a000,0x19f1050)]),
}
def secof(name,a):
    for s,lo,hi in IM[name][2]:
        if lo<=a<hi: return s
if __name__=='__main__':
    name=sys.argv[1]; path,(lo,hi),vs=IM[name]
    out=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','-w','--start-address=%#x'%lo,'--stop-address=%#x'%hi,path],capture_output=True,text=True).stdout
    open(f'{name}_code.asm','w').write(out)
    refs=[]
    for l in out.splitlines():
        m=LINE.match(l)
        if not m: continue
        a=int(m.group(1),16); t=re.sub(r'\s+',' ',m.group(3).strip()); b=m.group(2).replace(' ','')
        mm=re.match(r'(call|jmp|j\w+) 0x([0-9a-f]+)$',t)
        if mm:
            tg=int(mm.group(2),16); s=secof(name,tg)
            if s: refs.append((a,mm.group(1),tg,s,b))
        mm=re.search(r'\[rip\+0x([0-9a-f]+)\]\s+# 0x([0-9a-f]+)',t)
        if mm:
            tg=int(mm.group(2),16); s=secof(name,tg)
            if s: refs.append((a,'mem:'+t.split()[0],tg,s,b))
    json.dump(refs,open(f'{name}_refs.json','w'))
    c=collections.Counter((r[1],r[3]) for r in refs)
    print(name,len(refs),c.most_common())
    tg=collections.Counter(r[2] for r in refs if r[1] in('call','jmp'))
    print(' distinct targets',len(tg),'multi-use',sum(1 for v in tg.values() if v>1))
