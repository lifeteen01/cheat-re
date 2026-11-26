
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000396134 <.data+0x396134>:
  396134:	0f 2f d1                                        	comiss xmm2,xmm1
  396137:	76 08                                           	jbe    0x396141
  396139:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  39613d:	0f 28 c1                                        	movaps xmm0,xmm1
  396140:	c3                                              	ret
  396141:	0f 2f c3                                        	comiss xmm0,xmm3
  396144:	76 05                                           	jbe    0x39614b
  396146:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  39614a:	c3                                              	ret
  39614b:	0f 57 c0                                        	xorps  xmm0,xmm0
  39614e:	c3                                              	ret
