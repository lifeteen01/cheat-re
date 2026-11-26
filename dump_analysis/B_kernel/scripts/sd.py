# smart linear disassembly handling VMP import-stub junk bytes (static, objdump only)
import sys,subprocess,re
IMG=sys.argv[1]; lo=int(sys.argv[2],16); hi=int(sys.argv[3],16)
VMP=int(sys.argv[4],16) if len(sys.argv)>4 else 0x16e000
def dis(a,n=40):
    out=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--start-address=%d'%a,'--stop-address=%d'%(a+n),IMG],capture_output=True,text=True).stdout
    r=[]
    for l in out.splitlines():
        m=re.match(r'^\s*([0-9a-f]+):\t((?:[0-9a-f]{2} )+)\s*\t(.*)',l)
        if m: r.append((int(m.group(1),16),len(m.group(2).split()),m.group(3)))
        else:
            m=re.match(r'^\s*([0-9a-f]+):\t((?:[0-9a-f]{2} )+)\s*$',l)
            if m and r: r[-1]=(r[-1][0],r[-1][1]+len(m.group(2).split()),r[-1][2])
    return r
BAD=re.compile(r'\(bad\)|\bin |\bout |ss |ds:|fs |gs:0x[0-9a-f]{3,}|movabs al|movabs eax|cmc|lahf|sahf|int1|icebp|hlt|fwait|insb|outs|lods|stos|scas|cmps|iret|retf|lock|xlat|fs:|\bdas\b|\baaa\b|cli|sti|\bcl[cd]\b|std|sbb|adc|rcl|rcr|enter|leave|jrcxz|loop|f[a-z]+ ')
def score(a):
    s=0
    for (x,n,t) in dis(a,24)[:3]:
        if BAD.search(t): s+=3
        if re.search(r'0x[0-9a-f]{7,}',t) and 'rip' not in t: s+=1
    return s
a=lo
buf=[]
while a<hi:
    ins=dis(a,96)
    if not ins: break
    for (x,n,t) in ins:
        if x!=a or x+n>a and x>=ins[0][0]+96-20: break
        print('%x: %s'%(x,t)); a=x+n
        m=re.match(r'call\s+0x([0-9a-f]+)$',t)
        if m and int(m.group(1),16)>=VMP:
            s0,s1=score(a),score(a+1)
            if s1<s0:
                print('%x: <junk byte, VMP stub>'%a); a+=1
            break
        if a>=hi: break
