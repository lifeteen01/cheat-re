
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035b684 <.data+0x35b684>:
  35b684:	48 8b c4                                        	mov    rax,rsp
  35b687:	55                                              	push   rbp
  35b688:	53                                              	push   rbx
  35b689:	56                                              	push   rsi
  35b68a:	57                                              	push   rdi
  35b68b:	41 56                                           	push   r14
  35b68d:	41 57                                           	push   r15
  35b68f:	48 8d 68 b9                                     	lea    rbp,[rax-0x47]
  35b693:	48 81 ec b8 00 00 00                            	sub    rsp,0xb8
  35b69a:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  35b69e:	bb ff 00 00 00                                  	mov    ebx,0xff
  35b6a3:	41 8b f0                                        	mov    esi,r8d
  35b6a6:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  35b6aa:	44 8b f2                                        	mov    r14d,edx
  35b6ad:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b6b1:	4c 8b f9                                        	mov    r15,rcx
  35b6b4:	8b d3                                           	mov    edx,ebx
  35b6b6:	45 33 c9                                        	xor    r9d,r9d
  35b6b9:	48 8d 4d 9f                                     	lea    rcx,[rbp-0x61]
  35b6bd:	45 33 c0                                        	xor    r8d,r8d
  35b6c0:	0f 28 f3                                        	movaps xmm6,xmm3
  35b6c3:	e8 50 fc f7 ff                                  	call   0x2db318
  35b6c8:	45 33 c9                                        	xor    r9d,r9d
  35b6cb:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b6cf:	44 8b c3                                        	mov    r8d,ebx
  35b6d2:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  35b6d6:	33 d2                                           	xor    edx,edx
  35b6d8:	e8 3b fc f7 ff                                  	call   0x2db318
  35b6dd:	45 33 c9                                        	xor    r9d,r9d
  35b6e0:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b6e4:	44 8b c3                                        	mov    r8d,ebx
  35b6e7:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  35b6eb:	8b d3                                           	mov    edx,ebx
  35b6ed:	e8 26 fc f7 ff                                  	call   0x2db318
  35b6f2:	45 33 c9                                        	xor    r9d,r9d
  35b6f5:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b6f9:	8d 53 9f                                        	lea    edx,[rbx-0x61]
  35b6fc:	48 8d 4d af                                     	lea    rcx,[rbp-0x51]
  35b700:	45 8d 41 53                                     	lea    r8d,[r9+0x53]
  35b704:	e8 0f fc f7 ff                                  	call   0x2db318
  35b709:	45 33 c9                                        	xor    r9d,r9d
  35b70c:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b710:	45 33 c0                                        	xor    r8d,r8d
  35b713:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  35b717:	33 d2                                           	xor    edx,edx
  35b719:	e8 fa fb f7 ff                                  	call   0x2db318
  35b71e:	45 33 c9                                        	xor    r9d,r9d
  35b721:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b725:	45 33 c0                                        	xor    r8d,r8d
  35b728:	48 8d 4d 8f                                     	lea    rcx,[rbp-0x71]
  35b72c:	33 d2                                           	xor    edx,edx
  35b72e:	e8 e5 fb f7 ff                                  	call   0x2db318
  35b733:	f3 0f 10 7d 6f                                  	movss  xmm7,DWORD PTR [rbp+0x6f]
  35b738:	0f 28 cf                                        	movaps xmm1,xmm7
  35b73b:	f3 0f 59 0d 69 79 f3 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff37969]        # 0x2930ac
  35b743:	0f 2f ce                                        	comiss xmm1,xmm6
  35b746:	72 06                                           	jb     0x35b74e
  35b748:	0f 10 45 9f                                     	movups xmm0,XMMWORD PTR [rbp-0x61]
  35b74c:	eb 2e                                           	jmp    0x35b77c
  35b74e:	0f 28 c1                                        	movaps xmm0,xmm1
  35b751:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  35b755:	0f 2f c6                                        	comiss xmm0,xmm6
  35b758:	72 06                                           	jb     0x35b760
  35b75a:	0f 10 45 af                                     	movups xmm0,XMMWORD PTR [rbp-0x51]
  35b75e:	eb 1c                                           	jmp    0x35b77c
  35b760:	f3 0f 59 0d f0 79 f3 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff379f0]        # 0x293158
  35b768:	0f 2f ce                                        	comiss xmm1,xmm6
  35b76b:	72 06                                           	jb     0x35b773
  35b76d:	0f 10 45 bf                                     	movups xmm0,XMMWORD PTR [rbp-0x41]
  35b771:	eb 09                                           	jmp    0x35b77c
  35b773:	0f 2f fe                                        	comiss xmm7,xmm6
  35b776:	72 08                                           	jb     0x35b780
  35b778:	0f 10 45 cf                                     	movups xmm0,XMMWORD PTR [rbp-0x31]
  35b77c:	0f 11 45 8f                                     	movups XMMWORD PTR [rbp-0x71],xmm0
  35b780:	45 33 c9                                        	xor    r9d,r9d
  35b783:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35b787:	45 33 c0                                        	xor    r8d,r8d
  35b78a:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  35b78e:	33 d2                                           	xor    edx,edx
  35b790:	e8 83 fb f7 ff                                  	call   0x2db318
  35b795:	48 8b c8                                        	mov    rcx,rax
  35b798:	e8 6f 40 f9 ff                                  	call   0x2ef80c
  35b79d:	8b 7d 7f                                        	mov    edi,DWORD PTR [rbp+0x7f]
  35b7a0:	8b 5d 77                                        	mov    ebx,DWORD PTR [rbp+0x77]
  35b7a3:	66 0f 6e d6                                     	movd   xmm2,esi
  35b7a7:	66 41 0f 6e ce                                  	movd   xmm1,r14d
  35b7ac:	8d 4f 01                                        	lea    ecx,[rdi+0x1]
  35b7af:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35b7b3:	66 0f 6e c1                                     	movd   xmm0,ecx
  35b7b7:	49 8b cf                                        	mov    rcx,r15
  35b7ba:	66 0f 6e db                                     	movd   xmm3,ebx
  35b7be:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  35b7c1:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  35b7c4:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  35b7c7:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  35b7ca:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35b7d0:	e8 63 0f 00 00                                  	call   0x35c738
  35b7d5:	48 8d 4d 8f                                     	lea    rcx,[rbp-0x71]
  35b7d9:	e8 2e 40 f9 ff                                  	call   0x2ef80c
  35b7de:	8d 4f ff                                        	lea    ecx,[rdi-0x1]
  35b7e1:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35b7e5:	66 0f 6e e1                                     	movd   xmm4,ecx
  35b7e9:	0f 57 db                                        	xorps  xmm3,xmm3
  35b7ec:	8d 4b fe                                        	lea    ecx,[rbx-0x2]
  35b7ef:	66 0f 6e c1                                     	movd   xmm0,ecx
  35b7f3:	8d 4e 01                                        	lea    ecx,[rsi+0x1]
  35b7f6:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  35b7f9:	66 0f 6e d1                                     	movd   xmm2,ecx
  35b7fd:	41 8d 4e 01                                     	lea    ecx,[r14+0x1]
  35b801:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  35b805:	66 0f 6e c9                                     	movd   xmm1,ecx
  35b809:	49 8b cf                                        	mov    rcx,r15
  35b80c:	0f 5b e4                                        	cvtdq2ps xmm4,xmm4
  35b80f:	f3 0f 5e c7                                     	divss  xmm0,xmm7
  35b813:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  35b816:	f3 48 0f 2c d0                                  	cvttss2si rdx,xmm0
  35b81b:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  35b81e:	8b d2                                           	mov    edx,edx
  35b820:	f3 48 0f 2a da                                  	cvtsi2ss xmm3,rdx
  35b825:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35b82b:	e8 08 0f 00 00                                  	call   0x35c738
  35b830:	4c 8d 9c 24 b8 00 00 00                         	lea    r11,[rsp+0xb8]
  35b838:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  35b83d:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  35b842:	49 8b e3                                        	mov    rsp,r11
  35b845:	41 5f                                           	pop    r15
  35b847:	41 5e                                           	pop    r14
  35b849:	5f                                              	pop    rdi
  35b84a:	5e                                              	pop    rsi
  35b84b:	5b                                              	pop    rbx
  35b84c:	5d                                              	pop    rbp
  35b84d:	c3                                              	ret
