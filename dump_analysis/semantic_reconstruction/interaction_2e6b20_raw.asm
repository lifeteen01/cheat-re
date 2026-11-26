
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e6b20 <.data+0x2e6b20>:
  2e6b20:	48 8b c4                                        	mov    rax,rsp
  2e6b23:	55                                              	push   rbp
  2e6b24:	53                                              	push   rbx
  2e6b25:	56                                              	push   rsi
  2e6b26:	57                                              	push   rdi
  2e6b27:	41 54                                           	push   r12
  2e6b29:	41 55                                           	push   r13
  2e6b2b:	41 56                                           	push   r14
  2e6b2d:	41 57                                           	push   r15
  2e6b2f:	48 8d 6c 24 a8                                  	lea    rbp,[rsp-0x58]
  2e6b34:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
  2e6b3b:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  2e6b3f:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  2e6b43:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  2e6b48:	44 0f 29 a8 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm13
  2e6b50:	44 0f 29 b0 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm14
  2e6b58:	e8 3f 9b ff ff                                  	call   0x2e069c
  2e6b5d:	48 8b c8                                        	mov    rcx,rax
  2e6b60:	e8 a3 43 fe ff                                  	call   0x2caf08
  2e6b65:	45 33 ed                                        	xor    r13d,r13d
  2e6b68:	84 c0                                           	test   al,al
  2e6b6a:	0f 84 6c 1d 00 00                               	je     0x2e88dc
  2e6b70:	e8 27 6f ff ff                                  	call   0x2dda9c
  2e6b75:	48 8b c8                                        	mov    rcx,rax
  2e6b78:	48 89 45 88                                     	mov    QWORD PTR [rbp-0x78],rax
  2e6b7c:	48 8b f8                                        	mov    rdi,rax
  2e6b7f:	e8 84 43 fe ff                                  	call   0x2caf08
  2e6b84:	84 c0                                           	test   al,al
  2e6b86:	0f 84 50 1d 00 00                               	je     0x2e88dc
  2e6b8c:	44 38 2d b5 e4 0f 00                            	cmp    BYTE PTR [rip+0xfe4b5],r13b        # 0x3e5048
  2e6b93:	45 8d 7d 01                                     	lea    r15d,[r13+0x1]
  2e6b97:	74 78                                           	je     0x2e6c11
  2e6b99:	41 8a d7                                        	mov    dl,r15b
  2e6b9c:	b9 2b 02 00 00                                  	mov    ecx,0x22b
  2e6ba1:	e8 a6 f2 ff ff                                  	call   0x2e5e4c
  2e6ba6:	84 c0                                           	test   al,al
  2e6ba8:	74 67                                           	je     0x2e6c11
  2e6baa:	48 8b cf                                        	mov    rcx,rdi
  2e6bad:	e8 d2 1e 08 00                                  	call   0x368a84
  2e6bb2:	48 8b c8                                        	mov    rcx,rax
  2e6bb5:	48 8b d0                                        	mov    rdx,rax
  2e6bb8:	e8 4b 43 fe ff                                  	call   0x2caf08
  2e6bbd:	84 c0                                           	test   al,al
  2e6bbf:	74 50                                           	je     0x2e6c11
  2e6bc1:	48 8b ca                                        	mov    rcx,rdx
  2e6bc4:	e8 93 b2 08 00                                  	call   0x371e5c
  2e6bc9:	48 8b c8                                        	mov    rcx,rax
  2e6bcc:	48 8b d8                                        	mov    rbx,rax
  2e6bcf:	e8 34 43 fe ff                                  	call   0x2caf08
  2e6bd4:	84 c0                                           	test   al,al
  2e6bd6:	74 39                                           	je     0x2e6c11
  2e6bd8:	48 8b cb                                        	mov    rcx,rbx
  2e6bdb:	e8 d4 57 08 00                                  	call   0x36c3b4
  2e6be0:	48 8b c8                                        	mov    rcx,rax
  2e6be3:	48 8b d0                                        	mov    rdx,rax
  2e6be6:	e8 1d 43 fe ff                                  	call   0x2caf08
  2e6beb:	84 c0                                           	test   al,al
  2e6bed:	74 22                                           	je     0x2e6c11
  2e6bef:	44 39 6a 1c                                     	cmp    DWORD PTR [rdx+0x1c],r13d
  2e6bf3:	7e 1c                                           	jle    0x2e6c11
  2e6bf5:	44 38 2d 1c 1c f3 ff                            	cmp    BYTE PTR [rip+0xfffffffffff31c1c],r13b        # 0x218818
  2e6bfc:	75 13                                           	jne    0x2e6c11
  2e6bfe:	e8 41 fc ff ff                                  	call   0x2e6844
  2e6c03:	84 c0                                           	test   al,al
  2e6c05:	75 0a                                           	jne    0x2e6c11
  2e6c07:	33 d2                                           	xor    edx,edx
  2e6c09:	48 8b cb                                        	mov    rcx,rbx
  2e6c0c:	e8 cb 53 08 00                                  	call   0x36bfdc
  2e6c11:	44 38 2d a0 e2 0f 00                            	cmp    BYTE PTR [rip+0xfe2a0],r13b        # 0x3e4eb8
  2e6c18:	41 bc 00 04 00 00                               	mov    r12d,0x400
  2e6c1e:	45 0f 57 f6                                     	xorps  xmm14,xmm14
  2e6c22:	0f 84 c9 04 00 00                               	je     0x2e70f1
  2e6c28:	44 38 2d 69 10 0f 00                            	cmp    BYTE PTR [rip+0xf1069],r13b        # 0x3d7c98
  2e6c2f:	0f 85 bc 04 00 00                               	jne    0x2e70f1
  2e6c35:	48 8b cf                                        	mov    rcx,rdi
  2e6c38:	e8 47 1e 08 00                                  	call   0x368a84
  2e6c3d:	48 8b c8                                        	mov    rcx,rax
  2e6c40:	48 8b d0                                        	mov    rdx,rax
  2e6c43:	e8 c0 42 fe ff                                  	call   0x2caf08
  2e6c48:	84 c0                                           	test   al,al
  2e6c4a:	0f 84 a1 04 00 00                               	je     0x2e70f1
  2e6c50:	48 8b ca                                        	mov    rcx,rdx
  2e6c53:	e8 5c b5 08 00                                  	call   0x3721b4
  2e6c58:	48 8b c8                                        	mov    rcx,rax
  2e6c5b:	48 8b f0                                        	mov    rsi,rax
  2e6c5e:	e8 a5 42 fe ff                                  	call   0x2caf08
  2e6c63:	84 c0                                           	test   al,al
  2e6c65:	0f 84 86 04 00 00                               	je     0x2e70f1
  2e6c6b:	48 8b cf                                        	mov    rcx,rdi
  2e6c6e:	e8 c5 2a 08 00                                  	call   0x369738
  2e6c73:	48 8b c8                                        	mov    rcx,rax
  2e6c76:	4c 8b f0                                        	mov    r14,rax
  2e6c79:	e8 8a 42 fe ff                                  	call   0x2caf08
  2e6c7e:	84 c0                                           	test   al,al
  2e6c80:	0f 84 6b 04 00 00                               	je     0x2e70f1
  2e6c86:	44 38 2d 14 16 0f 00                            	cmp    BYTE PTR [rip+0xf1614],r13b        # 0x3d82a1
  2e6c8d:	f3 44 0f 10 ae b8 03 00 00                      	movss  xmm13,DWORD PTR [rsi+0x3b8]
  2e6c96:	0f 85 be 00 00 00                               	jne    0x2e6d5a
  2e6c9c:	44 38 2d 95 10 0f 00                            	cmp    BYTE PTR [rip+0xf1095],r13b        # 0x3d7d38
  2e6ca3:	0f 84 b1 00 00 00                               	je     0x2e6d5a
  2e6ca9:	48 8b 1d 08 06 0f 00                            	mov    rbx,QWORD PTR [rip+0xf0608]        # 0x3d72b8
  2e6cb0:	48 8b cb                                        	mov    rcx,rbx
  2e6cb3:	e8 50 42 fe ff                                  	call   0x2caf08
  2e6cb8:	84 c0                                           	test   al,al
  2e6cba:	0f 84 9a 00 00 00                               	je     0x2e6d5a
  2e6cc0:	48 8b cb                                        	mov    rcx,rbx
  2e6cc3:	e8 d4 a1 ff ff                                  	call   0x2e0e9c
  2e6cc8:	84 c0                                           	test   al,al
  2e6cca:	0f 84 8a 00 00 00                               	je     0x2e6d5a
  2e6cd0:	41 b8 3e 00 00 00                               	mov    r8d,0x3e
  2e6cd6:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e6cdb:	48 8b cb                                        	mov    rcx,rbx
  2e6cde:	e8 05 1f 08 00                                  	call   0x368be8
  2e6ce3:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  2e6ce9:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2e6cee:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  2e6cf2:	48 8b cf                                        	mov    rcx,rdi
  2e6cf5:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2e6cfb:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2e6cff:	e8 ac f9 07 00                                  	call   0x3666b0
  2e6d04:	0f 28 c8                                        	movaps xmm1,xmm0
  2e6d07:	f3 0f 10 05 dd 05 0f 00                         	movss  xmm0,DWORD PTR [rip+0xf05dd]        # 0x3d72ec
  2e6d0f:	f3 0f 58 05 c9 6d fa ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffffa6dc9]        # 0x28dae0
  2e6d17:	f3 0f 58 0d 31 65 fa ff                         	addss  xmm1,DWORD PTR [rip+0xfffffffffffa6531]        # 0x28d250
  2e6d1f:	f3 0f 59 05 d5 6d fa ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffffa6dd5]        # 0x28dafc
  2e6d27:	f3 0f 59 05 19 6e fa ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffffa6e19]        # 0x28db48
  2e6d2f:	0f 5a c0                                        	cvtps2pd xmm0,xmm0
  2e6d32:	f2 0f 58 05 b6 6d fa ff                         	addsd  xmm0,QWORD PTR [rip+0xfffffffffffa6db6]        # 0x28daf0
  2e6d3a:	66 0f 5a c0                                     	cvtpd2ps xmm0,xmm0
  2e6d3e:	0f 2f c1                                        	comiss xmm0,xmm1
  2e6d41:	76 17                                           	jbe    0x2e6d5a
  2e6d43:	48 8b ce                                        	mov    rcx,rsi
  2e6d46:	e8 0d 4e 08 00                                  	call   0x36bb58
  2e6d4b:	84 c0                                           	test   al,al
  2e6d4d:	74 0b                                           	je     0x2e6d5a
  2e6d4f:	41 8b d4                                        	mov    edx,r12d
  2e6d52:	49 8b ce                                        	mov    rcx,r14
  2e6d55:	e8 2a d0 08 00                                  	call   0x373d84
  2e6d5a:	44 38 2d 17 e5 0f 00                            	cmp    BYTE PTR [rip+0xfe517],r13b        # 0x3e5278
  2e6d61:	0f 84 a9 00 00 00                               	je     0x2e6e10
  2e6d67:	44 38 2d 33 15 0f 00                            	cmp    BYTE PTR [rip+0xf1533],r13b        # 0x3d82a1
  2e6d6e:	0f 85 9c 00 00 00                               	jne    0x2e6e10
  2e6d74:	48 8b 1d cd d4 0f 00                            	mov    rbx,QWORD PTR [rip+0xfd4cd]        # 0x3e4248
  2e6d7b:	48 8b cb                                        	mov    rcx,rbx
  2e6d7e:	e8 85 41 fe ff                                  	call   0x2caf08
  2e6d83:	84 c0                                           	test   al,al
  2e6d85:	0f 84 85 00 00 00                               	je     0x2e6e10
  2e6d8b:	48 8b cb                                        	mov    rcx,rbx
  2e6d8e:	e8 09 a1 ff ff                                  	call   0x2e0e9c
  2e6d93:	84 c0                                           	test   al,al
  2e6d95:	74 79                                           	je     0x2e6e10
  2e6d97:	48 8b cb                                        	mov    rcx,rbx
  2e6d9a:	e8 71 f3 ff ff                                  	call   0x2e6110
  2e6d9f:	48 8b c8                                        	mov    rcx,rax
  2e6da2:	4c 8b c0                                        	mov    r8,rax
  2e6da5:	e8 5e 41 fe ff                                  	call   0x2caf08
  2e6daa:	84 c0                                           	test   al,al
  2e6dac:	74 62                                           	je     0x2e6e10
  2e6dae:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2e6db3:	49 8b c8                                        	mov    rcx,r8
  2e6db6:	e8 19 da 08 00                                  	call   0x3747d4
  2e6dbb:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e6dc0:	48 8b cf                                        	mov    rcx,rdi
  2e6dc3:	e8 d4 1d 08 00                                  	call   0x368b9c
  2e6dc8:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e6dcd:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e6dd2:	e8 59 91 ff ff                                  	call   0x2dff30
  2e6dd7:	0f 28 c8                                        	movaps xmm1,xmm0
  2e6dda:	41 0f 28 c5                                     	movaps xmm0,xmm13
  2e6dde:	f3 0f 58 05 ea 73 fa ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffffa73ea]        # 0x28e1d0
  2e6de6:	0f 2f c1                                        	comiss xmm0,xmm1
  2e6de9:	76 25                                           	jbe    0x2e6e10
  2e6deb:	33 d2                                           	xor    edx,edx
  2e6ded:	48 8b ce                                        	mov    rcx,rsi
  2e6df0:	e8 9f 46 08 00                                  	call   0x36b494
  2e6df5:	84 c0                                           	test   al,al
  2e6df7:	74 17                                           	je     0x2e6e10
  2e6df9:	48 8b ce                                        	mov    rcx,rsi
  2e6dfc:	e8 57 4d 08 00                                  	call   0x36bb58
  2e6e01:	84 c0                                           	test   al,al
  2e6e03:	74 0b                                           	je     0x2e6e10
  2e6e05:	41 8b d4                                        	mov    edx,r12d
  2e6e08:	49 8b ce                                        	mov    rcx,r14
  2e6e0b:	e8 74 cf 08 00                                  	call   0x373d84
  2e6e10:	44 38 2d 51 11 0f 00                            	cmp    BYTE PTR [rip+0xf1151],r13b        # 0x3d7f68
  2e6e17:	41 bc 00 00 a1 48                               	mov    r12d,0x48a10000
  2e6e1d:	0f 84 7a 01 00 00                               	je     0x2e6f9d
  2e6e23:	44 38 2d 77 14 0f 00                            	cmp    BYTE PTR [rip+0xf1477],r13b        # 0x3d82a1
  2e6e2a:	0f 85 6d 01 00 00                               	jne    0x2e6f9d
  2e6e30:	48 8b 1d 89 04 0f 00                            	mov    rbx,QWORD PTR [rip+0xf0489]        # 0x3d72c0
  2e6e37:	48 8b cb                                        	mov    rcx,rbx
  2e6e3a:	e8 c9 40 fe ff                                  	call   0x2caf08
  2e6e3f:	84 c0                                           	test   al,al
  2e6e41:	0f 84 56 01 00 00                               	je     0x2e6f9d
  2e6e47:	48 8b cb                                        	mov    rcx,rbx
  2e6e4a:	e8 4d a0 ff ff                                  	call   0x2e0e9c
  2e6e4f:	84 c0                                           	test   al,al
  2e6e51:	0f 84 46 01 00 00                               	je     0x2e6f9d
  2e6e57:	48 8b cb                                        	mov    rcx,rbx
  2e6e5a:	e8 59 3e 08 00                                  	call   0x36acb8
  2e6e5f:	84 c0                                           	test   al,al
  2e6e61:	0f 85 36 01 00 00                               	jne    0x2e6f9d
  2e6e67:	48 8b cb                                        	mov    rcx,rbx
  2e6e6a:	e8 19 44 08 00                                  	call   0x36b288
  2e6e6f:	84 c0                                           	test   al,al
  2e6e71:	0f 85 26 01 00 00                               	jne    0x2e6f9d
  2e6e77:	41 b8 35 00 00 00                               	mov    r8d,0x35
  2e6e7d:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e6e82:	48 8b cb                                        	mov    rcx,rbx
  2e6e85:	e8 5e 1d 08 00                                  	call   0x368be8
  2e6e8a:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2e6e8f:	48 8b cf                                        	mov    rcx,rdi
  2e6e92:	e8 b5 23 08 00                                  	call   0x36924c
  2e6e97:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  2e6e9d:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2e6ea2:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  2e6ea6:	48 8b cf                                        	mov    rcx,rdi
  2e6ea9:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2e6eaf:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2e6eb3:	e8 f8 f7 07 00                                  	call   0x3666b0
  2e6eb8:	0f 28 f8                                        	movaps xmm7,xmm0
  2e6ebb:	41 0f 28 c5                                     	movaps xmm0,xmm13
  2e6ebf:	e8 58 9a ff ff                                  	call   0x2e091c
  2e6ec4:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  2e6ec8:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2e6ecd:	44 0f 28 c0                                     	movaps xmm8,xmm0
  2e6ed1:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2e6ed5:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  2e6edb:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  2e6ee0:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  2e6ee4:	0f 57 db                                        	xorps  xmm3,xmm3
  2e6ee7:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2e6eed:	45 8b c4                                        	mov    r8d,r12d
  2e6ef0:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  2e6ef6:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  2e6efc:	f3 44 0f 11 74 24 20                            	movss  DWORD PTR [rsp+0x20],xmm14
  2e6f03:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2e6f07:	e8 14 b4 ff ff                                  	call   0x2e2320
  2e6f0c:	84 c0                                           	test   al,al
  2e6f0e:	0f 84 89 00 00 00                               	je     0x2e6f9d
  2e6f14:	48 8b ce                                        	mov    rcx,rsi
  2e6f17:	e8 3c 4c 08 00                                  	call   0x36bb58
  2e6f1c:	84 c0                                           	test   al,al
  2e6f1e:	74 7d                                           	je     0x2e6f9d
  2e6f20:	f3 0f 10 35 c4 03 0f 00                         	movss  xmm6,DWORD PTR [rip+0xf03c4]        # 0x3d72ec
  2e6f28:	48 8b cb                                        	mov    rcx,rbx
  2e6f2b:	f3 0f 58 35 ad 6b fa ff                         	addss  xmm6,DWORD PTR [rip+0xfffffffffffa6bad]        # 0x28dae0
  2e6f33:	f3 0f 58 3d 15 63 fa ff                         	addss  xmm7,DWORD PTR [rip+0xfffffffffffa6315]        # 0x28d250
  2e6f3b:	f3 0f 59 35 b9 6b fa ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffffa6bb9]        # 0x28dafc
  2e6f43:	e8 e4 24 08 00                                  	call   0x36942c
  2e6f48:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e6f4b:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  2e6f4f:	f3 0f 5a c8                                     	cvtss2sd xmm1,xmm0
  2e6f53:	f2 0f 58 0d 95 6b fa ff                         	addsd  xmm1,QWORD PTR [rip+0xfffffffffffa6b95]        # 0x28daf0
  2e6f5b:	66 0f 5a c1                                     	cvtpd2ps xmm0,xmm1
  2e6f5f:	0f 2f c7                                        	comiss xmm0,xmm7
  2e6f62:	76 26                                           	jbe    0x2e6f8a
  2e6f64:	48 8b cb                                        	mov    rcx,rbx
  2e6f67:	e8 74 31 08 00                                  	call   0x36a0e0
  2e6f6c:	84 c0                                           	test   al,al
  2e6f6e:	74 1a                                           	je     0x2e6f8a
  2e6f70:	f3 0f 10 05 bc 6b fa ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffffa6bbc]        # 0x28db34
  2e6f78:	0f 2f c7                                        	comiss xmm0,xmm7
  2e6f7b:	76 0d                                           	jbe    0x2e6f8a
  2e6f7d:	ba 00 04 00 00                                  	mov    edx,0x400
  2e6f82:	49 8b ce                                        	mov    rcx,r14
  2e6f85:	e8 fa cd 08 00                                  	call   0x373d84
  2e6f8a:	44 0f 2f c7                                     	comiss xmm8,xmm7
  2e6f8e:	76 0d                                           	jbe    0x2e6f9d
  2e6f90:	ba 00 04 00 00                                  	mov    edx,0x400
  2e6f95:	49 8b ce                                        	mov    rcx,r14
  2e6f98:	e8 e7 cd 08 00                                  	call   0x373d84
  2e6f9d:	44 38 2d 74 0f 0f 00                            	cmp    BYTE PTR [rip+0xf0f74],r13b        # 0x3d7f18
  2e6fa4:	75 1a                                           	jne    0x2e6fc0
  2e6fa6:	44 38 2d 94 12 0f 00                            	cmp    BYTE PTR [rip+0xf1294],r13b        # 0x3d8241
  2e6fad:	0f 84 3e 01 00 00                               	je     0x2e70f1
  2e6fb3:	44 38 2d e7 12 0f 00                            	cmp    BYTE PTR [rip+0xf12e7],r13b        # 0x3d82a1
  2e6fba:	0f 85 31 01 00 00                               	jne    0x2e70f1
  2e6fc0:	48 8b 1d 01 03 0f 00                            	mov    rbx,QWORD PTR [rip+0xf0301]        # 0x3d72c8
  2e6fc7:	48 8b cb                                        	mov    rcx,rbx
  2e6fca:	e8 39 3f fe ff                                  	call   0x2caf08
  2e6fcf:	84 c0                                           	test   al,al
  2e6fd1:	0f 84 1a 01 00 00                               	je     0x2e70f1
  2e6fd7:	48 8b cb                                        	mov    rcx,rbx
  2e6fda:	e8 bd 9e ff ff                                  	call   0x2e0e9c
  2e6fdf:	84 c0                                           	test   al,al
  2e6fe1:	0f 84 0a 01 00 00                               	je     0x2e70f1
  2e6fe7:	48 8b cb                                        	mov    rcx,rbx
  2e6fea:	e8 21 f1 ff ff                                  	call   0x2e6110
  2e6fef:	48 8b c8                                        	mov    rcx,rax
  2e6ff2:	4c 8b c0                                        	mov    r8,rax
  2e6ff5:	e8 0e 3f fe ff                                  	call   0x2caf08
  2e6ffa:	84 c0                                           	test   al,al
  2e6ffc:	0f 84 ef 00 00 00                               	je     0x2e70f1
  2e7002:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e7007:	49 8b c8                                        	mov    rcx,r8
  2e700a:	e8 c5 d7 08 00                                  	call   0x3747d4
  2e700f:	f3 0f 10 15 d1 6a fa ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffffa6ad1]        # 0x28dae8
  2e7017:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2e701c:	0f 57 db                                        	xorps  xmm3,xmm3
  2e701f:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e7022:	48 8b d8                                        	mov    rbx,rax
  2e7025:	e8 7e 0b 0e 00                                  	call   0x3c7ba8
  2e702a:	4c 8b c0                                        	mov    r8,rax
  2e702d:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e7032:	48 8b cb                                        	mov    rcx,rbx
  2e7035:	e8 ce 86 ff ff                                  	call   0x2df708
  2e703a:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2e703f:	48 8b cf                                        	mov    rcx,rdi
  2e7042:	e8 55 1b 08 00                                  	call   0x368b9c
  2e7047:	f2 0f 10 4c 24 40                               	movsd  xmm1,QWORD PTR [rsp+0x40]
  2e704d:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e7052:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  2e7056:	48 8b cf                                        	mov    rcx,rdi
  2e7059:	f2 0f 11 4c 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm1
  2e705f:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2e7063:	e8 48 f6 07 00                                  	call   0x3666b0
  2e7068:	0f 28 f0                                        	movaps xmm6,xmm0
  2e706b:	41 0f 28 c5                                     	movaps xmm0,xmm13
  2e706f:	f3 0f 58 35 d9 61 fa ff                         	addss  xmm6,DWORD PTR [rip+0xfffffffffffa61d9]        # 0x28d250
  2e7077:	e8 a0 98 ff ff                                  	call   0x2e091c
  2e707c:	0f 2f c6                                        	comiss xmm0,xmm6
  2e707f:	76 70                                           	jbe    0x2e70f1
  2e7081:	41 8b d7                                        	mov    edx,r15d
  2e7084:	48 8b ce                                        	mov    rcx,rsi
  2e7087:	e8 08 44 08 00                                  	call   0x36b494
  2e708c:	84 c0                                           	test   al,al
  2e708e:	74 61                                           	je     0x2e70f1
  2e7090:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  2e7096:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e709b:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  2e709f:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2e70a4:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  2e70aa:	0f 57 db                                        	xorps  xmm3,xmm3
  2e70ad:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  2e70b3:	45 8b c4                                        	mov    r8d,r12d
  2e70b6:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2e70ba:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  2e70be:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2e70c4:	f3 44 0f 11 74 24 20                            	movss  DWORD PTR [rsp+0x20],xmm14
  2e70cb:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2e70cf:	e8 4c b2 ff ff                                  	call   0x2e2320
  2e70d4:	84 c0                                           	test   al,al
  2e70d6:	74 19                                           	je     0x2e70f1
  2e70d8:	48 8b ce                                        	mov    rcx,rsi
  2e70db:	e8 78 4a 08 00                                  	call   0x36bb58
  2e70e0:	84 c0                                           	test   al,al
  2e70e2:	74 0d                                           	je     0x2e70f1
  2e70e4:	ba 00 04 00 00                                  	mov    edx,0x400
  2e70e9:	49 8b ce                                        	mov    rcx,r14
  2e70ec:	e8 93 cc 08 00                                  	call   0x373d84
  2e70f1:	44 38 2d a8 01 0f 00                            	cmp    BYTE PTR [rip+0xf01a8],r13b        # 0x3d72a0
  2e70f8:	0f 84 03 05 00 00                               	je     0x2e7601
  2e70fe:	44 38 2d 93 df 0f 00                            	cmp    BYTE PTR [rip+0xfdf93],r13b        # 0x3e5098
  2e7105:	0f 84 f6 04 00 00                               	je     0x2e7601
  2e710b:	44 38 2d 66 0d 0f 00                            	cmp    BYTE PTR [rip+0xf0d66],r13b        # 0x3d7e78
  2e7112:	0f 84 e9 04 00 00                               	je     0x2e7601
  2e7118:	44 38 2d 82 11 0f 00                            	cmp    BYTE PTR [rip+0xf1182],r13b        # 0x3d82a1
  2e711f:	0f 85 dc 04 00 00                               	jne    0x2e7601
  2e7125:	f3 0f 10 0d bf 01 0f 00                         	movss  xmm1,DWORD PTR [rip+0xf01bf]        # 0x3d72ec
  2e712d:	f2 0f 10 05 a3 70 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa70a3]        # 0x28e1d8
  2e7135:	0f 5a c9                                        	cvtps2pd xmm1,xmm1
  2e7138:	66 0f 2f c1                                     	comisd xmm0,xmm1
  2e713c:	0f 82 bf 04 00 00                               	jb     0x2e7601
  2e7142:	e8 69 91 ff ff                                  	call   0x2e02b0
  2e7147:	48 8b c8                                        	mov    rcx,rax
  2e714a:	48 8b d8                                        	mov    rbx,rax
  2e714d:	e8 b6 3d fe ff                                  	call   0x2caf08
  2e7152:	84 c0                                           	test   al,al
  2e7154:	0f 84 a7 04 00 00                               	je     0x2e7601
  2e715a:	48 8b cb                                        	mov    rcx,rbx
  2e715d:	e8 3a 9d ff ff                                  	call   0x2e0e9c
  2e7162:	84 c0                                           	test   al,al
  2e7164:	0f 84 97 04 00 00                               	je     0x2e7601
  2e716a:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e716f:	48 8b cb                                        	mov    rcx,rbx
  2e7172:	e8 19 26 08 00                                  	call   0x369790
  2e7177:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e717c:	e8 3b 0a 0e 00                                  	call   0x3c7bbc
  2e7181:	48 8b d0                                        	mov    rdx,rax
  2e7184:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  2e7189:	e8 4e 84 ff ff                                  	call   0x2df5dc
  2e718e:	84 c0                                           	test   al,al
  2e7190:	0f 84 6b 04 00 00                               	je     0x2e7601
  2e7196:	48 8b cf                                        	mov    rcx,rdi
  2e7199:	e8 e6 18 08 00                                  	call   0x368a84
  2e719e:	48 8b c8                                        	mov    rcx,rax
  2e71a1:	48 8b f0                                        	mov    rsi,rax
  2e71a4:	e8 5f 3d fe ff                                  	call   0x2caf08
  2e71a9:	84 c0                                           	test   al,al
  2e71ab:	0f 84 50 04 00 00                               	je     0x2e7601
  2e71b1:	48 8b ce                                        	mov    rcx,rsi
  2e71b4:	e8 03 a1 08 00                                  	call   0x3712bc
  2e71b9:	48 8b c8                                        	mov    rcx,rax
  2e71bc:	4c 8b f0                                        	mov    r14,rax
  2e71bf:	e8 44 3d fe ff                                  	call   0x2caf08
  2e71c4:	44 8a e0                                        	mov    r12b,al
  2e71c7:	84 c0                                           	test   al,al
  2e71c9:	74 08                                           	je     0x2e71d3
  2e71cb:	49 8b ce                                        	mov    rcx,r14
  2e71ce:	e8 85 4d 08 00                                  	call   0x36bf58
  2e71d3:	44 38 2d 5e d0 0f 00                            	cmp    BYTE PTR [rip+0xfd05e],r13b        # 0x3e4238
  2e71da:	75 1f                                           	jne    0x2e71fb
  2e71dc:	44 38 2d 56 d0 0f 00                            	cmp    BYTE PTR [rip+0xfd056],r13b        # 0x3e4239
  2e71e3:	75 16                                           	jne    0x2e71fb
  2e71e5:	4c 8b c3                                        	mov    r8,rbx
  2e71e8:	48 8b d6                                        	mov    rdx,rsi
  2e71eb:	48 8b cf                                        	mov    rcx,rdi
  2e71ee:	e8 4d f1 ff ff                                  	call   0x2e6340
  2e71f3:	84 c0                                           	test   al,al
  2e71f5:	0f 84 06 04 00 00                               	je     0x2e7601
  2e71fb:	48 8b ce                                        	mov    rcx,rsi
  2e71fe:	e8 61 a2 08 00                                  	call   0x371464
  2e7203:	48 8b ce                                        	mov    rcx,rsi
  2e7206:	48 8b d8                                        	mov    rbx,rax
  2e7209:	e8 a6 af 08 00                                  	call   0x3721b4
  2e720e:	48 8b ce                                        	mov    rcx,rsi
  2e7211:	4c 8b f8                                        	mov    r15,rax
  2e7214:	e8 33 a3 08 00                                  	call   0x37154c
  2e7219:	48 8b c8                                        	mov    rcx,rax
  2e721c:	48 8b f0                                        	mov    rsi,rax
  2e721f:	e8 e4 3c fe ff                                  	call   0x2caf08
  2e7224:	84 c0                                           	test   al,al
  2e7226:	0f 84 d5 03 00 00                               	je     0x2e7601
  2e722c:	48 8b cf                                        	mov    rcx,rdi
  2e722f:	e8 04 25 08 00                                  	call   0x369738
  2e7234:	48 8b c8                                        	mov    rcx,rax
  2e7237:	4c 8b e8                                        	mov    r13,rax
  2e723a:	e8 c9 3c fe ff                                  	call   0x2caf08
  2e723f:	84 c0                                           	test   al,al
  2e7241:	0f 84 b7 03 00 00                               	je     0x2e75fe
  2e7247:	48 8b ce                                        	mov    rcx,rsi
  2e724a:	e8 cd b3 08 00                                  	call   0x37261c
  2e724f:	3d bf 37 c4 37                                  	cmp    eax,0x37c437bf
  2e7254:	0f 85 77 01 00 00                               	jne    0x2e73d1
  2e725a:	48 8b cb                                        	mov    rcx,rbx
  2e725d:	e8 a6 3c fe ff                                  	call   0x2caf08
  2e7262:	45 33 ed                                        	xor    r13d,r13d
  2e7265:	84 c0                                           	test   al,al
  2e7267:	0f 84 94 03 00 00                               	je     0x2e7601
  2e726d:	48 8b cb                                        	mov    rcx,rbx
  2e7270:	e8 3f 51 08 00                                  	call   0x36c3b4
  2e7275:	48 8b c8                                        	mov    rcx,rax
  2e7278:	48 8b d0                                        	mov    rdx,rax
  2e727b:	e8 88 3c fe ff                                  	call   0x2caf08
  2e7280:	84 c0                                           	test   al,al
  2e7282:	0f 84 79 03 00 00                               	je     0x2e7601
  2e7288:	44 39 6a 1c                                     	cmp    DWORD PTR [rdx+0x1c],r13d
  2e728c:	0f 8e 6f 03 00 00                               	jle    0x2e7601
  2e7292:	44 38 2d 4f de 0f 00                            	cmp    BYTE PTR [rip+0xfde4f],r13b        # 0x3e50e8
  2e7299:	0f 84 e1 00 00 00                               	je     0x2e7380
  2e729f:	f3 0f 10 05 45 00 0f 00                         	movss  xmm0,DWORD PTR [rip+0xf0045]        # 0x3d72ec
  2e72a7:	0f 2f 05 6a e0 0f 00                            	comiss xmm0,DWORD PTR [rip+0xfe06a]        # 0x3e5318
  2e72ae:	0f 86 4d 03 00 00                               	jbe    0x2e7601
  2e72b4:	f3 0f 5e 83 04 03 00 00                         	divss  xmm0,DWORD PTR [rbx+0x304]
  2e72bc:	45 8d 7d 01                                     	lea    r15d,[r13+0x1]
  2e72c0:	48 8d 0d 41 e5 0f 00                            	lea    rcx,[rip+0xfe541]        # 0x3e5808
  2e72c7:	f3 0f 10 0d f9 6e fa ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffa6ef9]        # 0x28e1c8
  2e72cf:	f3 0f 2c f0                                     	cvttss2si esi,xmm0
  2e72d3:	41 3b f7                                        	cmp    esi,r15d
  2e72d6:	41 0f 4c f7                                     	cmovl  esi,r15d
  2e72da:	e8 9d e8 ff ff                                  	call   0x2e5b7c
  2e72df:	84 c0                                           	test   al,al
  2e72e1:	0f 84 1a 03 00 00                               	je     0x2e7601
  2e72e7:	44 38 2d ca 0c 0f 00                            	cmp    BYTE PTR [rip+0xf0cca],r13b        # 0x3d7fb8
  2e72ee:	74 2f                                           	je     0x2e731f
  2e72f0:	e8 57 0f 01 00                                  	call   0x2f824c
  2e72f5:	84 c0                                           	test   al,al
  2e72f7:	74 26                                           	je     0x2e731f
  2e72f9:	44 38 2d f8 dc 0f 00                            	cmp    BYTE PTR [rip+0xfdcf8],r13b        # 0x3e4ff8
  2e7300:	74 1d                                           	je     0x2e731f
  2e7302:	85 f6                                           	test   esi,esi
  2e7304:	0f 84 f7 02 00 00                               	je     0x2e7601
  2e730a:	41 8a d7                                        	mov    dl,r15b
  2e730d:	48 8b cb                                        	mov    rcx,rbx
  2e7310:	e8 c7 4c 08 00                                  	call   0x36bfdc
  2e7315:	41 2b f7                                        	sub    esi,r15d
  2e7318:	75 f0                                           	jne    0x2e730a
  2e731a:	e9 e2 02 00 00                                  	jmp    0x2e7601
  2e731f:	f3 0f 10 05 2d cf 0f 00                         	movss  xmm0,DWORD PTR [rip+0xfcf2d]        # 0x3e4254
  2e7327:	0f 2f 05 9e 6e fa ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffffa6e9e]        # 0x28e1cc
  2e732e:	76 26                                           	jbe    0x2e7356
  2e7330:	e8 9b 0a 01 00                                  	call   0x2f7dd0
  2e7335:	84 c0                                           	test   al,al
  2e7337:	75 1d                                           	jne    0x2e7356
  2e7339:	85 f6                                           	test   esi,esi
  2e733b:	0f 84 c0 02 00 00                               	je     0x2e7601
  2e7341:	41 8a d7                                        	mov    dl,r15b
  2e7344:	48 8b cb                                        	mov    rcx,rbx
  2e7347:	e8 90 4c 08 00                                  	call   0x36bfdc
  2e734c:	41 2b f7                                        	sub    esi,r15d
  2e734f:	75 f0                                           	jne    0x2e7341
  2e7351:	e9 ab 02 00 00                                  	jmp    0x2e7601
  2e7356:	44 38 2d 9b dc 0f 00                            	cmp    BYTE PTR [rip+0xfdc9b],r13b        # 0x3e4ff8
  2e735d:	0f 85 9e 02 00 00                               	jne    0x2e7601
  2e7363:	85 f6                                           	test   esi,esi
  2e7365:	0f 84 96 02 00 00                               	je     0x2e7601
  2e736b:	41 8a d7                                        	mov    dl,r15b
  2e736e:	48 8b cb                                        	mov    rcx,rbx
  2e7371:	e8 66 4c 08 00                                  	call   0x36bfdc
  2e7376:	41 2b f7                                        	sub    esi,r15d
  2e7379:	75 f0                                           	jne    0x2e736b
  2e737b:	e9 81 02 00 00                                  	jmp    0x2e7601
  2e7380:	44 38 2d 31 0c 0f 00                            	cmp    BYTE PTR [rip+0xf0c31],r13b        # 0x3d7fb8
  2e7387:	74 12                                           	je     0x2e739b
  2e7389:	e8 be 0e 01 00                                  	call   0x2f824c
  2e738e:	84 c0                                           	test   al,al
  2e7390:	74 09                                           	je     0x2e739b
  2e7392:	44 38 2d 5f dc 0f 00                            	cmp    BYTE PTR [rip+0xfdc5f],r13b        # 0x3e4ff8
  2e7399:	75 27                                           	jne    0x2e73c2
  2e739b:	f3 0f 10 05 b1 ce 0f 00                         	movss  xmm0,DWORD PTR [rip+0xfceb1]        # 0x3e4254
  2e73a3:	0f 2f 05 22 6e fa ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffffa6e22]        # 0x28e1cc
  2e73aa:	76 09                                           	jbe    0x2e73b5
  2e73ac:	e8 1f 0a 01 00                                  	call   0x2f7dd0
  2e73b1:	84 c0                                           	test   al,al
  2e73b3:	74 0d                                           	je     0x2e73c2
  2e73b5:	44 38 2d 3c dc 0f 00                            	cmp    BYTE PTR [rip+0xfdc3c],r13b        # 0x3e4ff8
  2e73bc:	0f 85 3f 02 00 00                               	jne    0x2e7601
  2e73c2:	33 d2                                           	xor    edx,edx
  2e73c4:	48 8b cb                                        	mov    rcx,rbx
  2e73c7:	e8 10 4c 08 00                                  	call   0x36bfdc
  2e73cc:	e9 30 02 00 00                                  	jmp    0x2e7601
  2e73d1:	49 8b cf                                        	mov    rcx,r15
  2e73d4:	e8 2f 3b fe ff                                  	call   0x2caf08
  2e73d9:	84 c0                                           	test   al,al
  2e73db:	74 0d                                           	je     0x2e73ea
  2e73dd:	49 8b cf                                        	mov    rcx,r15
  2e73e0:	e8 9f 4d 08 00                                  	call   0x36c184
  2e73e5:	e9 14 02 00 00                                  	jmp    0x2e75fe
  2e73ea:	45 33 ff                                        	xor    r15d,r15d
  2e73ed:	45 84 e4                                        	test   r12b,r12b
  2e73f0:	0f 84 80 00 00 00                               	je     0x2e7476
  2e73f6:	49 8b ce                                        	mov    rcx,r14
  2e73f9:	e8 b6 4f 08 00                                  	call   0x36c3b4
  2e73fe:	48 8b c8                                        	mov    rcx,rax
  2e7401:	48 8b d0                                        	mov    rdx,rax
  2e7404:	e8 ff 3a fe ff                                  	call   0x2caf08
  2e7409:	45 33 ed                                        	xor    r13d,r13d
  2e740c:	84 c0                                           	test   al,al
  2e740e:	0f 84 ed 01 00 00                               	je     0x2e7601
  2e7414:	44 39 6a 1c                                     	cmp    DWORD PTR [rdx+0x1c],r13d
  2e7418:	7f 0d                                           	jg     0x2e7427
  2e741a:	49 8b ce                                        	mov    rcx,r14
  2e741d:	e8 36 40 08 00                                  	call   0x36b458
  2e7422:	e9 da 01 00 00                                  	jmp    0x2e7601
  2e7427:	44 38 2d 8a 0b 0f 00                            	cmp    BYTE PTR [rip+0xf0b8a],r13b        # 0x3d7fb8
  2e742e:	74 12                                           	je     0x2e7442
  2e7430:	e8 17 0e 01 00                                  	call   0x2f824c
  2e7435:	84 c0                                           	test   al,al
  2e7437:	74 09                                           	je     0x2e7442
  2e7439:	44 38 2d b8 db 0f 00                            	cmp    BYTE PTR [rip+0xfdbb8],r13b        # 0x3e4ff8
  2e7440:	75 27                                           	jne    0x2e7469
  2e7442:	f3 0f 10 05 0a ce 0f 00                         	movss  xmm0,DWORD PTR [rip+0xfce0a]        # 0x3e4254
  2e744a:	0f 2f 05 7b 6d fa ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffffa6d7b]        # 0x28e1cc
  2e7451:	76 09                                           	jbe    0x2e745c
  2e7453:	e8 78 09 01 00                                  	call   0x2f7dd0
  2e7458:	84 c0                                           	test   al,al
  2e745a:	74 0d                                           	je     0x2e7469
  2e745c:	44 38 2d 95 db 0f 00                            	cmp    BYTE PTR [rip+0xfdb95],r13b        # 0x3e4ff8
  2e7463:	0f 85 98 01 00 00                               	jne    0x2e7601
  2e7469:	49 8b ce                                        	mov    rcx,r14
  2e746c:	e8 fb 4b 08 00                                  	call   0x36c06c
  2e7471:	e9 8b 01 00 00                                  	jmp    0x2e7601
  2e7476:	48 8b cb                                        	mov    rcx,rbx
  2e7479:	e8 8a 3a fe ff                                  	call   0x2caf08
  2e747e:	84 c0                                           	test   al,al
  2e7480:	0f 84 78 01 00 00                               	je     0x2e75fe
  2e7486:	48 8b cb                                        	mov    rcx,rbx
  2e7489:	e8 26 4f 08 00                                  	call   0x36c3b4
  2e748e:	48 8b c8                                        	mov    rcx,rax
  2e7491:	48 8b d0                                        	mov    rdx,rax
  2e7494:	e8 6f 3a fe ff                                  	call   0x2caf08
  2e7499:	84 c0                                           	test   al,al
  2e749b:	0f 84 5d 01 00 00                               	je     0x2e75fe
  2e74a1:	44 39 7a 1c                                     	cmp    DWORD PTR [rdx+0x1c],r15d
  2e74a5:	0f 8e 53 01 00 00                               	jle    0x2e75fe
  2e74ab:	44 38 3d 36 dc 0f 00                            	cmp    BYTE PTR [rip+0xfdc36],r15b        # 0x3e50e8
  2e74b2:	0f 84 df 00 00 00                               	je     0x2e7597
  2e74b8:	f3 0f 10 05 2c fe 0e 00                         	movss  xmm0,DWORD PTR [rip+0xefe2c]        # 0x3d72ec
  2e74c0:	0f 2f 05 51 de 0f 00                            	comiss xmm0,DWORD PTR [rip+0xfde51]        # 0x3e5318
  2e74c7:	0f 86 31 01 00 00                               	jbe    0x2e75fe
  2e74cd:	f3 0f 5e 83 04 03 00 00                         	divss  xmm0,DWORD PTR [rbx+0x304]
  2e74d5:	48 8d 0d 30 e3 0f 00                            	lea    rcx,[rip+0xfe330]        # 0x3e580c
  2e74dc:	41 bf 01 00 00 00                               	mov    r15d,0x1
  2e74e2:	f3 0f 10 0d de 6c fa ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffa6cde]        # 0x28e1c8
  2e74ea:	f3 0f 2c f0                                     	cvttss2si esi,xmm0
  2e74ee:	41 3b f7                                        	cmp    esi,r15d
  2e74f1:	41 0f 4c f7                                     	cmovl  esi,r15d
  2e74f5:	e8 82 e6 ff ff                                  	call   0x2e5b7c
  2e74fa:	45 33 ed                                        	xor    r13d,r13d
  2e74fd:	84 c0                                           	test   al,al
  2e74ff:	0f 84 fc 00 00 00                               	je     0x2e7601
  2e7505:	44 38 2d ac 0a 0f 00                            	cmp    BYTE PTR [rip+0xf0aac],r13b        # 0x3d7fb8
  2e750c:	74 2f                                           	je     0x2e753d
  2e750e:	e8 39 0d 01 00                                  	call   0x2f824c
  2e7513:	84 c0                                           	test   al,al
  2e7515:	74 26                                           	je     0x2e753d
  2e7517:	44 38 2d da da 0f 00                            	cmp    BYTE PTR [rip+0xfdada],r13b        # 0x3e4ff8
  2e751e:	74 1d                                           	je     0x2e753d
  2e7520:	85 f6                                           	test   esi,esi
  2e7522:	0f 84 d9 00 00 00                               	je     0x2e7601
  2e7528:	41 8a d7                                        	mov    dl,r15b
  2e752b:	48 8b cb                                        	mov    rcx,rbx
  2e752e:	e8 a9 4a 08 00                                  	call   0x36bfdc
  2e7533:	41 2b f7                                        	sub    esi,r15d
  2e7536:	75 f0                                           	jne    0x2e7528
  2e7538:	e9 c4 00 00 00                                  	jmp    0x2e7601
  2e753d:	f3 0f 10 05 0f cd 0f 00                         	movss  xmm0,DWORD PTR [rip+0xfcd0f]        # 0x3e4254
  2e7545:	0f 2f 05 80 6c fa ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffffa6c80]        # 0x28e1cc
  2e754c:	76 26                                           	jbe    0x2e7574
  2e754e:	e8 7d 08 01 00                                  	call   0x2f7dd0
  2e7553:	84 c0                                           	test   al,al
  2e7555:	75 1d                                           	jne    0x2e7574
  2e7557:	85 f6                                           	test   esi,esi
  2e7559:	0f 84 a2 00 00 00                               	je     0x2e7601
  2e755f:	41 8a d7                                        	mov    dl,r15b
  2e7562:	48 8b cb                                        	mov    rcx,rbx
  2e7565:	e8 72 4a 08 00                                  	call   0x36bfdc
  2e756a:	41 2b f7                                        	sub    esi,r15d
  2e756d:	75 f0                                           	jne    0x2e755f
  2e756f:	e9 8d 00 00 00                                  	jmp    0x2e7601
  2e7574:	44 38 2d 7d da 0f 00                            	cmp    BYTE PTR [rip+0xfda7d],r13b        # 0x3e4ff8
  2e757b:	0f 85 80 00 00 00                               	jne    0x2e7601
  2e7581:	85 f6                                           	test   esi,esi
  2e7583:	74 7c                                           	je     0x2e7601
  2e7585:	41 8a d7                                        	mov    dl,r15b
  2e7588:	48 8b cb                                        	mov    rcx,rbx
  2e758b:	e8 4c 4a 08 00                                  	call   0x36bfdc
  2e7590:	41 2b f7                                        	sub    esi,r15d
  2e7593:	75 f0                                           	jne    0x2e7585
  2e7595:	eb 6a                                           	jmp    0x2e7601
  2e7597:	48 8b cb                                        	mov    rcx,rbx
  2e759a:	e8 01 44 08 00                                  	call   0x36b9a0
  2e759f:	48 8b cb                                        	mov    rcx,rbx
  2e75a2:	40 8a f0                                        	mov    sil,al
  2e75a5:	e8 22 45 08 00                                  	call   0x36bacc
  2e75aa:	84 c0                                           	test   al,al
  2e75ac:	74 50                                           	je     0x2e75fe
  2e75ae:	40 84 f6                                        	test   sil,sil
  2e75b1:	75 4b                                           	jne    0x2e75fe
  2e75b3:	44 38 3d fe 09 0f 00                            	cmp    BYTE PTR [rip+0xf09fe],r15b        # 0x3d7fb8
  2e75ba:	74 12                                           	je     0x2e75ce
  2e75bc:	e8 8b 0c 01 00                                  	call   0x2f824c
  2e75c1:	84 c0                                           	test   al,al
  2e75c3:	74 09                                           	je     0x2e75ce
  2e75c5:	44 38 3d 2c da 0f 00                            	cmp    BYTE PTR [rip+0xfda2c],r15b        # 0x3e4ff8
  2e75cc:	75 23                                           	jne    0x2e75f1
  2e75ce:	f3 0f 10 05 7e cc 0f 00                         	movss  xmm0,DWORD PTR [rip+0xfcc7e]        # 0x3e4254
  2e75d6:	0f 2f 05 ef 6b fa ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffffa6bef]        # 0x28e1cc
  2e75dd:	76 09                                           	jbe    0x2e75e8
  2e75df:	e8 ec 07 01 00                                  	call   0x2f7dd0
  2e75e4:	84 c0                                           	test   al,al
  2e75e6:	74 09                                           	je     0x2e75f1
  2e75e8:	44 38 3d 09 da 0f 00                            	cmp    BYTE PTR [rip+0xfda09],r15b        # 0x3e4ff8
  2e75ef:	75 0d                                           	jne    0x2e75fe
  2e75f1:	ba 00 04 00 00                                  	mov    edx,0x400
  2e75f6:	49 8b cd                                        	mov    rcx,r13
  2e75f9:	e8 86 c7 08 00                                  	call   0x373d84
  2e75fe:	45 33 ed                                        	xor    r13d,r13d
  2e7601:	44 38 2d 00 d9 0f 00                            	cmp    BYTE PTR [rip+0xfd900],r13b        # 0x3e4f08
  2e7608:	74 3c                                           	je     0x2e7646
  2e760a:	f3 0f 10 0d d6 6b fa ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffa6bd6]        # 0x28e1e8
  2e7612:	48 8d 0d f7 e1 0f 00                            	lea    rcx,[rip+0xfe1f7]        # 0x3e5810
  2e7619:	e8 5e e5 ff ff                                  	call   0x2e5b7c
  2e761e:	84 c0                                           	test   al,al
  2e7620:	74 24                                           	je     0x2e7646
  2e7622:	48 8b cf                                        	mov    rcx,rdi
  2e7625:	e8 0e 21 08 00                                  	call   0x369738
  2e762a:	48 8b c8                                        	mov    rcx,rax
  2e762d:	4c 8b c0                                        	mov    r8,rax
  2e7630:	e8 d3 38 fe ff                                  	call   0x2caf08
  2e7635:	84 c0                                           	test   al,al
  2e7637:	74 0d                                           	je     0x2e7646
  2e7639:	ba 20 00 00 00                                  	mov    edx,0x20
  2e763e:	49 8b c8                                        	mov    rcx,r8
  2e7641:	e8 3e c7 08 00                                  	call   0x373d84
  2e7646:	44 38 2d 3b db 0f 00                            	cmp    BYTE PTR [rip+0xfdb3b],r13b        # 0x3e5188
  2e764d:	0f 84 14 01 00 00                               	je     0x2e7767
  2e7653:	33 d2                                           	xor    edx,edx
  2e7655:	48 8d 0d cc de 0f 00                            	lea    rcx,[rip+0xfdecc]        # 0x3e5528
  2e765c:	e8 83 13 00 00                                  	call   0x2e89e4
  2e7661:	84 c0                                           	test   al,al
  2e7663:	0f 84 fe 00 00 00                               	je     0x2e7767
  2e7669:	48 8b cf                                        	mov    rcx,rdi
  2e766c:	e8 b3 1c 08 00                                  	call   0x369324
  2e7671:	48 8b c8                                        	mov    rcx,rax
  2e7674:	48 8b d0                                        	mov    rdx,rax
  2e7677:	e8 8c 38 fe ff                                  	call   0x2caf08
  2e767c:	84 c0                                           	test   al,al
  2e767e:	0f 84 e3 00 00 00                               	je     0x2e7767
  2e7684:	48 8b ca                                        	mov    rcx,rdx
  2e7687:	e8 c0 c7 08 00                                  	call   0x373e4c
  2e768c:	48 8b c8                                        	mov    rcx,rax
  2e768f:	4c 8b e0                                        	mov    r12,rax
  2e7692:	e8 71 38 fe ff                                  	call   0x2caf08
  2e7697:	84 c0                                           	test   al,al
  2e7699:	0f 84 c8 00 00 00                               	je     0x2e7767
  2e769f:	49 8b cc                                        	mov    rcx,r12
  2e76a2:	e8 d1 ab 08 00                                  	call   0x372278
  2e76a7:	41 8b f5                                        	mov    esi,r13d
  2e76aa:	85 c0                                           	test   eax,eax
  2e76ac:	0f 8e b5 00 00 00                               	jle    0x2e7767
  2e76b2:	8b f8                                           	mov    edi,eax
  2e76b4:	8b d6                                           	mov    edx,esi
  2e76b6:	49 8b cc                                        	mov    rcx,r12
  2e76b9:	e8 e6 ab 08 00                                  	call   0x3722a4
  2e76be:	48 8b c8                                        	mov    rcx,rax
  2e76c1:	4c 8b f8                                        	mov    r15,rax
  2e76c4:	e8 3f 38 fe ff                                  	call   0x2caf08
  2e76c9:	84 c0                                           	test   al,al
  2e76cb:	0f 84 88 00 00 00                               	je     0x2e7759
  2e76d1:	4d 8b 7f 20                                     	mov    r15,QWORD PTR [r15+0x20]
  2e76d5:	49 8b cf                                        	mov    rcx,r15
  2e76d8:	e8 2b 38 fe ff                                  	call   0x2caf08
  2e76dd:	84 c0                                           	test   al,al
  2e76df:	74 78                                           	je     0x2e7759
  2e76e1:	45 8b 6f 18                                     	mov    r13d,DWORD PTR [r15+0x18]
  2e76e5:	45 33 f6                                        	xor    r14d,r14d
  2e76e8:	45 85 ed                                        	test   r13d,r13d
  2e76eb:	7e 69                                           	jle    0x2e7756
  2e76ed:	49 8b 57 10                                     	mov    rdx,QWORD PTR [r15+0x10]
  2e76f1:	48 8b ca                                        	mov    rcx,rdx
  2e76f4:	e8 0f 38 fe ff                                  	call   0x2caf08
  2e76f9:	84 c0                                           	test   al,al
  2e76fb:	74 51                                           	je     0x2e774e
  2e76fd:	42 8d 04 f5 00 00 00 00                         	lea    eax,[r14*8+0x0]
  2e7705:	48 63 c8                                        	movsxd rcx,eax
  2e7708:	48 8b 5c 0a 20                                  	mov    rbx,QWORD PTR [rdx+rcx*1+0x20]
  2e770d:	48 8b cb                                        	mov    rcx,rbx
  2e7710:	e8 f3 37 fe ff                                  	call   0x2caf08
  2e7715:	84 c0                                           	test   al,al
  2e7717:	74 35                                           	je     0x2e774e
  2e7719:	48 63 9b 88 00 00 00                            	movsxd rbx,DWORD PTR [rbx+0x88]
  2e7720:	48 8d 95 a8 00 00 00                            	lea    rdx,[rbp+0xa8]
  2e7727:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e772e:	e8 81 dd ff ff                                  	call   0x2e54b4
  2e7733:	48 8b c8                                        	mov    rcx,rax
  2e7736:	e8 91 65 fe ff                                  	call   0x2cdccc
  2e773b:	48 8b c8                                        	mov    rcx,rax
  2e773e:	e8 99 6e fe ff                                  	call   0x2ce5dc
  2e7743:	48 8b d0                                        	mov    rdx,rax
  2e7746:	48 8b cb                                        	mov    rcx,rbx
  2e7749:	e8 8a f2 ff ff                                  	call   0x2e69d8
  2e774e:	41 ff c6                                        	inc    r14d
  2e7751:	45 3b f5                                        	cmp    r14d,r13d
  2e7754:	7c 97                                           	jl     0x2e76ed
  2e7756:	45 33 ed                                        	xor    r13d,r13d
  2e7759:	ff c6                                           	inc    esi
  2e775b:	3b f7                                           	cmp    esi,edi
  2e775d:	0f 8c 51 ff ff ff                               	jl     0x2e76b4
  2e7763:	48 8b 7d 88                                     	mov    rdi,QWORD PTR [rbp-0x78]
  2e7767:	44 38 2d 3a d8 0f 00                            	cmp    BYTE PTR [rip+0xfd83a],r13b        # 0x3e4fa8
  2e776e:	0f 84 56 03 00 00                               	je     0x2e7aca
  2e7774:	48 8b cf                                        	mov    rcx,rdi
  2e7777:	e8 0c 3b 08 00                                  	call   0x36b288
  2e777c:	84 c0                                           	test   al,al
  2e777e:	74 1e                                           	je     0x2e779e
  2e7780:	48 8b cf                                        	mov    rcx,rdi
  2e7783:	e8 28 1c 08 00                                  	call   0x3693b0
  2e7788:	84 c0                                           	test   al,al
  2e778a:	74 12                                           	je     0x2e779e
  2e778c:	33 d2                                           	xor    edx,edx
  2e778e:	48 8b cf                                        	mov    rcx,rdi
  2e7791:	e8 76 2a 08 00                                  	call   0x36a20c
  2e7796:	84 c0                                           	test   al,al
  2e7798:	0f 85 2c 03 00 00                               	jne    0x2e7aca
  2e779e:	48 8b cf                                        	mov    rcx,rdi
  2e77a1:	e8 7e 1b 08 00                                  	call   0x369324
  2e77a6:	48 8b c8                                        	mov    rcx,rax
  2e77a9:	48 8b d0                                        	mov    rdx,rax
  2e77ac:	e8 57 37 fe ff                                  	call   0x2caf08
  2e77b1:	84 c0                                           	test   al,al
  2e77b3:	0f 84 11 03 00 00                               	je     0x2e7aca
  2e77b9:	48 8b ca                                        	mov    rcx,rdx
  2e77bc:	e8 07 c6 08 00                                  	call   0x373dc8
  2e77c1:	48 8b c8                                        	mov    rcx,rax
  2e77c4:	4c 8b f8                                        	mov    r15,rax
  2e77c7:	e8 3c 37 fe ff                                  	call   0x2caf08
  2e77cc:	84 c0                                           	test   al,al
  2e77ce:	0f 84 f6 02 00 00                               	je     0x2e7aca
  2e77d4:	49 8b cf                                        	mov    rcx,r15
  2e77d7:	e8 70 aa 08 00                                  	call   0x37224c
  2e77dc:	44 8b e0                                        	mov    r12d,eax
  2e77df:	45 8b f5                                        	mov    r14d,r13d
  2e77e2:	85 c0                                           	test   eax,eax
  2e77e4:	0f 8e e0 02 00 00                               	jle    0x2e7aca
  2e77ea:	f3 44 0f 10 05 f1 62 fa ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffffa62f1]        # 0x28dae4
  2e77f3:	41 8b d6                                        	mov    edx,r14d
  2e77f6:	49 8b cf                                        	mov    rcx,r15
  2e77f9:	e8 f2 aa 08 00                                  	call   0x3722f0
  2e77fe:	48 8b c8                                        	mov    rcx,rax
  2e7801:	48 8b f0                                        	mov    rsi,rax
  2e7804:	e8 ff 36 fe ff                                  	call   0x2caf08
  2e7809:	84 c0                                           	test   al,al
  2e780b:	0f 84 ad 02 00 00                               	je     0x2e7abe
  2e7811:	48 8b 4e 10                                     	mov    rcx,QWORD PTR [rsi+0x10]
  2e7815:	e8 ee 36 fe ff                                  	call   0x2caf08
  2e781a:	84 c0                                           	test   al,al
  2e781c:	0f 84 9c 02 00 00                               	je     0x2e7abe
  2e7822:	48 8b 4e 10                                     	mov    rcx,QWORD PTR [rsi+0x10]
  2e7826:	e8 f1 ad 08 00                                  	call   0x37261c
  2e782b:	3d 01 06 c0 58                                  	cmp    eax,0x58c00601
  2e7830:	0f 85 88 02 00 00                               	jne    0x2e7abe
  2e7836:	ba d8 00 00 00                                  	mov    edx,0xd8
  2e783b:	48 8b ce                                        	mov    rcx,rsi
  2e783e:	e8 f9 75 ff ff                                  	call   0x2dee3c
  2e7843:	ba b4 00 00 00                                  	mov    edx,0xb4
  2e7848:	48 8b ce                                        	mov    rcx,rsi
  2e784b:	f3 0f 10 38                                     	movss  xmm7,DWORD PTR [rax]
  2e784f:	e8 e8 75 ff ff                                  	call   0x2dee3c
  2e7854:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [rax]
  2e7858:	44 0f 2f f6                                     	comiss xmm14,xmm6
  2e785c:	72 57                                           	jb     0x2e78b5
  2e785e:	48 8b ce                                        	mov    rcx,rsi
  2e7861:	e8 1e a9 08 00                                  	call   0x372184
  2e7866:	84 c0                                           	test   al,al
  2e7868:	74 4b                                           	je     0x2e78b5
  2e786a:	48 8b cf                                        	mov    rcx,rdi
  2e786d:	b3 01                                           	mov    bl,0x1
  2e786f:	e8 a8 25 08 00                                  	call   0x369e1c
  2e7874:	84 c0                                           	test   al,al
  2e7876:	74 66                                           	je     0x2e78de
  2e7878:	48 8d 95 a8 00 00 00                            	lea    rdx,[rbp+0xa8]
  2e787f:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e7886:	e8 8d dd ff ff                                  	call   0x2e5618
  2e788b:	48 8b c8                                        	mov    rcx,rax
  2e788e:	e8 61 64 fe ff                                  	call   0x2cdcf4
  2e7893:	48 8b c8                                        	mov    rcx,rax
  2e7896:	e8 41 6d fe ff                                  	call   0x2ce5dc
  2e789b:	48 8b ce                                        	mov    rcx,rsi
  2e789e:	48 8b d8                                        	mov    rbx,rax
  2e78a1:	e8 5e 9d 08 00                                  	call   0x371604
  2e78a6:	8b c8                                           	mov    ecx,eax
  2e78a8:	48 8b d3                                        	mov    rdx,rbx
  2e78ab:	e8 28 f1 ff ff                                  	call   0x2e69d8
  2e78b0:	e9 02 02 00 00                                  	jmp    0x2e7ab7
  2e78b5:	48 8b cf                                        	mov    rcx,rdi
  2e78b8:	41 8a dd                                        	mov    bl,r13b
  2e78bb:	e8 5c 25 08 00                                  	call   0x369e1c
  2e78c0:	84 c0                                           	test   al,al
  2e78c2:	74 1a                                           	je     0x2e78de
  2e78c4:	48 8b cf                                        	mov    rcx,rdi
  2e78c7:	e8 b8 11 08 00                                  	call   0x368a84
  2e78cc:	48 85 c0                                        	test   rax,rax
  2e78cf:	75 0d                                           	jne    0x2e78de
  2e78d1:	44 38 2d 3c df 0f 00                            	cmp    BYTE PTR [rip+0xfdf3c],r13b        # 0x3e5814
  2e78d8:	0f 84 d9 01 00 00                               	je     0x2e7ab7
  2e78de:	f3 0f 5e f7                                     	divss  xmm6,xmm7
  2e78e2:	f3 0f 5d 35 6a 59 fa ff                         	minss  xmm6,DWORD PTR [rip+0xfffffffffffa596a]        # 0x28d254
  2e78ea:	44 0f 2f c6                                     	comiss xmm8,xmm6
  2e78ee:	72 49                                           	jb     0x2e7939
  2e78f0:	48 8b cf                                        	mov    rcx,rdi
  2e78f3:	e8 24 25 08 00                                  	call   0x369e1c
  2e78f8:	84 c0                                           	test   al,al
  2e78fa:	74 3d                                           	je     0x2e7939
  2e78fc:	48 8d 95 b0 00 00 00                            	lea    rdx,[rbp+0xb0]
  2e7903:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e790a:	e8 ad de ff ff                                  	call   0x2e57bc
  2e790f:	48 8b c8                                        	mov    rcx,rax
  2e7912:	e8 dd 63 fe ff                                  	call   0x2cdcf4
  2e7917:	48 8b c8                                        	mov    rcx,rax
  2e791a:	e8 bd 6c fe ff                                  	call   0x2ce5dc
  2e791f:	48 8b ce                                        	mov    rcx,rsi
  2e7922:	48 8b d8                                        	mov    rbx,rax
  2e7925:	e8 da 9c 08 00                                  	call   0x371604
  2e792a:	8b c8                                           	mov    ecx,eax
  2e792c:	48 8b d3                                        	mov    rdx,rbx
  2e792f:	e8 a4 f0 ff ff                                  	call   0x2e69d8
  2e7934:	e9 85 01 00 00                                  	jmp    0x2e7abe
  2e7939:	44 38 2d d4 de 0f 00                            	cmp    BYTE PTR [rip+0xfded4],r13b        # 0x3e5814
  2e7940:	0f 84 64 01 00 00                               	je     0x2e7aaa
  2e7946:	48 8b cf                                        	mov    rcx,rdi
  2e7949:	e8 36 11 08 00                                  	call   0x368a84
  2e794e:	0f b6 cb                                        	movzx  ecx,bl
  2e7951:	48 0b c1                                        	or     rax,rcx
  2e7954:	0f 85 50 01 00 00                               	jne    0x2e7aaa
  2e795a:	41 0f 28 c8                                     	movaps xmm1,xmm8
  2e795e:	48 8d 0d b3 de 0f 00                            	lea    rcx,[rip+0xfdeb3]        # 0x3e5818
  2e7965:	e8 12 e2 ff ff                                  	call   0x2e5b7c
  2e796a:	84 c0                                           	test   al,al
  2e796c:	0f 84 4c 01 00 00                               	je     0x2e7abe
  2e7972:	48 8b cf                                        	mov    rcx,rdi
  2e7975:	e8 a2 24 08 00                                  	call   0x369e1c
  2e797a:	84 c0                                           	test   al,al
  2e797c:	75 7f                                           	jne    0x2e79fd
  2e797e:	48 8b 9f 00 06 00 00                            	mov    rbx,QWORD PTR [rdi+0x600]
  2e7985:	48 8b cb                                        	mov    rcx,rbx
  2e7988:	e8 7b 35 fe ff                                  	call   0x2caf08
  2e798d:	84 c0                                           	test   al,al
  2e798f:	0f 84 29 01 00 00                               	je     0x2e7abe
  2e7995:	8b 0d 8d de 0f 00                               	mov    ecx,DWORD PTR [rip+0xfde8d]        # 0x3e5828
  2e799b:	8b b6 b8 00 00 00                               	mov    esi,DWORD PTR [rsi+0xb8]
  2e79a1:	f6 c1 01                                        	test   cl,0x1
  2e79a4:	75 20                                           	jne    0x2e79c6
  2e79a6:	4c 8b 05 53 f5 0e 00                            	mov    r8,QWORD PTR [rip+0xef553]        # 0x3d6f00
  2e79ad:	83 c9 01                                        	or     ecx,0x1
  2e79b0:	49 81 c0 f0 25 04 06                            	add    r8,0x60425f0
  2e79b7:	89 0d 6b de 0f 00                               	mov    DWORD PTR [rip+0xfde6b],ecx        # 0x3e5828
  2e79bd:	4c 89 05 5c de 0f 00                            	mov    QWORD PTR [rip+0xfde5c],r8        # 0x3e5820
  2e79c4:	eb 07                                           	jmp    0x2e79cd
  2e79c6:	4c 8b 05 53 de 0f 00                            	mov    r8,QWORD PTR [rip+0xfde53]        # 0x3e5820
  2e79cd:	f6 c1 02                                        	test   cl,0x2
  2e79d0:	75 1f                                           	jne    0x2e79f1
  2e79d2:	83 c9 02                                        	or     ecx,0x2
  2e79d5:	48 8d 15 54 de 0f 00                            	lea    rdx,[rip+0xfde54]        # 0x3e5830
  2e79dc:	89 0d 46 de 0f 00                               	mov    DWORD PTR [rip+0xfde46],ecx        # 0x3e5828
  2e79e2:	45 33 c9                                        	xor    r9d,r9d
  2e79e5:	48 8b 0d 74 e4 0e 00                            	mov    rcx,QWORD PTR [rip+0xee474]        # 0x3d5e60
  2e79ec:	e8 33 43 fe ff                                  	call   0x2cbd24
  2e79f1:	48 8d 15 38 de 0f 00                            	lea    rdx,[rip+0xfde38]        # 0x3e5830
  2e79f8:	e9 8d 00 00 00                                  	jmp    0x2e7a8a
  2e79fd:	48 8b cf                                        	mov    rcx,rdi
  2e7a00:	e8 17 24 08 00                                  	call   0x369e1c
  2e7a05:	84 c0                                           	test   al,al
  2e7a07:	0f 84 b1 00 00 00                               	je     0x2e7abe
  2e7a0d:	48 8b 9f 00 06 00 00                            	mov    rbx,QWORD PTR [rdi+0x600]
  2e7a14:	48 8b cb                                        	mov    rcx,rbx
  2e7a17:	e8 ec 34 fe ff                                  	call   0x2caf08
  2e7a1c:	84 c0                                           	test   al,al
  2e7a1e:	0f 84 9a 00 00 00                               	je     0x2e7abe
  2e7a24:	8b 0d fe dd 0f 00                               	mov    ecx,DWORD PTR [rip+0xfddfe]        # 0x3e5828
  2e7a2a:	8b b6 b8 00 00 00                               	mov    esi,DWORD PTR [rsi+0xb8]
  2e7a30:	f6 c1 04                                        	test   cl,0x4
  2e7a33:	75 20                                           	jne    0x2e7a55
  2e7a35:	4c 8b 05 c4 f4 0e 00                            	mov    r8,QWORD PTR [rip+0xef4c4]        # 0x3d6f00
  2e7a3c:	83 c9 04                                        	or     ecx,0x4
  2e7a3f:	49 81 c0 f0 25 04 06                            	add    r8,0x60425f0
  2e7a46:	89 0d dc dd 0f 00                               	mov    DWORD PTR [rip+0xfdddc],ecx        # 0x3e5828
  2e7a4c:	4c 89 05 b5 de 0f 00                            	mov    QWORD PTR [rip+0xfdeb5],r8        # 0x3e5908
  2e7a53:	eb 07                                           	jmp    0x2e7a5c
  2e7a55:	4c 8b 05 ac de 0f 00                            	mov    r8,QWORD PTR [rip+0xfdeac]        # 0x3e5908
  2e7a5c:	b8 08 00 00 00                                  	mov    eax,0x8
  2e7a61:	84 c8                                           	test   al,cl
  2e7a63:	75 1e                                           	jne    0x2e7a83
  2e7a65:	0b c8                                           	or     ecx,eax
  2e7a67:	48 8d 15 a2 de 0f 00                            	lea    rdx,[rip+0xfdea2]        # 0x3e5910
  2e7a6e:	89 0d b4 dd 0f 00                               	mov    DWORD PTR [rip+0xfddb4],ecx        # 0x3e5828
  2e7a74:	45 33 c9                                        	xor    r9d,r9d
  2e7a77:	48 8b 0d e2 e3 0e 00                            	mov    rcx,QWORD PTR [rip+0xee3e2]        # 0x3d5e60
  2e7a7e:	e8 a1 42 fe ff                                  	call   0x2cbd24
  2e7a83:	48 8d 15 86 de 0f 00                            	lea    rdx,[rip+0xfde86]        # 0x3e5910
  2e7a8a:	48 8b 0d cf e3 0e 00                            	mov    rcx,QWORD PTR [rip+0xee3cf]        # 0x3d5e60
  2e7a91:	4c 8b c3                                        	mov    r8,rbx
  2e7a94:	44 8b ce                                        	mov    r9d,esi
  2e7a97:	c6 44 24 20 01                                  	mov    BYTE PTR [rsp+0x20],0x1
  2e7a9c:	e8 2f ce ff ff                                  	call   0x2e48d0
  2e7aa1:	44 88 2d 6c dd 0f 00                            	mov    BYTE PTR [rip+0xfdd6c],r13b        # 0x3e5814
  2e7aa8:	eb 14                                           	jmp    0x2e7abe
  2e7aaa:	48 8b cf                                        	mov    rcx,rdi
  2e7aad:	e8 d2 0f 08 00                                  	call   0x368a84
  2e7ab2:	48 85 c0                                        	test   rax,rax
  2e7ab5:	75 07                                           	jne    0x2e7abe
  2e7ab7:	c6 05 56 dd 0f 00 01                            	mov    BYTE PTR [rip+0xfdd56],0x1        # 0x3e5814
  2e7abe:	41 ff c6                                        	inc    r14d
  2e7ac1:	45 3b f4                                        	cmp    r14d,r12d
  2e7ac4:	0f 8c 29 fd ff ff                               	jl     0x2e77f3
  2e7aca:	44 38 2d f7 d7 0f 00                            	cmp    BYTE PTR [rip+0xfd7f7],r13b        # 0x3e52c8
  2e7ad1:	0f 84 b2 00 00 00                               	je     0x2e7b89
  2e7ad7:	33 d2                                           	xor    edx,edx
  2e7ad9:	48 8d 0d 08 db 0f 00                            	lea    rcx,[rip+0xfdb08]        # 0x3e55e8
  2e7ae0:	e8 ff 0e 00 00                                  	call   0x2e89e4
  2e7ae5:	84 c0                                           	test   al,al
  2e7ae7:	0f 84 9c 00 00 00                               	je     0x2e7b89
  2e7aed:	48 8b cf                                        	mov    rcx,rdi
  2e7af0:	e8 2f 18 08 00                                  	call   0x369324
  2e7af5:	48 8b c8                                        	mov    rcx,rax
  2e7af8:	48 8b d0                                        	mov    rdx,rax
  2e7afb:	e8 08 34 fe ff                                  	call   0x2caf08
  2e7b00:	84 c0                                           	test   al,al
  2e7b02:	0f 84 81 00 00 00                               	je     0x2e7b89
  2e7b08:	48 8b ca                                        	mov    rcx,rdx
  2e7b0b:	e8 e4 c2 08 00                                  	call   0x373df4
  2e7b10:	48 8b c8                                        	mov    rcx,rax
  2e7b13:	4c 8b f0                                        	mov    r14,rax
  2e7b16:	e8 ed 33 fe ff                                  	call   0x2caf08
  2e7b1b:	84 c0                                           	test   al,al
  2e7b1d:	74 6a                                           	je     0x2e7b89
  2e7b1f:	49 8b ce                                        	mov    rcx,r14
  2e7b22:	e8 25 a7 08 00                                  	call   0x37224c
  2e7b27:	44 8b f8                                        	mov    r15d,eax
  2e7b2a:	41 8b f5                                        	mov    esi,r13d
  2e7b2d:	85 c0                                           	test   eax,eax
  2e7b2f:	7e 58                                           	jle    0x2e7b89
  2e7b31:	8b d6                                           	mov    edx,esi
  2e7b33:	49 8b ce                                        	mov    rcx,r14
  2e7b36:	e8 b5 a7 08 00                                  	call   0x3722f0
  2e7b3b:	48 8b c8                                        	mov    rcx,rax
  2e7b3e:	4c 8b e0                                        	mov    r12,rax
  2e7b41:	e8 c2 33 fe ff                                  	call   0x2caf08
  2e7b46:	84 c0                                           	test   al,al
  2e7b48:	74 38                                           	je     0x2e7b82
  2e7b4a:	48 8d 95 a8 00 00 00                            	lea    rdx,[rbp+0xa8]
  2e7b51:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e7b58:	e8 e7 dc ff ff                                  	call   0x2e5844
  2e7b5d:	48 8b c8                                        	mov    rcx,rax
  2e7b60:	e8 67 61 fe ff                                  	call   0x2cdccc
  2e7b65:	48 8b c8                                        	mov    rcx,rax
  2e7b68:	e8 6f 6a fe ff                                  	call   0x2ce5dc
  2e7b6d:	49 8b cc                                        	mov    rcx,r12
  2e7b70:	48 8b d8                                        	mov    rbx,rax
  2e7b73:	e8 8c 9a 08 00                                  	call   0x371604
  2e7b78:	8b c8                                           	mov    ecx,eax
  2e7b7a:	48 8b d3                                        	mov    rdx,rbx
  2e7b7d:	e8 56 ee ff ff                                  	call   0x2e69d8
  2e7b82:	ff c6                                           	inc    esi
  2e7b84:	41 3b f7                                        	cmp    esi,r15d
  2e7b87:	7c a8                                           	jl     0x2e7b31
  2e7b89:	44 38 2d e1 d8 0f 00                            	cmp    BYTE PTR [rip+0xfd8e1],r13b        # 0x3e5471
  2e7b90:	41 bf 10 00 00 00                               	mov    r15d,0x10
  2e7b96:	f3 0f 10 35 26 66 fa ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffffa6626]        # 0x28e1c4
  2e7b9e:	49 be 25 23 22 84 e4 9c f2 cb                   	movabs r14,0xcbf29ce484222325
  2e7ba8:	0f 84 f6 01 00 00                               	je     0x2e7da4
  2e7bae:	44 38 2d 83 d5 0f 00                            	cmp    BYTE PTR [rip+0xfd583],r13b        # 0x3e5138
  2e7bb5:	74 54                                           	je     0x2e7c0b
  2e7bb7:	48 8b cf                                        	mov    rcx,rdi
  2e7bba:	e8 c5 0e 08 00                                  	call   0x368a84
  2e7bbf:	48 8b c8                                        	mov    rcx,rax
  2e7bc2:	48 8b d0                                        	mov    rdx,rax
  2e7bc5:	e8 3e 33 fe ff                                  	call   0x2caf08
  2e7bca:	84 c0                                           	test   al,al
  2e7bcc:	0f 84 d2 01 00 00                               	je     0x2e7da4
  2e7bd2:	48 8b ca                                        	mov    rcx,rdx
  2e7bd5:	e8 72 99 08 00                                  	call   0x37154c
  2e7bda:	48 8b c8                                        	mov    rcx,rax
  2e7bdd:	48 8b d8                                        	mov    rbx,rax
  2e7be0:	e8 23 33 fe ff                                  	call   0x2caf08
  2e7be5:	84 c0                                           	test   al,al
  2e7be7:	74 22                                           	je     0x2e7c0b
  2e7be9:	48 8b cb                                        	mov    rcx,rbx
  2e7bec:	e8 2b aa 08 00                                  	call   0x37261c
  2e7bf1:	3d ac 8e f7 0b                                  	cmp    eax,0xbf78eac
  2e7bf6:	74 13                                           	je     0x2e7c0b
  2e7bf8:	48 8b cb                                        	mov    rcx,rbx
  2e7bfb:	e8 1c aa 08 00                                  	call   0x37261c
  2e7c00:	3d f6 47 84 6b                                  	cmp    eax,0x6b8447f6
  2e7c05:	0f 85 99 01 00 00                               	jne    0x2e7da4
  2e7c0b:	48 8b cf                                        	mov    rcx,rdi
  2e7c0e:	e8 e1 26 08 00                                  	call   0x36a2f4
  2e7c13:	48 8b c8                                        	mov    rcx,rax
  2e7c16:	48 8b f0                                        	mov    rsi,rax
  2e7c19:	e8 ea 32 fe ff                                  	call   0x2caf08
  2e7c1e:	84 c0                                           	test   al,al
  2e7c20:	0f 84 7e 01 00 00                               	je     0x2e7da4
  2e7c26:	48 8b ce                                        	mov    rcx,rsi
  2e7c29:	e8 26 de ff ff                                  	call   0x2e5a54
  2e7c2e:	48 8b c8                                        	mov    rcx,rax
  2e7c31:	48 8b d0                                        	mov    rdx,rax
  2e7c34:	e8 cf 32 fe ff                                  	call   0x2caf08
  2e7c39:	84 c0                                           	test   al,al
  2e7c3b:	0f 84 63 01 00 00                               	je     0x2e7da4
  2e7c41:	48 8b ca                                        	mov    rcx,rdx
  2e7c44:	e8 0b e7 fe ff                                  	call   0x2d6354
  2e7c49:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e7c4e:	48 8b d8                                        	mov    rbx,rax
  2e7c51:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e7c58:	e8 b3 dc ff ff                                  	call   0x2e5910
  2e7c5d:	48 8b c8                                        	mov    rcx,rax
  2e7c60:	e8 23 55 ff ff                                  	call   0x2dd188
  2e7c65:	48 8b c8                                        	mov    rcx,rax
  2e7c68:	49 8b d6                                        	mov    rdx,r14
  2e7c6b:	e8 dc de ff ff                                  	call   0x2e5b4c
  2e7c70:	48 3b d8                                        	cmp    rbx,rax
  2e7c73:	0f 85 2b 01 00 00                               	jne    0x2e7da4
  2e7c79:	44 8b 0d e8 d6 0f 00                            	mov    r9d,DWORD PTR [rip+0xfd6e8]        # 0x3e5368
  2e7c80:	45 85 c9                                        	test   r9d,r9d
  2e7c83:	0f 8e 1b 01 00 00                               	jle    0x2e7da4
  2e7c89:	ba 40 03 00 00                                  	mov    edx,0x340
  2e7c8e:	48 8b ce                                        	mov    rcx,rsi
  2e7c91:	e8 a6 71 ff ff                                  	call   0x2dee3c
  2e7c96:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  2e7c99:	48 8b ca                                        	mov    rcx,rdx
  2e7c9c:	e8 67 32 fe ff                                  	call   0x2caf08
  2e7ca1:	84 c0                                           	test   al,al
  2e7ca3:	0f 84 fb 00 00 00                               	je     0x2e7da4
  2e7ca9:	48 8b 8a f8 01 00 00                            	mov    rcx,QWORD PTR [rdx+0x1f8]
  2e7cb0:	e8 53 32 fe ff                                  	call   0x2caf08
  2e7cb5:	84 c0                                           	test   al,al
  2e7cb7:	0f 84 e7 00 00 00                               	je     0x2e7da4
  2e7cbd:	ba 70 03 00 00                                  	mov    edx,0x370
  2e7cc2:	48 8b ce                                        	mov    rcx,rsi
  2e7cc5:	e8 72 71 ff ff                                  	call   0x2dee3c
  2e7cca:	0f bf 08                                        	movsx  ecx,WORD PTR [rax]
  2e7ccd:	3b 0d e5 d6 0f 00                               	cmp    ecx,DWORD PTR [rip+0xfd6e5]        # 0x3e53b8
  2e7cd3:	0f 85 cb 00 00 00                               	jne    0x2e7da4
  2e7cd9:	41 3b c9                                        	cmp    ecx,r9d
  2e7cdc:	0f 84 c2 00 00 00                               	je     0x2e7da4
  2e7ce2:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2e7ce6:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e7ced:	e8 66 dc ff ff                                  	call   0x2e5958
  2e7cf2:	48 8b c8                                        	mov    rcx,rax
  2e7cf5:	e8 ba 1e 00 00                                  	call   0x2e9bb4
  2e7cfa:	48 8b c8                                        	mov    rcx,rax
  2e7cfd:	e8 da 68 fe ff                                  	call   0x2ce5dc
  2e7d02:	0f 28 ce                                        	movaps xmm1,xmm6
  2e7d05:	48 8d 0d dc dc 0f 00                            	lea    rcx,[rip+0xfdcdc]        # 0x3e59e8
  2e7d0c:	48 8b d8                                        	mov    rbx,rax
  2e7d0f:	e8 68 de ff ff                                  	call   0x2e5b7c
  2e7d14:	84 c0                                           	test   al,al
  2e7d16:	0f 84 88 00 00 00                               	je     0x2e7da4
  2e7d1c:	8b 0d 06 db 0f 00                               	mov    ecx,DWORD PTR [rip+0xfdb06]        # 0x3e5828
  2e7d22:	41 84 cf                                        	test   r15b,cl
  2e7d25:	75 20                                           	jne    0x2e7d47
  2e7d27:	4c 8b 05 d2 f1 0e 00                            	mov    r8,QWORD PTR [rip+0xef1d2]        # 0x3d6f00
  2e7d2e:	41 0b cf                                        	or     ecx,r15d
  2e7d31:	49 81 c0 a0 f0 95 03                            	add    r8,0x395f0a0
  2e7d38:	89 0d ea da 0f 00                               	mov    DWORD PTR [rip+0xfdaea],ecx        # 0x3e5828
  2e7d3e:	4c 89 05 ab dc 0f 00                            	mov    QWORD PTR [rip+0xfdcab],r8        # 0x3e59f0
  2e7d45:	eb 07                                           	jmp    0x2e7d4e
  2e7d47:	4c 8b 05 a2 dc 0f 00                            	mov    r8,QWORD PTR [rip+0xfdca2]        # 0x3e59f0
  2e7d4e:	f6 c1 20                                        	test   cl,0x20
  2e7d51:	75 1f                                           	jne    0x2e7d72
  2e7d53:	83 c9 20                                        	or     ecx,0x20
  2e7d56:	48 8d 15 a3 dc 0f 00                            	lea    rdx,[rip+0xfdca3]        # 0x3e5a00
  2e7d5d:	89 0d c5 da 0f 00                               	mov    DWORD PTR [rip+0xfdac5],ecx        # 0x3e5828
  2e7d63:	45 33 c9                                        	xor    r9d,r9d
  2e7d66:	48 8b 0d f3 e0 0e 00                            	mov    rcx,QWORD PTR [rip+0xee0f3]        # 0x3d5e60
  2e7d6d:	e8 b2 3f fe ff                                  	call   0x2cbd24
  2e7d72:	8b 05 f0 d5 0f 00                               	mov    eax,DWORD PTR [rip+0xfd5f0]        # 0x3e5368
  2e7d78:	48 8d 15 81 dc 0f 00                            	lea    rdx,[rip+0xfdc81]        # 0x3e5a00
  2e7d7f:	48 8b 0d da e0 0e 00                            	mov    rcx,QWORD PTR [rip+0xee0da]        # 0x3d5e60
  2e7d86:	45 33 c9                                        	xor    r9d,r9d
  2e7d89:	44 89 6c 24 38                                  	mov    DWORD PTR [rsp+0x38],r13d
  2e7d8e:	4c 8b c6                                        	mov    r8,rsi
  2e7d91:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  2e7d95:	48 89 5c 24 28                                  	mov    QWORD PTR [rsp+0x28],rbx
  2e7d9a:	44 89 6c 24 20                                  	mov    DWORD PTR [rsp+0x20],r13d
  2e7d9f:	e8 68 ca ff ff                                  	call   0x2e480c
  2e7da4:	44 38 2d bd d0 0f 00                            	cmp    BYTE PTR [rip+0xfd0bd],r13b        # 0x3e4e68
  2e7dab:	0f 84 2d 02 00 00                               	je     0x2e7fde
  2e7db1:	8b 0d 51 d6 0f 00                               	mov    ecx,DWORD PTR [rip+0xfd651]        # 0x3e5408
  2e7db7:	33 d2                                           	xor    edx,edx
  2e7db9:	e8 52 0b 00 00                                  	call   0x2e8910
  2e7dbe:	84 c0                                           	test   al,al
  2e7dc0:	0f 84 18 02 00 00                               	je     0x2e7fde
  2e7dc6:	48 8b cf                                        	mov    rcx,rdi
  2e7dc9:	e8 26 25 08 00                                  	call   0x36a2f4
  2e7dce:	48 8b c8                                        	mov    rcx,rax
  2e7dd1:	48 89 85 b8 00 00 00                            	mov    QWORD PTR [rbp+0xb8],rax
  2e7dd8:	4c 8b e8                                        	mov    r13,rax
  2e7ddb:	e8 28 31 fe ff                                  	call   0x2caf08
  2e7de0:	84 c0                                           	test   al,al
  2e7de2:	0f 84 cf 01 00 00                               	je     0x2e7fb7
  2e7de8:	49 8b cd                                        	mov    rcx,r13
  2e7deb:	e8 64 dc ff ff                                  	call   0x2e5a54
  2e7df0:	48 8b c8                                        	mov    rcx,rax
  2e7df3:	48 8b d0                                        	mov    rdx,rax
  2e7df6:	e8 0d 31 fe ff                                  	call   0x2caf08
  2e7dfb:	84 c0                                           	test   al,al
  2e7dfd:	0f 84 b4 01 00 00                               	je     0x2e7fb7
  2e7e03:	48 8b ca                                        	mov    rcx,rdx
  2e7e06:	e8 49 e5 fe ff                                  	call   0x2d6354
  2e7e0b:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e7e10:	48 8b d8                                        	mov    rbx,rax
  2e7e13:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e7e1a:	e8 51 db ff ff                                  	call   0x2e5970
  2e7e1f:	48 8b c8                                        	mov    rcx,rax
  2e7e22:	e8 1d 5f fe ff                                  	call   0x2cdd44
  2e7e27:	48 8b c8                                        	mov    rcx,rax
  2e7e2a:	49 8b d6                                        	mov    rdx,r14
  2e7e2d:	e8 1a dd ff ff                                  	call   0x2e5b4c
  2e7e32:	48 3b d8                                        	cmp    rbx,rax
  2e7e35:	0f 85 7c 01 00 00                               	jne    0x2e7fb7
  2e7e3b:	48 8b cf                                        	mov    rcx,rdi
  2e7e3e:	e8 e1 14 08 00                                  	call   0x369324
  2e7e43:	48 8b c8                                        	mov    rcx,rax
  2e7e46:	48 8b d8                                        	mov    rbx,rax
  2e7e49:	e8 ba 30 fe ff                                  	call   0x2caf08
  2e7e4e:	84 c0                                           	test   al,al
  2e7e50:	0f 84 61 01 00 00                               	je     0x2e7fb7
  2e7e56:	48 8b cb                                        	mov    rcx,rbx
  2e7e59:	e8 96 bf 08 00                                  	call   0x373df4
  2e7e5e:	48 8b c8                                        	mov    rcx,rax
  2e7e61:	48 8b d0                                        	mov    rdx,rax
  2e7e64:	e8 9f 30 fe ff                                  	call   0x2caf08
  2e7e69:	84 c0                                           	test   al,al
  2e7e6b:	74 15                                           	je     0x2e7e82
  2e7e6d:	48 8b 72 58                                     	mov    rsi,QWORD PTR [rdx+0x58]
  2e7e71:	48 8b ca                                        	mov    rcx,rdx
  2e7e74:	48 89 b5 b0 00 00 00                            	mov    QWORD PTR [rbp+0xb0],rsi
  2e7e7b:	e8 cc a3 08 00                                  	call   0x37224c
  2e7e80:	eb 14                                           	jmp    0x2e7e96
  2e7e82:	48 8b 85 a0 00 00 00                            	mov    rax,QWORD PTR [rbp+0xa0]
  2e7e89:	48 89 85 b0 00 00 00                            	mov    QWORD PTR [rbp+0xb0],rax
  2e7e90:	8b 85 a0 00 00 00                               	mov    eax,DWORD PTR [rbp+0xa0]
  2e7e96:	48 8b cb                                        	mov    rcx,rbx
  2e7e99:	89 85 a0 00 00 00                               	mov    DWORD PTR [rbp+0xa0],eax
  2e7e9f:	e8 a8 bf 08 00                                  	call   0x373e4c
  2e7ea4:	48 8b c8                                        	mov    rcx,rax
  2e7ea7:	4c 8b f8                                        	mov    r15,rax
  2e7eaa:	e8 59 30 fe ff                                  	call   0x2caf08
  2e7eaf:	84 c0                                           	test   al,al
  2e7eb1:	0f 84 00 01 00 00                               	je     0x2e7fb7
  2e7eb7:	49 8b cf                                        	mov    rcx,r15
  2e7eba:	e8 b9 a3 08 00                                  	call   0x372278
  2e7ebf:	33 f6                                           	xor    esi,esi
  2e7ec1:	89 85 a8 00 00 00                               	mov    DWORD PTR [rbp+0xa8],eax
  2e7ec7:	85 c0                                           	test   eax,eax
  2e7ec9:	0f 8e e8 00 00 00                               	jle    0x2e7fb7
  2e7ecf:	4c 8b ad b0 00 00 00                            	mov    r13,QWORD PTR [rbp+0xb0]
  2e7ed6:	8b f8                                           	mov    edi,eax
  2e7ed8:	8b d6                                           	mov    edx,esi
  2e7eda:	49 8b cf                                        	mov    rcx,r15
  2e7edd:	e8 c2 a3 08 00                                  	call   0x3722a4
  2e7ee2:	48 8b c8                                        	mov    rcx,rax
  2e7ee5:	48 8b d0                                        	mov    rdx,rax
  2e7ee8:	e8 1b 30 fe ff                                  	call   0x2caf08
  2e7eed:	84 c0                                           	test   al,al
  2e7eef:	0f 84 ad 00 00 00                               	je     0x2e7fa2
  2e7ef5:	4c 8b 72 20                                     	mov    r14,QWORD PTR [rdx+0x20]
  2e7ef9:	49 8b ce                                        	mov    rcx,r14
  2e7efc:	e8 07 30 fe ff                                  	call   0x2caf08
  2e7f01:	84 c0                                           	test   al,al
  2e7f03:	0f 84 99 00 00 00                               	je     0x2e7fa2
  2e7f09:	45 8b 66 18                                     	mov    r12d,DWORD PTR [r14+0x18]
  2e7f0d:	33 db                                           	xor    ebx,ebx
  2e7f0f:	45 85 e4                                        	test   r12d,r12d
  2e7f12:	0f 8e 8a 00 00 00                               	jle    0x2e7fa2
  2e7f18:	8b bd a0 00 00 00                               	mov    edi,DWORD PTR [rbp+0xa0]
  2e7f1e:	4d 8b 56 10                                     	mov    r10,QWORD PTR [r14+0x10]
  2e7f22:	49 8b ca                                        	mov    rcx,r10
  2e7f25:	e8 de 2f fe ff                                  	call   0x2caf08
  2e7f2a:	84 c0                                           	test   al,al
  2e7f2c:	74 67                                           	je     0x2e7f95
  2e7f2e:	8d 04 dd 00 00 00 00                            	lea    eax,[rbx*8+0x0]
  2e7f35:	48 63 c8                                        	movsxd rcx,eax
  2e7f38:	4d 8b 54 0a 20                                  	mov    r10,QWORD PTR [r10+rcx*1+0x20]
  2e7f3d:	49 8b ca                                        	mov    rcx,r10
  2e7f40:	e8 c3 2f fe ff                                  	call   0x2caf08
  2e7f45:	84 c0                                           	test   al,al
  2e7f47:	74 4c                                           	je     0x2e7f95
  2e7f49:	49 8b 52 10                                     	mov    rdx,QWORD PTR [r10+0x10]
  2e7f4d:	48 8b ca                                        	mov    rcx,rdx
  2e7f50:	e8 b3 2f fe ff                                  	call   0x2caf08
  2e7f55:	84 c0                                           	test   al,al
  2e7f57:	74 3c                                           	je     0x2e7f95
  2e7f59:	83 7a 78 01                                     	cmp    DWORD PTR [rdx+0x78],0x1
  2e7f5d:	45 8b 4a 30                                     	mov    r9d,DWORD PTR [r10+0x30]
  2e7f61:	7e 0a                                           	jle    0x2e7f6d
  2e7f63:	44 3b 4a 78                                     	cmp    r9d,DWORD PTR [rdx+0x78]
  2e7f67:	74 04                                           	je     0x2e7f6d
  2e7f69:	b0 01                                           	mov    al,0x1
  2e7f6b:	eb 02                                           	jmp    0x2e7f6f
  2e7f6d:	32 c0                                           	xor    al,al
  2e7f6f:	83 ff 18                                        	cmp    edi,0x18
  2e7f72:	75 04                                           	jne    0x2e7f78
  2e7f74:	84 c0                                           	test   al,al
  2e7f76:	74 1d                                           	je     0x2e7f95
  2e7f78:	41 83 f9 02                                     	cmp    r9d,0x2
  2e7f7c:	7e 17                                           	jle    0x2e7f95
  2e7f7e:	49 8b 8a 88 00 00 00                            	mov    rcx,QWORD PTR [r10+0x88]
  2e7f85:	41 83 c1 fe                                     	add    r9d,0xfffffffe
  2e7f89:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e7f8d:	49 8b d5                                        	mov    rdx,r13
  2e7f90:	e8 ef ea ff ff                                  	call   0x2e6a84
  2e7f95:	ff c3                                           	inc    ebx
  2e7f97:	41 3b dc                                        	cmp    ebx,r12d
  2e7f9a:	7c 82                                           	jl     0x2e7f1e
  2e7f9c:	8b bd a8 00 00 00                               	mov    edi,DWORD PTR [rbp+0xa8]
  2e7fa2:	ff c6                                           	inc    esi
  2e7fa4:	3b f7                                           	cmp    esi,edi
  2e7fa6:	0f 8c 2c ff ff ff                               	jl     0x2e7ed8
  2e7fac:	48 8b 7d 88                                     	mov    rdi,QWORD PTR [rbp-0x78]
  2e7fb0:	4c 8b ad b8 00 00 00                            	mov    r13,QWORD PTR [rbp+0xb8]
  2e7fb7:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e7fbc:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e7fc3:	e8 10 da ff ff                                  	call   0x2e59d8
  2e7fc8:	48 8b c8                                        	mov    rcx,rax
  2e7fcb:	e8 b8 51 ff ff                                  	call   0x2dd188
  2e7fd0:	48 8b d0                                        	mov    rdx,rax
  2e7fd3:	49 8b cd                                        	mov    rcx,r13
  2e7fd6:	e8 55 ec 07 00                                  	call   0x366c30
  2e7fdb:	45 33 ed                                        	xor    r13d,r13d
  2e7fde:	44 38 2d 73 cf 0f 00                            	cmp    BYTE PTR [rip+0xfcf73],r13b        # 0x3e4f58
  2e7fe5:	0f 84 74 03 00 00                               	je     0x2e835f
  2e7feb:	33 d2                                           	xor    edx,edx
  2e7fed:	48 8d 0d 94 d5 0f 00                            	lea    rcx,[rip+0xfd594]        # 0x3e5588
  2e7ff4:	e8 eb 09 00 00                                  	call   0x2e89e4
  2e7ff9:	84 c0                                           	test   al,al
  2e7ffb:	0f 84 5e 03 00 00                               	je     0x2e835f
  2e8001:	48 8b cf                                        	mov    rcx,rdi
  2e8004:	e8 1b 13 08 00                                  	call   0x369324
  2e8009:	48 8b c8                                        	mov    rcx,rax
  2e800c:	48 8b d8                                        	mov    rbx,rax
  2e800f:	e8 f4 2e fe ff                                  	call   0x2caf08
  2e8014:	84 c0                                           	test   al,al
  2e8016:	0f 84 43 03 00 00                               	je     0x2e835f
  2e801c:	48 8b cb                                        	mov    rcx,rbx
  2e801f:	e8 d0 bd 08 00                                  	call   0x373df4
  2e8024:	48 8b c8                                        	mov    rcx,rax
  2e8027:	48 8b d0                                        	mov    rdx,rax
  2e802a:	e8 d9 2e fe ff                                  	call   0x2caf08
  2e802f:	84 c0                                           	test   al,al
  2e8031:	74 13                                           	je     0x2e8046
  2e8033:	48 8b 72 58                                     	mov    rsi,QWORD PTR [rdx+0x58]
  2e8037:	48 8b ca                                        	mov    rcx,rdx
  2e803a:	48 89 74 24 50                                  	mov    QWORD PTR [rsp+0x50],rsi
  2e803f:	e8 08 a2 08 00                                  	call   0x37224c
  2e8044:	eb 12                                           	jmp    0x2e8058
  2e8046:	48 8b 85 a0 00 00 00                            	mov    rax,QWORD PTR [rbp+0xa0]
  2e804d:	48 89 44 24 50                                  	mov    QWORD PTR [rsp+0x50],rax
  2e8052:	8b 85 a0 00 00 00                               	mov    eax,DWORD PTR [rbp+0xa0]
  2e8058:	48 8b cb                                        	mov    rcx,rbx
  2e805b:	89 85 a8 00 00 00                               	mov    DWORD PTR [rbp+0xa8],eax
  2e8061:	e8 e6 bd 08 00                                  	call   0x373e4c
  2e8066:	48 8b c8                                        	mov    rcx,rax
  2e8069:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  2e806e:	48 8b d8                                        	mov    rbx,rax
  2e8071:	e8 92 2e fe ff                                  	call   0x2caf08
  2e8076:	84 c0                                           	test   al,al
  2e8078:	0f 84 e1 02 00 00                               	je     0x2e835f
  2e807e:	48 8b cb                                        	mov    rcx,rbx
  2e8081:	44 88 ad a0 00 00 00                            	mov    BYTE PTR [rbp+0xa0],r13b
  2e8088:	41 8a f5                                        	mov    sil,r13b
  2e808b:	e8 e8 a1 08 00                                  	call   0x372278
  2e8090:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
  2e8093:	45 8b fd                                        	mov    r15d,r13d
  2e8096:	44 89 ad b0 00 00 00                            	mov    DWORD PTR [rbp+0xb0],r13d
  2e809d:	85 c0                                           	test   eax,eax
  2e809f:	0f 8e ba 02 00 00                               	jle    0x2e835f
  2e80a5:	41 8b d7                                        	mov    edx,r15d
  2e80a8:	48 8b cb                                        	mov    rcx,rbx
  2e80ab:	e8 f4 a1 08 00                                  	call   0x3722a4
  2e80b0:	48 8b c8                                        	mov    rcx,rax
  2e80b3:	48 8b d0                                        	mov    rdx,rax
  2e80b6:	e8 4d 2e fe ff                                  	call   0x2caf08
  2e80bb:	84 c0                                           	test   al,al
  2e80bd:	0f 84 71 02 00 00                               	je     0x2e8334
  2e80c3:	4c 8b 6a 20                                     	mov    r13,QWORD PTR [rdx+0x20]
  2e80c7:	49 8b cd                                        	mov    rcx,r13
  2e80ca:	e8 39 2e fe ff                                  	call   0x2caf08
  2e80cf:	45 33 c0                                        	xor    r8d,r8d
  2e80d2:	84 c0                                           	test   al,al
  2e80d4:	0f 84 57 02 00 00                               	je     0x2e8331
  2e80da:	41 8b 45 18                                     	mov    eax,DWORD PTR [r13+0x18]
  2e80de:	45 8b f0                                        	mov    r14d,r8d
  2e80e1:	85 c0                                           	test   eax,eax
  2e80e3:	0f 8e 48 02 00 00                               	jle    0x2e8331
  2e80e9:	44 8b bd a8 00 00 00                            	mov    r15d,DWORD PTR [rbp+0xa8]
  2e80f0:	8b f8                                           	mov    edi,eax
  2e80f2:	49 8b 55 10                                     	mov    rdx,QWORD PTR [r13+0x10]
  2e80f6:	48 8b ca                                        	mov    rcx,rdx
  2e80f9:	e8 0a 2e fe ff                                  	call   0x2caf08
  2e80fe:	84 c0                                           	test   al,al
  2e8100:	0f 84 13 02 00 00                               	je     0x2e8319
  2e8106:	42 8d 04 f5 00 00 00 00                         	lea    eax,[r14*8+0x0]
  2e810e:	48 63 c8                                        	movsxd rcx,eax
  2e8111:	48 8b 54 0a 20                                  	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
  2e8116:	48 8b ca                                        	mov    rcx,rdx
  2e8119:	e8 ea 2d fe ff                                  	call   0x2caf08
  2e811e:	84 c0                                           	test   al,al
  2e8120:	0f 84 f3 01 00 00                               	je     0x2e8319
  2e8126:	48 8b 72 10                                     	mov    rsi,QWORD PTR [rdx+0x10]
  2e812a:	48 8b ce                                        	mov    rcx,rsi
  2e812d:	e8 d6 2d fe ff                                  	call   0x2caf08
  2e8132:	84 c0                                           	test   al,al
  2e8134:	0f 84 d8 01 00 00                               	je     0x2e8312
  2e813a:	48 8b 82 88 00 00 00                            	mov    rax,QWORD PTR [rdx+0x88]
  2e8141:	48 8d 0d b0 d5 0f 00                            	lea    rcx,[rip+0xfd5b0]        # 0x3e56f8
  2e8148:	44 8b 62 30                                     	mov    r12d,DWORD PTR [rdx+0x30]
  2e814c:	41 b8 07 00 00 00                               	mov    r8d,0x7
  2e8152:	0f bf 5e 58                                     	movsx  ebx,WORD PTR [rsi+0x58]
  2e8156:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e815b:	48 89 85 b8 00 00 00                            	mov    QWORD PTR [rbp+0xb8],rax
  2e8162:	e8 89 17 00 00                                  	call   0x2e98f0
  2e8167:	48 8b c8                                        	mov    rcx,rax
  2e816a:	e8 01 cc fe ff                                  	call   0x2d4d70
  2e816f:	45 33 c0                                        	xor    r8d,r8d
  2e8172:	84 c0                                           	test   al,al
  2e8174:	0f 85 56 01 00 00                               	jne    0x2e82d0
  2e817a:	66 83 fb 11                                     	cmp    bx,0x11
  2e817e:	77 0e                                           	ja     0x2e818e
  2e8180:	b9 16 de 03 00                                  	mov    ecx,0x3de16
  2e8185:	0f a3 d9                                        	bt     ecx,ebx
  2e8188:	0f 82 84 01 00 00                               	jb     0x2e8312
  2e818e:	66 85 db                                        	test   bx,bx
  2e8191:	75 24                                           	jne    0x2e81b7
  2e8193:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2e8198:	48 8d 0d 59 d5 0f 00                            	lea    rcx,[rip+0xfd559]        # 0x3e56f8
  2e819f:	e8 4c 17 00 00                                  	call   0x2e98f0
  2e81a4:	48 8b c8                                        	mov    rcx,rax
  2e81a7:	e8 c4 cb fe ff                                  	call   0x2d4d70
  2e81ac:	45 33 c0                                        	xor    r8d,r8d
  2e81af:	84 c0                                           	test   al,al
  2e81b1:	0f 84 5b 01 00 00                               	je     0x2e8312
  2e81b7:	b8 03 00 00 00                                  	mov    eax,0x3
  2e81bc:	66 3b d8                                        	cmp    bx,ax
  2e81bf:	75 27                                           	jne    0x2e81e8
  2e81c1:	44 8d 40 fe                                     	lea    r8d,[rax-0x2]
  2e81c5:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  2e81c9:	48 8d 0d 28 d5 0f 00                            	lea    rcx,[rip+0xfd528]        # 0x3e56f8
  2e81d0:	e8 1b 17 00 00                                  	call   0x2e98f0
  2e81d5:	48 8b c8                                        	mov    rcx,rax
  2e81d8:	e8 93 cb fe ff                                  	call   0x2d4d70
  2e81dd:	45 33 c0                                        	xor    r8d,r8d
  2e81e0:	84 c0                                           	test   al,al
  2e81e2:	0f 84 2a 01 00 00                               	je     0x2e8312
  2e81e8:	b8 06 00 00 00                                  	mov    eax,0x6
  2e81ed:	66 3b d8                                        	cmp    bx,ax
  2e81f0:	75 27                                           	jne    0x2e8219
  2e81f2:	44 8d 40 fc                                     	lea    r8d,[rax-0x4]
  2e81f6:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  2e81fa:	48 8d 0d f7 d4 0f 00                            	lea    rcx,[rip+0xfd4f7]        # 0x3e56f8
  2e8201:	e8 ea 16 00 00                                  	call   0x2e98f0
  2e8206:	48 8b c8                                        	mov    rcx,rax
  2e8209:	e8 62 cb fe ff                                  	call   0x2d4d70
  2e820e:	45 33 c0                                        	xor    r8d,r8d
  2e8211:	84 c0                                           	test   al,al
  2e8213:	0f 84 f9 00 00 00                               	je     0x2e8312
  2e8219:	b8 07 00 00 00                                  	mov    eax,0x7
  2e821e:	66 3b d8                                        	cmp    bx,ax
  2e8221:	75 27                                           	jne    0x2e824a
  2e8223:	44 8d 40 fc                                     	lea    r8d,[rax-0x4]
  2e8227:	48 8d 55 c8                                     	lea    rdx,[rbp-0x38]
  2e822b:	48 8d 0d c6 d4 0f 00                            	lea    rcx,[rip+0xfd4c6]        # 0x3e56f8
  2e8232:	e8 b9 16 00 00                                  	call   0x2e98f0
  2e8237:	48 8b c8                                        	mov    rcx,rax
  2e823a:	e8 31 cb fe ff                                  	call   0x2d4d70
  2e823f:	45 33 c0                                        	xor    r8d,r8d
  2e8242:	84 c0                                           	test   al,al
  2e8244:	0f 84 c8 00 00 00                               	je     0x2e8312
  2e824a:	b8 08 00 00 00                                  	mov    eax,0x8
  2e824f:	66 3b d8                                        	cmp    bx,ax
  2e8252:	75 27                                           	jne    0x2e827b
  2e8254:	44 8d 40 fc                                     	lea    r8d,[rax-0x4]
  2e8258:	48 8d 55 d8                                     	lea    rdx,[rbp-0x28]
  2e825c:	48 8d 0d 95 d4 0f 00                            	lea    rcx,[rip+0xfd495]        # 0x3e56f8
  2e8263:	e8 88 16 00 00                                  	call   0x2e98f0
  2e8268:	48 8b c8                                        	mov    rcx,rax
  2e826b:	e8 00 cb fe ff                                  	call   0x2d4d70
  2e8270:	45 33 c0                                        	xor    r8d,r8d
  2e8273:	84 c0                                           	test   al,al
  2e8275:	0f 84 97 00 00 00                               	je     0x2e8312
  2e827b:	83 fb 0d                                        	cmp    ebx,0xd
  2e827e:	75 23                                           	jne    0x2e82a3
  2e8280:	44 8d 43 f8                                     	lea    r8d,[rbx-0x8]
  2e8284:	48 8d 55 e8                                     	lea    rdx,[rbp-0x18]
  2e8288:	48 8d 0d 69 d4 0f 00                            	lea    rcx,[rip+0xfd469]        # 0x3e56f8
  2e828f:	e8 5c 16 00 00                                  	call   0x2e98f0
  2e8294:	48 8b c8                                        	mov    rcx,rax
  2e8297:	e8 d4 ca fe ff                                  	call   0x2d4d70
  2e829c:	45 33 c0                                        	xor    r8d,r8d
  2e829f:	84 c0                                           	test   al,al
  2e82a1:	74 6f                                           	je     0x2e8312
  2e82a3:	b8 05 00 00 00                                  	mov    eax,0x5
  2e82a8:	66 3b d8                                        	cmp    bx,ax
  2e82ab:	75 23                                           	jne    0x2e82d0
  2e82ad:	44 8d 40 01                                     	lea    r8d,[rax+0x1]
  2e82b1:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2e82b5:	48 8d 0d 3c d4 0f 00                            	lea    rcx,[rip+0xfd43c]        # 0x3e56f8
  2e82bc:	e8 2f 16 00 00                                  	call   0x2e98f0
  2e82c1:	48 8b c8                                        	mov    rcx,rax
  2e82c4:	e8 a7 ca fe ff                                  	call   0x2d4d70
  2e82c9:	45 33 c0                                        	xor    r8d,r8d
  2e82cc:	84 c0                                           	test   al,al
  2e82ce:	74 42                                           	je     0x2e8312
  2e82d0:	83 7e 78 01                                     	cmp    DWORD PTR [rsi+0x78],0x1
  2e82d4:	7e 08                                           	jle    0x2e82de
  2e82d6:	b0 01                                           	mov    al,0x1
  2e82d8:	44 3b 66 78                                     	cmp    r12d,DWORD PTR [rsi+0x78]
  2e82dc:	75 03                                           	jne    0x2e82e1
  2e82de:	41 8a c0                                        	mov    al,r8b
  2e82e1:	41 83 ff 18                                     	cmp    r15d,0x18
  2e82e5:	75 04                                           	jne    0x2e82eb
  2e82e7:	84 c0                                           	test   al,al
  2e82e9:	74 27                                           	je     0x2e8312
  2e82eb:	48 8b 54 24 50                                  	mov    rdx,QWORD PTR [rsp+0x50]
  2e82f0:	45 8b cc                                        	mov    r9d,r12d
  2e82f3:	48 8b 8d b8 00 00 00                            	mov    rcx,QWORD PTR [rbp+0xb8]
  2e82fa:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e82fe:	e8 81 e7 ff ff                                  	call   0x2e6a84
  2e8303:	40 b6 01                                        	mov    sil,0x1
  2e8306:	45 33 c0                                        	xor    r8d,r8d
  2e8309:	40 88 b5 a0 00 00 00                            	mov    BYTE PTR [rbp+0xa0],sil
  2e8310:	eb 07                                           	jmp    0x2e8319
  2e8312:	40 8a b5 a0 00 00 00                            	mov    sil,BYTE PTR [rbp+0xa0]
  2e8319:	41 ff c6                                        	inc    r14d
  2e831c:	44 3b f7                                        	cmp    r14d,edi
  2e831f:	0f 8c cd fd ff ff                               	jl     0x2e80f2
  2e8325:	44 8b bd b0 00 00 00                            	mov    r15d,DWORD PTR [rbp+0xb0]
  2e832c:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  2e8331:	45 33 ed                                        	xor    r13d,r13d
  2e8334:	41 ff c7                                        	inc    r15d
  2e8337:	44 89 bd b0 00 00 00                            	mov    DWORD PTR [rbp+0xb0],r15d
  2e833e:	44 3b 7d 80                                     	cmp    r15d,DWORD PTR [rbp-0x80]
  2e8342:	0f 8c 5d fd ff ff                               	jl     0x2e80a5
  2e8348:	48 8b 7d 88                                     	mov    rdi,QWORD PTR [rbp-0x78]
  2e834c:	40 84 f6                                        	test   sil,sil
  2e834f:	74 0e                                           	je     0x2e835f
  2e8351:	44 38 2d a0 be 0f 00                            	cmp    BYTE PTR [rip+0xfbea0],r13b        # 0x3e41f8
  2e8358:	74 05                                           	je     0x2e835f
  2e835a:	e8 8d d8 ff ff                                  	call   0x2e5bec
  2e835f:	44 38 2d 72 ce 0f 00                            	cmp    BYTE PTR [rip+0xfce72],r13b        # 0x3e51d8
  2e8366:	0f 84 54 05 00 00                               	je     0x2e88c0
  2e836c:	8b 0d 56 d1 0f 00                               	mov    ecx,DWORD PTR [rip+0xfd156]        # 0x3e54c8
  2e8372:	b2 01                                           	mov    dl,0x1
  2e8374:	e8 d3 da ff ff                                  	call   0x2e5e4c
  2e8379:	84 c0                                           	test   al,al
  2e837b:	0f 84 2f 05 00 00                               	je     0x2e88b0
  2e8381:	48 8b cf                                        	mov    rcx,rdi
  2e8384:	e8 6b 1f 08 00                                  	call   0x36a2f4
  2e8389:	48 8b c8                                        	mov    rcx,rax
  2e838c:	48 8b d8                                        	mov    rbx,rax
  2e838f:	e8 74 2b fe ff                                  	call   0x2caf08
  2e8394:	84 c0                                           	test   al,al
  2e8396:	0f 84 88 02 00 00                               	je     0x2e8624
  2e839c:	48 8b cb                                        	mov    rcx,rbx
  2e839f:	e8 b0 d6 ff ff                                  	call   0x2e5a54
  2e83a4:	48 8b c8                                        	mov    rcx,rax
  2e83a7:	48 8b f0                                        	mov    rsi,rax
  2e83aa:	e8 59 2b fe ff                                  	call   0x2caf08
  2e83af:	84 c0                                           	test   al,al
  2e83b1:	0f 84 6d 02 00 00                               	je     0x2e8624
  2e83b7:	48 8b cf                                        	mov    rcx,rdi
  2e83ba:	e8 c5 06 08 00                                  	call   0x368a84
  2e83bf:	48 8b c8                                        	mov    rcx,rax
  2e83c2:	48 8b d0                                        	mov    rdx,rax
  2e83c5:	e8 3e 2b fe ff                                  	call   0x2caf08
  2e83ca:	84 c0                                           	test   al,al
  2e83cc:	0f 84 52 02 00 00                               	je     0x2e8624
  2e83d2:	48 8b ca                                        	mov    rcx,rdx
  2e83d5:	e8 aa 8f 08 00                                  	call   0x371384
  2e83da:	48 8b c8                                        	mov    rcx,rax
  2e83dd:	e8 26 2b fe ff                                  	call   0x2caf08
  2e83e2:	84 c0                                           	test   al,al
  2e83e4:	0f 84 3a 02 00 00                               	je     0x2e8624
  2e83ea:	0f 28 ce                                        	movaps xmm1,xmm6
  2e83ed:	48 8d 0d e8 d6 0f 00                            	lea    rcx,[rip+0xfd6e8]        # 0x3e5adc
  2e83f4:	e8 83 d7 ff ff                                  	call   0x2e5b7c
  2e83f9:	84 c0                                           	test   al,al
  2e83fb:	0f 84 23 02 00 00                               	je     0x2e8624
  2e8401:	48 8b ce                                        	mov    rcx,rsi
  2e8404:	e8 4b df fe ff                                  	call   0x2d6354
  2e8409:	44 38 2d c9 d6 0f 00                            	cmp    BYTE PTR [rip+0xfd6c9],r13b        # 0x3e5ad9
  2e8410:	48 8b f0                                        	mov    rsi,rax
  2e8413:	41 be d8 01 00 00                               	mov    r14d,0x1d8
  2e8419:	0f 84 5a 01 00 00                               	je     0x2e8579
  2e841f:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e8424:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e842b:	e8 f8 d5 ff ff                                  	call   0x2e5a28
  2e8430:	48 8b c8                                        	mov    rcx,rax
  2e8433:	e8 54 17 00 00                                  	call   0x2e9b8c
  2e8438:	49 bf 25 23 22 84 e4 9c f2 cb                   	movabs r15,0xcbf29ce484222325
  2e8442:	48 8b c8                                        	mov    rcx,rax
  2e8445:	49 8b d7                                        	mov    rdx,r15
  2e8448:	e8 ff d6 ff ff                                  	call   0x2e5b4c
  2e844d:	48 3b f0                                        	cmp    rsi,rax
  2e8450:	74 28                                           	je     0x2e847a
  2e8452:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2e8456:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e845d:	e8 9e cd ff ff                                  	call   0x2e5200
  2e8462:	48 8b c8                                        	mov    rcx,rax
  2e8465:	e8 72 17 00 00                                  	call   0x2e9bdc
  2e846a:	48 8b c8                                        	mov    rcx,rax
  2e846d:	49 8b d7                                        	mov    rdx,r15
  2e8470:	e8 d7 d6 ff ff                                  	call   0x2e5b4c
  2e8475:	48 3b f0                                        	cmp    rsi,rax
  2e8478:	75 6a                                           	jne    0x2e84e4
  2e847a:	49 8b d6                                        	mov    rdx,r14
  2e847d:	48 8b cb                                        	mov    rcx,rbx
  2e8480:	e8 b7 69 ff ff                                  	call   0x2dee3c
  2e8485:	41 bc 10 00 00 00                               	mov    r12d,0x10
  2e848b:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e8492:	66 44 39 20                                     	cmp    WORD PTR [rax],r12w
  2e8496:	75 1f                                           	jne    0x2e84b7
  2e8498:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e849d:	e8 b2 cd ff ff                                  	call   0x2e5254
  2e84a2:	48 8b c8                                        	mov    rcx,rax
  2e84a5:	e8 9a 58 fe ff                                  	call   0x2cdd44
  2e84aa:	48 8b d0                                        	mov    rdx,rax
  2e84ad:	48 8b cb                                        	mov    rcx,rbx
  2e84b0:	e8 7b e7 07 00                                  	call   0x366c30
  2e84b5:	eb 33                                           	jmp    0x2e84ea
  2e84b7:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e84bc:	e8 af cd ff ff                                  	call   0x2e5270
  2e84c1:	48 8b c8                                        	mov    rcx,rax
  2e84c4:	e8 2b 01 ff ff                                  	call   0x2d85f4
  2e84c9:	48 8b d0                                        	mov    rdx,rax
  2e84cc:	48 8b cb                                        	mov    rcx,rbx
  2e84cf:	e8 5c e7 07 00                                  	call   0x366c30
  2e84d4:	c6 05 fd d5 0f 00 01                            	mov    BYTE PTR [rip+0xfd5fd],0x1        # 0x3e5ad8
  2e84db:	44 88 2d f7 d5 0f 00                            	mov    BYTE PTR [rip+0xfd5f7],r13b        # 0x3e5ad9
  2e84e2:	eb 06                                           	jmp    0x2e84ea
  2e84e4:	41 bc 10 00 00 00                               	mov    r12d,0x10
  2e84ea:	48 8d 95 a0 00 00 00                            	lea    rdx,[rbp+0xa0]
  2e84f1:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e84f8:	e8 bb cd ff ff                                  	call   0x2e52b8
  2e84fd:	48 8b c8                                        	mov    rcx,rax
  2e8500:	e8 0f b1 ff ff                                  	call   0x2e3614
  2e8505:	48 8b c8                                        	mov    rcx,rax
  2e8508:	49 8b d7                                        	mov    rdx,r15
  2e850b:	e8 3c d6 ff ff                                  	call   0x2e5b4c
  2e8510:	48 3b f0                                        	cmp    rsi,rax
  2e8513:	75 6e                                           	jne    0x2e8583
  2e8515:	49 8b d6                                        	mov    rdx,r14
  2e8518:	48 8b cb                                        	mov    rcx,rbx
  2e851b:	e8 1c 69 ff ff                                  	call   0x2dee3c
  2e8520:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e8527:	66 44 39 20                                     	cmp    WORD PTR [rax],r12w
  2e852b:	75 1f                                           	jne    0x2e854c
  2e852d:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e8532:	e8 95 cd ff ff                                  	call   0x2e52cc
  2e8537:	48 8b c8                                        	mov    rcx,rax
  2e853a:	e8 15 17 00 00                                  	call   0x2e9c54
  2e853f:	48 8b d0                                        	mov    rdx,rax
  2e8542:	48 8b cb                                        	mov    rcx,rbx
  2e8545:	e8 e6 e6 07 00                                  	call   0x366c30
  2e854a:	eb 37                                           	jmp    0x2e8583
  2e854c:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e8551:	e8 92 cd ff ff                                  	call   0x2e52e8
  2e8556:	48 8b c8                                        	mov    rcx,rax
  2e8559:	e8 96 00 ff ff                                  	call   0x2d85f4
  2e855e:	48 8b d0                                        	mov    rdx,rax
  2e8561:	48 8b cb                                        	mov    rcx,rbx
  2e8564:	e8 c7 e6 07 00                                  	call   0x366c30
  2e8569:	c6 05 68 d5 0f 00 01                            	mov    BYTE PTR [rip+0xfd568],0x1        # 0x3e5ad8
  2e8570:	44 88 2d 62 d5 0f 00                            	mov    BYTE PTR [rip+0xfd562],r13b        # 0x3e5ad9
  2e8577:	eb 0a                                           	jmp    0x2e8583
  2e8579:	49 bf 25 23 22 84 e4 9c f2 cb                   	movabs r15,0xcbf29ce484222325
  2e8583:	44 38 2d 50 d5 0f 00                            	cmp    BYTE PTR [rip+0xfd550],r13b        # 0x3e5ada
  2e858a:	0f 84 94 00 00 00                               	je     0x2e8624
  2e8590:	48 8d 95 a0 00 00 00                            	lea    rdx,[rbp+0xa0]
  2e8597:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e859e:	e8 69 cd ff ff                                  	call   0x2e530c
  2e85a3:	48 8b c8                                        	mov    rcx,rax
  2e85a6:	e8 21 57 fe ff                                  	call   0x2cdccc
  2e85ab:	48 8b c8                                        	mov    rcx,rax
  2e85ae:	49 8b d7                                        	mov    rdx,r15
  2e85b1:	e8 96 d5 ff ff                                  	call   0x2e5b4c
  2e85b6:	48 3b f0                                        	cmp    rsi,rax
  2e85b9:	75 69                                           	jne    0x2e8624
  2e85bb:	49 8b d6                                        	mov    rdx,r14
  2e85be:	48 8b cb                                        	mov    rcx,rbx
  2e85c1:	e8 76 68 ff ff                                  	call   0x2dee3c
  2e85c6:	44 38 2d 0b d5 0f 00                            	cmp    BYTE PTR [rip+0xfd50b],r13b        # 0x3e5ad8
  2e85cd:	74 55                                           	je     0x2e8624
  2e85cf:	f6 00 08                                        	test   BYTE PTR [rax],0x8
  2e85d2:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  2e85d9:	75 1f                                           	jne    0x2e85fa
  2e85db:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e85e0:	e8 3f cd ff ff                                  	call   0x2e5324
  2e85e5:	48 8b c8                                        	mov    rcx,rax
  2e85e8:	e8 07 00 ff ff                                  	call   0x2d85f4
  2e85ed:	48 8b d0                                        	mov    rdx,rax
  2e85f0:	48 8b cb                                        	mov    rcx,rbx
  2e85f3:	e8 38 e6 07 00                                  	call   0x366c30
  2e85f8:	eb 2a                                           	jmp    0x2e8624
  2e85fa:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2e85fe:	e8 45 cd ff ff                                  	call   0x2e5348
  2e8603:	48 8b c8                                        	mov    rcx,rax
  2e8606:	e8 55 4b ff ff                                  	call   0x2dd160
  2e860b:	48 8b d0                                        	mov    rdx,rax
  2e860e:	48 8b cb                                        	mov    rcx,rbx
  2e8611:	e8 1a e6 07 00                                  	call   0x366c30
  2e8616:	44 88 2d bb d4 0f 00                            	mov    BYTE PTR [rip+0xfd4bb],r13b        # 0x3e5ad8
  2e861d:	44 88 2d b6 d4 0f 00                            	mov    BYTE PTR [rip+0xfd4b6],r13b        # 0x3e5ada
  2e8624:	0f 28 ce                                        	movaps xmm1,xmm6
  2e8627:	48 8d 0d b2 d4 0f 00                            	lea    rcx,[rip+0xfd4b2]        # 0x3e5ae0
  2e862e:	e8 49 d5 ff ff                                  	call   0x2e5b7c
  2e8633:	84 c0                                           	test   al,al
  2e8635:	0f 84 16 01 00 00                               	je     0x2e8751
  2e863b:	48 8b cf                                        	mov    rcx,rdi
  2e863e:	e8 41 04 08 00                                  	call   0x368a84
  2e8643:	48 8b c8                                        	mov    rcx,rax
  2e8646:	48 8b d8                                        	mov    rbx,rax
  2e8649:	e8 ba 28 fe ff                                  	call   0x2caf08
  2e864e:	84 c0                                           	test   al,al
  2e8650:	0f 84 fb 00 00 00                               	je     0x2e8751
  2e8656:	48 8b cb                                        	mov    rcx,rbx
  2e8659:	e8 26 8d 08 00                                  	call   0x371384
  2e865e:	48 8b c8                                        	mov    rcx,rax
  2e8661:	e8 a2 28 fe ff                                  	call   0x2caf08
  2e8666:	84 c0                                           	test   al,al
  2e8668:	0f 84 8c 00 00 00                               	je     0x2e86fa
  2e866e:	48 8b 05 8b e8 0e 00                            	mov    rax,QWORD PTR [rip+0xee88b]        # 0x3d6f00
  2e8675:	48 8b 90 b0 34 11 0f                            	mov    rdx,QWORD PTR [rax+0xf1134b0]
  2e867c:	48 8b ca                                        	mov    rcx,rdx
  2e867f:	e8 84 28 fe ff                                  	call   0x2caf08
  2e8684:	84 c0                                           	test   al,al
  2e8686:	74 72                                           	je     0x2e86fa
  2e8688:	48 8b 92 b8 00 00 00                            	mov    rdx,QWORD PTR [rdx+0xb8]
  2e868f:	48 8b ca                                        	mov    rcx,rdx
  2e8692:	e8 71 28 fe ff                                  	call   0x2caf08
  2e8697:	84 c0                                           	test   al,al
  2e8699:	74 5f                                           	je     0x2e86fa
  2e869b:	48 8b 92 38 01 00 00                            	mov    rdx,QWORD PTR [rdx+0x138]
  2e86a2:	48 8b ca                                        	mov    rcx,rdx
  2e86a5:	e8 5e 28 fe ff                                  	call   0x2caf08
  2e86aa:	84 c0                                           	test   al,al
  2e86ac:	74 4c                                           	je     0x2e86fa
  2e86ae:	44 38 aa c0 00 00 00                            	cmp    BYTE PTR [rdx+0xc0],r13b
  2e86b5:	74 43                                           	je     0x2e86fa
  2e86b7:	48 8b cf                                        	mov    rcx,rdi
  2e86ba:	e8 79 10 08 00                                  	call   0x369738
  2e86bf:	48 8b c8                                        	mov    rcx,rax
  2e86c2:	48 8b d0                                        	mov    rdx,rax
  2e86c5:	e8 3e 28 fe ff                                  	call   0x2caf08
  2e86ca:	84 c0                                           	test   al,al
  2e86cc:	74 2c                                           	je     0x2e86fa
  2e86ce:	48 8b ca                                        	mov    rcx,rdx
  2e86d1:	e8 f2 b6 08 00                                  	call   0x373dc8
  2e86d6:	48 8b c8                                        	mov    rcx,rax
  2e86d9:	48 8b d0                                        	mov    rdx,rax
  2e86dc:	e8 27 28 fe ff                                  	call   0x2caf08
  2e86e1:	84 c0                                           	test   al,al
  2e86e3:	74 15                                           	je     0x2e86fa
  2e86e5:	48 8b 52 20                                     	mov    rdx,QWORD PTR [rdx+0x20]
  2e86e9:	48 8b ca                                        	mov    rcx,rdx
  2e86ec:	e8 17 28 fe ff                                  	call   0x2caf08
  2e86f1:	84 c0                                           	test   al,al
  2e86f3:	74 05                                           	je     0x2e86fa
  2e86f5:	0f ba 6a 28 0a                                  	bts    DWORD PTR [rdx+0x28],0xa
  2e86fa:	48 8b cb                                        	mov    rcx,rbx
  2e86fd:	e8 a2 96 08 00                                  	call   0x371da4
  2e8702:	48 8b c8                                        	mov    rcx,rax
  2e8705:	e8 fe 27 fe ff                                  	call   0x2caf08
  2e870a:	84 c0                                           	test   al,al
  2e870c:	74 43                                           	je     0x2e8751
  2e870e:	48 8b cf                                        	mov    rcx,rdi
  2e8711:	e8 22 10 08 00                                  	call   0x369738
  2e8716:	48 8b c8                                        	mov    rcx,rax
  2e8719:	48 8b d0                                        	mov    rdx,rax
  2e871c:	e8 e7 27 fe ff                                  	call   0x2caf08
  2e8721:	84 c0                                           	test   al,al
  2e8723:	74 2c                                           	je     0x2e8751
  2e8725:	48 8b ca                                        	mov    rcx,rdx
  2e8728:	e8 9b b6 08 00                                  	call   0x373dc8
  2e872d:	48 8b c8                                        	mov    rcx,rax
  2e8730:	48 8b d0                                        	mov    rdx,rax
  2e8733:	e8 d0 27 fe ff                                  	call   0x2caf08
  2e8738:	84 c0                                           	test   al,al
  2e873a:	74 15                                           	je     0x2e8751
  2e873c:	48 8b 52 20                                     	mov    rdx,QWORD PTR [rdx+0x20]
  2e8740:	48 8b ca                                        	mov    rcx,rdx
  2e8743:	e8 c0 27 fe ff                                  	call   0x2caf08
  2e8748:	84 c0                                           	test   al,al
  2e874a:	74 05                                           	je     0x2e8751
  2e874c:	0f ba 6a 28 0a                                  	bts    DWORD PTR [rdx+0x28],0xa
  2e8751:	48 8b cf                                        	mov    rcx,rdi
  2e8754:	e8 2b 03 08 00                                  	call   0x368a84
  2e8759:	48 8b c8                                        	mov    rcx,rax
  2e875c:	e8 a7 27 fe ff                                  	call   0x2caf08
  2e8761:	84 c0                                           	test   al,al
  2e8763:	0f 85 6c 01 00 00                               	jne    0x2e88d5
  2e8769:	44 38 2d 6b d3 0f 00                            	cmp    BYTE PTR [rip+0xfd36b],r13b        # 0x3e5adb
  2e8770:	0f 85 5f 01 00 00                               	jne    0x2e88d5
  2e8776:	48 8b cf                                        	mov    rcx,rdi
  2e8779:	e8 a6 0b 08 00                                  	call   0x369324
  2e877e:	48 8b c8                                        	mov    rcx,rax
  2e8781:	48 8b d0                                        	mov    rdx,rax
  2e8784:	e8 7f 27 fe ff                                  	call   0x2caf08
  2e8789:	84 c0                                           	test   al,al
  2e878b:	0f 84 4b 01 00 00                               	je     0x2e88dc
  2e8791:	48 8b ca                                        	mov    rcx,rdx
  2e8794:	e8 2f b6 08 00                                  	call   0x373dc8
  2e8799:	48 8b c8                                        	mov    rcx,rax
  2e879c:	4c 8b f0                                        	mov    r14,rax
  2e879f:	e8 64 27 fe ff                                  	call   0x2caf08
  2e87a4:	84 c0                                           	test   al,al
  2e87a6:	0f 84 30 01 00 00                               	je     0x2e88dc
  2e87ac:	49 8b ce                                        	mov    rcx,r14
  2e87af:	e8 98 9a 08 00                                  	call   0x37224c
  2e87b4:	44 8b f8                                        	mov    r15d,eax
  2e87b7:	41 8b dd                                        	mov    ebx,r13d
  2e87ba:	85 c0                                           	test   eax,eax
  2e87bc:	0f 8e 1a 01 00 00                               	jle    0x2e88dc
  2e87c2:	8b d3                                           	mov    edx,ebx
  2e87c4:	49 8b ce                                        	mov    rcx,r14
  2e87c7:	e8 24 9b 08 00                                  	call   0x3722f0
  2e87cc:	48 8b c8                                        	mov    rcx,rax
  2e87cf:	48 8b f0                                        	mov    rsi,rax
  2e87d2:	e8 31 27 fe ff                                  	call   0x2caf08
  2e87d7:	84 c0                                           	test   al,al
  2e87d9:	0f 84 c4 00 00 00                               	je     0x2e88a3
  2e87df:	48 8b 4e 10                                     	mov    rcx,QWORD PTR [rsi+0x10]
  2e87e3:	e8 20 27 fe ff                                  	call   0x2caf08
  2e87e8:	84 c0                                           	test   al,al
  2e87ea:	0f 84 b3 00 00 00                               	je     0x2e88a3
  2e87f0:	48 8b 4e 10                                     	mov    rcx,QWORD PTR [rsi+0x10]
  2e87f4:	e8 23 9e 08 00                                  	call   0x37261c
  2e87f9:	3d c0 0a 47 cd                                  	cmp    eax,0xcd470ac0
  2e87fe:	74 0b                                           	je     0x2e880b
  2e8800:	3d ac 12 24 45                                  	cmp    eax,0x452412ac
  2e8805:	0f 85 98 00 00 00                               	jne    0x2e88a3
  2e880b:	4c 8b a7 00 06 00 00                            	mov    r12,QWORD PTR [rdi+0x600]
  2e8812:	49 8b cc                                        	mov    rcx,r12
  2e8815:	e8 ee 26 fe ff                                  	call   0x2caf08
  2e881a:	84 c0                                           	test   al,al
  2e881c:	0f 84 81 00 00 00                               	je     0x2e88a3
  2e8822:	8b 0d 00 d0 0f 00                               	mov    ecx,DWORD PTR [rip+0xfd000]        # 0x3e5828
  2e8828:	8b b6 b8 00 00 00                               	mov    esi,DWORD PTR [rsi+0xb8]
  2e882e:	f6 c1 40                                        	test   cl,0x40
  2e8831:	75 20                                           	jne    0x2e8853
  2e8833:	4c 8b 05 c6 e6 0e 00                            	mov    r8,QWORD PTR [rip+0xee6c6]        # 0x3d6f00
  2e883a:	83 c9 40                                        	or     ecx,0x40
  2e883d:	49 81 c0 f0 25 04 06                            	add    r8,0x60425f0
  2e8844:	89 0d de cf 0f 00                               	mov    DWORD PTR [rip+0xfcfde],ecx        # 0x3e5828
  2e884a:	4c 89 05 97 d2 0f 00                            	mov    QWORD PTR [rip+0xfd297],r8        # 0x3e5ae8
  2e8851:	eb 07                                           	jmp    0x2e885a
  2e8853:	4c 8b 05 8e d2 0f 00                            	mov    r8,QWORD PTR [rip+0xfd28e]        # 0x3e5ae8
  2e885a:	84 c9                                           	test   cl,cl
  2e885c:	78 20                                           	js     0x2e887e
  2e885e:	0f ba e9 07                                     	bts    ecx,0x7
  2e8862:	48 8d 15 87 d2 0f 00                            	lea    rdx,[rip+0xfd287]        # 0x3e5af0
  2e8869:	89 0d b9 cf 0f 00                               	mov    DWORD PTR [rip+0xfcfb9],ecx        # 0x3e5828
  2e886f:	45 33 c9                                        	xor    r9d,r9d
  2e8872:	48 8b 0d e7 d5 0e 00                            	mov    rcx,QWORD PTR [rip+0xed5e7]        # 0x3d5e60
  2e8879:	e8 a6 34 fe ff                                  	call   0x2cbd24
  2e887e:	48 8b 0d db d5 0e 00                            	mov    rcx,QWORD PTR [rip+0xed5db]        # 0x3d5e60
  2e8885:	48 8d 15 64 d2 0f 00                            	lea    rdx,[rip+0xfd264]        # 0x3e5af0
  2e888c:	44 8b ce                                        	mov    r9d,esi
  2e888f:	c6 44 24 20 01                                  	mov    BYTE PTR [rsp+0x20],0x1
  2e8894:	4d 8b c4                                        	mov    r8,r12
  2e8897:	e8 34 c0 ff ff                                  	call   0x2e48d0
  2e889c:	c6 05 38 d2 0f 00 01                            	mov    BYTE PTR [rip+0xfd238],0x1        # 0x3e5adb
  2e88a3:	ff c3                                           	inc    ebx
  2e88a5:	41 3b df                                        	cmp    ebx,r15d
  2e88a8:	0f 8c 14 ff ff ff                               	jl     0x2e87c2
  2e88ae:	eb 2c                                           	jmp    0x2e88dc
  2e88b0:	c6 05 23 d2 0f 00 01                            	mov    BYTE PTR [rip+0xfd223],0x1        # 0x3e5ada
  2e88b7:	c6 05 1b d2 0f 00 01                            	mov    BYTE PTR [rip+0xfd21b],0x1        # 0x3e5ad9
  2e88be:	eb 1c                                           	jmp    0x2e88dc
  2e88c0:	44 88 2d 11 d2 0f 00                            	mov    BYTE PTR [rip+0xfd211],r13b        # 0x3e5ad8
  2e88c7:	44 88 2d 0b d2 0f 00                            	mov    BYTE PTR [rip+0xfd20b],r13b        # 0x3e5ad9
  2e88ce:	44 88 2d 05 d2 0f 00                            	mov    BYTE PTR [rip+0xfd205],r13b        # 0x3e5ada
  2e88d5:	44 88 2d ff d1 0f 00                            	mov    BYTE PTR [rip+0xfd1ff],r13b        # 0x3e5adb
  2e88dc:	4c 8d 9c 24 58 01 00 00                         	lea    r11,[rsp+0x158]
  2e88e4:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  2e88e9:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  2e88ee:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  2e88f3:	45 0f 28 6b b8                                  	movaps xmm13,XMMWORD PTR [r11-0x48]
  2e88f8:	45 0f 28 73 a8                                  	movaps xmm14,XMMWORD PTR [r11-0x58]
  2e88fd:	49 8b e3                                        	mov    rsp,r11
  2e8900:	41 5f                                           	pop    r15
  2e8902:	41 5e                                           	pop    r14
  2e8904:	41 5d                                           	pop    r13
  2e8906:	41 5c                                           	pop    r12
  2e8908:	5f                                              	pop    rdi
  2e8909:	5e                                              	pop    rsi
  2e890a:	5b                                              	pop    rbx
  2e890b:	5d                                              	pop    rbp
  2e890c:	c3                                              	ret
