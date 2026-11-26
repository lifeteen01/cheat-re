
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ad2ac <.data+0x3ad2ac>:
  3ad2ac:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  3ad2b0:	f3 0f 59 0d 98 ff ed ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffedff98]        # 0x28d250
  3ad2b8:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  3ad2bc:	0f 28 c1                                        	movaps xmm0,xmm1
  3ad2bf:	c3                                              	ret
