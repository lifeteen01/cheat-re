
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000361bcc <.data+0x361bcc>:
  361bcc:	48 8b c4                                        	mov    rax,rsp
  361bcf:	48 89 58 10                                     	mov    QWORD PTR [rax+0x10],rbx
  361bd3:	55                                              	push   rbp
  361bd4:	56                                              	push   rsi
  361bd5:	57                                              	push   rdi
  361bd6:	41 54                                           	push   r12
  361bd8:	41 55                                           	push   r13
  361bda:	41 56                                           	push   r14
  361bdc:	41 57                                           	push   r15
  361bde:	48 8d 68 b1                                     	lea    rbp,[rax-0x4f]
  361be2:	48 81 ec a0 00 00 00                            	sub    rsp,0xa0
  361be9:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  361bed:	49 8b d9                                        	mov    rbx,r9
  361bf0:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  361bf4:	4d 8b f8                                        	mov    r15,r8
  361bf7:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  361bfc:	4c 8b f1                                        	mov    r14,rcx
  361bff:	e8 fc b5 ff ff                                  	call   0x35d200
  361c04:	8b 15 6e b1 09 00                               	mov    edx,DWORD PTR [rip+0x9b16e]        # 0x3fcd78
  361c0a:	45 33 e4                                        	xor    r12d,r12d
  361c0d:	4c 8b e8                                        	mov    r13,rax
  361c10:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  361c14:	85 d2                                           	test   edx,edx
  361c16:	75 20                                           	jne    0x361c38
  361c18:	8b 0d 1a d1 08 00                               	mov    ecx,DWORD PTR [rip+0x8d11a]        # 0x3eed38
  361c1e:	41 8d 54 24 0d                                  	lea    edx,[r12+0xd]
  361c23:	e8 f8 b5 ff ff                                  	call   0x35d220
  361c28:	f3 0f 10 3d 80 15 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31580]        # 0x2931b0
  361c30:	4c 8b f0                                        	mov    r14,rax
  361c33:	e9 b4 00 00 00                                  	jmp    0x361cec
  361c38:	83 fa 01                                        	cmp    edx,0x1
  361c3b:	75 20                                           	jne    0x361c5d
  361c3d:	8b 0d f5 d0 08 00                               	mov    ecx,DWORD PTR [rip+0x8d0f5]        # 0x3eed38
  361c43:	ba 10 00 00 00                                  	mov    edx,0x10
  361c48:	e8 d3 b5 ff ff                                  	call   0x35d220
  361c4d:	f3 0f 10 3d 67 15 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31567]        # 0x2931bc
  361c55:	4c 8b f0                                        	mov    r14,rax
  361c58:	e9 8f 00 00 00                                  	jmp    0x361cec
  361c5d:	83 fa 02                                        	cmp    edx,0x2
  361c60:	75 1d                                           	jne    0x361c7f
  361c62:	8b 0d d0 d0 08 00                               	mov    ecx,DWORD PTR [rip+0x8d0d0]        # 0x3eed38
  361c68:	ba 12 00 00 00                                  	mov    edx,0x12
  361c6d:	e8 ae b5 ff ff                                  	call   0x35d220
  361c72:	f3 0f 10 3d 46 15 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31546]        # 0x2931c0
  361c7a:	4c 8b f0                                        	mov    r14,rax
  361c7d:	eb 6d                                           	jmp    0x361cec
  361c7f:	83 fa 03                                        	cmp    edx,0x3
  361c82:	75 1d                                           	jne    0x361ca1
  361c84:	8b 0d ae d0 08 00                               	mov    ecx,DWORD PTR [rip+0x8d0ae]        # 0x3eed38
  361c8a:	ba 14 00 00 00                                  	mov    edx,0x14
  361c8f:	e8 8c b5 ff ff                                  	call   0x35d220
  361c94:	f3 0f 10 3d 84 be f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2be84]        # 0x28db20
  361c9c:	4c 8b f0                                        	mov    r14,rax
  361c9f:	eb 4b                                           	jmp    0x361cec
  361ca1:	83 fa 04                                        	cmp    edx,0x4
  361ca4:	75 1d                                           	jne    0x361cc3
  361ca6:	8b 0d 8c d0 08 00                               	mov    ecx,DWORD PTR [rip+0x8d08c]        # 0x3eed38
  361cac:	ba 16 00 00 00                                  	mov    edx,0x16
  361cb1:	e8 6a b5 ff ff                                  	call   0x35d220
  361cb6:	f3 0f 10 3d 0a 15 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff3150a]        # 0x2931c8
  361cbe:	4c 8b f0                                        	mov    r14,rax
  361cc1:	eb 29                                           	jmp    0x361cec
  361cc3:	83 fa 05                                        	cmp    edx,0x5
  361cc6:	75 1d                                           	jne    0x361ce5
  361cc8:	8b 0d 6a d0 08 00                               	mov    ecx,DWORD PTR [rip+0x8d06a]        # 0x3eed38
  361cce:	ba 18 00 00 00                                  	mov    edx,0x18
  361cd3:	e8 48 b5 ff ff                                  	call   0x35d220
  361cd8:	f3 0f 10 3d f0 14 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff314f0]        # 0x2931d0
  361ce0:	4c 8b f0                                        	mov    r14,rax
  361ce3:	eb 07                                           	jmp    0x361cec
  361ce5:	4d 8b 76 10                                     	mov    r14,QWORD PTR [r14+0x10]
  361ce9:	0f 57 ff                                        	xorps  xmm7,xmm7
  361cec:	8b 05 46 d0 08 00                               	mov    eax,DWORD PTR [rip+0x8d046]        # 0x3eed38
  361cf2:	83 f8 02                                        	cmp    eax,0x2
  361cf5:	75 08                                           	jne    0x361cff
  361cf7:	f3 0f 10 3d a5 14 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff314a5]        # 0x2931a4
  361cff:	f3 0f 10 35 15 be f2 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff2be15]        # 0x28db1c
  361d07:	85 c0                                           	test   eax,eax
  361d09:	75 03                                           	jne    0x361d0e
  361d0b:	0f 28 fe                                        	movaps xmm7,xmm6
  361d0e:	83 f8 03                                        	cmp    eax,0x3
  361d11:	75 08                                           	jne    0x361d1b
  361d13:	f3 0f 10 3d a1 14 f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff314a1]        # 0x2931bc
  361d1b:	83 7d 7f 04                                     	cmp    DWORD PTR [rbp+0x7f],0x4
  361d1f:	75 0c                                           	jne    0x361d2d
  361d21:	e8 f6 b5 ff ff                                  	call   0x35d31c
  361d26:	0f 28 fe                                        	movaps xmm7,xmm6
  361d29:	4c 8b 70 08                                     	mov    r14,QWORD PTR [rax+0x8]
  361d2d:	49 8b cf                                        	mov    rcx,r15
  361d30:	f3 0f 11 3d 98 71 ee ff                         	movss  DWORD PTR [rip+0xffffffffffee7198],xmm7        # 0x248ed0
  361d38:	e8 af ba f6 ff                                  	call   0x2cd7ec
  361d3d:	f3 0f 10 1d 0f be f2 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff2be0f]        # 0x28db54
  361d45:	48 8d 55 6f                                     	lea    rdx,[rbp+0x6f]
  361d49:	4c 89 64 24 38                                  	mov    QWORD PTR [rsp+0x38],r12
  361d4e:	0f 28 d7                                        	movaps xmm2,xmm7
  361d51:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361d56:	49 8b ce                                        	mov    rcx,r14
  361d59:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  361d5e:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  361d65:	e8 0a 1b 04 00                                  	call   0x3a3874
  361d6a:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  361d6f:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  361d73:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  361d77:	e8 c4 a5 f6 ff                                  	call   0x2cc340
  361d7c:	45 33 c9                                        	xor    r9d,r9d
  361d7f:	c7 44 24 20 ff 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xff
  361d87:	45 33 c0                                        	xor    r8d,r8d
  361d8a:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361d8e:	33 d2                                           	xor    edx,edx
  361d90:	e8 83 95 f7 ff                                  	call   0x2db318
  361d95:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361d9c:	49 8b cf                                        	mov    rcx,r15
  361d9f:	e8 48 ba f6 ff                                  	call   0x2cd7ec
  361da4:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361da8:	48 8b f8                                        	mov    rdi,rax
  361dab:	e8 5c da f8 ff                                  	call   0x2ef80c
  361db0:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  361db5:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  361db9:	f3 0f 10 35 93 b4 f2 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff2b493]        # 0x28d254
  361dc1:	8b d8                                           	mov    ebx,eax
  361dc3:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361dc8:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  361dcc:	e8 6f a5 f6 ff                                  	call   0x2cc340
  361dd1:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361dd6:	4c 8b c8                                        	mov    r9,rax
  361dd9:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  361de0:	0f 28 d7                                        	movaps xmm2,xmm7
  361de3:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361de8:	49 8b d6                                        	mov    rdx,r14
  361deb:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361df0:	48 8b ce                                        	mov    rcx,rsi
  361df3:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361df7:	e8 fc 13 04 00                                  	call   0x3a31f8
  361dfc:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361e03:	49 8b cf                                        	mov    rcx,r15
  361e06:	e8 e1 b9 f6 ff                                  	call   0x2cd7ec
  361e0b:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361e0f:	48 8b f8                                        	mov    rdi,rax
  361e12:	e8 f5 d9 f8 ff                                  	call   0x2ef80c
  361e17:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  361e1c:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  361e20:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361e25:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  361e29:	8b d8                                           	mov    ebx,eax
  361e2b:	e8 10 a5 f6 ff                                  	call   0x2cc340
  361e30:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361e35:	4c 8b c8                                        	mov    r9,rax
  361e38:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  361e3f:	0f 28 d7                                        	movaps xmm2,xmm7
  361e42:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361e47:	49 8b d6                                        	mov    rdx,r14
  361e4a:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361e4f:	48 8b ce                                        	mov    rcx,rsi
  361e52:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361e56:	e8 9d 13 04 00                                  	call   0x3a31f8
  361e5b:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361e62:	49 8b cf                                        	mov    rcx,r15
  361e65:	e8 82 b9 f6 ff                                  	call   0x2cd7ec
  361e6a:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361e6e:	48 8b f8                                        	mov    rdi,rax
  361e71:	e8 96 d9 f8 ff                                  	call   0x2ef80c
  361e76:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361e7b:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  361e7f:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  361e84:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  361e88:	8b d8                                           	mov    ebx,eax
  361e8a:	e8 b1 a4 f6 ff                                  	call   0x2cc340
  361e8f:	4c 8b c8                                        	mov    r9,rax
  361e92:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361e97:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  361e9e:	0f 28 d7                                        	movaps xmm2,xmm7
  361ea1:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361ea6:	49 8b d6                                        	mov    rdx,r14
  361ea9:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361eae:	48 8b ce                                        	mov    rcx,rsi
  361eb1:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361eb5:	e8 3e 13 04 00                                  	call   0x3a31f8
  361eba:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361ec1:	49 8b cf                                        	mov    rcx,r15
  361ec4:	e8 23 b9 f6 ff                                  	call   0x2cd7ec
  361ec9:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361ecd:	48 8b f8                                        	mov    rdi,rax
  361ed0:	e8 37 d9 f8 ff                                  	call   0x2ef80c
  361ed5:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361eda:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  361ede:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  361ee3:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  361ee7:	8b d8                                           	mov    ebx,eax
  361ee9:	e8 52 a4 f6 ff                                  	call   0x2cc340
  361eee:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361ef3:	4c 8b c8                                        	mov    r9,rax
  361ef6:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  361efd:	0f 28 d7                                        	movaps xmm2,xmm7
  361f00:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361f05:	49 8b d6                                        	mov    rdx,r14
  361f08:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361f0d:	48 8b ce                                        	mov    rcx,rsi
  361f10:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361f14:	e8 df 12 04 00                                  	call   0x3a31f8
  361f19:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361f20:	49 8b cf                                        	mov    rcx,r15
  361f23:	e8 c4 b8 f6 ff                                  	call   0x2cd7ec
  361f28:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361f2c:	48 8b f8                                        	mov    rdi,rax
  361f2f:	e8 d8 d8 f8 ff                                  	call   0x2ef80c
  361f34:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361f39:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  361f3d:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  361f42:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  361f46:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  361f4a:	8b d8                                           	mov    ebx,eax
  361f4c:	e8 ef a3 f6 ff                                  	call   0x2cc340
  361f51:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361f56:	4c 8b c8                                        	mov    r9,rax
  361f59:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  361f60:	0f 28 d7                                        	movaps xmm2,xmm7
  361f63:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361f68:	49 8b d6                                        	mov    rdx,r14
  361f6b:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361f70:	48 8b ce                                        	mov    rcx,rsi
  361f73:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361f77:	e8 7c 12 04 00                                  	call   0x3a31f8
  361f7c:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361f83:	49 8b cf                                        	mov    rcx,r15
  361f86:	e8 61 b8 f6 ff                                  	call   0x2cd7ec
  361f8b:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361f8f:	48 8b f8                                        	mov    rdi,rax
  361f92:	e8 75 d8 f8 ff                                  	call   0x2ef80c
  361f97:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361f9c:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  361fa0:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  361fa5:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  361fa9:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  361fad:	8b d8                                           	mov    ebx,eax
  361faf:	e8 8c a3 f6 ff                                  	call   0x2cc340
  361fb4:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361fb9:	4c 8b c8                                        	mov    r9,rax
  361fbc:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  361fc3:	0f 28 d7                                        	movaps xmm2,xmm7
  361fc6:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361fcb:	49 8b d6                                        	mov    rdx,r14
  361fce:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361fd3:	48 8b ce                                        	mov    rcx,rsi
  361fd6:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361fda:	e8 19 12 04 00                                  	call   0x3a31f8
  361fdf:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  361fe6:	49 8b cf                                        	mov    rcx,r15
  361fe9:	e8 fe b7 f6 ff                                  	call   0x2cd7ec
  361fee:	48 8b f8                                        	mov    rdi,rax
  361ff1:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  361ff5:	e8 12 d8 f8 ff                                  	call   0x2ef80c
  361ffa:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  361fff:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  362003:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  362008:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  36200c:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  362010:	8b d8                                           	mov    ebx,eax
  362012:	e8 29 a3 f6 ff                                  	call   0x2cc340
  362017:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  36201c:	4c 8b c8                                        	mov    r9,rax
  36201f:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  362026:	0f 28 d7                                        	movaps xmm2,xmm7
  362029:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  36202e:	49 8b d6                                        	mov    rdx,r14
  362031:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  362036:	48 8b ce                                        	mov    rcx,rsi
  362039:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  36203d:	e8 b6 11 04 00                                  	call   0x3a31f8
  362042:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  362049:	49 8b cf                                        	mov    rcx,r15
  36204c:	e8 9b b7 f6 ff                                  	call   0x2cd7ec
  362051:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  362055:	48 8b f8                                        	mov    rdi,rax
  362058:	e8 af d7 f8 ff                                  	call   0x2ef80c
  36205d:	f3 0f 10 55 5b                                  	movss  xmm2,DWORD PTR [rbp+0x5b]
  362062:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  362066:	f3 0f 10 4d 57                                  	movss  xmm1,DWORD PTR [rbp+0x57]
  36206b:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  36206f:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  362073:	8b d8                                           	mov    ebx,eax
  362075:	e8 c6 a2 f6 ff                                  	call   0x2cc340
  36207a:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  36207f:	4c 8b c8                                        	mov    r9,rax
  362082:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  362089:	0f 28 d7                                        	movaps xmm2,xmm7
  36208c:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  362091:	49 8b d6                                        	mov    rdx,r14
  362094:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  362099:	48 8b ce                                        	mov    rcx,rsi
  36209c:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3620a0:	e8 53 11 04 00                                  	call   0x3a31f8
  3620a5:	49 8b bd 98 02 00 00                            	mov    rdi,QWORD PTR [r13+0x298]
  3620ac:	49 8b cf                                        	mov    rcx,r15
  3620af:	e8 38 b7 f6 ff                                  	call   0x2cd7ec
  3620b4:	48 8b 4d 77                                     	mov    rcx,QWORD PTR [rbp+0x77]
  3620b8:	48 8b d8                                        	mov    rbx,rax
  3620bb:	e8 4c d7 f8 ff                                  	call   0x2ef80c
  3620c0:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  3620c5:	4c 8d 4d 57                                     	lea    r9,[rbp+0x57]
  3620c9:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  3620d0:	0f 28 d7                                        	movaps xmm2,xmm7
  3620d3:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  3620d8:	49 8b d6                                        	mov    rdx,r14
  3620db:	48 89 5c 24 28                                  	mov    QWORD PTR [rsp+0x28],rbx
  3620e0:	48 8b cf                                        	mov    rcx,rdi
  3620e3:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3620e7:	e8 0c 11 04 00                                  	call   0x3a31f8
  3620ec:	4c 8d 9c 24 a0 00 00 00                         	lea    r11,[rsp+0xa0]
  3620f4:	49 8b 5b 48                                     	mov    rbx,QWORD PTR [r11+0x48]
  3620f8:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3620fd:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  362102:	45 0f 28 4b d0                                  	movaps xmm9,XMMWORD PTR [r11-0x30]
  362107:	49 8b e3                                        	mov    rsp,r11
  36210a:	41 5f                                           	pop    r15
  36210c:	41 5e                                           	pop    r14
  36210e:	41 5d                                           	pop    r13
  362110:	41 5c                                           	pop    r12
  362112:	5f                                              	pop    rdi
  362113:	5e                                              	pop    rsi
  362114:	5d                                              	pop    rbp
  362115:	c3                                              	ret
