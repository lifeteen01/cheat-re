
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c38a8 <.data+0x3c38a8>:
  3c38a8:	48 8b c4                                        	mov    rax,rsp
  3c38ab:	48 89 58 18                                     	mov    QWORD PTR [rax+0x18],rbx
  3c38af:	88 50 10                                        	mov    BYTE PTR [rax+0x10],dl
  3c38b2:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3c38b6:	55                                              	push   rbp
  3c38b7:	56                                              	push   rsi
  3c38b8:	57                                              	push   rdi
  3c38b9:	41 54                                           	push   r12
  3c38bb:	41 55                                           	push   r13
  3c38bd:	41 56                                           	push   r14
  3c38bf:	41 57                                           	push   r15
  3c38c1:	48 8d 6c 24 80                                  	lea    rbp,[rsp-0x80]
  3c38c6:	48 81 ec 80 01 00 00                            	sub    rsp,0x180
  3c38cd:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3c38d1:	49 8b d9                                        	mov    rbx,r9
  3c38d4:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3c38d8:	45 8b e0                                        	mov    r12d,r8d
  3c38db:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3c38e0:	40 8a f2                                        	mov    sil,dl
  3c38e3:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3c38e8:	48 8b f9                                        	mov    rdi,rcx
  3c38eb:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  3c38f3:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  3c38fb:	e8 00 99 f9 ff                                  	call   0x35d200
  3c3900:	4c 8b f8                                        	mov    r15,rax
  3c3903:	80 b8 bb 00 00 00 00                            	cmp    BYTE PTR [rax+0xbb],0x0
  3c390a:	0f 85 16 07 00 00                               	jne    0x3c4026
  3c3910:	4c 8b 2d 11 22 04 00                            	mov    r13,QWORD PTR [rip+0x42211]        # 0x405b28
  3c3917:	45 33 c0                                        	xor    r8d,r8d
  3c391a:	48 8b d7                                        	mov    rdx,rdi
  3c391d:	48 8b c8                                        	mov    rcx,rax
  3c3920:	e8 ef ec fc ff                                  	call   0x392614
  3c3925:	f3 0f 10 05 33 f9 ec ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffecf933]        # 0x293260
  3c392d:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3c3932:	80 bd e8 00 00 00 00                            	cmp    BYTE PTR [rbp+0xe8],0x0
  3c3939:	44 8b f0                                        	mov    r14d,eax
  3c393c:	48 8b c7                                        	mov    rax,rdi
  3c393f:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3c3945:	48 0f 45 85 e0 00 00 00                         	cmovne rax,QWORD PTR [rbp+0xe0]
  3c394d:	41 b1 01                                        	mov    r9b,0x1
  3c3950:	48 8b d0                                        	mov    rdx,rax
  3c3953:	48 89 45 b0                                     	mov    QWORD PTR [rbp-0x50],rax
  3c3957:	45 33 c0                                        	xor    r8d,r8d
  3c395a:	e8 3d be fc ff                                  	call   0x38f79c
  3c395f:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  3c3964:	45 0f 57 db                                     	xorps  xmm11,xmm11
  3c3968:	41 0f 2e d3                                     	ucomiss xmm2,xmm11
  3c396c:	7a 08                                           	jp     0x3c3976
  3c396e:	75 06                                           	jne    0x3c3976
  3c3970:	f3 0f 10 54 24 5c                               	movss  xmm2,DWORD PTR [rsp+0x5c]
  3c3976:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  3c397a:	41 0f 2e cb                                     	ucomiss xmm1,xmm11
  3c397e:	7a 08                                           	jp     0x3c3988
  3c3980:	75 06                                           	jne    0x3c3988
  3c3982:	f3 0f 10 4c 24 58                               	movss  xmm1,DWORD PTR [rsp+0x58]
  3c3988:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3c398d:	e8 ae 89 f0 ff                                  	call   0x2cc340
  3c3992:	f3 41 0f 10 bf 38 01 00 00                      	movss  xmm7,DWORD PTR [r15+0x138]
  3c399b:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3c39a0:	f3 41 0f 58 bf 04 01 00 00                      	addss  xmm7,DWORD PTR [r15+0x104]
  3c39a9:	f3 41 0f 10 b7 00 01 00 00                      	movss  xmm6,DWORD PTR [r15+0x100]
  3c39b2:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c39b5:	e8 86 11 fd ff                                  	call   0x394b40
  3c39ba:	41 8b fc                                        	mov    edi,r12d
  3c39bd:	83 e7 02                                        	and    edi,0x2
  3c39c0:	74 09                                           	je     0x3c39cb
  3c39c2:	f3 41 0f 10 b7 28 02 00 00                      	movss  xmm6,DWORD PTR [r15+0x228]
  3c39cb:	f3 0f 10 03                                     	movss  xmm0,DWORD PTR [rbx]
  3c39cf:	8b c7                                           	mov    eax,edi
  3c39d1:	f7 d8                                           	neg    eax
  3c39d3:	48 1b c9                                        	sbb    rcx,rcx
  3c39d6:	83 e1 10                                        	and    ecx,0x10
  3c39d9:	41 0f 2e c3                                     	ucomiss xmm0,xmm11
  3c39dd:	7a 02                                           	jp     0x3c39e1
  3c39df:	74 07                                           	je     0x3c39e8
  3c39e1:	41 0f ba e4 18                                  	bt     r12d,0x18
  3c39e6:	73 21                                           	jae    0x3c3a09
  3c39e8:	f3 42 0f 10 8c 39 20 02 00 00                   	movss  xmm1,DWORD PTR [rcx+r15*1+0x220]
  3c39f2:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [rsp+0x58]
  3c39f8:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  3c39fc:	e8 f3 69 fc ff                                  	call   0x38a3f4
  3c3a01:	f3 0f 11 44 24 50                               	movss  DWORD PTR [rsp+0x50],xmm0
  3c3a07:	eb 06                                           	jmp    0x3c3a0f
  3c3a09:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [rsp+0x50]
  3c3a0f:	f3 0f 10 54 24 54                               	movss  xmm2,DWORD PTR [rsp+0x54]
  3c3a15:	f3 0f 58 c6                                     	addss  xmm0,xmm6
  3c3a19:	f3 0f 58 d7                                     	addss  xmm2,xmm7
  3c3a1d:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3c3a22:	0f 28 c8                                        	movaps xmm1,xmm0
  3c3a25:	e8 16 89 f0 ff                                  	call   0x2cc340
  3c3a2a:	f3 0f 10 44 24 4c                               	movss  xmm0,DWORD PTR [rsp+0x4c]
  3c3a30:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3c3a35:	f3 0f 10 5c 24 48                               	movss  xmm3,DWORD PTR [rsp+0x48]
  3c3a3b:	0f 28 d7                                        	movaps xmm2,xmm7
  3c3a3e:	0f 28 ce                                        	movaps xmm1,xmm6
  3c3a41:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3c3a47:	e8 a8 80 fc ff                                  	call   0x38baf4
  3c3a4c:	41 0f ba e4 1a                                  	bt     r12d,0x1a
  3c3a51:	0f 82 8f 00 00 00                               	jb     0x3c3ae6
  3c3a57:	85 ff                                           	test   edi,edi
  3c3a59:	74 05                                           	je     0x3c3a60
  3c3a5b:	0f 57 ed                                        	xorps  xmm5,xmm5
  3c3a5e:	eb 09                                           	jmp    0x3c3a69
  3c3a60:	f3 41 0f 10 ad 1c 38 00 00                      	movss  xmm5,DWORD PTR [r13+0x381c]
  3c3a69:	f3 41 0f 10 a5 20 38 00 00                      	movss  xmm4,DWORD PTR [r13+0x3820]
  3c3a72:	0f 28 c5                                        	movaps xmm0,xmm5
  3c3a75:	f3 0f 59 05 d3 97 ec ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffec97d3]        # 0x28d250
  3c3a7d:	0f 28 cc                                        	movaps xmm1,xmm4
  3c3a80:	f3 0f 59 0d c8 97 ec ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffec97c8]        # 0x28d250
  3c3a88:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3c3a8c:	f3 0f 10 44 24 38                               	movss  xmm0,DWORD PTR [rsp+0x38]
  3c3a92:	66 0f 6e d0                                     	movd   xmm2,eax
  3c3a96:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  3c3a9a:	f3 0f 10 4c 24 3c                               	movss  xmm1,DWORD PTR [rsp+0x3c]
  3c3aa0:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3c3aa3:	66 0f 6e d8                                     	movd   xmm3,eax
  3c3aa7:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  3c3aab:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  3c3aae:	f3 0f 11 44 24 38                               	movss  DWORD PTR [rsp+0x38],xmm0
  3c3ab4:	f3 0f 5c ea                                     	subss  xmm5,xmm2
  3c3ab8:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [rsp+0x40]
  3c3abe:	f3 0f 5c e3                                     	subss  xmm4,xmm3
  3c3ac2:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  3c3ac6:	f3 0f 58 c5                                     	addss  xmm0,xmm5
  3c3aca:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [rsp+0x3c],xmm1
  3c3ad0:	f3 0f 11 44 24 40                               	movss  DWORD PTR [rsp+0x40],xmm0
  3c3ad6:	f3 0f 10 44 24 44                               	movss  xmm0,DWORD PTR [rsp+0x44]
  3c3adc:	f3 0f 58 c4                                     	addss  xmm0,xmm4
  3c3ae0:	f3 0f 11 44 24 44                               	movss  DWORD PTR [rsp+0x44],xmm0
  3c3ae6:	f3 41 0f 10 b7 38 02 00 00                      	movss  xmm6,DWORD PTR [r15+0x238]
  3c3aef:	f3 41 0f 10 bf 40 02 00 00                      	movss  xmm7,DWORD PTR [r15+0x240]
  3c3af8:	85 ff                                           	test   edi,edi
  3c3afa:	74 1c                                           	je     0x3c3b18
  3c3afc:	41 8b 87 28 02 00 00                            	mov    eax,DWORD PTR [r15+0x228]
  3c3b03:	41 89 87 38 02 00 00                            	mov    DWORD PTR [r15+0x238],eax
  3c3b0a:	41 8b 87 30 02 00 00                            	mov    eax,DWORD PTR [r15+0x230]
  3c3b11:	41 89 87 40 02 00 00                            	mov    DWORD PTR [r15+0x240],eax
  3c3b18:	41 8b dc                                        	mov    ebx,r12d
  3c3b1b:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3c3b20:	83 e3 08                                        	and    ebx,0x8
  3c3b23:	41 8b d6                                        	mov    edx,r14d
  3c3b26:	8b c3                                           	mov    eax,ebx
  3c3b28:	89 5c 24 70                                     	mov    DWORD PTR [rsp+0x70],ebx
  3c3b2c:	f7 d8                                           	neg    eax
  3c3b2e:	45 1b c9                                        	sbb    r9d,r9d
  3c3b31:	45 33 c0                                        	xor    r8d,r8d
  3c3b34:	41 83 e1 04                                     	and    r9d,0x4
  3c3b38:	e8 9f 0d fd ff                                  	call   0x3948dc
  3c3b3d:	85 ff                                           	test   edi,edi
  3c3b3f:	74 12                                           	je     0x3c3b53
  3c3b41:	f3 41 0f 11 b7 38 02 00 00                      	movss  DWORD PTR [r15+0x238],xmm6
  3c3b4a:	f3 41 0f 11 bf 40 02 00 00                      	movss  DWORD PTR [r15+0x240],xmm7
  3c3b53:	84 c0                                           	test   al,al
  3c3b55:	0f 84 cb 04 00 00                               	je     0x3c4026
  3c3b5b:	41 8b 85 88 47 00 00                            	mov    eax,DWORD PTR [r13+0x4788]
  3c3b62:	83 e0 04                                        	and    eax,0x4
  3c3b65:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  3c3b69:	85 db                                           	test   ebx,ebx
  3c3b6b:	74 0b                                           	je     0x3c3b78
  3c3b6d:	85 c0                                           	test   eax,eax
  3c3b6f:	75 07                                           	jne    0x3c3b78
  3c3b71:	b1 01                                           	mov    cl,0x1
  3c3b73:	e8 bc b0 fc ff                                  	call   0x38ec34
  3c3b78:	85 ff                                           	test   edi,edi
  3c3b7a:	74 20                                           	je     0x3c3b9c
  3c3b7c:	49 83 bf a8 01 00 00 00                         	cmp    QWORD PTR [r15+0x1a8],0x0
  3c3b84:	74 07                                           	je     0x3c3b8d
  3c3b86:	e8 71 19 ff ff                                  	call   0x3b54fc
  3c3b8b:	eb 0f                                           	jmp    0x3c3b9c
  3c3b8d:	49 83 bd 48 4b 00 00 00                         	cmp    QWORD PTR [r13+0x4b48],0x0
  3c3b95:	74 05                                           	je     0x3c3b9c
  3c3b97:	e8 f4 1c ff ff                                  	call   0x3b5890
  3c3b9c:	41 8b cc                                        	mov    ecx,r12d
  3c3b9f:	41 b8 00 00 10 00                               	mov    r8d,0x100000
  3c3ba5:	41 23 c8                                        	and    ecx,r8d
  3c3ba8:	8b c1                                           	mov    eax,ecx
  3c3baa:	f7 d8                                           	neg    eax
  3c3bac:	b8 00 00 02 00                                  	mov    eax,0x20000
  3c3bb1:	1b d2                                           	sbb    edx,edx
  3c3bb3:	23 d0                                           	and    edx,eax
  3c3bb5:	41 0f ba e4 1b                                  	bt     r12d,0x1b
  3c3bba:	73 09                                           	jae    0x3c3bc5
  3c3bbc:	f7 d9                                           	neg    ecx
  3c3bbe:	1b d2                                           	sbb    edx,edx
  3c3bc0:	23 d0                                           	and    edx,eax
  3c3bc2:	41 03 d0                                        	add    edx,r8d
  3c3bc5:	8b ca                                           	mov    ecx,edx
  3c3bc7:	4c 8d 4c 24 30                                  	lea    r9,[rsp+0x30]
  3c3bcc:	83 c9 10                                        	or     ecx,0x10
  3c3bcf:	4c 8d 44 24 31                                  	lea    r8,[rsp+0x31]
  3c3bd4:	41 0f ba e4 16                                  	bt     r12d,0x16
  3c3bd9:	0f 43 ca                                        	cmovae ecx,edx
  3c3bdc:	8b d1                                           	mov    edx,ecx
  3c3bde:	0f ba ea 07                                     	bts    edx,0x7
  3c3be2:	41 0f ba e4 17                                  	bt     r12d,0x17
  3c3be7:	0f 43 d1                                        	cmovae edx,ecx
  3c3bea:	8b ca                                           	mov    ecx,edx
  3c3bec:	81 c9 20 01 00 00                               	or     ecx,0x120
  3c3bf2:	41 f6 c4 04                                     	test   r12b,0x4
  3c3bf6:	0f 44 ca                                        	cmove  ecx,edx
  3c3bf9:	41 8b d4                                        	mov    edx,r12d
  3c3bfc:	83 e2 10                                        	and    edx,0x10
  3c3bff:	8b c1                                           	mov    eax,ecx
  3c3c01:	0f ba e8 0c                                     	bts    eax,0xc
  3c3c05:	89 54 24 60                                     	mov    DWORD PTR [rsp+0x60],edx
  3c3c09:	85 d2                                           	test   edx,edx
  3c3c0b:	41 8b d6                                        	mov    edx,r14d
  3c3c0e:	0f 44 c1                                        	cmove  eax,ecx
  3c3c11:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3c3c16:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3c3c1a:	e8 c1 8b ff ff                                  	call   0x3bc7e0
  3c3c1f:	88 44 24 30                                     	mov    BYTE PTR [rsp+0x30],al
  3c3c23:	8a d8                                           	mov    bl,al
  3c3c25:	41 0f ba e4 15                                  	bt     r12d,0x15
  3c3c2a:	0f 83 c8 00 00 00                               	jae    0x3c3cf8
  3c3c30:	41 8b 8d 08 49 00 00                            	mov    ecx,DWORD PTR [r13+0x4908]
  3c3c37:	85 c9                                           	test   ecx,ecx
  3c3c39:	0f 84 b9 00 00 00                               	je     0x3c3cf8
  3c3c3f:	41 8b 85 84 47 00 00                            	mov    eax,DWORD PTR [r13+0x4784]
  3c3c46:	41 39 85 0c 49 00 00                            	cmp    DWORD PTR [r13+0x490c],eax
  3c3c4d:	0f 85 a5 00 00 00                               	jne    0x3c3cf8
  3c3c53:	41 3b ce                                        	cmp    ecx,r14d
  3c3c56:	0f 85 9c 00 00 00                               	jne    0x3c3cf8
  3c3c5c:	b3 01                                           	mov    bl,0x1
  3c3c5e:	40 8a f3                                        	mov    sil,bl
  3c3c61:	88 5c 24 30                                     	mov    BYTE PTR [rsp+0x30],bl
  3c3c65:	41 80 bd 27 49 00 00 00                         	cmp    BYTE PTR [r13+0x4927],0x0
  3c3c6d:	75 4b                                           	jne    0x3c3cba
  3c3c6f:	4d 39 bd e8 48 00 00                            	cmp    QWORD PTR [r13+0x48e8],r15
  3c3c76:	75 42                                           	jne    0x3c3cba
  3c3c78:	41 8b 87 58 01 00 00                            	mov    eax,DWORD PTR [r15+0x158]
  3c3c7f:	41 39 85 20 49 00 00                            	cmp    DWORD PTR [r13+0x4920],eax
  3c3c86:	75 32                                           	jne    0x3c3cba
  3c3c88:	4c 8d 44 24 38                                  	lea    r8,[rsp+0x38]
  3c3c8d:	49 8b d7                                        	mov    rdx,r15
  3c3c90:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3c3c94:	e8 47 a5 fd ff                                  	call   0x39e1e0
  3c3c99:	45 8b 85 84 47 00 00                            	mov    r8d,DWORD PTR [r13+0x4784]
  3c3ca0:	4c 8b c8                                        	mov    r9,rax
  3c3ca3:	41 8b 97 58 01 00 00                            	mov    edx,DWORD PTR [r15+0x158]
  3c3caa:	41 8b ce                                        	mov    ecx,r14d
  3c3cad:	e8 de 79 fd ff                                  	call   0x39b690
  3c3cb2:	41 c6 85 26 49 00 00 01                         	mov    BYTE PTR [r13+0x4926],0x1
  3c3cba:	84 db                                           	test   bl,bl
  3c3cbc:	74 08                                           	je     0x3c3cc6
  3c3cbe:	41 8b ce                                        	mov    ecx,r14d
  3c3cc1:	e8 6a 14 fd ff                                  	call   0x395130
  3c3cc6:	83 7c 24 60 00                                  	cmp    DWORD PTR [rsp+0x60],0x0
  3c3ccb:	74 05                                           	je     0x3c3cd2
  3c3ccd:	e8 86 78 fd ff                                  	call   0x39b558
  3c3cd2:	40 3a b5 c8 00 00 00                            	cmp    sil,BYTE PTR [rbp+0xc8]
  3c3cd9:	74 08                                           	je     0x3c3ce3
  3c3cdb:	41 83 8d ac 47 00 00 08                         	or     DWORD PTR [r13+0x47ac],0x8
  3c3ce3:	85 ff                                           	test   edi,edi
  3c3ce5:	74 3f                                           	je     0x3c3d26
  3c3ce7:	49 83 bf a8 01 00 00 00                         	cmp    QWORD PTR [r15+0x1a8],0x0
  3c3cef:	74 26                                           	je     0x3c3d17
  3c3cf1:	e8 b6 17 ff ff                                  	call   0x3b54ac
  3c3cf6:	eb 2e                                           	jmp    0x3c3d26
  3c3cf8:	84 db                                           	test   bl,bl
  3c3cfa:	0f 85 61 ff ff ff                               	jne    0x3c3c61
  3c3d00:	38 5c 24 31                                     	cmp    BYTE PTR [rsp+0x31],bl
  3c3d04:	74 0b                                           	je     0x3c3d11
  3c3d06:	41 0f ba e4 19                                  	bt     r12d,0x19
  3c3d0b:	0f 82 54 ff ff ff                               	jb     0x3c3c65
  3c3d11:	88 5c 24 30                                     	mov    BYTE PTR [rsp+0x30],bl
  3c3d15:	eb af                                           	jmp    0x3c3cc6
  3c3d17:	49 83 bd 48 4b 00 00 00                         	cmp    QWORD PTR [r13+0x4b48],0x0
  3c3d1f:	74 05                                           	je     0x3c3d26
  3c3d21:	e8 fe 1a ff ff                                  	call   0x3b5824
  3c3d26:	33 d2                                           	xor    edx,edx
  3c3d28:	48 c7 45 90 00 00 00 00                         	mov    QWORD PTR [rbp-0x70],0x0
  3c3d30:	48 8d 4d 9c                                     	lea    rcx,[rbp-0x64]
  3c3d34:	c7 45 98 00 00 00 00                            	mov    DWORD PTR [rbp-0x68],0x0
  3c3d3b:	e8 94 27 f7 ff                                  	call   0x3364d4
  3c3d40:	0f 10 45 90                                     	movups xmm0,XMMWORD PTR [rbp-0x70]
  3c3d44:	48 8b 8d c0 00 00 00                            	mov    rcx,QWORD PTR [rbp+0xc0]
  3c3d4b:	4c 8d 45 d0                                     	lea    r8,[rbp-0x30]
  3c3d4f:	0f 10 4d 9c                                     	movups xmm1,XMMWORD PTR [rbp-0x64]
  3c3d53:	33 d2                                           	xor    edx,edx
  3c3d55:	0f 29 45 d0                                     	movaps XMMWORD PTR [rbp-0x30],xmm0
  3c3d59:	0f 11 4d dc                                     	movups XMMWORD PTR [rbp-0x24],xmm1
  3c3d5d:	e8 f6 7a ff ff                                  	call   0x3bb858
  3c3d62:	8a 4c 24 31                                     	mov    cl,BYTE PTR [rsp+0x31]
  3c3d66:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c3d69:	f3 44 0f 10 0d e2 94 ec ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffec94e2]        # 0x28d254
  3c3d72:	40 0a ce                                        	or     cl,sil
  3c3d75:	f3 44 0f 10 15 36 f4 ec ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffecf436]        # 0x2931b4
  3c3d7e:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3c3d82:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3c3d86:	41 0f 95 c1                                     	setne  r9b
  3c3d8a:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  3c3d91:	4c 8b f0                                        	mov    r14,rax
  3c3d94:	e8 af 20 f7 ff                                  	call   0x335e48
  3c3d99:	44 8a 4c 24 31                                  	mov    r9b,BYTE PTR [rsp+0x31]
  3c3d9e:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3c3da2:	f3 41 0f 11 06                                  	movss  DWORD PTR [r14],xmm0
  3c3da7:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c3daa:	f3 41 0f 10 46 04                               	movss  xmm0,DWORD PTR [r14+0x4]
  3c3db0:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  3c3db7:	e8 8c 20 f7 ff                                  	call   0x335e48
  3c3dbc:	f3 41 0f 11 46 04                               	movss  DWORD PTR [r14+0x4],xmm0
  3c3dc2:	44 8a ce                                        	mov    r9b,sil
  3c3dc5:	f3 41 0f 10 46 08                               	movss  xmm0,DWORD PTR [r14+0x8]
  3c3dcb:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3c3dcf:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c3dd2:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  3c3dd9:	e8 6a 20 f7 ff                                  	call   0x335e48
  3c3dde:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3c3de2:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c3de6:	33 c9                                           	xor    ecx,ecx
  3c3de8:	f3 45 0f 11 46 08                               	movss  DWORD PTR [r14+0x8],xmm8
  3c3dee:	e8 a5 e4 fc ff                                  	call   0x392298
  3c3df3:	8b d0                                           	mov    edx,eax
  3c3df5:	48 8d 4d f0                                     	lea    rcx,[rbp-0x10]
  3c3df9:	e8 d6 26 f7 ff                                  	call   0x3364d4
  3c3dfe:	f3 41 0f 10 7e 04                               	movss  xmm7,DWORD PTR [r14+0x4]
  3c3e04:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c3e08:	b9 01 00 00 00                                  	mov    ecx,0x1
  3c3e0d:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3c3e11:	e8 82 e4 fc ff                                  	call   0x392298
  3c3e16:	8b d0                                           	mov    edx,eax
  3c3e18:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3c3e1c:	e8 b3 26 f7 ff                                  	call   0x3364d4
  3c3e21:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c3e25:	b9 02 00 00 00                                  	mov    ecx,0x2
  3c3e2a:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c3e2d:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3c3e32:	e8 61 e4 fc ff                                  	call   0x392298
  3c3e37:	8b d0                                           	mov    edx,eax
  3c3e39:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3c3e3d:	e8 92 26 f7 ff                                  	call   0x3364d4
  3c3e42:	0f 28 df                                        	movaps xmm3,xmm7
  3c3e45:	66 0f 7f 75 c0                                  	movdqa XMMWORD PTR [rbp-0x40],xmm6
  3c3e4a:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  3c3e4e:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3c3e53:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c3e56:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3c3e5a:	f3 0f 7f 44 24 60                               	movdqu XMMWORD PTR [rsp+0x60],xmm0
  3c3e60:	e8 3f 57 fb ff                                  	call   0x3795a4
  3c3e65:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3c3e69:	4c 8d 45 c0                                     	lea    r8,[rbp-0x40]
  3c3e6d:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3c3e71:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3c3e75:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c3e78:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3c3e7d:	e8 22 57 fb ff                                  	call   0x3795a4
  3c3e82:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c3e85:	f3 41 0f 7f 46 0c                               	movdqu XMMWORD PTR [r14+0xc],xmm0
  3c3e8b:	49 8b 9f 98 02 00 00                            	mov    rbx,QWORD PTR [r15+0x298]
  3c3e92:	f3 41 0f 10 46 04                               	movss  xmm0,DWORD PTR [r14+0x4]
  3c3e98:	f3 0f 59 05 9c 53 ee ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffee539c]        # 0x2a923c
  3c3ea0:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3c3ea4:	41 0f 28 d9                                     	movaps xmm3,xmm9
  3c3ea8:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3c3eac:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c3eb0:	f3 41 0f 59 85 d0 37 00 00                      	mulss  xmm0,DWORD PTR [r13+0x37d0]
  3c3eb9:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3c3ebf:	e8 88 09 f1 ff                                  	call   0x2d484c
  3c3ec4:	48 8b c8                                        	mov    rcx,rax
  3c3ec7:	e8 40 b9 f2 ff                                  	call   0x2ef80c
  3c3ecc:	44 8b c8                                        	mov    r9d,eax
  3c3ecf:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3c3ed7:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  3c3edc:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  3c3ee3:	48 8d 54 24 38                                  	lea    rdx,[rsp+0x38]
  3c3ee8:	48 8b cb                                        	mov    rcx,rbx
  3c3eeb:	e8 54 d3 fd ff                                  	call   0x3a1244
  3c3ef0:	f3 41 0f 10 4e 08                               	movss  xmm1,DWORD PTR [r14+0x8]
  3c3ef6:	33 c9                                           	xor    ecx,ecx
  3c3ef8:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c3eff:	e8 94 e3 fc ff                                  	call   0x392298
  3c3f04:	f3 0f 10 74 24 38                               	movss  xmm6,DWORD PTR [rsp+0x38]
  3c3f0a:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3c3f0e:	f3 41 0f 58 b5 0c 38 00 00                      	addss  xmm6,DWORD PTR [r13+0x380c]
  3c3f17:	f3 41 0f 10 7e 08                               	movss  xmm7,DWORD PTR [r14+0x8]
  3c3f1d:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3c3f22:	8b d8                                           	mov    ebx,eax
  3c3f24:	f3 0f 58 35 54 f2 ec ff                         	addss  xmm6,DWORD PTR [rip+0xffffffffffecf254]        # 0x293180
  3c3f2c:	e8 c3 49 fb ff                                  	call   0x3788f4
  3c3f31:	0f 28 ce                                        	movaps xmm1,xmm6
  3c3f34:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3c3f39:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3c3f3e:	e8 fd 83 f0 ff                                  	call   0x2cc340
  3c3f43:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  3c3f47:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  3c3f4f:	44 8b cb                                        	mov    r9d,ebx
  3c3f52:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3c3f57:	48 8b cf                                        	mov    rcx,rdi
  3c3f5a:	0f 28 d7                                        	movaps xmm2,xmm7
  3c3f5d:	e8 12 b9 fd ff                                  	call   0x39f874
  3c3f62:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c3f69:	49 8d 4e 0c                                     	lea    rcx,[r14+0xc]
  3c3f6d:	e8 9a b8 f2 ff                                  	call   0x2ef80c
  3c3f72:	f3 41 0f 10 46 08                               	movss  xmm0,DWORD PTR [r14+0x8]
  3c3f78:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3c3f7c:	f3 0f 10 54 24 38                               	movss  xmm2,DWORD PTR [rsp+0x38]
  3c3f82:	8b d8                                           	mov    ebx,eax
  3c3f84:	f3 41 0f 58 95 0c 38 00 00                      	addss  xmm2,DWORD PTR [r13+0x380c]
  3c3f8d:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3c3f92:	f3 0f 2c c8                                     	cvttss2si ecx,xmm0
  3c3f96:	66 0f 6e f1                                     	movd   xmm6,ecx
  3c3f9a:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3c3f9f:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3c3fa2:	f3 0f 58 f2                                     	addss  xmm6,xmm2
  3c3fa6:	e8 49 49 fb ff                                  	call   0x3788f4
  3c3fab:	f3 0f 10 44 24 5c                               	movss  xmm0,DWORD PTR [rsp+0x5c]
  3c3fb1:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3c3fb6:	f3 0f 59 05 92 92 ec ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffec9292]        # 0x28d250
  3c3fbe:	0f 28 ce                                        	movaps xmm1,xmm6
  3c3fc1:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3c3fc6:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3c3fca:	e8 71 83 f0 ff                                  	call   0x2cc340
  3c3fcf:	4c 8b 4d b0                                     	mov    r9,QWORD PTR [rbp-0x50]
  3c3fd3:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3c3fd8:	33 f6                                           	xor    esi,esi
  3c3fda:	44 8b c3                                        	mov    r8d,ebx
  3c3fdd:	48 8b cf                                        	mov    rcx,rdi
  3c3fe0:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  3c3fe5:	e8 d2 f1 fd ff                                  	call   0x3a31bc
  3c3fea:	8a 5c 24 30                                     	mov    bl,BYTE PTR [rsp+0x30]
  3c3fee:	84 db                                           	test   bl,bl
  3c3ff0:	74 1f                                           	je     0x3c4011
  3c3ff2:	41 f7 47 14 00 00 00 04                         	test   DWORD PTR [r15+0x14],0x4000000
  3c3ffa:	74 15                                           	je     0x3c4011
  3c3ffc:	41 f6 c4 01                                     	test   r12b,0x1
  3c4000:	75 0f                                           	jne    0x3c4011
  3c4002:	41 f6 85 a8 47 00 00 20                         	test   BYTE PTR [r13+0x47a8],0x20
  3c400a:	75 05                                           	jne    0x3c4011
  3c400c:	e8 4f c2 fc ff                                  	call   0x390260
  3c4011:	39 74 24 70                                     	cmp    DWORD PTR [rsp+0x70],esi
  3c4015:	74 0b                                           	je     0x3c4022
  3c4017:	39 74 24 48                                     	cmp    DWORD PTR [rsp+0x48],esi
  3c401b:	75 05                                           	jne    0x3c4022
  3c401d:	e8 5e cc fc ff                                  	call   0x390c80
  3c4022:	8a c3                                           	mov    al,bl
  3c4024:	eb 02                                           	jmp    0x3c4028
  3c4026:	32 c0                                           	xor    al,al
  3c4028:	4c 8d 9c 24 80 01 00 00                         	lea    r11,[rsp+0x180]
  3c4030:	49 8b 5b 50                                     	mov    rbx,QWORD PTR [r11+0x50]
  3c4034:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3c4039:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3c403e:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3c4043:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3c4048:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3c404d:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3c4052:	49 8b e3                                        	mov    rsp,r11
  3c4055:	41 5f                                           	pop    r15
  3c4057:	41 5e                                           	pop    r14
  3c4059:	41 5d                                           	pop    r13
  3c405b:	41 5c                                           	pop    r12
  3c405d:	5f                                              	pop    rdi
  3c405e:	5e                                              	pop    rsi
  3c405f:	5d                                              	pop    rbp
  3c4060:	c3                                              	ret
