
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003933f4 <.data+0x3933f4>:
  3933f4:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [rcx]
  3933f8:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [rcx+0x4]
  3933fd:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  393401:	f3 0f 59 c9                                     	mulss  xmm1,xmm1
  393405:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  393409:	c3                                              	ret
