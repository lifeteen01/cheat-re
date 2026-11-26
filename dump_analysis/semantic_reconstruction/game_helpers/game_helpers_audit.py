#!/usr/bin/env python3
"""Independent raw-byte/objdump branch audit; never loads or executes sample code."""
from pathlib import Path
import hashlib,json,re,struct,subprocess
ROOT=Path(__file__).resolve().parents[3]
OUT=Path(__file__).resolve().parent
SAMPLE=ROOT/'dump_analysis/unpacked/cheat.unpacked.dll'
image=SAMPLE.read_bytes()
checks=[]
def check(label,condition):
    if not condition:raise AssertionError(label)
    checks.append(label)
def span(rva,expected,label):
    check(label,image[rva:rva+len(expected)]==expected)
def target(site):
    check(f'{site:x}: direct branch opcode',image[site] in (0xe8,0xe9))
    return site+5+struct.unpack_from('<i',image,site+1)[0]
def call(site,expected):check(f'{site:x} -> {expected:x}',target(site)==expected)
# Check direct-wrapper cache layout and target ADD bytes separately from C++.
for site,offset in [(0x368ab3,0x3f83e00),(0x37157b,0x44d6360),
                    (0x368b3f,0x3f12dd0),(0x3692c7,0x3f1c760),
                    (0x372783,0x514a6b0),(0x369c57,0x3935180),
                    (0x3739f2,0x19edb50),(0x373aa3,0x19f0a00),
                    (0x32b341,0x300df20),(0x369353,0x3ee0830)]:
    span(site,b'\x49\x81\xc0'+struct.pack('<I',offset),f'{site:x}: GameAssembly offset')
# [C] Independent byte expectations from second pass through raw objdump.
for site,expected in [(0x368a8d,0x2caf08),(0x368aef,0x2cbd24),(0x368b0a,0x2cb9fc),
 (0x371555,0x2caf08),(0x3715b7,0x2cbd24),(0x3715d2,0x2cb9fc),
 (0x36b94d,0x36c3b4),(0x36b983,0x32210c),(0x36b98e,0x3703ec),
 (0x371645,0x37154c),(0x37166b,0x32210c),(0x371676,0x3703ec),
 (0x372aef,0x372754),(0x372b15,0x320584),(0x372b20,0x370638),
 (0x372b63,0x372754),(0x372b89,0x332284),(0x372b94,0x370638),
 (0x36812b,0x36920c),(0x368167,0x2ef834),(0x369185,0x36924c),
 (0x36918c,0x369298),(0x3691a6,0x373a68),(0x36923e,0x3739c4),
 (0x369cb8,0x2d2094),(0x36b25d,0x320714),(0x36b277,0x367898),
 (0x3678b4,0x367684),(0x369451,0x368b10),(0x36947e,0x2e5a54),
 (0x369499,0x2d6354),(0x32b314,0x32b2b4),(0x32b396,0x32b1c8),
 (0x3703fb,0x370aa4),(0x37040c,0x370884),(0x3704a0,0x33416c),
 (0x370647,0x370aa4),(0x370658,0x370884),(0x3706ec,0x33416c),
 (0x370ac0,0x2cc164),(0x370908,0x33416c),(0x2f9958,0x2f8540),(0x2f9964,0x315bd0),
 (0x36932d,0x2caf08),(0x36938f,0x2cbd24),(0x3693aa,0x2cb9fc),
 (0x372253,0x2caf08),(0x372263,0x2caf08),(0x3722fa,0x2caf08),
 (0x37230a,0x2caf08),(0x37231a,0x2caf08),(0x371c57,0x3715d8),
 (0x371d11,0x334224),(0x371d28,0x3349ac),(0x371d64,0x2cbd24),(0x371d7a,0x2cb9fc)]:call(site,expected)
for site,expected,label in [
 (0x37226c,bytes.fromhex('8b 42 18'),'inventory count raw32 +18'),
 (0x372323,bytes.fromhex('42 8d 0c c5 00 00 00 00'),'indexed item LEA zeroextends 32bit wrapping multiply'),
 (0x37232b,bytes.fromhex('48 8b 44 11 20'),'indexed item array +20 read without bounds branch'),
 (0x371c6f,bytes.fromhex('48 8b 6a 50'),'item icon Sprite pointer +50'),
 (0x371d85,bytes.fromhex('e8 7e 91 f5 ff f6 d8 48 1b c0 48 23 c2'),'texture pointer numerically gated before return'),
 (0x369274,bytes.fromhex('f2 0f 10 42 18'),'origin +18/+20 copy'),
 (0x368bc4,bytes.fromhex('f2 0f 10 42 30'),'motion +30/+38 copy'),
 (0x3739db,bytes.fromhex('74 7a'),'quaternion invalid branch skips all stores'),
 (0x369243,bytes.fromhex('48 8b c3'),'eye rotation invalid path has no output constructor'),
 (0x36b27c,bytes.fromhex('8a 00'),'visibility loads byte, not bool float'),
 (0x320720,bytes.fromhex('48 83 79 08 00 0f 94 c0 c3'),'map empty count +10 after header+8'),
 (0x2ea58e,bytes.fromhex('c6 43 08 00'),'missing visibility key constructed with byte0'),
 (0x32b390,bytes.fromhex('44 8b cf'),'entity ID passed through r9d'),
]:span(site,expected,label)
for address,value in [(0x28e1e0,8.0),(0x2931d4,25.0),(0x28db2c,50.0)]:
    check(f'scalar return literal {address:x}',struct.unpack_from('<f',image,address)[0]==value)
# Encoded literal stores include overlapping final copies; independently decode
# using the native per-index key (0x37 + i%0x38), then compare exact NUL ending.
for rva,length,text in [(0x2a8710,35,'ItemModProjectile, Assembly-CSharp'),
                        (0x2a8bf0,35,'ItemModProjectile, Assembly-CSharp'),
                        (0x2a8c50,28,'Projectile, Assembly-CSharp'),
                        (0x2a8c70,34,'ServerProjectile, Assembly-CSharp')]:
    decoded=bytes(b^((0x37+i%0x38)&255) for i,b in enumerate(image[rva:rva+length]))
    check(f'qualified type literal {rva:x}',decoded==text.encode()+b'\0')
get_type=bytes.fromhex('70 5d 4d 6e 42 4c 58 3e')
check('3702f4 GetType literal',bytes(b^(0x37+i) for i,b in enumerate(get_type))==b'GetType\0')
# Verify every byte-bearing excerpt line; padding and alternate returns included.
line_count=0
for path in sorted(OUT.glob('game_helpers_*.asm')):
    if path.name=='game_helpers_raw_objdump.asm':continue
    for line in path.read_text().splitlines():
        m=re.match(r'^([0-9a-f]{6})  ((?:[0-9a-f]{2} )+)',line)
        if not m:continue
        rva=int(m[1],16);data=bytes.fromhex(m[2]);line_count+=1
        if image[rva:rva+len(data)]!=data:raise AssertionError(f'excerpt bytes {path.name}:{rva:x}')
check('all recorded excerpt bytes',line_count>800)
# Raw decoder is independent of the preserved linear listing/extraction parser.
ranges=[(0x368a84,0x368b10),(0x37154c,0x371686),(0x36b938,0x36b99d),
 (0x372abc,0x372ba3),(0x369324,0x3693af),(0x37224c,0x372278),(0x3722f0,0x372339),(0x371c38,0x371da3),(0x368100,0x36817a),(0x369164,0x369323),
 (0x369c1c,0x369cdc),(0x368b9c,0x368be6),(0x36b244,0x36b288),
 (0x36942c,0x3696e1),(0x32b2b4,0x32b3a6),(0x3703ec,0x370508),
 (0x370638,0x370754),(0x370884,0x370966),(0x370aa4,0x370b1c),
 (0x3739c4,0x373b28),(0x2ef834,0x2ef9d7),(0x367684,0x3677ba)]
raw=[]
for lo,hi in ranges:
    output=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel',
        f'--start-address={lo}',f'--stop-address={hi}',str(SAMPLE)],text=True)
    raw.append(output)
    check(f'objdump decoded full range {lo:x}..{hi:x}',f'{lo:x}:' in output and '(bad)' not in output)
(OUT/'game_helpers_raw_objdump.asm').write_text('\n'.join(raw))
report={'sample_sha256':hashlib.sha256(image).hexdigest(),'checks':checks,'excerpt_lines_verified':line_count,
        'raw_ranges':[[hex(lo),hex(hi)] for lo,hi in ranges],
        'limits':'Byte/call/branch/literal provenance audit, not proof of live game equivalence or complete foreign effects.'}
(OUT/'game_helpers_byte_audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(f'{len(checks)} independent checks passed; {line_count} excerpt instruction spans verified')
