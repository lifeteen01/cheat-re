
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003930e8 <.data+0x3930e8>:
  3930e8:	0f 2f 05 5d a1 ef ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffefa15d]        # 0x28d24c
  3930ef:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3930f3:	73 10                                           	jae    0x393105
  3930f5:	66 0f 6e c8                                     	movd   xmm1,eax
  3930f9:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3930fc:	0f 2e c8                                        	ucomiss xmm1,xmm0
  3930ff:	7a 02                                           	jp     0x393103
  393101:	74 02                                           	je     0x393105
  393103:	ff c8                                           	dec    eax
  393105:	66 0f 6e c0                                     	movd   xmm0,eax
  393109:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  39310c:	c3                                              	ret
