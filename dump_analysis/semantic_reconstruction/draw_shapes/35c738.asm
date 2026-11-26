
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035c738 <.data+0x35c738>:
  35c738:	48 8b c4                                        	mov    rax,rsp
  35c73b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  35c73f:	57                                              	push   rdi
  35c740:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  35c747:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  35c74b:	0f 28 f2                                        	movaps xmm6,xmm2
  35c74e:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  35c752:	0f 28 f9                                        	movaps xmm7,xmm1
  35c755:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  35c75a:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  35c75f:	44 0f 28 cb                                     	movaps xmm9,xmm3
  35c763:	e8 98 0a 00 00                                  	call   0x35d200
  35c768:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  35c76c:	44 0f 2f c7                                     	comiss xmm8,xmm7
  35c770:	0f 87 ee 00 00 00                               	ja     0x35c864
  35c776:	44 0f 2f c6                                     	comiss xmm8,xmm6
  35c77a:	0f 87 e4 00 00 00                               	ja     0x35c864
  35c780:	0f 2f 3d e1 ba f4 ff                            	comiss xmm7,DWORD PTR [rip+0xfffffffffff4bae1]        # 0x2a8268
  35c787:	0f 87 d7 00 00 00                               	ja     0x35c864
  35c78d:	0f 2f 35 d0 ba f4 ff                            	comiss xmm6,DWORD PTR [rip+0xfffffffffff4bad0]        # 0x2a8264
  35c794:	0f 87 ca 00 00 00                               	ja     0x35c864
  35c79a:	48 8b b8 98 02 00 00                            	mov    rdi,QWORD PTR [rax+0x298]
  35c7a1:	0f 57 e4                                        	xorps  xmm4,xmm4
  35c7a4:	8b 8c 24 c8 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xc8]
  35c7ab:	0f 57 db                                        	xorps  xmm3,xmm3
  35c7ae:	f3 0f 10 05 2e 0f f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff30f2e]        # 0x28d6e4
  35c7b6:	8b c1                                           	mov    eax,ecx
  35c7b8:	c1 e8 18                                        	shr    eax,0x18
  35c7bb:	0f 57 d2                                        	xorps  xmm2,xmm2
  35c7be:	0f 57 c9                                        	xorps  xmm1,xmm1
  35c7c1:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  35c7c6:	8b c1                                           	mov    eax,ecx
  35c7c8:	c1 e8 10                                        	shr    eax,0x10
  35c7cb:	0f b6 c0                                        	movzx  eax,al
  35c7ce:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35c7d3:	8b c1                                           	mov    eax,ecx
  35c7d5:	c1 e8 08                                        	shr    eax,0x8
  35c7d8:	0f b6 c0                                        	movzx  eax,al
  35c7db:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  35c7df:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35c7e4:	0f b6 c1                                        	movzx  eax,cl
  35c7e7:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  35c7ec:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35c7f1:	f3 0f 5e d8                                     	divss  xmm3,xmm0
  35c7f5:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  35c7f9:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  35c7fd:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35c803:	e8 48 fb f6 ff                                  	call   0x2cc350
  35c808:	48 8b c8                                        	mov    rcx,rax
  35c80b:	e8 50 5a 03 00                                  	call   0x392260
  35c810:	0f 28 d6                                        	movaps xmm2,xmm6
  35c813:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c818:	f3 0f 58 94 24 c0 00 00 00                      	addss  xmm2,DWORD PTR [rsp+0xc0]
  35c821:	0f 28 cf                                        	movaps xmm1,xmm7
  35c824:	8b d8                                           	mov    ebx,eax
  35c826:	f3 41 0f 58 c9                                  	addss  xmm1,xmm9
  35c82b:	e8 10 fb f6 ff                                  	call   0x2cc340
  35c830:	0f 28 d6                                        	movaps xmm2,xmm6
  35c833:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  35c838:	0f 28 cf                                        	movaps xmm1,xmm7
  35c83b:	e8 00 fb f6 ff                                  	call   0x2cc340
  35c840:	44 8b cb                                        	mov    r9d,ebx
  35c843:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  35c84b:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  35c850:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  35c857:	48 8d 54 24 38                                  	lea    rdx,[rsp+0x38]
  35c85c:	48 8b cf                                        	mov    rcx,rdi
  35c85f:	e8 e0 49 04 00                                  	call   0x3a1244
  35c864:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  35c869:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  35c871:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  35c875:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35c87a:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  35c87f:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  35c884:	49 8b e3                                        	mov    rsp,r11
  35c887:	5f                                              	pop    rdi
  35c888:	c3                                              	ret
