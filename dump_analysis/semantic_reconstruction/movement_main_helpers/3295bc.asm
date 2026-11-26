
dump_analysis/semantic_reconstruction/movement_main_helpers/3295bc.bin:     file format binary


Disassembly of section .data:

00000000003295bc <.data>:
  3295bc:	48 8b c4                                        	mov    rax,rsp
  3295bf:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3295c3:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  3295c7:	57                                              	push   rdi
  3295c8:	48 81 ec a0 00 00 00                            	sub    rsp,0xa0
  3295cf:	f3 0f 10 05 a9 9b f6 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff69ba9]        # 0x293180
  3295d7:	8b da                                           	mov    ebx,edx
  3295d9:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3295dd:	48 8b f1                                        	mov    rsi,rcx
  3295e0:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3295e4:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3295e9:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3295ee:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3295f3:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  3295f8:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3295fd:	e8 32 f9 09 00                                  	call   0x3c8f34
  329602:	f3 44 0f 10 15 4d 9b f6 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff69b4d]        # 0x293158
  32960b:	33 ff                                           	xor    edi,edi
  32960d:	f3 44 0f 10 1d 1e 9b f6 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff69b1e]        # 0x293134
  329616:	f3 44 0f 5c d0                                  	subss  xmm10,xmm0
  32961b:	66 0f 6e c3                                     	movd   xmm0,ebx
  32961f:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  329622:	f3 44 0f 59 15 31 9b f6 ff                      	mulss  xmm10,DWORD PTR [rip+0xfffffffffff69b31]        # 0x29315c
  32962b:	f3 44 0f 5e d8                                  	divss  xmm11,xmm0
  329630:	85 db                                           	test   ebx,ebx
  329632:	0f 8e a3 00 00 00                               	jle    0x3296db
  329638:	45 0f 28 e3                                     	movaps xmm12,xmm11
  32963c:	f3 44 0f 59 25 0b 3c f6 ff                      	mulss  xmm12,DWORD PTR [rip+0xfffffffffff63c0b]        # 0x28d250
  329645:	f3 44 0f 10 05 06 3c f6 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff63c06]        # 0x28d254
  32964e:	66 44 0f 6e cf                                  	movd   xmm9,edi
  329653:	45 0f 5b c9                                     	cvtdq2ps xmm9,xmm9
  329657:	41 0f 28 c1                                     	movaps xmm0,xmm9
  32965b:	f3 41 0f 59 c3                                  	mulss  xmm0,xmm11
  329660:	f3 41 0f 58 c4                                  	addss  xmm0,xmm12
  329665:	f3 44 0f 5c c0                                  	subss  xmm8,xmm0
  32966a:	f3 0f 10 05 e2 3b f6 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff63be2]        # 0x28d254
  329672:	41 0f 28 c8                                     	movaps xmm1,xmm8
  329676:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  32967b:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  32967f:	e8 b0 f8 09 00                                  	call   0x3c8f34
  329684:	f3 45 0f 59 ca                                  	mulss  xmm9,xmm10
  329689:	0f 28 f8                                        	movaps xmm7,xmm0
  32968c:	41 0f 28 c1                                     	movaps xmm0,xmm9
  329690:	e8 d3 68 fb ff                                  	call   0x2dff68
  329695:	0f 28 f0                                        	movaps xmm6,xmm0
  329698:	41 0f 28 c1                                     	movaps xmm0,xmm9
  32969c:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  3296a0:	e8 f3 6a fb ff                                  	call   0x2e0198
  3296a5:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3296a9:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3296ae:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3296b2:	0f 28 ce                                        	movaps xmm1,xmm6
  3296b5:	0f 28 d8                                        	movaps xmm3,xmm0
  3296b8:	e8 eb e4 09 00                                  	call   0x3c7ba8
  3296bd:	48 8d 14 7f                                     	lea    rdx,[rdi+rdi*2]
  3296c1:	ff c7                                           	inc    edi
  3296c3:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3296c7:	f2 0f 11 04 96                                  	movsd  QWORD PTR [rsi+rdx*4],xmm0
  3296cc:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3296cf:	89 44 96 08                                     	mov    DWORD PTR [rsi+rdx*4+0x8],eax
  3296d3:	3b fb                                           	cmp    edi,ebx
  3296d5:	0f 8c 6a ff ff ff                               	jl     0x329645
  3296db:	4c 8d 9c 24 a0 00 00 00                         	lea    r11,[rsp+0xa0]
  3296e3:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  3296e7:	49 8b 73 18                                     	mov    rsi,QWORD PTR [r11+0x18]
  3296eb:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3296f0:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3296f5:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3296fa:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3296ff:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  329704:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  329709:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  32970e:	49 8b e3                                        	mov    rsp,r11
  329711:	5f                                              	pop    rdi
  329712:	c3                                              	ret
