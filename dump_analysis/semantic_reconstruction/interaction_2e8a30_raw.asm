
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e8a30 <.data+0x2e8a30>:
  2e8a30:	48 8b c4                                        	mov    rax,rsp
  2e8a33:	55                                              	push   rbp
  2e8a34:	53                                              	push   rbx
  2e8a35:	56                                              	push   rsi
  2e8a36:	57                                              	push   rdi
  2e8a37:	41 54                                           	push   r12
  2e8a39:	41 55                                           	push   r13
  2e8a3b:	41 56                                           	push   r14
  2e8a3d:	41 57                                           	push   r15
  2e8a3f:	48 8d a8 28 fe ff ff                            	lea    rbp,[rax-0x1d8]
  2e8a46:	48 81 ec 98 02 00 00                            	sub    rsp,0x298
  2e8a4d:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  2e8a51:	48 8b f1                                        	mov    rsi,rcx
  2e8a54:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  2e8a58:	49 8b c8                                        	mov    rcx,r8
  2e8a5b:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  2e8a60:	4d 8b e1                                        	mov    r12,r9
  2e8a63:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  2e8a6b:	49 8b f8                                        	mov    rdi,r8
  2e8a6e:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  2e8a76:	48 8b da                                        	mov    rbx,rdx
  2e8a79:	44 0f 29 98 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm11
  2e8a81:	44 0f 29 a0 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm12
  2e8a89:	44 0f 29 a8 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm13
  2e8a91:	44 0f 29 b0 28 ff ff ff                         	movaps XMMWORD PTR [rax-0xd8],xmm14
  2e8a99:	e8 ba b0 ff ff                                  	call   0x2e3b58
  2e8a9e:	84 c0                                           	test   al,al
  2e8aa0:	0f 85 92 03 00 00                               	jne    0x2e8e38
  2e8aa6:	f3 41 0f 10 14 24                               	movss  xmm2,DWORD PTR [r12]
  2e8aac:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2e8ab1:	48 8b cf                                        	mov    rcx,rdi
  2e8ab4:	e8 b3 6b ff ff                                  	call   0x2df66c
  2e8ab9:	0f 57 ff                                        	xorps  xmm7,xmm7
  2e8abc:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  2e8ac0:	e8 a7 df ff ff                                  	call   0x2e6a6c
  2e8ac5:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  2e8ac9:	44 8b e8                                        	mov    r13d,eax
  2e8acc:	e8 eb f0 0d 00                                  	call   0x3c7bbc
  2e8ad1:	f2 44 0f 10 06                                  	movsd  xmm8,QWORD PTR [rsi]
  2e8ad6:	45 33 ff                                        	xor    r15d,r15d
  2e8ad9:	8b 7e 08                                        	mov    edi,DWORD PTR [rsi+0x8]
  2e8adc:	45 33 f6                                        	xor    r14d,r14d
  2e8adf:	f3 44 0f 10 1d 18 4b fa ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffffa4b18]        # 0x28d600
  2e8ae8:	0f 57 f6                                        	xorps  xmm6,xmm6
  2e8aeb:	f3 44 0f 10 2d ec 56 fa ff                      	movss  xmm13,DWORD PTR [rip+0xfffffffffffa56ec]        # 0x28e1e0
  2e8af4:	f2 44 0f 11 44 24 40                            	movsd  QWORD PTR [rsp+0x40],xmm8
  2e8afb:	89 7c 24 48                                     	mov    DWORD PTR [rsp+0x48],edi
  2e8aff:	45 85 ff                                        	test   r15d,r15d
  2e8b02:	75 0b                                           	jne    0x2e8b0f
  2e8b04:	f3 44 0f 10 0d b3 56 fa ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffffa56b3]        # 0x28e1c0
  2e8b0d:	eb 09                                           	jmp    0x2e8b18
  2e8b0f:	f3 44 0f 10 0d c4 4f fa ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffffa4fc4]        # 0x28dadc
  2e8b18:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  2e8b1c:	48 8d 55 70                                     	lea    rdx,[rbp+0x70]
  2e8b20:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  2e8b23:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e8b28:	41 0f 28 d1                                     	movaps xmm2,xmm9
  2e8b2c:	f2 0f 11 45 90                                  	movsd  QWORD PTR [rbp-0x70],xmm0
  2e8b31:	89 45 98                                        	mov    DWORD PTR [rbp-0x68],eax
  2e8b34:	e8 33 6b ff ff                                  	call   0x2df66c
  2e8b39:	4c 8b c0                                        	mov    r8,rax
  2e8b3c:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e8b41:	48 8b ce                                        	mov    rcx,rsi
  2e8b44:	e8 bf 6b ff ff                                  	call   0x2df708
  2e8b49:	4c 8d 45 90                                     	lea    r8,[rbp-0x70]
  2e8b4d:	48 8d 55 7c                                     	lea    rdx,[rbp+0x7c]
  2e8b51:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2e8b56:	e8 71 6b ff ff                                  	call   0x2df6cc
  2e8b5b:	48 8b c8                                        	mov    rcx,rax
  2e8b5e:	e8 85 83 ff ff                                  	call   0x2e0ee8
  2e8b63:	f2 0f 10 4c 24 30                               	movsd  xmm1,QWORD PTR [rsp+0x30]
  2e8b69:	4c 8d 45 a0                                     	lea    r8,[rbp-0x60]
  2e8b6d:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2e8b71:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  2e8b75:	f2 0f 11 4d a0                                  	movsd  QWORD PTR [rbp-0x60],xmm1
  2e8b7a:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  2e8b81:	f2 0f 10 0e                                     	movsd  xmm1,QWORD PTR [rsi]
  2e8b85:	44 0f 28 d0                                     	movaps xmm10,xmm0
  2e8b89:	89 45 a8                                        	mov    DWORD PTR [rbp-0x58],eax
  2e8b8c:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  2e8b8f:	f2 0f 11 4d b0                                  	movsd  QWORD PTR [rbp-0x50],xmm1
  2e8b94:	89 45 b8                                        	mov    DWORD PTR [rbp-0x48],eax
  2e8b97:	e8 00 67 ff ff                                  	call   0x2df29c
  2e8b9c:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  2e8ba0:	4c 8d 45 c0                                     	lea    r8,[rbp-0x40]
  2e8ba4:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  2e8ba7:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  2e8bab:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  2e8bb2:	f2 0f 11 45 c0                                  	movsd  QWORD PTR [rbp-0x40],xmm0
  2e8bb7:	89 45 c8                                        	mov    DWORD PTR [rbp-0x38],eax
  2e8bba:	e8 c1 ce ff ff                                  	call   0x2e5a80
  2e8bbf:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  2e8bc3:	48 8b cb                                        	mov    rcx,rbx
  2e8bc6:	e8 65 73 ff ff                                  	call   0x2dff30
  2e8bcb:	44 0f 28 f0                                     	movaps xmm14,xmm0
  2e8bcf:	45 0f 2f f3                                     	comiss xmm14,xmm11
  2e8bd3:	76 0d                                           	jbe    0x2e8be2
  2e8bd5:	41 ff c6                                        	inc    r14d
  2e8bd8:	41 83 fe 02                                     	cmp    r14d,0x2
  2e8bdc:	0f 8d 00 02 00 00                               	jge    0x2e8de2
  2e8be2:	f3 41 0f 58 f2                                  	addss  xmm6,xmm10
  2e8be7:	45 85 ff                                        	test   r15d,r15d
  2e8bea:	75 05                                           	jne    0x2e8bf1
  2e8bec:	0f 57 c0                                        	xorps  xmm0,xmm0
  2e8bef:	eb 08                                           	jmp    0x2e8bf9
  2e8bf1:	f3 0f 10 05 eb 55 fa ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffffa55eb]        # 0x28e1e4
  2e8bf9:	0f 2f f0                                        	comiss xmm6,xmm0
  2e8bfc:	0f 82 40 01 00 00                               	jb     0x2e8d42
  2e8c02:	0f 57 c0                                        	xorps  xmm0,xmm0
  2e8c05:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2e8c09:	0f 11 45 50                                     	movups XMMWORD PTR [rbp+0x50],xmm0
  2e8c0d:	0f 11 45 5c                                     	movups XMMWORD PTR [rbp+0x5c],xmm0
  2e8c11:	0f 11 45 40                                     	movups XMMWORD PTR [rbp+0x40],xmm0
  2e8c15:	e8 ea c2 ff ff                                  	call   0x2e4f04
  2e8c1a:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e8c1f:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e8c24:	e8 07 73 ff ff                                  	call   0x2dff30
  2e8c29:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  2e8c2e:	0f 28 f0                                        	movaps xmm6,xmm0
  2e8c31:	48 8d 95 88 00 00 00                            	lea    rdx,[rbp+0x88]
  2e8c38:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2e8c3d:	e8 8a 6a ff ff                                  	call   0x2df6cc
  2e8c42:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  2e8c4a:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  2e8c4e:	45 8b cd                                        	mov    r9d,r13d
  2e8c51:	f2 44 0f 11 45 e0                               	movsd  QWORD PTR [rbp-0x20],xmm8
  2e8c57:	0f 28 d6                                        	movaps xmm2,xmm6
  2e8c5a:	89 7d e8                                        	mov    DWORD PTR [rbp-0x18],edi
  2e8c5d:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  2e8c61:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  2e8c65:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2e8c68:	89 45 d8                                        	mov    DWORD PTR [rbp-0x28],eax
  2e8c6b:	48 8d 45 40                                     	lea    rax,[rbp+0x40]
  2e8c6f:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  2e8c74:	f2 0f 11 4d d0                                  	movsd  QWORD PTR [rbp-0x30],xmm1
  2e8c79:	e8 2e 03 00 00                                  	call   0x2e8fac
  2e8c7e:	84 c0                                           	test   al,al
  2e8c80:	0f 85 b2 01 00 00                               	jne    0x2e8e38
  2e8c86:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2e8c8c:	4c 8d 45 f0                                     	lea    r8,[rbp-0x10]
  2e8c90:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2e8c94:	48 8d 55 00                                     	lea    rdx,[rbp+0x0]
  2e8c98:	48 8d 8d e0 00 00 00                            	lea    rcx,[rbp+0xe0]
  2e8c9f:	f2 0f 11 45 f0                                  	movsd  QWORD PTR [rbp-0x10],xmm0
  2e8ca4:	89 45 f8                                        	mov    DWORD PTR [rbp-0x8],eax
  2e8ca7:	f2 44 0f 11 45 00                               	movsd  QWORD PTR [rbp+0x0],xmm8
  2e8cad:	89 7d 08                                        	mov    DWORD PTR [rbp+0x8],edi
  2e8cb0:	e8 e7 65 ff ff                                  	call   0x2df29c
  2e8cb5:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  2e8cb9:	4c 8d 45 10                                     	lea    r8,[rbp+0x10]
  2e8cbd:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  2e8cc0:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  2e8cc4:	48 8d 8d e0 00 00 00                            	lea    rcx,[rbp+0xe0]
  2e8ccb:	f2 0f 11 45 10                                  	movsd  QWORD PTR [rbp+0x10],xmm0
  2e8cd0:	89 45 18                                        	mov    DWORD PTR [rbp+0x18],eax
  2e8cd3:	e8 a8 cd ff ff                                  	call   0x2e5a80
  2e8cd8:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  2e8cdc:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  2e8cdf:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2e8ce5:	f2 0f 10 45 20                                  	movsd  xmm0,QWORD PTR [rbp+0x20]
  2e8cea:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2e8cee:	8b 45 28                                        	mov    eax,DWORD PTR [rbp+0x28]
  2e8cf1:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  2e8cf7:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2e8cfb:	e8 6c dd ff ff                                  	call   0x2e6a6c
  2e8d00:	44 8b c0                                        	mov    r8d,eax
  2e8d03:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  2e8d09:	0f 57 db                                        	xorps  xmm3,xmm3
  2e8d0c:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2e8d11:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  2e8d16:	e8 05 96 ff ff                                  	call   0x2e2320
  2e8d1b:	84 c0                                           	test   al,al
  2e8d1d:	0f 85 11 01 00 00                               	jne    0x2e8e34
  2e8d23:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2e8d29:	0f 57 f6                                        	xorps  xmm6,xmm6
  2e8d2c:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2e8d30:	44 0f 28 c0                                     	movaps xmm8,xmm0
  2e8d34:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  2e8d3a:	8b f8                                           	mov    edi,eax
  2e8d3c:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  2e8d40:	eb 0a                                           	jmp    0x2e8d4c
  2e8d42:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2e8d46:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2e8d4c:	f3 41 0f 10 54 24 08                            	movss  xmm2,DWORD PTR [r12+0x8]
  2e8d53:	48 8d 8d 94 00 00 00                            	lea    rcx,[rbp+0x94]
  2e8d5a:	f3 0f 59 15 8a 54 fa ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffffa548a]        # 0x28e1ec
  2e8d62:	0f 57 db                                        	xorps  xmm3,xmm3
  2e8d65:	f2 0f 11 06                                     	movsd  QWORD PTR [rsi],xmm0
  2e8d69:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e8d6c:	45 0f 28 de                                     	movaps xmm11,xmm14
  2e8d70:	89 46 08                                        	mov    DWORD PTR [rsi+0x8],eax
  2e8d73:	e8 30 ee 0d 00                                  	call   0x3c7ba8
  2e8d78:	48 8b c8                                        	mov    rcx,rax
  2e8d7b:	48 8d 95 a0 00 00 00                            	lea    rdx,[rbp+0xa0]
  2e8d82:	41 0f 28 d1                                     	movaps xmm2,xmm9
  2e8d86:	e8 e1 68 ff ff                                  	call   0x2df66c
  2e8d8b:	48 8b d0                                        	mov    rdx,rax
  2e8d8e:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e8d93:	e8 30 ee 0d 00                                  	call   0x3c7bc8
  2e8d98:	f3 41 0f 10 54 24 04                            	movss  xmm2,DWORD PTR [r12+0x4]
  2e8d9f:	48 8d 95 ac 00 00 00                            	lea    rdx,[rbp+0xac]
  2e8da6:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e8dab:	e8 bc 68 ff ff                                  	call   0x2df66c
  2e8db0:	48 8b c8                                        	mov    rcx,rax
  2e8db3:	48 8d 95 b8 00 00 00                            	lea    rdx,[rbp+0xb8]
  2e8dba:	41 0f 28 d1                                     	movaps xmm2,xmm9
  2e8dbe:	e8 a9 68 ff ff                                  	call   0x2df66c
  2e8dc3:	48 8b d0                                        	mov    rdx,rax
  2e8dc6:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e8dcb:	e8 28 ee 0d 00                                  	call   0x3c7bf8
  2e8dd0:	f3 45 0f 58 e1                                  	addss  xmm12,xmm9
  2e8dd5:	41 ff c7                                        	inc    r15d
  2e8dd8:	45 0f 2f ec                                     	comiss xmm13,xmm12
  2e8ddc:	0f 87 1d fd ff ff                               	ja     0x2e8aff
  2e8de2:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  2e8de6:	e8 6d ad ff ff                                  	call   0x2e3b58
  2e8deb:	84 c0                                           	test   al,al
  2e8ded:	75 49                                           	jne    0x2e8e38
  2e8def:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  2e8df3:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  2e8df6:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  2e8dfc:	f2 0f 10 45 80                                  	movsd  xmm0,QWORD PTR [rbp-0x80]
  2e8e01:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2e8e05:	8b 45 88                                        	mov    eax,DWORD PTR [rbp-0x78]
  2e8e08:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2e8e0e:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2e8e12:	e8 55 dc ff ff                                  	call   0x2e6a6c
  2e8e17:	44 8b c0                                        	mov    r8d,eax
  2e8e1a:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  2e8e20:	0f 57 db                                        	xorps  xmm3,xmm3
  2e8e23:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2e8e28:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2e8e2d:	e8 ee 94 ff ff                                  	call   0x2e2320
  2e8e32:	eb 06                                           	jmp    0x2e8e3a
  2e8e34:	b0 01                                           	mov    al,0x1
  2e8e36:	eb 02                                           	jmp    0x2e8e3a
  2e8e38:	32 c0                                           	xor    al,al
  2e8e3a:	4c 8d 9c 24 98 02 00 00                         	lea    r11,[rsp+0x298]
  2e8e42:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  2e8e47:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  2e8e4c:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  2e8e51:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  2e8e56:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  2e8e5b:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  2e8e60:	45 0f 28 63 88                                  	movaps xmm12,XMMWORD PTR [r11-0x78]
  2e8e65:	45 0f 28 ab 78 ff ff ff                         	movaps xmm13,XMMWORD PTR [r11-0x88]
  2e8e6d:	45 0f 28 b3 68 ff ff ff                         	movaps xmm14,XMMWORD PTR [r11-0x98]
  2e8e75:	49 8b e3                                        	mov    rsp,r11
  2e8e78:	41 5f                                           	pop    r15
  2e8e7a:	41 5e                                           	pop    r14
  2e8e7c:	41 5d                                           	pop    r13
  2e8e7e:	41 5c                                           	pop    r12
  2e8e80:	5f                                              	pop    rdi
  2e8e81:	5e                                              	pop    rsi
  2e8e82:	5b                                              	pop    rbx
  2e8e83:	5d                                              	pop    rbp
  2e8e84:	c3                                              	ret
