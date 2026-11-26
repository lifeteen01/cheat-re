
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e0e20 <.data+0x2e0e20>:
  2e0e20:	33 d2                                           	xor    edx,edx
  2e0e22:	4c 8d 0d e7 74 0f 00                            	lea    r9,[rip+0xf74e7]        # 0x3d8310
  2e0e29:	4c 8d 04 52                                     	lea    r8,[rdx+rdx*2]
  2e0e2d:	49 c1 e0 04                                     	shl    r8,0x4
  2e0e31:	4b 39 0c 01                                     	cmp    QWORD PTR [r9+r8*1],rcx
  2e0e35:	74 0d                                           	je     0x2e0e44
  2e0e37:	ff c2                                           	inc    edx
  2e0e39:	81 fa e8 03 00 00                               	cmp    edx,0x3e8
  2e0e3f:	7c e8                                           	jl     0x2e0e29
  2e0e41:	33 c0                                           	xor    eax,eax
  2e0e43:	c3                                              	ret
  2e0e44:	49 8d 41 08                                     	lea    rax,[r9+0x8]
  2e0e48:	49 03 c0                                        	add    rax,r8
  2e0e4b:	c3                                              	ret
