
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3b58 <.data+0x2e3b58>:
  2e3b58:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [rcx]
  2e3b5c:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e3b5f:	0f 2e c1                                        	ucomiss xmm0,xmm1
  2e3b62:	7a 1d                                           	jp     0x2e3b81
  2e3b64:	75 1b                                           	jne    0x2e3b81
  2e3b66:	f3 0f 10 41 04                                  	movss  xmm0,DWORD PTR [rcx+0x4]
  2e3b6b:	0f 2e c1                                        	ucomiss xmm0,xmm1
  2e3b6e:	7a 11                                           	jp     0x2e3b81
  2e3b70:	75 0f                                           	jne    0x2e3b81
  2e3b72:	f3 0f 10 41 08                                  	movss  xmm0,DWORD PTR [rcx+0x8]
  2e3b77:	0f 2e c1                                        	ucomiss xmm0,xmm1
  2e3b7a:	7a 05                                           	jp     0x2e3b81
  2e3b7c:	75 03                                           	jne    0x2e3b81
  2e3b7e:	b0 01                                           	mov    al,0x1
  2e3b80:	c3                                              	ret
  2e3b81:	32 c0                                           	xor    al,al
  2e3b83:	c3                                              	ret
