
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003762bc <.data+0x3762bc>:
  3762bc:	0f 2f c8                                        	comiss xmm1,xmm0
  3762bf:	77 07                                           	ja     0x3762c8
  3762c1:	f3 0f 5d d0                                     	minss  xmm2,xmm0
  3762c5:	0f 28 ca                                        	movaps xmm1,xmm2
  3762c8:	0f 28 c1                                        	movaps xmm0,xmm1
  3762cb:	c3                                              	ret
