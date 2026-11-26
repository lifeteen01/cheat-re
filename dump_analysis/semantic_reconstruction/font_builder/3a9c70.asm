
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9c70 <.data+0x3a9c70>:
  3a9c70:	48 8b c4                                        	mov    rax,rsp
  3a9c73:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3a9c77:	89 50 10                                        	mov    DWORD PTR [rax+0x10],edx
  3a9c7a:	55                                              	push   rbp
  3a9c7b:	56                                              	push   rsi
  3a9c7c:	57                                              	push   rdi
  3a9c7d:	41 54                                           	push   r12
  3a9c7f:	41 55                                           	push   r13
  3a9c81:	41 56                                           	push   r14
  3a9c83:	41 57                                           	push   r15
  3a9c85:	48 81 ec c0 00 00 00                            	sub    rsp,0xc0
  3a9c8c:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3a9c90:	45 33 ff                                        	xor    r15d,r15d
  3a9c93:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3a9c97:	48 8b d9                                        	mov    rbx,rcx
  3a9c9a:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3a9c9f:	4d 8b f1                                        	mov    r14,r9
  3a9ca2:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3a9ca7:	8b fa                                           	mov    edi,edx
  3a9ca9:	44 0f 29 54 24 70                               	movaps XMMWORD PTR [rsp+0x70],xmm10
  3a9caf:	44 0f 28 d2                                     	movaps xmm10,xmm2
  3a9cb3:	44 89 78 18                                     	mov    DWORD PTR [rax+0x18],r15d
  3a9cb7:	45 8b c7                                        	mov    r8d,r15d
  3a9cba:	41 8b cf                                        	mov    ecx,r15d
  3a9cbd:	85 d2                                           	test   edx,edx
  3a9cbf:	7e 1c                                           	jle    0x3a9cdd
  3a9cc1:	8b c1                                           	mov    eax,ecx
  3a9cc3:	48 6b d0 0e                                     	imul   rdx,rax,0xe
  3a9cc7:	41 8d 40 01                                     	lea    eax,[r8+0x1]
  3a9ccb:	80 7c 13 0c 01                                  	cmp    BYTE PTR [rbx+rdx*1+0xc],0x1
  3a9cd0:	41 0f 45 c0                                     	cmovne eax,r8d
  3a9cd4:	ff c1                                           	inc    ecx
  3a9cd6:	44 8b c0                                        	mov    r8d,eax
  3a9cd9:	3b cf                                           	cmp    ecx,edi
  3a9cdb:	7c e4                                           	jl     0x3a9cc1
  3a9cdd:	4c 8b ac 24 20 01 00 00                         	mov    r13,QWORD PTR [rsp+0x120]
  3a9ce5:	45 89 45 00                                     	mov    DWORD PTR [r13+0x0],r8d
  3a9ce9:	45 85 c0                                        	test   r8d,r8d
  3a9cec:	75 07                                           	jne    0x3a9cf5
  3a9cee:	33 c0                                           	xor    eax,eax
  3a9cf0:	e9 b3 02 00 00                                  	jmp    0x3a9fa8
  3a9cf5:	49 63 c8                                        	movsxd rcx,r8d
  3a9cf8:	48 c1 e1 02                                     	shl    rcx,0x2
  3a9cfc:	e8 57 b4 fe ff                                  	call   0x395158
  3a9d01:	49 89 06                                        	mov    QWORD PTR [r14],rax
  3a9d04:	48 85 c0                                        	test   rax,rax
  3a9d07:	75 06                                           	jne    0x3a9d0f
  3a9d09:	45 89 7d 00                                     	mov    DWORD PTR [r13+0x0],r15d
  3a9d0d:	eb df                                           	jmp    0x3a9cee
  3a9d0f:	49 8b f7                                        	mov    rsi,r15
  3a9d12:	f3 45 0f 59 d2                                  	mulss  xmm10,xmm10
  3a9d17:	45 8b c7                                        	mov    r8d,r15d
  3a9d1a:	44 89 7c 24 60                                  	mov    DWORD PTR [rsp+0x60],r15d
  3a9d1f:	45 8b e7                                        	mov    r12d,r15d
  3a9d22:	41 83 fc 01                                     	cmp    r12d,0x1
  3a9d26:	75 22                                           	jne    0x3a9d4a
  3a9d28:	48 63 8c 24 10 01 00 00                         	movsxd rcx,DWORD PTR [rsp+0x110]
  3a9d30:	48 c1 e1 03                                     	shl    rcx,0x3
  3a9d34:	e8 1f b4 fe ff                                  	call   0x395158
  3a9d39:	48 8b f0                                        	mov    rsi,rax
  3a9d3c:	48 85 c0                                        	test   rax,rax
  3a9d3f:	0f 84 49 02 00 00                               	je     0x3a9f8e
  3a9d45:	44 8b 44 24 60                                  	mov    r8d,DWORD PTR [rsp+0x60]
  3a9d4a:	83 cd ff                                        	or     ebp,0xffffffff
  3a9d4d:	44 89 bc 24 10 01 00 00                         	mov    DWORD PTR [rsp+0x110],r15d
  3a9d55:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3a9d59:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  3a9d5d:	85 ff                                           	test   edi,edi
  3a9d5f:	0f 8e 05 02 00 00                               	jle    0x3a9f6a
  3a9d65:	44 8b ac 24 08 01 00 00                         	mov    r13d,DWORD PTR [rsp+0x108]
  3a9d6d:	41 8b c7                                        	mov    eax,r15d
  3a9d70:	48 6b f8 0e                                     	imul   rdi,rax,0xe
  3a9d74:	0f b6 4c 3b 0c                                  	movzx  ecx,BYTE PTR [rbx+rdi*1+0xc]
  3a9d79:	83 e9 01                                        	sub    ecx,0x1
  3a9d7c:	0f 84 6e 01 00 00                               	je     0x3a9ef0
  3a9d82:	83 e9 01                                        	sub    ecx,0x1
  3a9d85:	0f 84 46 01 00 00                               	je     0x3a9ed1
  3a9d8b:	83 e9 01                                        	sub    ecx,0x1
  3a9d8e:	0f 84 c0 00 00 00                               	je     0x3a9e54
  3a9d94:	83 f9 01                                        	cmp    ecx,0x1
  3a9d97:	0f 85 b2 01 00 00                               	jne    0x3a9f4f
  3a9d9d:	0f bf 44 3b 02                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x2]
  3a9da2:	48 8d 94 24 10 01 00 00                         	lea    rdx,[rsp+0x110]
  3a9daa:	c7 44 24 58 00 00 00 00                         	mov    DWORD PTR [rsp+0x58],0x0
  3a9db2:	41 0f 28 d9                                     	movaps xmm3,xmm9
  3a9db6:	f3 44 0f 11 54 24 50                            	movss  DWORD PTR [rsp+0x50],xmm10
  3a9dbd:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a9dc1:	48 8b ce                                        	mov    rcx,rsi
  3a9dc4:	66 0f 6e f8                                     	movd   xmm7,eax
  3a9dc8:	0f bf 04 3b                                     	movsx  eax,WORD PTR [rbx+rdi*1]
  3a9dcc:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3a9dcf:	66 0f 6e f0                                     	movd   xmm6,eax
  3a9dd3:	0f bf 44 3b 0a                                  	movsx  eax,WORD PTR [rbx+rdi*1+0xa]
  3a9dd8:	f3 0f 11 7c 24 48                               	movss  DWORD PTR [rsp+0x48],xmm7
  3a9dde:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3a9de1:	66 0f 6e e8                                     	movd   xmm5,eax
  3a9de5:	0f bf 44 3b 08                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x8]
  3a9dea:	f3 0f 11 74 24 40                               	movss  DWORD PTR [rsp+0x40],xmm6
  3a9df0:	0f 5b ed                                        	cvtdq2ps xmm5,xmm5
  3a9df3:	66 0f 6e e0                                     	movd   xmm4,eax
  3a9df7:	0f bf 44 3b 06                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x6]
  3a9dfc:	f3 0f 11 6c 24 38                               	movss  DWORD PTR [rsp+0x38],xmm5
  3a9e02:	0f 5b e4                                        	cvtdq2ps xmm4,xmm4
  3a9e05:	66 0f 6e c8                                     	movd   xmm1,eax
  3a9e09:	0f bf 44 3b 04                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x4]
  3a9e0e:	f3 0f 11 64 24 30                               	movss  DWORD PTR [rsp+0x30],xmm4
  3a9e14:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a9e17:	66 0f 6e c0                                     	movd   xmm0,eax
  3a9e1b:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a9e1e:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  3a9e24:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a9e2a:	e8 c1 36 00 00                                  	call   0x3ad4f0
  3a9e2f:	0f bf 04 3b                                     	movsx  eax,WORD PTR [rbx+rdi*1]
  3a9e33:	66 44 0f 6e c0                                  	movd   xmm8,eax
  3a9e38:	0f bf 44 3b 02                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x2]
  3a9e3d:	44 8b 44 24 60                                  	mov    r8d,DWORD PTR [rsp+0x60]
  3a9e42:	45 0f 5b c0                                     	cvtdq2ps xmm8,xmm8
  3a9e46:	66 44 0f 6e c8                                  	movd   xmm9,eax
  3a9e4b:	45 0f 5b c9                                     	cvtdq2ps xmm9,xmm9
  3a9e4f:	e9 fb 00 00 00                                  	jmp    0x3a9f4f
  3a9e54:	0f bf 44 3b 02                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x2]
  3a9e59:	48 8d 94 24 10 01 00 00                         	lea    rdx,[rsp+0x110]
  3a9e61:	c7 44 24 48 00 00 00 00                         	mov    DWORD PTR [rsp+0x48],0x0
  3a9e69:	48 8b ce                                        	mov    rcx,rsi
  3a9e6c:	f3 44 0f 11 54 24 40                            	movss  DWORD PTR [rsp+0x40],xmm10
  3a9e73:	66 0f 6e d8                                     	movd   xmm3,eax
  3a9e77:	0f bf 04 3b                                     	movsx  eax,WORD PTR [rbx+rdi*1]
  3a9e7b:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  3a9e7e:	66 0f 6e d0                                     	movd   xmm2,eax
  3a9e82:	0f bf 44 3b 06                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x6]
  3a9e87:	f3 0f 11 5c 24 38                               	movss  DWORD PTR [rsp+0x38],xmm3
  3a9e8d:	41 0f 28 d9                                     	movaps xmm3,xmm9
  3a9e91:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a9e94:	66 0f 6e c8                                     	movd   xmm1,eax
  3a9e98:	0f bf 44 3b 04                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x4]
  3a9e9d:	f3 0f 11 54 24 30                               	movss  DWORD PTR [rsp+0x30],xmm2
  3a9ea3:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a9ea7:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a9eaa:	66 0f 6e c0                                     	movd   xmm0,eax
  3a9eae:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a9eb1:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  3a9eb7:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a9ebd:	e8 36 3a 00 00                                  	call   0x3ad8f8
  3a9ec2:	44 0f bf 04 3b                                  	movsx  r8d,WORD PTR [rbx+rdi*1]
  3a9ec7:	66 45 0f 6e c0                                  	movd   xmm8,r8d
  3a9ecc:	e9 67 ff ff ff                                  	jmp    0x3a9e38
  3a9ed1:	0f bf 04 3b                                     	movsx  eax,WORD PTR [rbx+rdi*1]
  3a9ed5:	8b 94 24 10 01 00 00                            	mov    edx,DWORD PTR [rsp+0x110]
  3a9edc:	66 44 0f 6e c0                                  	movd   xmm8,eax
  3a9ee1:	0f bf 44 3b 02                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x2]
  3a9ee6:	66 44 0f 6e c8                                  	movd   xmm9,eax
  3a9eeb:	8d 42 01                                        	lea    eax,[rdx+0x1]
  3a9eee:	eb 40                                           	jmp    0x3a9f30
  3a9ef0:	85 ed                                           	test   ebp,ebp
  3a9ef2:	78 13                                           	js     0x3a9f07
  3a9ef4:	8b 94 24 10 01 00 00                            	mov    edx,DWORD PTR [rsp+0x110]
  3a9efb:	49 8b 06                                        	mov    rax,QWORD PTR [r14]
  3a9efe:	41 2b d0                                        	sub    edx,r8d
  3a9f01:	48 63 cd                                        	movsxd rcx,ebp
  3a9f04:	89 14 88                                        	mov    DWORD PTR [rax+rcx*4],edx
  3a9f07:	44 8b 84 24 10 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x110]
  3a9f0f:	ff c5                                           	inc    ebp
  3a9f11:	0f bf 04 3b                                     	movsx  eax,WORD PTR [rbx+rdi*1]
  3a9f15:	41 8b d0                                        	mov    edx,r8d
  3a9f18:	44 89 44 24 60                                  	mov    DWORD PTR [rsp+0x60],r8d
  3a9f1d:	66 44 0f 6e c0                                  	movd   xmm8,eax
  3a9f22:	0f bf 44 3b 02                                  	movsx  eax,WORD PTR [rbx+rdi*1+0x2]
  3a9f27:	66 44 0f 6e c8                                  	movd   xmm9,eax
  3a9f2c:	41 8d 40 01                                     	lea    eax,[r8+0x1]
  3a9f30:	45 0f 5b c9                                     	cvtdq2ps xmm9,xmm9
  3a9f34:	48 8b ce                                        	mov    rcx,rsi
  3a9f37:	89 84 24 10 01 00 00                            	mov    DWORD PTR [rsp+0x110],eax
  3a9f3e:	45 0f 5b c0                                     	cvtdq2ps xmm8,xmm8
  3a9f42:	41 0f 28 d9                                     	movaps xmm3,xmm9
  3a9f46:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a9f4a:	e8 b9 0f 00 00                                  	call   0x3aaf08
  3a9f4f:	41 ff c7                                        	inc    r15d
  3a9f52:	45 3b fd                                        	cmp    r15d,r13d
  3a9f55:	0f 8c 12 fe ff ff                               	jl     0x3a9d6d
  3a9f5b:	4c 8b ac 24 20 01 00 00                         	mov    r13,QWORD PTR [rsp+0x120]
  3a9f63:	8b bc 24 08 01 00 00                            	mov    edi,DWORD PTR [rsp+0x108]
  3a9f6a:	8b 94 24 10 01 00 00                            	mov    edx,DWORD PTR [rsp+0x110]
  3a9f71:	41 ff c4                                        	inc    r12d
  3a9f74:	49 8b 06                                        	mov    rax,QWORD PTR [r14]
  3a9f77:	41 2b d0                                        	sub    edx,r8d
  3a9f7a:	48 63 cd                                        	movsxd rcx,ebp
  3a9f7d:	89 14 88                                        	mov    DWORD PTR [rax+rcx*4],edx
  3a9f80:	41 83 fc 02                                     	cmp    r12d,0x2
  3a9f84:	7d 1f                                           	jge    0x3a9fa5
  3a9f86:	45 33 ff                                        	xor    r15d,r15d
  3a9f89:	e9 94 fd ff ff                                  	jmp    0x3a9d22
  3a9f8e:	33 c9                                           	xor    ecx,ecx
  3a9f90:	e8 e7 b1 fe ff                                  	call   0x39517c
  3a9f95:	49 8b 0e                                        	mov    rcx,QWORD PTR [r14]
  3a9f98:	e8 df b1 fe ff                                  	call   0x39517c
  3a9f9d:	4d 89 3e                                        	mov    QWORD PTR [r14],r15
  3a9fa0:	e9 64 fd ff ff                                  	jmp    0x3a9d09
  3a9fa5:	48 8b c6                                        	mov    rax,rsi
  3a9fa8:	4c 8d 9c 24 c0 00 00 00                         	lea    r11,[rsp+0xc0]
  3a9fb0:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  3a9fb4:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3a9fb9:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3a9fbe:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3a9fc3:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3a9fc8:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3a9fcd:	49 8b e3                                        	mov    rsp,r11
  3a9fd0:	41 5f                                           	pop    r15
  3a9fd2:	41 5e                                           	pop    r14
  3a9fd4:	41 5d                                           	pop    r13
  3a9fd6:	41 5c                                           	pop    r12
  3a9fd8:	5f                                              	pop    rdi
  3a9fd9:	5e                                              	pop    rsi
  3a9fda:	5d                                              	pop    rbp
  3a9fdb:	c3                                              	ret
