
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3874 <.data+0x3a3874>:
  3a3874:	48 8b c4                                        	mov    rax,rsp
  3a3877:	53                                              	push   rbx
  3a3878:	55                                              	push   rbp
  3a3879:	56                                              	push   rsi
  3a387a:	57                                              	push   rdi
  3a387b:	41 56                                           	push   r14
  3a387d:	41 57                                           	push   r15
  3a387f:	48 81 ec 88 00 00 00                            	sub    rsp,0x88
  3a3886:	48 8b b4 24 f0 00 00 00                         	mov    rsi,QWORD PTR [rsp+0xf0]
  3a388e:	48 8b da                                        	mov    rbx,rdx
  3a3891:	48 8b bc 24 e8 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xe8]
  3a3899:	48 8b e9                                        	mov    rbp,rcx
  3a389c:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3a38a0:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3a38a4:	0f 28 fa                                        	movaps xmm7,xmm2
  3a38a7:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  3a38ac:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  3a38b1:	44 0f 29 5c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm11
  3a38b7:	44 0f 28 db                                     	movaps xmm11,xmm3
  3a38bb:	48 85 f6                                        	test   rsi,rsi
  3a38be:	75 0c                                           	jne    0x3a38cc
  3a38c0:	48 8b cf                                        	mov    rcx,rdi
  3a38c3:	e8 3c 70 02 00                                  	call   0x3ca904
  3a38c8:	48 8d 34 38                                     	lea    rsi,[rax+rdi*1]
  3a38cc:	44 0f 28 cf                                     	movaps xmm9,xmm7
  3a38d0:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a38d3:	f3 44 0f 5e 4d 14                               	divss  xmm9,DWORD PTR [rbp+0x14]
  3a38d9:	48 8b cb                                        	mov    rcx,rbx
  3a38dc:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a38df:	e8 5c 8a f2 ff                                  	call   0x2cc340
  3a38e4:	f3 44 0f 10 94 24 e0 00 00 00                   	movss  xmm10,DWORD PTR [rsp+0xe0]
  3a38ee:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a38f1:	44 0f 2f 15 53 99 ee ff                         	comiss xmm10,DWORD PTR [rip+0xffffffffffee9953]        # 0x28d24c
  3a38f9:	41 0f 97 c7                                     	seta   r15b
  3a38fd:	45 33 f6                                        	xor    r14d,r14d
  3a3900:	e9 f7 00 00 00                                  	jmp    0x3a39fc
  3a3905:	45 84 ff                                        	test   r15b,r15b
  3a3908:	74 5c                                           	je     0x3a3966
  3a390a:	4d 85 f6                                        	test   r14,r14
  3a390d:	75 23                                           	jne    0x3a3932
  3a390f:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3a3913:	4c 8b ce                                        	mov    r9,rsi
  3a3916:	f3 0f 5c c6                                     	subss  xmm0,xmm6
  3a391a:	4c 8b c7                                        	mov    r8,rdi
  3a391d:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3a3921:	48 8b cd                                        	mov    rcx,rbp
  3a3924:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a392a:	e8 75 01 00 00                                  	call   0x3a3aa4
  3a392f:	4c 8b f0                                        	mov    r14,rax
  3a3932:	49 3b fe                                        	cmp    rdi,r14
  3a3935:	72 2f                                           	jb     0x3a3966
  3a3937:	0f 2f 33                                        	comiss xmm6,DWORD PTR [rbx]
  3a393a:	76 04                                           	jbe    0x3a3940
  3a393c:	f3 0f 11 33                                     	movss  DWORD PTR [rbx],xmm6
  3a3940:	0f 28 c7                                        	movaps xmm0,xmm7
  3a3943:	45 33 f6                                        	xor    r14d,r14d
  3a3946:	f3 0f 58 43 04                                  	addss  xmm0,DWORD PTR [rbx+0x4]
  3a394b:	48 8b d6                                        	mov    rdx,rsi
  3a394e:	48 8b cf                                        	mov    rcx,rdi
  3a3951:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a3954:	f3 0f 11 43 04                                  	movss  DWORD PTR [rbx+0x4],xmm0
  3a3959:	e8 12 01 00 00                                  	call   0x3a3a70
  3a395e:	48 8b f8                                        	mov    rdi,rax
  3a3961:	e9 96 00 00 00                                  	jmp    0x3a39fc
  3a3966:	0f be 07                                        	movsx  eax,BYTE PTR [rdi]
  3a3969:	89 84 24 e0 00 00 00                            	mov    DWORD PTR [rsp+0xe0],eax
  3a3970:	3d 80 00 00 00                                  	cmp    eax,0x80
  3a3975:	73 07                                           	jae    0x3a397e
  3a3977:	b9 01 00 00 00                                  	mov    ecx,0x1
  3a397c:	eb 1d                                           	jmp    0x3a399b
  3a397e:	4c 8b c6                                        	mov    r8,rsi
  3a3981:	48 8d 8c 24 e0 00 00 00                         	lea    rcx,[rsp+0xe0]
  3a3989:	48 8b d7                                        	mov    rdx,rdi
  3a398c:	e8 eb fb fe ff                                  	call   0x39357c
  3a3991:	48 63 c8                                        	movsxd rcx,eax
  3a3994:	8b 84 24 e0 00 00 00                            	mov    eax,DWORD PTR [rsp+0xe0]
  3a399b:	48 8d 14 0f                                     	lea    rdx,[rdi+rcx*1]
  3a399f:	83 f8 20                                        	cmp    eax,0x20
  3a39a2:	73 2c                                           	jae    0x3a39d0
  3a39a4:	83 f8 0a                                        	cmp    eax,0xa
  3a39a7:	75 22                                           	jne    0x3a39cb
  3a39a9:	f3 0f 10 03                                     	movss  xmm0,DWORD PTR [rbx]
  3a39ad:	0f 28 ce                                        	movaps xmm1,xmm6
  3a39b0:	e8 3f 6a fe ff                                  	call   0x38a3f4
  3a39b5:	0f 28 cf                                        	movaps xmm1,xmm7
  3a39b8:	f3 0f 11 03                                     	movss  DWORD PTR [rbx],xmm0
  3a39bc:	f3 0f 58 4b 04                                  	addss  xmm1,DWORD PTR [rbx+0x4]
  3a39c1:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a39c4:	f3 0f 11 4b 04                                  	movss  DWORD PTR [rbx+0x4],xmm1
  3a39c9:	eb 2e                                           	jmp    0x3a39f9
  3a39cb:	83 f8 0d                                        	cmp    eax,0xd
  3a39ce:	74 29                                           	je     0x3a39f9
  3a39d0:	3b 45 00                                        	cmp    eax,DWORD PTR [rbp+0x0]
  3a39d3:	7d 0d                                           	jge    0x3a39e2
  3a39d5:	8b c8                                           	mov    ecx,eax
  3a39d7:	48 8b 45 08                                     	mov    rax,QWORD PTR [rbp+0x8]
  3a39db:	f3 0f 10 04 88                                  	movss  xmm0,DWORD PTR [rax+rcx*4]
  3a39e0:	eb 05                                           	jmp    0x3a39e7
  3a39e2:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [rbp+0x10]
  3a39e7:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  3a39ec:	f3 0f 58 c6                                     	addss  xmm0,xmm6
  3a39f0:	41 0f 2f c3                                     	comiss xmm0,xmm11
  3a39f4:	73 0f                                           	jae    0x3a3a05
  3a39f6:	0f 28 f0                                        	movaps xmm6,xmm0
  3a39f9:	48 8b fa                                        	mov    rdi,rdx
  3a39fc:	48 3b fe                                        	cmp    rdi,rsi
  3a39ff:	0f 82 00 ff ff ff                               	jb     0x3a3905
  3a3a05:	0f 2f 33                                        	comiss xmm6,DWORD PTR [rbx]
  3a3a08:	76 04                                           	jbe    0x3a3a0e
  3a3a0a:	f3 0f 11 33                                     	movss  DWORD PTR [rbx],xmm6
  3a3a0e:	0f 2f 35 37 98 ee ff                            	comiss xmm6,DWORD PTR [rip+0xffffffffffee9837]        # 0x28d24c
  3a3a15:	77 10                                           	ja     0x3a3a27
  3a3a17:	f3 0f 10 43 04                                  	movss  xmm0,DWORD PTR [rbx+0x4]
  3a3a1c:	0f 2e 05 29 98 ee ff                            	ucomiss xmm0,DWORD PTR [rip+0xffffffffffee9829]        # 0x28d24c
  3a3a23:	7a 0c                                           	jp     0x3a3a31
  3a3a25:	75 0a                                           	jne    0x3a3a31
  3a3a27:	f3 0f 58 7b 04                                  	addss  xmm7,DWORD PTR [rbx+0x4]
  3a3a2c:	f3 0f 11 7b 04                                  	movss  DWORD PTR [rbx+0x4],xmm7
  3a3a31:	48 8b 84 24 f8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xf8]
  3a3a39:	48 85 c0                                        	test   rax,rax
  3a3a3c:	74 03                                           	je     0x3a3a41
  3a3a3e:	48 89 38                                        	mov    QWORD PTR [rax],rdi
  3a3a41:	0f 28 74 24 70                                  	movaps xmm6,XMMWORD PTR [rsp+0x70]
  3a3a46:	48 8b c3                                        	mov    rax,rbx
  3a3a49:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [rsp+0x60]
  3a3a4e:	44 0f 28 4c 24 50                               	movaps xmm9,XMMWORD PTR [rsp+0x50]
  3a3a54:	44 0f 28 54 24 40                               	movaps xmm10,XMMWORD PTR [rsp+0x40]
  3a3a5a:	44 0f 28 5c 24 30                               	movaps xmm11,XMMWORD PTR [rsp+0x30]
  3a3a60:	48 81 c4 88 00 00 00                            	add    rsp,0x88
  3a3a67:	41 5f                                           	pop    r15
  3a3a69:	41 5e                                           	pop    r14
  3a3a6b:	5f                                              	pop    rdi
  3a3a6c:	5e                                              	pop    rsi
  3a3a6d:	5d                                              	pop    rbp
  3a3a6e:	5b                                              	pop    rbx
  3a3a6f:	c3                                              	ret
