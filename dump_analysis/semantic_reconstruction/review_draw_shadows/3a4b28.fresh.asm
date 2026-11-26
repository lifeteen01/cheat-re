
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4b28 <.data+0x3a4b28>:
  3a4b28:	f3 0f 10 41 04                                  	movss  xmm0,DWORD PTR [rcx+0x4]
  3a4b2d:	f3 0f 10 09                                     	movss  xmm1,DWORD PTR [rcx]
  3a4b31:	f3 0f 59 42 04                                  	mulss  xmm0,DWORD PTR [rdx+0x4]
  3a4b36:	f3 0f 59 0a                                     	mulss  xmm1,DWORD PTR [rdx]
  3a4b3a:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a4b3e:	c3                                              	ret
