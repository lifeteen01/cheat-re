#!/usr/bin/env python3
# [I] Compact instruction-derived scalar oracle. This does not execute copied code.
import json,struct
from pathlib import Path
p=Path(__file__).parent
bits=lambda x:struct.unpack('<I',struct.pack('<f',x))[0]
f32=lambda x:struct.unpack('<f',struct.pack('<f',x))[0]
f=lambda x:struct.unpack('<f',struct.pack('<I',x))[0]
x=f(0x3f490fdb);sq=f32(x*x)
trace=[]
y=f32(f(0x37cfb4c2)-f32(sq*f(0x348bdd11)));trace.append(bits(y))
y=f32(f32(y*sq)-f(0x3ab609aa));trace.append(bits(y))
y=f32(f32(y*sq)+f(0x3d2aaaa3));trace.append(bits(y))
y=f32(f32(y*sq)-.5);trace.append(bits(y))
y=f32(f32(y*sq)+1);trace.append(bits(y))
assert bits(y)==0x3f3504f2
#15 native stack kernel words: tables are intentionally loaded in10/30/20 order.
dll=(p.parents[1]/'unpacked/cheat.unpacked.dll').read_bytes()
words=lambda at,n:list(struct.unpack_from('<'+'I'*n,dll,at))
kernel=words(0x2acf10,4)+words(0x2acf30,4)+words(0x2acf20,4)+[0x3649539c,0,0]
assert kernel==[0,0,0x3649539c,0x39701fb8,0x3bc3dab6,0x3d78359c,0x3e778812,0x3ec40ebf,0x3e778812,0x3d78359c,0x3bc3dab6,0x39701fb8,0x3649539c,0,0]
(p/'scalar_oracle.json').write_text(json.dumps({'cos_pi_over4_result':hex(bits(y)),'polynomial_intermediate_bits':list(map(hex,trace)),'native_blur_kernel_words':list(map(hex,kernel))},indent=2)+'\n')
print('scalar oracle passed')
