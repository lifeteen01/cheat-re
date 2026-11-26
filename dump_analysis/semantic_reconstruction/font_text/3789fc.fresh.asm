
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003789fc <.data+0x3789fc>:
  3789fc:	0f 28 c8                                        	movaps xmm1,xmm0
  3789ff:	0f 57 c0                                        	xorps  xmm0,xmm0
  378a02:	0f 2f c1                                        	comiss xmm0,xmm1
  378a05:	77 0c                                           	ja     0x378a13
  378a07:	f3 0f 10 05 45 48 f1 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff14845]        # 0x28d254
  378a0f:	f3 0f 5d c1                                     	minss  xmm0,xmm1
  378a13:	c3                                              	ret
