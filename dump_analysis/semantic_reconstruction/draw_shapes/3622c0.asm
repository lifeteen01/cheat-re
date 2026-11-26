
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003622c0 <.data+0x3622c0>:
  3622c0:	48 83 ec 48                                     	sub    rsp,0x48
  3622c4:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  3622c9:	0f 29 7c 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm7
  3622ce:	e8 fd e9 fb ff                                  	call   0x320cd0
  3622d3:	0f 28 f0                                        	movaps xmm6,xmm0
  3622d6:	f3 0f 59 35 b2 0d f3 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff30db2]        # 0x293090
  3622de:	0f 28 c6                                        	movaps xmm0,xmm6
  3622e1:	e8 b2 de f7 ff                                  	call   0x2e0198
  3622e6:	0f 28 f8                                        	movaps xmm7,xmm0
  3622e9:	0f 28 c6                                        	movaps xmm0,xmm6
  3622ec:	0f 57 3d ad 0f f3 ff                            	xorps  xmm7,XMMWORD PTR [rip+0xfffffffffff30fad]        # 0x2932a0
  3622f3:	e8 70 dc f7 ff                                  	call   0x2dff68
  3622f8:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3622fd:	0f 14 f8                                        	unpcklps xmm7,xmm0
  362300:	66 48 0f 7e f8                                  	movq   rax,xmm7
  362305:	0f 28 7c 24 20                                  	movaps xmm7,XMMWORD PTR [rsp+0x20]
  36230a:	48 83 c4 48                                     	add    rsp,0x48
  36230e:	c3                                              	ret
