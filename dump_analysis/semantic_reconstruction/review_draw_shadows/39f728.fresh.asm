
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f728 <.data+0x39f728>:
  39f728:	f2 0f 10 01                                     	movsd  xmm0,QWORD PTR [rcx]
  39f72c:	48 8b c1                                        	mov    rax,rcx
  39f72f:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  39f733:	0f 59 c1                                        	mulps  xmm0,xmm1
  39f736:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  39f73a:	c3                                              	ret
