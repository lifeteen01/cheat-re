
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f80bc <.data+0x2f80bc>:
  2f80bc:	40 53                                           	rex push rbx
  2f80be:	48 83 ec 50                                     	sub    rsp,0x50
  2f80c2:	48 8b c2                                        	mov    rax,rdx
  2f80c5:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm7
  2f80ca:	48 8b d9                                        	mov    rbx,rcx
  2f80cd:	44 0f 29 44 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm8
  2f80d3:	48 8b c8                                        	mov    rcx,rax
  2f80d6:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f80db:	e8 ec 75 fe ff                                  	call   0x2df6cc
  2f80e0:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [rsp+0x24]
  2f80e6:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [rsp+0x20]
  2f80ec:	f3 0f 10 54 24 28                               	movss  xmm2,DWORD PTR [rsp+0x28]
  2f80f2:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  2f80f6:	f3 0f 59 c9                                     	mulss  xmm1,xmm1
  2f80fa:	f3 0f 59 d2                                     	mulss  xmm2,xmm2
  2f80fe:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  2f8102:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  2f8106:	e8 7d bb fe ff                                  	call   0x2e3c88
  2f810b:	44 0f 28 c0                                     	movaps xmm8,xmm0
  2f810f:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [rsp+0x24]
  2f8115:	e8 f2 0c 0d 00                                  	call   0x3c8e0c
  2f811a:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [rsp+0x28]
  2f8120:	0f 57 0d 79 b1 f9 ff                            	xorps  xmm1,XMMWORD PTR [rip+0xfffffffffff9b179]        # 0x2932a0
  2f8127:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [rsp+0x20]
  2f812d:	e8 f2 27 02 00                                  	call   0x31a924
  2f8132:	0f 28 f8                                        	movaps xmm7,xmm0
  2f8135:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [rsp+0x24]
  2f813b:	0f 57 3d 5e b1 f9 ff                            	xorps  xmm7,XMMWORD PTR [rip+0xfffffffffff9b15e]        # 0x2932a0
  2f8142:	f3 0f 59 3d aa b0 f9 ff                         	mulss  xmm7,DWORD PTR [rip+0xfffffffffff9b0aa]        # 0x2931f4
  2f814a:	f3 41 0f 5e c0                                  	divss  xmm0,xmm8
  2f814f:	e8 90 27 02 00                                  	call   0x31a8e4
  2f8154:	f3 0f 59 05 98 b0 f9 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff9b098]        # 0x2931f4
  2f815c:	0f 28 d7                                        	movaps xmm2,xmm7
  2f815f:	48 8b cb                                        	mov    rcx,rbx
  2f8162:	0f 28 c8                                        	movaps xmm1,xmm0
  2f8165:	e8 d6 41 fd ff                                  	call   0x2cc340
  2f816a:	0f 28 7c 24 40                                  	movaps xmm7,XMMWORD PTR [rsp+0x40]
  2f816f:	48 8b c3                                        	mov    rax,rbx
  2f8172:	44 0f 28 44 24 30                               	movaps xmm8,XMMWORD PTR [rsp+0x30]
  2f8178:	48 83 c4 50                                     	add    rsp,0x50
  2f817c:	5b                                              	pop    rbx
  2f817d:	c3                                              	ret
