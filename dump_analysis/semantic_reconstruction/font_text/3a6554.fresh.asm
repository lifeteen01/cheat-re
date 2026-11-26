
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a6554 <.data+0x3a6554>:
  3a6554:	48 83 ec 28                                     	sub    rsp,0x28
  3a6558:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [rcx]
  3a655c:	0f 28 d1                                        	movaps xmm2,xmm1
  3a655f:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [rcx+0x4]
  3a6564:	f3 0f 59 c9                                     	mulss  xmm1,xmm1
  3a6568:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  3a656c:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a6570:	0f 2f 05 d5 6c ee ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffee6cd5]        # 0x28d24c
  3a6577:	76 08                                           	jbe    0x3a6581
  3a6579:	e8 b6 29 02 00                                  	call   0x3c8f34
  3a657e:	0f 28 d0                                        	movaps xmm2,xmm0
  3a6581:	0f 28 c2                                        	movaps xmm0,xmm2
  3a6584:	48 83 c4 28                                     	add    rsp,0x28
  3a6588:	c3                                              	ret
  3a6589:	cc                                              	int3
  3a658a:	cc                                              	int3
  3a658b:	cc                                              	int3
