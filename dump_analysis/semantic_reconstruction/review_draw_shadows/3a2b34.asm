
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a2b34 <.data+0x3a2b34>:
  3a2b34:	48 8b c4                                        	mov    rax,rsp
  3a2b37:	4c 89 48 20                                     	mov    QWORD PTR [rax+0x20],r9
  3a2b3b:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3a2b3f:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3a2b43:	55                                              	push   rbp
  3a2b44:	53                                              	push   rbx
  3a2b45:	56                                              	push   rsi
  3a2b46:	57                                              	push   rdi
  3a2b47:	41 54                                           	push   r12
  3a2b49:	41 55                                           	push   r13
  3a2b4b:	41 56                                           	push   r14
  3a2b4d:	41 57                                           	push   r15
  3a2b4f:	48 8d 68 b9                                     	lea    rbp,[rax-0x47]
  3a2b53:	48 81 ec b8 00 00 00                            	sub    rsp,0xb8
  3a2b5a:	f3 0f 10 02                                     	movss  xmm0,DWORD PTR [rdx]
  3a2b5e:	49 8b f1                                        	mov    rsi,r9
  3a2b61:	41 0f 2f 00                                     	comiss xmm0,DWORD PTR [r8]
  3a2b65:	4d 8b e8                                        	mov    r13,r8
  3a2b68:	48 8b da                                        	mov    rbx,rdx
  3a2b6b:	48 8b f9                                        	mov    rdi,rcx
  3a2b6e:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3a2b72:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3a2b76:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3a2b7b:	44 0f 29 54 24 70                               	movaps XMMWORD PTR [rsp+0x70],xmm10
  3a2b81:	44 0f 29 5c 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm11
  3a2b87:	44 0f 29 64 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm12
  3a2b8d:	44 0f 29 74 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm14
  3a2b93:	0f 83 e5 05 00 00                               	jae    0x3a317e
  3a2b99:	f3 0f 10 4a 04                                  	movss  xmm1,DWORD PTR [rdx+0x4]
  3a2b9e:	41 0f 2f 48 04                                  	comiss xmm1,DWORD PTR [r8+0x4]
  3a2ba3:	0f 83 d5 05 00 00                               	jae    0x3a317e
  3a2ba9:	0f 2f 45 77                                     	comiss xmm0,DWORD PTR [rbp+0x77]
  3a2bad:	72 24                                           	jb     0x3a2bd3
  3a2baf:	f3 0f 10 45 7f                                  	movss  xmm0,DWORD PTR [rbp+0x7f]
  3a2bb4:	41 0f 2f 00                                     	comiss xmm0,DWORD PTR [r8]
  3a2bb8:	72 19                                           	jb     0x3a2bd3
  3a2bba:	0f 2f 4d 7b                                     	comiss xmm1,DWORD PTR [rbp+0x7b]
  3a2bbe:	72 13                                           	jb     0x3a2bd3
  3a2bc0:	f3 0f 10 85 83 00 00 00                         	movss  xmm0,DWORD PTR [rbp+0x83]
  3a2bc8:	41 0f 2f 40 04                                  	comiss xmm0,DWORD PTR [r8+0x4]
  3a2bcd:	0f 83 ab 05 00 00                               	jae    0x3a317e
  3a2bd3:	4c 8b c3                                        	mov    r8,rbx
  3a2bd6:	48 8d 55 77                                     	lea    rdx,[rbp+0x77]
  3a2bda:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2bde:	e8 61 04 fe ff                                  	call   0x383044
  3a2be3:	4d 8b c5                                        	mov    r8,r13
  3a2be6:	48 8d 55 7f                                     	lea    rdx,[rbp+0x7f]
  3a2bea:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2bee:	f2 44 0f 10 30                                  	movsd  xmm14,QWORD PTR [rax]
  3a2bf3:	f2 44 0f 11 75 77                               	movsd  QWORD PTR [rbp+0x77],xmm14
  3a2bf9:	e8 72 04 fe ff                                  	call   0x383070
  3a2bfe:	f2 44 0f 10 18                                  	movsd  xmm11,QWORD PTR [rax]
  3a2c03:	45 0f 2f f3                                     	comiss xmm14,xmm11
  3a2c07:	f2 44 0f 11 5d 7f                               	movsd  QWORD PTR [rbp+0x7f],xmm11
  3a2c0d:	0f 83 36 05 00 00                               	jae    0x3a3149
  3a2c13:	f3 44 0f 10 65 7b                               	movss  xmm12,DWORD PTR [rbp+0x7b]
  3a2c19:	44 0f 2f a5 83 00 00 00                         	comiss xmm12,DWORD PTR [rbp+0x83]
  3a2c21:	0f 83 22 05 00 00                               	jae    0x3a3149
  3a2c27:	ba 18 00 00 00                                  	mov    edx,0x18
  3a2c2c:	48 8b cf                                        	mov    rcx,rdi
  3a2c2f:	44 8d 42 f4                                     	lea    r8d,[rdx-0xc]
  3a2c33:	e8 64 45 00 00                                  	call   0x3a719c
  3a2c38:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  3a2c3d:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2c41:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  3a2c45:	4c 8b 7f 50                                     	mov    r15,QWORD PTR [rdi+0x50]
  3a2c49:	4c 8b 77 48                                     	mov    r14,QWORD PTR [rdi+0x48]
  3a2c4d:	44 0f b7 67 34                                  	movzx  r12d,WORD PTR [rdi+0x34]
  3a2c52:	e8 e9 96 f2 ff                                  	call   0x2cc340
  3a2c57:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2c5b:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2c5f:	f2 41 0f 11 06                                  	movsd  QWORD PTR [r14],xmm0
  3a2c64:	f3 0f 10 56 04                                  	movss  xmm2,DWORD PTR [rsi+0x4]
  3a2c69:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [rsi]
  3a2c6d:	e8 ce 96 f2 ff                                  	call   0x2cc340
  3a2c72:	8b b5 87 00 00 00                               	mov    esi,DWORD PTR [rbp+0x87]
  3a2c78:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2c7c:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2c80:	f2 41 0f 11 46 08                               	movsd  QWORD PTR [r14+0x8],xmm0
  3a2c86:	41 89 76 10                                     	mov    DWORD PTR [r14+0x10],esi
  3a2c8a:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  3a2c8f:	f3 41 0f 10 4d 00                               	movss  xmm1,DWORD PTR [r13+0x0]
  3a2c95:	e8 a6 96 f2 ff                                  	call   0x2cc340
  3a2c9a:	48 8b 7d 6f                                     	mov    rdi,QWORD PTR [rbp+0x6f]
  3a2c9e:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2ca2:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2ca6:	48 8b 45 67                                     	mov    rax,QWORD PTR [rbp+0x67]
  3a2caa:	f2 41 0f 11 46 14                               	movsd  QWORD PTR [r14+0x14],xmm0
  3a2cb0:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  3a2cb4:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3a2cb9:	e8 82 96 f2 ff                                  	call   0x2cc340
  3a2cbe:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2cc2:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2cc6:	f2 41 0f 11 46 1c                               	movsd  QWORD PTR [r14+0x1c],xmm0
  3a2ccc:	41 89 76 24                                     	mov    DWORD PTR [r14+0x24],esi
  3a2cd0:	f3 41 0f 10 55 04                               	movss  xmm2,DWORD PTR [r13+0x4]
  3a2cd6:	f3 41 0f 10 4d 00                               	movss  xmm1,DWORD PTR [r13+0x0]
  3a2cdc:	e8 5f 96 f2 ff                                  	call   0x2cc340
  3a2ce1:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2ce5:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2ce9:	f2 41 0f 11 46 28                               	movsd  QWORD PTR [r14+0x28],xmm0
  3a2cef:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  3a2cf4:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  3a2cf8:	e8 43 96 f2 ff                                  	call   0x2cc340
  3a2cfd:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2d01:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2d05:	f2 41 0f 11 46 30                               	movsd  QWORD PTR [r14+0x30],xmm0
  3a2d0b:	41 89 76 38                                     	mov    DWORD PTR [r14+0x38],esi
  3a2d0f:	f3 41 0f 10 55 04                               	movss  xmm2,DWORD PTR [r13+0x4]
  3a2d15:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  3a2d19:	e8 22 96 f2 ff                                  	call   0x2cc340
  3a2d1e:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2d22:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2d26:	48 8b 45 67                                     	mov    rax,QWORD PTR [rbp+0x67]
  3a2d2a:	f2 41 0f 11 46 3c                               	movsd  QWORD PTR [r14+0x3c],xmm0
  3a2d30:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  3a2d35:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3a2d39:	e8 02 96 f2 ff                                  	call   0x2cc340
  3a2d3e:	4c 8b c3                                        	mov    r8,rbx
  3a2d41:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a2d46:	49 8b d5                                        	mov    rdx,r13
  3a2d49:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2d4d:	f2 41 0f 11 46 44                               	movsd  QWORD PTR [r14+0x44],xmm0
  3a2d53:	41 89 76 4c                                     	mov    DWORD PTR [r14+0x4c],esi
  3a2d57:	e8 88 3a f9 ff                                  	call   0x3367e4
  3a2d5c:	4c 8b 45 67                                     	mov    r8,QWORD PTR [rbp+0x67]
  3a2d60:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  3a2d64:	48 8b d7                                        	mov    rdx,rdi
  3a2d67:	48 8b d8                                        	mov    rbx,rax
  3a2d6a:	e8 75 3a f9 ff                                  	call   0x3367e4
  3a2d6f:	48 8b d0                                        	mov    rdx,rax
  3a2d72:	48 8d 4d 5f                                     	lea    rcx,[rbp+0x5f]
  3a2d76:	4c 8b c3                                        	mov    r8,rbx
  3a2d79:	e8 ae 8e fe ff                                  	call   0x38bc2c
  3a2d7e:	48 8b 55 67                                     	mov    rdx,QWORD PTR [rbp+0x67]
  3a2d82:	4c 8d 45 5f                                     	lea    r8,[rbp+0x5f]
  3a2d86:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  3a2d8a:	e8 9d 8e fe ff                                  	call   0x38bc2c
  3a2d8f:	48 8b d0                                        	mov    rdx,rax
  3a2d92:	48 8b 5d 57                                     	mov    rbx,QWORD PTR [rbp+0x57]
  3a2d96:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2d9a:	4c 8b c3                                        	mov    r8,rbx
  3a2d9d:	e8 42 3a f9 ff                                  	call   0x3367e4
  3a2da2:	41 0f 28 d4                                     	movaps xmm2,xmm12
  3a2da6:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  3a2daa:	41 0f 28 ce                                     	movaps xmm1,xmm14
  3a2dae:	e8 8d 95 f2 ff                                  	call   0x2cc340
  3a2db3:	f3 44 0f 10 55 5b                               	movss  xmm10,DWORD PTR [rbp+0x5b]
  3a2db9:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2dbd:	f3 0f 10 7d 57                                  	movss  xmm7,DWORD PTR [rbp+0x57]
  3a2dc2:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3a2dc6:	44 0f 28 c7                                     	movaps xmm8,xmm7
  3a2dca:	f3 41 0f 58 f4                                  	addss  xmm6,xmm12
  3a2dcf:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2dd3:	f3 45 0f 58 c6                                  	addss  xmm8,xmm14
  3a2dd8:	f2 41 0f 11 46 50                               	movsd  QWORD PTR [r14+0x50],xmm0
  3a2dde:	f3 0f 59 75 63                                  	mulss  xmm6,DWORD PTR [rbp+0x63]
  3a2de3:	f3 44 0f 59 45 5f                               	mulss  xmm8,DWORD PTR [rbp+0x5f]
  3a2de9:	0f 28 d6                                        	movaps xmm2,xmm6
  3a2dec:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3a2df0:	e8 4b 95 f2 ff                                  	call   0x2cc340
  3a2df5:	41 0f 28 d4                                     	movaps xmm2,xmm12
  3a2df9:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2dfd:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a2e01:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2e05:	f2 41 0f 11 46 58                               	movsd  QWORD PTR [r14+0x58],xmm0
  3a2e0b:	41 89 76 60                                     	mov    DWORD PTR [r14+0x60],esi
  3a2e0f:	e8 2c 95 f2 ff                                  	call   0x2cc340
  3a2e14:	f3 41 0f 58 fb                                  	addss  xmm7,xmm11
  3a2e19:	0f 28 d6                                        	movaps xmm2,xmm6
  3a2e1c:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2e20:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2e24:	f2 41 0f 11 46 64                               	movsd  QWORD PTR [r14+0x64],xmm0
  3a2e2a:	f3 0f 59 7d 5f                                  	mulss  xmm7,DWORD PTR [rbp+0x5f]
  3a2e2f:	0f 28 cf                                        	movaps xmm1,xmm7
  3a2e32:	e8 09 95 f2 ff                                  	call   0x2cc340
  3a2e37:	f3 0f 10 95 83 00 00 00                         	movss  xmm2,DWORD PTR [rbp+0x83]
  3a2e3f:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2e43:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a2e47:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2e4b:	f2 41 0f 11 46 6c                               	movsd  QWORD PTR [r14+0x6c],xmm0
  3a2e51:	41 89 76 74                                     	mov    DWORD PTR [r14+0x74],esi
  3a2e55:	e8 e6 94 f2 ff                                  	call   0x2cc340
  3a2e5a:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3a2e5e:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2e62:	f3 0f 58 b5 83 00 00 00                         	addss  xmm6,DWORD PTR [rbp+0x83]
  3a2e6a:	0f 28 cf                                        	movaps xmm1,xmm7
  3a2e6d:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2e71:	f2 41 0f 11 46 78                               	movsd  QWORD PTR [r14+0x78],xmm0
  3a2e77:	f3 0f 59 75 63                                  	mulss  xmm6,DWORD PTR [rbp+0x63]
  3a2e7c:	0f 28 d6                                        	movaps xmm2,xmm6
  3a2e7f:	e8 bc 94 f2 ff                                  	call   0x2cc340
  3a2e84:	f3 0f 10 95 83 00 00 00                         	movss  xmm2,DWORD PTR [rbp+0x83]
  3a2e8c:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2e90:	41 0f 28 ce                                     	movaps xmm1,xmm14
  3a2e94:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2e98:	f2 41 0f 11 86 80 00 00 00                      	movsd  QWORD PTR [r14+0x80],xmm0
  3a2ea1:	41 89 b6 88 00 00 00                            	mov    DWORD PTR [r14+0x88],esi
  3a2ea8:	e8 93 94 f2 ff                                  	call   0x2cc340
  3a2ead:	0f 28 d6                                        	movaps xmm2,xmm6
  3a2eb0:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2eb4:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3a2eb8:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2ebc:	f2 41 0f 11 86 8c 00 00 00                      	movsd  QWORD PTR [r14+0x8c],xmm0
  3a2ec5:	e8 76 94 f2 ff                                  	call   0x2cc340
  3a2eca:	41 0f 28 ce                                     	movaps xmm1,xmm14
  3a2ece:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2ed2:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2ed6:	f2 41 0f 11 86 94 00 00 00                      	movsd  QWORD PTR [r14+0x94],xmm0
  3a2edf:	41 89 b6 9c 00 00 00                            	mov    DWORD PTR [r14+0x9c],esi
  3a2ee6:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  3a2eeb:	e8 50 94 f2 ff                                  	call   0x2cc340
  3a2ef0:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a2ef4:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2ef8:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3a2efc:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2f00:	f2 41 0f 11 86 a0 00 00 00                      	movsd  QWORD PTR [r14+0xa0],xmm0
  3a2f09:	f3 0f 58 53 04                                  	addss  xmm2,DWORD PTR [rbx+0x4]
  3a2f0e:	f3 0f 59 55 63                                  	mulss  xmm2,DWORD PTR [rbp+0x63]
  3a2f13:	e8 28 94 f2 ff                                  	call   0x2cc340
  3a2f18:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2f1c:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2f20:	f2 41 0f 11 86 a8 00 00 00                      	movsd  QWORD PTR [r14+0xa8],xmm0
  3a2f29:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a2f2d:	41 89 b6 b0 00 00 00                            	mov    DWORD PTR [r14+0xb0],esi
  3a2f34:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  3a2f39:	e8 02 94 f2 ff                                  	call   0x2cc340
  3a2f3e:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a2f42:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2f46:	0f 28 cf                                        	movaps xmm1,xmm7
  3a2f49:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2f4d:	f2 41 0f 11 86 b4 00 00 00                      	movsd  QWORD PTR [r14+0xb4],xmm0
  3a2f56:	f3 0f 58 53 04                                  	addss  xmm2,DWORD PTR [rbx+0x4]
  3a2f5b:	f3 0f 59 55 63                                  	mulss  xmm2,DWORD PTR [rbp+0x63]
  3a2f60:	e8 db 93 f2 ff                                  	call   0x2cc340
  3a2f65:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a2f69:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2f6d:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2f71:	f2 41 0f 11 86 bc 00 00 00                      	movsd  QWORD PTR [r14+0xbc],xmm0
  3a2f7a:	41 89 b6 c4 00 00 00                            	mov    DWORD PTR [r14+0xc4],esi
  3a2f81:	f3 41 0f 10 55 04                               	movss  xmm2,DWORD PTR [r13+0x4]
  3a2f87:	e8 b4 93 f2 ff                                  	call   0x2cc340
  3a2f8c:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a2f90:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2f94:	0f 28 cf                                        	movaps xmm1,xmm7
  3a2f97:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2f9b:	f2 41 0f 11 86 c8 00 00 00                      	movsd  QWORD PTR [r14+0xc8],xmm0
  3a2fa4:	f3 41 0f 58 55 04                               	addss  xmm2,DWORD PTR [r13+0x4]
  3a2faa:	f3 0f 59 55 63                                  	mulss  xmm2,DWORD PTR [rbp+0x63]
  3a2faf:	e8 8c 93 f2 ff                                  	call   0x2cc340
  3a2fb4:	41 0f 28 ce                                     	movaps xmm1,xmm14
  3a2fb8:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2fbc:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2fc0:	f2 41 0f 11 86 d0 00 00 00                      	movsd  QWORD PTR [r14+0xd0],xmm0
  3a2fc9:	41 89 b6 d8 00 00 00                            	mov    DWORD PTR [r14+0xd8],esi
  3a2fd0:	f3 41 0f 10 55 04                               	movss  xmm2,DWORD PTR [r13+0x4]
  3a2fd6:	e8 65 93 f2 ff                                  	call   0x2cc340
  3a2fdb:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3a2fdf:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  3a2fe3:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2fe7:	f2 41 0f 11 86 dc 00 00 00                      	movsd  QWORD PTR [r14+0xdc],xmm0
  3a2ff0:	f3 45 0f 58 55 04                               	addss  xmm10,DWORD PTR [r13+0x4]
  3a2ff6:	f3 44 0f 59 55 63                               	mulss  xmm10,DWORD PTR [rbp+0x63]
  3a2ffc:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a3000:	e8 3b 93 f2 ff                                  	call   0x2cc340
  3a3005:	4c 8b 4d 4f                                     	mov    r9,QWORD PTR [rbp+0x4f]
  3a3009:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a300d:	f2 41 0f 11 86 e4 00 00 00                      	movsd  QWORD PTR [r14+0xe4],xmm0
  3a3016:	41 89 b6 ec 00 00 00                            	mov    DWORD PTR [r14+0xec],esi
  3a301d:	49 81 41 48 f0 00 00 00                         	add    QWORD PTR [r9+0x48],0xf0
  3a3025:	41 83 41 34 0c                                  	add    DWORD PTR [r9+0x34],0xc
  3a302a:	44 0f 2f 33                                     	comiss xmm14,DWORD PTR [rbx]
  3a302e:	76 30                                           	jbe    0x3a3060
  3a3030:	41 8d 44 24 08                                  	lea    eax,[r12+0x8]
  3a3035:	66 45 89 27                                     	mov    WORD PTR [r15],r12w
  3a3039:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a303e:	41 8d 44 24 0b                                  	lea    eax,[r12+0xb]
  3a3043:	66 41 89 47 04                                  	mov    WORD PTR [r15+0x4],ax
  3a3048:	66 41 89 47 08                                  	mov    WORD PTR [r15+0x8],ax
  3a304d:	41 8d 44 24 03                                  	lea    eax,[r12+0x3]
  3a3052:	66 41 89 47 0a                                  	mov    WORD PTR [r15+0xa],ax
  3a3057:	66 45 89 67 06                                  	mov    WORD PTR [r15+0x6],r12w
  3a305c:	49 83 c7 0c                                     	add    r15,0xc
  3a3060:	44 0f 2f 63 04                                  	comiss xmm12,DWORD PTR [rbx+0x4]
  3a3065:	76 38                                           	jbe    0x3a309f
  3a3067:	41 8d 44 24 09                                  	lea    eax,[r12+0x9]
  3a306c:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a3071:	41 8d 4c 24 08                                  	lea    ecx,[r12+0x8]
  3a3076:	41 8d 44 24 05                                  	lea    eax,[r12+0x5]
  3a307b:	66 41 89 0f                                     	mov    WORD PTR [r15],cx
  3a307f:	66 41 89 47 04                                  	mov    WORD PTR [r15+0x4],ax
  3a3084:	66 41 89 47 08                                  	mov    WORD PTR [r15+0x8],ax
  3a3089:	b8 04 00 00 00                                  	mov    eax,0x4
  3a308e:	41 03 c4                                        	add    eax,r12d
  3a3091:	66 41 89 4f 06                                  	mov    WORD PTR [r15+0x6],cx
  3a3096:	66 41 89 47 0a                                  	mov    WORD PTR [r15+0xa],ax
  3a309b:	49 83 c7 0c                                     	add    r15,0xc
  3a309f:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3a30a5:	41 0f 2f c3                                     	comiss xmm0,xmm11
  3a30a9:	76 35                                           	jbe    0x3a30e0
  3a30ab:	41 8d 44 24 01                                  	lea    eax,[r12+0x1]
  3a30b0:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a30b5:	41 8d 4c 24 09                                  	lea    ecx,[r12+0x9]
  3a30ba:	41 8d 44 24 02                                  	lea    eax,[r12+0x2]
  3a30bf:	66 41 89 0f                                     	mov    WORD PTR [r15],cx
  3a30c3:	66 41 89 47 04                                  	mov    WORD PTR [r15+0x4],ax
  3a30c8:	66 41 89 47 08                                  	mov    WORD PTR [r15+0x8],ax
  3a30cd:	41 8d 44 24 0a                                  	lea    eax,[r12+0xa]
  3a30d2:	66 41 89 47 0a                                  	mov    WORD PTR [r15+0xa],ax
  3a30d7:	66 41 89 4f 06                                  	mov    WORD PTR [r15+0x6],cx
  3a30dc:	49 83 c7 0c                                     	add    r15,0xc
  3a30e0:	f3 41 0f 10 45 04                               	movss  xmm0,DWORD PTR [r13+0x4]
  3a30e6:	0f 2f 85 83 00 00 00                            	comiss xmm0,DWORD PTR [rbp+0x83]
  3a30ed:	76 38                                           	jbe    0x3a3127
  3a30ef:	41 8d 4c 24 07                                  	lea    ecx,[r12+0x7]
  3a30f4:	b8 06 00 00 00                                  	mov    eax,0x6
  3a30f9:	41 03 c4                                        	add    eax,r12d
  3a30fc:	66 41 89 0f                                     	mov    WORD PTR [r15],cx
  3a3100:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a3105:	41 8d 44 24 0a                                  	lea    eax,[r12+0xa]
  3a310a:	66 41 83 c4 0b                                  	add    r12w,0xb
  3a310f:	66 41 89 47 04                                  	mov    WORD PTR [r15+0x4],ax
  3a3114:	66 45 89 67 0a                                  	mov    WORD PTR [r15+0xa],r12w
  3a3119:	66 41 89 4f 06                                  	mov    WORD PTR [r15+0x6],cx
  3a311e:	66 41 89 47 08                                  	mov    WORD PTR [r15+0x8],ax
  3a3123:	49 83 c7 0c                                     	add    r15,0xc
  3a3127:	ba 18 00 00 00                                  	mov    edx,0x18
  3a312c:	49 8b c7                                        	mov    rax,r15
  3a312f:	49 2b 41 50                                     	sub    rax,QWORD PTR [r9+0x50]
  3a3133:	45 33 c0                                        	xor    r8d,r8d
  3a3136:	48 d1 f8                                        	sar    rax,1
  3a3139:	49 8b c9                                        	mov    rcx,r9
  3a313c:	2b d0                                           	sub    edx,eax
  3a313e:	4d 89 79 50                                     	mov    QWORD PTR [r9+0x50],r15
  3a3142:	e8 dd 40 00 00                                  	call   0x3a7224
  3a3147:	eb 35                                           	jmp    0x3a317e
  3a3149:	ba 06 00 00 00                                  	mov    edx,0x6
  3a314e:	48 8b cf                                        	mov    rcx,rdi
  3a3151:	44 8d 42 fe                                     	lea    r8d,[rdx-0x2]
  3a3155:	e8 42 40 00 00                                  	call   0x3a719c
  3a315a:	8b 85 87 00 00 00                               	mov    eax,DWORD PTR [rbp+0x87]
  3a3160:	4c 8b ce                                        	mov    r9,rsi
  3a3163:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a3167:	4d 8b c5                                        	mov    r8,r13
  3a316a:	48 8b 45 6f                                     	mov    rax,QWORD PTR [rbp+0x6f]
  3a316e:	48 8b d3                                        	mov    rdx,rbx
  3a3171:	48 8b cf                                        	mov    rcx,rdi
  3a3174:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a3179:	e8 a2 3e 00 00                                  	call   0x3a7020
  3a317e:	4c 8d 9c 24 b8 00 00 00                         	lea    r11,[rsp+0xb8]
  3a3186:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3a318b:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3a3190:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3a3195:	45 0f 28 53 b8                                  	movaps xmm10,XMMWORD PTR [r11-0x48]
  3a319a:	45 0f 28 5b a8                                  	movaps xmm11,XMMWORD PTR [r11-0x58]
  3a319f:	45 0f 28 63 98                                  	movaps xmm12,XMMWORD PTR [r11-0x68]
  3a31a4:	45 0f 28 73 88                                  	movaps xmm14,XMMWORD PTR [r11-0x78]
  3a31a9:	49 8b e3                                        	mov    rsp,r11
  3a31ac:	41 5f                                           	pop    r15
  3a31ae:	41 5e                                           	pop    r14
  3a31b0:	41 5d                                           	pop    r13
  3a31b2:	41 5c                                           	pop    r12
  3a31b4:	5f                                              	pop    rdi
  3a31b5:	5e                                              	pop    rsi
  3a31b6:	5b                                              	pop    rbx
  3a31b7:	5d                                              	pop    rbp
  3a31b8:	c3                                              	ret
