
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4d18 <.data+0x3a4d18>:
  3a4d18:	45 33 c0                                        	xor    r8d,r8d
  3a4d1b:	41 b9 ff 00 00 00                               	mov    r9d,0xff
  3a4d21:	41 8b c0                                        	mov    eax,r8d
  3a4d24:	0f 57 c0                                        	xorps  xmm0,xmm0
  3a4d27:	f3 48 0f 2a c0                                  	cvtsi2ss xmm0,rax
  3a4d2c:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3a4d30:	f3 48 0f 2c c0                                  	cvttss2si rax,xmm0
  3a4d35:	41 3b c1                                        	cmp    eax,r9d
  3a4d38:	0f b6 d0                                        	movzx  edx,al
  3a4d3b:	41 0f 47 d1                                     	cmova  edx,r9d
  3a4d3f:	42 88 14 01                                     	mov    BYTE PTR [rcx+r8*1],dl
  3a4d43:	41 ff c0                                        	inc    r8d
  3a4d46:	41 81 f8 00 01 00 00                            	cmp    r8d,0x100
  3a4d4d:	72 d2                                           	jb     0x3a4d21
  3a4d4f:	c3                                              	ret
