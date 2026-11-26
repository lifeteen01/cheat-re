
dump_analysis/semantic_reconstruction/movement_main_helpers/329b50.bin:     file format binary


Disassembly of section .data:

0000000000329b50 <.data>:
  329b50:	48 8b c4                                        	mov    rax,rsp
  329b53:	55                                              	push   rbp
  329b54:	53                                              	push   rbx
  329b55:	56                                              	push   rsi
  329b56:	57                                              	push   rdi
  329b57:	41 54                                           	push   r12
  329b59:	41 55                                           	push   r13
  329b5b:	41 56                                           	push   r14
  329b5d:	41 57                                           	push   r15
  329b5f:	48 8d a8 38 fe ff ff                            	lea    rbp,[rax-0x1c8]
  329b66:	48 81 ec 88 02 00 00                            	sub    rsp,0x288
  329b6d:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  329b71:	48 8b f1                                        	mov    rsi,rcx
  329b74:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  329b78:	49 8b c9                                        	mov    rcx,r9
  329b7b:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  329b80:	49 8b f9                                        	mov    rdi,r9
  329b83:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  329b8b:	4d 8b e8                                        	mov    r13,r8
  329b8e:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  329b96:	48 8b da                                        	mov    rbx,rdx
  329b99:	44 0f 29 98 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm11
  329ba1:	44 0f 29 a0 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm12
  329ba9:	44 0f 29 a8 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm13
  329bb1:	44 0f 29 b0 28 ff ff ff                         	movaps XMMWORD PTR [rax-0xd8],xmm14
  329bb9:	44 0f 29 b8 18 ff ff ff                         	movaps XMMWORD PTR [rax-0xe8],xmm15
  329bc1:	e8 92 9f fb ff                                  	call   0x2e3b58
  329bc6:	84 c0                                           	test   al,al
  329bc8:	0f 85 ef 03 00 00                               	jne    0x329fbd
  329bce:	48 8b 85 f0 01 00 00                            	mov    rax,QWORD PTR [rbp+0x1f0]
  329bd5:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  329bd9:	48 8b cf                                        	mov    rcx,rdi
  329bdc:	f3 0f 10 10                                     	movss  xmm2,DWORD PTR [rax]
  329be0:	e8 87 5a fb ff                                  	call   0x2df66c
  329be5:	0f 57 ff                                        	xorps  xmm7,xmm7
  329be8:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  329bec:	e8 7b ce fb ff                                  	call   0x2e6a6c
  329bf1:	f3 44 0f 10 2d 5a 3f f6 ff                      	movss  xmm13,DWORD PTR [rip+0xfffffffffff63f5a]        # 0x28db54
  329bfa:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  329bff:	89 85 d0 01 00 00                               	mov    DWORD PTR [rbp+0x1d0],eax
  329c05:	e8 b2 df 09 00                                  	call   0x3c7bbc
  329c0a:	f2 44 0f 10 0e                                  	movsd  xmm9,QWORD PTR [rsi]
  329c0f:	45 33 e4                                        	xor    r12d,r12d
  329c12:	8b 7e 08                                        	mov    edi,DWORD PTR [rsi+0x8]
  329c15:	45 33 ff                                        	xor    r15d,r15d
  329c18:	f3 0f 10 35 e0 39 f6 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff639e0]        # 0x28d600
  329c20:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  329c24:	f3 44 0f 10 35 b3 45 f6 ff                      	movss  xmm14,DWORD PTR [rip+0xfffffffffff645b3]        # 0x28e1e0
  329c2d:	45 8d 74 24 01                                  	lea    r14d,[r12+0x1]
  329c32:	f2 44 0f 11 4c 24 70                            	movsd  QWORD PTR [rsp+0x70],xmm9
  329c39:	89 7c 24 78                                     	mov    DWORD PTR [rsp+0x78],edi
  329c3d:	45 85 e4                                        	test   r12d,r12d
  329c40:	75 0b                                           	jne    0x329c4d
  329c42:	f3 44 0f 10 15 75 45 f6 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff64575]        # 0x28e1c0
  329c4b:	eb 09                                           	jmp    0x329c56
  329c4d:	f3 44 0f 10 15 86 3e f6 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff63e86]        # 0x28dadc
  329c56:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  329c5a:	48 8d 55 50                                     	lea    rdx,[rbp+0x50]
  329c5e:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  329c61:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  329c65:	41 0f 28 d2                                     	movaps xmm2,xmm10
  329c69:	f2 0f 11 45 a0                                  	movsd  QWORD PTR [rbp-0x60],xmm0
  329c6e:	89 45 a8                                        	mov    DWORD PTR [rbp-0x58],eax
  329c71:	e8 f6 59 fb ff                                  	call   0x2df66c
  329c76:	4c 8b c0                                        	mov    r8,rax
  329c79:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  329c7e:	48 8b ce                                        	mov    rcx,rsi
  329c81:	e8 82 5a fb ff                                  	call   0x2df708
  329c86:	4c 8d 45 a0                                     	lea    r8,[rbp-0x60]
  329c8a:	48 8d 55 5c                                     	lea    rdx,[rbp+0x5c]
  329c8e:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  329c93:	e8 34 5a fb ff                                  	call   0x2df6cc
  329c98:	48 8b c8                                        	mov    rcx,rax
  329c9b:	e8 48 72 fb ff                                  	call   0x2e0ee8
  329ca0:	f2 0f 10 4c 24 30                               	movsd  xmm1,QWORD PTR [rsp+0x30]
  329ca6:	4c 8d 45 b0                                     	lea    r8,[rbp-0x50]
  329caa:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  329cae:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  329cb2:	f2 0f 11 4d b0                                  	movsd  QWORD PTR [rbp-0x50],xmm1
  329cb7:	48 8d 8d a8 00 00 00                            	lea    rcx,[rbp+0xa8]
  329cbe:	f2 0f 10 0e                                     	movsd  xmm1,QWORD PTR [rsi]
  329cc2:	44 0f 28 d8                                     	movaps xmm11,xmm0
  329cc6:	89 45 b8                                        	mov    DWORD PTR [rbp-0x48],eax
  329cc9:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  329ccc:	f2 0f 11 4d c0                                  	movsd  QWORD PTR [rbp-0x40],xmm1
  329cd1:	89 45 c8                                        	mov    DWORD PTR [rbp-0x38],eax
  329cd4:	e8 c3 55 fb ff                                  	call   0x2df29c
  329cd9:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  329cdd:	4c 8d 45 d0                                     	lea    r8,[rbp-0x30]
  329ce1:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  329ce4:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  329ce8:	48 8d 8d a8 00 00 00                            	lea    rcx,[rbp+0xa8]
  329cef:	f2 0f 11 45 d0                                  	movsd  QWORD PTR [rbp-0x30],xmm0
  329cf4:	89 45 d8                                        	mov    DWORD PTR [rbp-0x28],eax
  329cf7:	e8 84 bd fb ff                                  	call   0x2e5a80
  329cfc:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  329d00:	48 8b cb                                        	mov    rcx,rbx
  329d03:	e8 28 62 fb ff                                  	call   0x2dff30
  329d08:	44 0f 28 f8                                     	movaps xmm15,xmm0
  329d0c:	44 0f 2f fe                                     	comiss xmm15,xmm6
  329d10:	76 0d                                           	jbe    0x329d1f
  329d12:	41 ff c7                                        	inc    r15d
  329d15:	41 83 ff 02                                     	cmp    r15d,0x2
  329d19:	0f 8d ef 01 00 00                               	jge    0x329f0e
  329d1f:	f3 45 0f 58 c3                                  	addss  xmm8,xmm11
  329d24:	45 85 e4                                        	test   r12d,r12d
  329d27:	75 05                                           	jne    0x329d2e
  329d29:	0f 57 c0                                        	xorps  xmm0,xmm0
  329d2c:	eb 08                                           	jmp    0x329d36
  329d2e:	f3 0f 10 05 ae 44 f6 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff644ae]        # 0x28e1e4
  329d36:	44 0f 2f c0                                     	comiss xmm8,xmm0
  329d3a:	0f 82 2a 01 00 00                               	jb     0x329e6a
  329d40:	0f 57 c0                                        	xorps  xmm0,xmm0
  329d43:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  329d47:	0f 11 45 30                                     	movups XMMWORD PTR [rbp+0x30],xmm0
  329d4b:	0f 11 45 3c                                     	movups XMMWORD PTR [rbp+0x3c],xmm0
  329d4f:	0f 11 45 20                                     	movups XMMWORD PTR [rbp+0x20],xmm0
  329d53:	e8 ac b1 fb ff                                  	call   0x2e4f04
  329d58:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  329d5d:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  329d62:	e8 c9 61 fb ff                                  	call   0x2dff30
  329d67:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  329d6c:	0f 28 f0                                        	movaps xmm6,xmm0
  329d6f:	48 8d 55 68                                     	lea    rdx,[rbp+0x68]
  329d73:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  329d78:	e8 4f 59 fb ff                                  	call   0x2df6cc
  329d7d:	44 8b 8d d0 01 00 00                            	mov    r9d,DWORD PTR [rbp+0x1d0]
  329d84:	48 8d 55 e0                                     	lea    rdx,[rbp-0x20]
  329d88:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  329d90:	48 8d 4d f0                                     	lea    rcx,[rbp-0x10]
  329d94:	0f 28 d6                                        	movaps xmm2,xmm6
  329d97:	f2 44 0f 11 4d f0                               	movsd  QWORD PTR [rbp-0x10],xmm9
  329d9d:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  329da1:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  329da4:	89 45 e8                                        	mov    DWORD PTR [rbp-0x18],eax
  329da7:	48 8d 45 20                                     	lea    rax,[rbp+0x20]
  329dab:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  329db0:	f2 0f 11 4d e0                                  	movsd  QWORD PTR [rbp-0x20],xmm1
  329db5:	89 7d f8                                        	mov    DWORD PTR [rbp-0x8],edi
  329db8:	e8 ef f1 fb ff                                  	call   0x2e8fac
  329dbd:	84 c0                                           	test   al,al
  329dbf:	0f 85 f8 01 00 00                               	jne    0x329fbd
  329dc5:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  329dcb:	4c 8d 45 00                                     	lea    r8,[rbp+0x0]
  329dcf:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  329dd3:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  329dd8:	48 8d 8d c0 00 00 00                            	lea    rcx,[rbp+0xc0]
  329ddf:	f2 0f 11 45 00                                  	movsd  QWORD PTR [rbp+0x0],xmm0
  329de4:	89 45 08                                        	mov    DWORD PTR [rbp+0x8],eax
  329de7:	f2 44 0f 11 4c 24 40                            	movsd  QWORD PTR [rsp+0x40],xmm9
  329dee:	89 7c 24 48                                     	mov    DWORD PTR [rsp+0x48],edi
  329df2:	e8 a5 54 fb ff                                  	call   0x2df29c
  329df7:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  329dfb:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  329e00:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  329e03:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  329e07:	48 8d 8d c0 00 00 00                            	lea    rcx,[rbp+0xc0]
  329e0e:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  329e14:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  329e18:	e8 63 bc fb ff                                  	call   0x2e5a80
  329e1d:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  329e21:	48 8b cb                                        	mov    rcx,rbx
  329e24:	e8 07 61 fb ff                                  	call   0x2dff30
  329e29:	44 0f 2f e8                                     	comiss xmm13,xmm0
  329e2d:	76 1b                                           	jbe    0x329e4a
  329e2f:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
  329e32:	44 0f 28 e8                                     	movaps xmm13,xmm0
  329e36:	f2 0f 10 45 90                                  	movsd  xmm0,QWORD PTR [rbp-0x70]
  329e3b:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  329e41:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  329e45:	e9 b6 00 00 00                                  	jmp    0x329f00
  329e4a:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  329e50:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  329e54:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  329e58:	44 0f 28 c8                                     	movaps xmm9,xmm0
  329e5c:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  329e62:	8b f8                                           	mov    edi,eax
  329e64:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  329e68:	eb 0a                                           	jmp    0x329e74
  329e6a:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  329e6e:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  329e74:	f2 0f 11 06                                     	movsd  QWORD PTR [rsi],xmm0
  329e78:	48 8d 4d 74                                     	lea    rcx,[rbp+0x74]
  329e7c:	89 46 08                                        	mov    DWORD PTR [rsi+0x8],eax
  329e7f:	0f 57 db                                        	xorps  xmm3,xmm3
  329e82:	48 8b 85 f0 01 00 00                            	mov    rax,QWORD PTR [rbp+0x1f0]
  329e89:	0f 57 c9                                        	xorps  xmm1,xmm1
  329e8c:	f3 0f 10 50 08                                  	movss  xmm2,DWORD PTR [rax+0x8]
  329e91:	f3 0f 59 15 53 43 f6 ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffff64353]        # 0x28e1ec
  329e99:	e8 0a dd 09 00                                  	call   0x3c7ba8
  329e9e:	48 8b c8                                        	mov    rcx,rax
  329ea1:	48 8d 95 80 00 00 00                            	lea    rdx,[rbp+0x80]
  329ea8:	41 0f 28 d2                                     	movaps xmm2,xmm10
  329eac:	e8 bb 57 fb ff                                  	call   0x2df66c
  329eb1:	48 8b d0                                        	mov    rdx,rax
  329eb4:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  329eb8:	e8 0b dd 09 00                                  	call   0x3c7bc8
  329ebd:	48 8b 85 f0 01 00 00                            	mov    rax,QWORD PTR [rbp+0x1f0]
  329ec4:	48 8d 95 8c 00 00 00                            	lea    rdx,[rbp+0x8c]
  329ecb:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  329ecf:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  329ed4:	e8 93 57 fb ff                                  	call   0x2df66c
  329ed9:	48 8b c8                                        	mov    rcx,rax
  329edc:	48 8d 95 98 00 00 00                            	lea    rdx,[rbp+0x98]
  329ee3:	41 0f 28 d2                                     	movaps xmm2,xmm10
  329ee7:	e8 80 57 fb ff                                  	call   0x2df66c
  329eec:	48 8b d0                                        	mov    rdx,rax
  329eef:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  329ef3:	e8 00 dd 09 00                                  	call   0x3c7bf8
  329ef8:	45 03 e6                                        	add    r12d,r14d
  329efb:	f3 45 0f 58 e2                                  	addss  xmm12,xmm10
  329f00:	45 0f 2f f4                                     	comiss xmm14,xmm12
  329f04:	41 0f 28 f7                                     	movaps xmm6,xmm15
  329f08:	0f 87 2f fd ff ff                               	ja     0x329c3d
  329f0e:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  329f13:	e8 40 9c fb ff                                  	call   0x2e3b58
  329f18:	84 c0                                           	test   al,al
  329f1a:	0f 85 9d 00 00 00                               	jne    0x329fbd
  329f20:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  329f24:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  329f27:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  329f2d:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  329f33:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  329f37:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  329f3b:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  329f41:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  329f45:	e8 22 cb fb ff                                  	call   0x2e6a6c
  329f4a:	44 8b c0                                        	mov    r8d,eax
  329f4d:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  329f53:	0f 57 db                                        	xorps  xmm3,xmm3
  329f56:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  329f5b:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  329f60:	e8 bb 83 fb ff                                  	call   0x2e2320
  329f65:	84 c0                                           	test   al,al
  329f67:	74 4c                                           	je     0x329fb5
  329f69:	f2 41 0f 10 45 00                               	movsd  xmm0,QWORD PTR [r13+0x0]
  329f6f:	41 8b 45 08                                     	mov    eax,DWORD PTR [r13+0x8]
  329f73:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  329f79:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  329f7f:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  329f83:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  329f87:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  329f8d:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  329f91:	e8 d6 ca fb ff                                  	call   0x2e6a6c
  329f96:	44 8b c0                                        	mov    r8d,eax
  329f99:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  329f9f:	0f 57 db                                        	xorps  xmm3,xmm3
  329fa2:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  329fa7:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  329fac:	e8 6f 83 fb ff                                  	call   0x2e2320
  329fb1:	84 c0                                           	test   al,al
  329fb3:	75 03                                           	jne    0x329fb8
  329fb5:	45 32 f6                                        	xor    r14b,r14b
  329fb8:	41 8a c6                                        	mov    al,r14b
  329fbb:	eb 02                                           	jmp    0x329fbf
  329fbd:	32 c0                                           	xor    al,al
  329fbf:	4c 8d 9c 24 88 02 00 00                         	lea    r11,[rsp+0x288]
  329fc7:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  329fcc:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  329fd1:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  329fd6:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  329fdb:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  329fe0:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  329fe5:	45 0f 28 63 88                                  	movaps xmm12,XMMWORD PTR [r11-0x78]
  329fea:	45 0f 28 ab 78 ff ff ff                         	movaps xmm13,XMMWORD PTR [r11-0x88]
  329ff2:	45 0f 28 b3 68 ff ff ff                         	movaps xmm14,XMMWORD PTR [r11-0x98]
  329ffa:	45 0f 28 bb 58 ff ff ff                         	movaps xmm15,XMMWORD PTR [r11-0xa8]
  32a002:	49 8b e3                                        	mov    rsp,r11
  32a005:	41 5f                                           	pop    r15
  32a007:	41 5e                                           	pop    r14
  32a009:	41 5d                                           	pop    r13
  32a00b:	41 5c                                           	pop    r12
  32a00d:	5f                                              	pop    rdi
  32a00e:	5e                                              	pop    rsi
  32a00f:	5b                                              	pop    rbx
  32a010:	5d                                              	pop    rbp
  32a011:	c3                                              	ret
