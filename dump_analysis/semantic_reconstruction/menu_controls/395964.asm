
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395964 <.data+0x395964>:
  395964:	40 53                                           	rex push rbx
  395966:	55                                              	push   rbp
  395967:	56                                              	push   rsi
  395968:	57                                              	push   rdi
  395969:	41 56                                           	push   r14
  39596b:	48 83 ec 60                                     	sub    rsp,0x60
  39596f:	48 8b 1d b2 01 07 00                            	mov    rbx,QWORD PTR [rip+0x701b2]        # 0x405b28
  395976:	0f 29 74 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm6
  39597b:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm7
  395980:	48 8b bb 08 3f 00 00                            	mov    rdi,QWORD PTR [rbx+0x3f08]
  395987:	8b ab a4 47 00 00                               	mov    ebp,DWORD PTR [rbx+0x47a4]
  39598d:	8b b3 a8 47 00 00                               	mov    esi,DWORD PTR [rbx+0x47a8]
  395993:	80 bf 60 01 00 00 00                            	cmp    BYTE PTR [rdi+0x160],0x0
  39599a:	75 4a                                           	jne    0x3959e6
  39599c:	f3 0f 10 97 40 02 00 00                         	movss  xmm2,DWORD PTR [rdi+0x240]
  3959a4:	f3 0f 10 8f 38 02 00 00                         	movss  xmm1,DWORD PTR [rdi+0x238]
  3959ac:	f3 0f 10 83 c0 47 00 00                         	movss  xmm0,DWORD PTR [rbx+0x47c0]
  3959b4:	e8 03 09 fe ff                                  	call   0x3762bc
  3959b9:	f3 0f 11 83 c0 47 00 00                         	movss  DWORD PTR [rbx+0x47c0],xmm0
  3959c1:	f3 0f 10 97 40 02 00 00                         	movss  xmm2,DWORD PTR [rdi+0x240]
  3959c9:	f3 0f 10 8f 38 02 00 00                         	movss  xmm1,DWORD PTR [rdi+0x238]
  3959d1:	f3 0f 10 83 c8 47 00 00                         	movss  xmm0,DWORD PTR [rbx+0x47c8]
  3959d9:	e8 de 08 fe ff                                  	call   0x3762bc
  3959de:	f3 0f 11 83 c8 47 00 00                         	movss  DWORD PTR [rbx+0x47c8],xmm0
  3959e6:	80 bb 29 49 00 00 00                            	cmp    BYTE PTR [rbx+0x4929],0x0
  3959ed:	f3 0f 6f bb c0 47 00 00                         	movdqu xmm7,XMMWORD PTR [rbx+0x47c0]
  3959f5:	0f 11 7c 24 20                                  	movups XMMWORD PTR [rsp+0x20],xmm7
  3959fa:	74 5a                                           	je     0x395a56
  3959fc:	8b 87 58 01 00 00                               	mov    eax,DWORD PTR [rdi+0x158]
  395a02:	39 83 20 49 00 00                               	cmp    DWORD PTR [rbx+0x4920],eax
  395a08:	75 4c                                           	jne    0x395a56
  395a0a:	40 f6 c6 04                                     	test   sil,0x4
  395a0e:	75 46                                           	jne    0x395a56
  395a10:	44 8b f6                                        	mov    r14d,esi
  395a13:	41 83 e6 10                                     	and    r14d,0x10
  395a17:	74 09                                           	je     0x395a22
  395a19:	83 bb 2c 49 00 00 00                            	cmp    DWORD PTR [rbx+0x492c],0x0
  395a20:	75 34                                           	jne    0x395a56
  395a22:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  395a27:	89 ab 2c 49 00 00                               	mov    DWORD PTR [rbx+0x492c],ebp
  395a2d:	48 8b d7                                        	mov    rdx,rdi
  395a30:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  395a35:	e8 a6 87 00 00                                  	call   0x39e1e0
  395a3a:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  395a3d:	f3 0f 7f 83 30 49 00 00                         	movdqu XMMWORD PTR [rbx+0x4930],xmm0
  395a45:	45 85 f6                                        	test   r14d,r14d
  395a48:	75 0c                                           	jne    0x395a56
  395a4a:	44 88 b3 29 49 00 00                            	mov    BYTE PTR [rbx+0x4929],r14b
  395a51:	e8 16 0d 00 00                                  	call   0x39676c
  395a56:	80 bb 41 49 00 00 00                            	cmp    BYTE PTR [rbx+0x4941],0x0
  395a5d:	0f 84 e8 00 00 00                               	je     0x395b4b
  395a63:	40 f6 c6 04                                     	test   sil,0x4
  395a67:	0f 85 de 00 00 00                               	jne    0x395b4b
  395a6d:	8b 83 44 49 00 00                               	mov    eax,DWORD PTR [rbx+0x4944]
  395a73:	0f ba e0 0a                                     	bt     eax,0xa
  395a77:	73 11                                           	jae    0x395a8a
  395a79:	44 8b c0                                        	mov    r8d,eax
  395a7c:	8b d6                                           	mov    edx,esi
  395a7e:	8b cd                                           	mov    ecx,ebp
  395a80:	e8 3f 01 00 00                                  	call   0x395bc4
  395a85:	e9 c1 00 00 00                                  	jmp    0x395b4b
  395a8a:	39 ab f0 48 00 00                               	cmp    DWORD PTR [rbx+0x48f0],ebp
  395a90:	75 08                                           	jne    0x395a9a
  395a92:	a8 10                                           	test   al,0x10
  395a94:	0f 84 b1 00 00 00                               	je     0x395b4b
  395a9a:	48 3b bb e8 48 00 00                            	cmp    rdi,QWORD PTR [rbx+0x48e8]
  395aa1:	be e8 49 00 00                                  	mov    esi,0x49e8
  395aa6:	8d 4e a0                                        	lea    ecx,[rsi-0x60]
  395aa9:	0f 44 f1                                        	cmove  esi,ecx
  395aac:	48 03 f3                                        	add    rsi,rbx
  395aaf:	48 8b ce                                        	mov    rcx,rsi
  395ab2:	e8 01 03 00 00                                  	call   0x395db8
  395ab7:	84 c0                                           	test   al,al
  395ab9:	74 08                                           	je     0x395ac3
  395abb:	48 8b ce                                        	mov    rcx,rsi
  395abe:	e8 95 f7 ff ff                                  	call   0x395258
  395ac3:	f6 83 44 49 00 00 20                            	test   BYTE PTR [rbx+0x4944],0x20
  395aca:	74 7f                                           	je     0x395b4b
  395acc:	48 8d 8f 38 02 00 00                            	lea    rcx,[rdi+0x238]
  395ad3:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  395ad8:	e8 4b 2c 00 00                                  	call   0x398728
  395add:	84 c0                                           	test   al,al
  395adf:	74 6a                                           	je     0x395b4b
  395ae1:	f3 0f 10 9f 44 02 00 00                         	movss  xmm3,DWORD PTR [rdi+0x244]
  395ae9:	0f 28 f7                                        	movaps xmm6,xmm7
  395aec:	f3 0f 10 a7 3c 02 00 00                         	movss  xmm4,DWORD PTR [rdi+0x23c]
  395af4:	0f 28 d3                                        	movaps xmm2,xmm3
  395af7:	0f c6 f7 ff                                     	shufps xmm6,xmm7,0xff
  395afb:	0f 28 cc                                        	movaps xmm1,xmm4
  395afe:	0f 28 c6                                        	movaps xmm0,xmm6
  395b01:	e8 b6 07 fe ff                                  	call   0x3762bc
  395b06:	0f 28 e8                                        	movaps xmm5,xmm0
  395b09:	0f c6 ff 55                                     	shufps xmm7,xmm7,0x55
  395b0d:	0f 28 c7                                        	movaps xmm0,xmm7
  395b10:	0f 28 d3                                        	movaps xmm2,xmm3
  395b13:	0f 28 cc                                        	movaps xmm1,xmm4
  395b16:	e8 a1 07 fe ff                                  	call   0x3762bc
  395b1b:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  395b1f:	f3 0f 5c e8                                     	subss  xmm5,xmm0
  395b23:	f3 0f 59 35 a1 d5 ef ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffefd5a1]        # 0x2930cc
  395b2b:	0f 2f ee                                        	comiss xmm5,xmm6
  395b2e:	72 1b                                           	jb     0x395b4b
  395b30:	48 8d b3 b8 49 00 00                            	lea    rsi,[rbx+0x49b8]
  395b37:	48 8b ce                                        	mov    rcx,rsi
  395b3a:	e8 79 02 00 00                                  	call   0x395db8
  395b3f:	84 c0                                           	test   al,al
  395b41:	74 08                                           	je     0x395b4b
  395b43:	48 8b ce                                        	mov    rcx,rsi
  395b46:	e8 0d f7 ff ff                                  	call   0x395258
  395b4b:	39 ab f0 48 00 00                               	cmp    DWORD PTR [rbx+0x48f0],ebp
  395b51:	75 59                                           	jne    0x395bac
  395b53:	48 39 bb e8 48 00 00                            	cmp    QWORD PTR [rbx+0x48e8],rdi
  395b5a:	74 08                                           	je     0x395b64
  395b5c:	48 8b cf                                        	mov    rcx,rdi
  395b5f:	e8 74 5b 00 00                                  	call   0x39b6d8
  395b64:	8b 87 58 01 00 00                               	mov    eax,DWORD PTR [rdi+0x158]
  395b6a:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  395b6f:	89 83 20 49 00 00                               	mov    DWORD PTR [rbx+0x4920],eax
  395b75:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  395b7a:	8b 83 84 47 00 00                               	mov    eax,DWORD PTR [rbx+0x4784]
  395b80:	48 8b d7                                        	mov    rdx,rdi
  395b83:	89 83 f4 48 00 00                               	mov    DWORD PTR [rbx+0x48f4],eax
  395b89:	c6 83 24 49 00 00 01                            	mov    BYTE PTR [rbx+0x4924],0x1
  395b90:	e8 4b 86 00 00                                  	call   0x39e1e0
  395b95:	f3 0f 6f 00                                     	movdqu xmm0,XMMWORD PTR [rax]
  395b99:	48 63 87 58 01 00 00                            	movsxd rax,DWORD PTR [rdi+0x158]
  395ba0:	48 03 c0                                        	add    rax,rax
  395ba3:	f3 0f 7f 84 c7 a8 03 00 00                      	movdqu XMMWORD PTR [rdi+rax*8+0x3a8],xmm0
  395bac:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  395bb1:	0f 28 7c 24 40                                  	movaps xmm7,XMMWORD PTR [rsp+0x40]
  395bb6:	48 83 c4 60                                     	add    rsp,0x60
  395bba:	41 5e                                           	pop    r14
  395bbc:	5f                                              	pop    rdi
  395bbd:	5e                                              	pop    rsi
  395bbe:	5d                                              	pop    rbp
  395bbf:	5b                                              	pop    rbx
  395bc0:	c3                                              	ret
