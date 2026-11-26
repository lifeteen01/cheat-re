
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a6b78 <.data+0x3a6b78>:
  3a6b78:	48 8b c4                                        	mov    rax,rsp
  3a6b7b:	53                                              	push   rbx
  3a6b7c:	55                                              	push   rbp
  3a6b7d:	56                                              	push   rsi
  3a6b7e:	57                                              	push   rdi
  3a6b7f:	48 81 ec 98 00 00 00                            	sub    rsp,0x98
  3a6b86:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  3a6b8a:	48 8b e9                                        	mov    rbp,rcx
  3a6b8d:	8b 8c 24 e0 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xe0]
  3a6b94:	49 8b f8                                        	mov    rdi,r8
  3a6b97:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  3a6b9b:	48 8b f2                                        	mov    rsi,rdx
  3a6b9e:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  3a6ba3:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  3a6ba8:	44 0f 28 cb                                     	movaps xmm9,xmm3
  3a6bac:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  3a6bb1:	44 0f 29 5c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm11
  3a6bb7:	e8 cc d9 ff ff                                  	call   0x3a4588
  3a6bbc:	f3 0f 10 3d 8c 66 ee ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffee668c]        # 0x28d250
  3a6bc4:	44 8b c8                                        	mov    r9d,eax
  3a6bc7:	f3 0f 10 35 85 66 ee ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffee6685]        # 0x28d254
  3a6bcf:	41 83 e1 30                                     	and    r9d,0x30
  3a6bd3:	41 80 f9 30                                     	cmp    r9b,0x30
  3a6bd7:	8b d8                                           	mov    ebx,eax
  3a6bd9:	44 8b c8                                        	mov    r9d,eax
  3a6bdc:	41 0f 95 c2                                     	setne  r10b
  3a6be0:	41 81 e1 c0 00 00 00                            	and    r9d,0xc0
  3a6be7:	41 80 f9 c0                                     	cmp    r9b,0xc0
  3a6beb:	0f 95 c2                                        	setne  dl
  3a6bee:	44 84 d2                                        	test   dl,r10b
  3a6bf1:	74 06                                           	je     0x3a6bf9
  3a6bf3:	44 0f 28 c6                                     	movaps xmm8,xmm6
  3a6bf7:	eb 04                                           	jmp    0x3a6bfd
  3a6bf9:	44 0f 28 c7                                     	movaps xmm8,xmm7
  3a6bfd:	f3 41 0f 10 00                                  	movss  xmm0,DWORD PTR [r8]
  3a6c02:	f3 44 0f 10 1e                                  	movss  xmm11,DWORD PTR [rsi]
  3a6c07:	f3 41 0f 5c c3                                  	subss  xmm0,xmm11
  3a6c0c:	e8 df d2 f3 ff                                  	call   0x2e3ef0
  3a6c11:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3a6c16:	f3 0f 5c c6                                     	subss  xmm0,xmm6
  3a6c1a:	0f 28 c8                                        	movaps xmm1,xmm0
  3a6c1d:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a6c21:	e8 a6 f6 fc ff                                  	call   0x3762cc
  3a6c26:	8b c3                                           	mov    eax,ebx
  3a6c28:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3a6c2c:	83 e0 50                                        	and    eax,0x50
  3a6c2f:	3c 50                                           	cmp    al,0x50
  3a6c31:	8b c3                                           	mov    eax,ebx
  3a6c33:	0f 95 c1                                        	setne  cl
  3a6c36:	25 a0 00 00 00                                  	and    eax,0xa0
  3a6c3b:	3c a0                                           	cmp    al,0xa0
  3a6c3d:	0f 95 c0                                        	setne  al
  3a6c40:	84 c8                                           	test   al,cl
  3a6c42:	74 06                                           	je     0x3a6c4a
  3a6c44:	44 0f 28 c6                                     	movaps xmm8,xmm6
  3a6c48:	eb 04                                           	jmp    0x3a6c4e
  3a6c4a:	44 0f 28 c7                                     	movaps xmm8,xmm7
  3a6c4e:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [rdi+0x4]
  3a6c53:	f3 44 0f 10 56 04                               	movss  xmm10,DWORD PTR [rsi+0x4]
  3a6c59:	f3 41 0f 5c c2                                  	subss  xmm0,xmm10
  3a6c5e:	e8 8d d2 f3 ff                                  	call   0x2e3ef0
  3a6c63:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3a6c68:	f3 0f 5c c6                                     	subss  xmm0,xmm6
  3a6c6c:	0f 28 c8                                        	movaps xmm1,xmm0
  3a6c6f:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a6c73:	e8 54 f6 fc ff                                  	call   0x3762cc
  3a6c78:	0f 2f f8                                        	comiss xmm7,xmm0
  3a6c7b:	0f 28 f0                                        	movaps xmm6,xmm0
  3a6c7e:	0f 87 28 01 00 00                               	ja     0x3a6dac
  3a6c84:	8b c3                                           	mov    eax,ebx
  3a6c86:	25 f0 01 00 00                                  	and    eax,0x1f0
  3a6c8b:	3d 00 01 00 00                                  	cmp    eax,0x100
  3a6c90:	0f 84 16 01 00 00                               	je     0x3a6dac
  3a6c96:	f6 c3 10                                        	test   bl,0x10
  3a6c99:	74 06                                           	je     0x3a6ca1
  3a6c9b:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3a6c9f:	eb 04                                           	jmp    0x3a6ca5
  3a6ca1:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  3a6ca5:	f6 c3 20                                        	test   bl,0x20
  3a6ca8:	74 06                                           	je     0x3a6cb0
  3a6caa:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3a6cae:	eb 04                                           	jmp    0x3a6cb4
  3a6cb0:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3a6cb4:	84 db                                           	test   bl,bl
  3a6cb6:	79 05                                           	jns    0x3a6cbd
  3a6cb8:	0f 28 f8                                        	movaps xmm7,xmm0
  3a6cbb:	eb 03                                           	jmp    0x3a6cc0
  3a6cbd:	0f 57 ff                                        	xorps  xmm7,xmm7
  3a6cc0:	f6 c3 40                                        	test   bl,0x40
  3a6cc3:	75 03                                           	jne    0x3a6cc8
  3a6cc5:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a6cc8:	f3 45 0f 58 d1                                  	addss  xmm10,xmm9
  3a6ccd:	f3 45 0f 58 d9                                  	addss  xmm11,xmm9
  3a6cd2:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  3a6cda:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a6cde:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a6ce2:	e8 59 56 f2 ff                                  	call   0x2cc340
  3a6ce7:	bb 09 00 00 00                                  	mov    ebx,0x9
  3a6cec:	48 8b d0                                        	mov    rdx,rax
  3a6cef:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3a6cf3:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3a6cf7:	48 8b cd                                        	mov    rcx,rbp
  3a6cfa:	44 8d 4b fd                                     	lea    r9d,[rbx-0x3]
  3a6cfe:	e8 35 fe ff ff                                  	call   0x3a6b38
  3a6d03:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  3a6d07:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  3a6d0f:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a6d13:	f3 41 0f 5c c8                                  	subss  xmm1,xmm8
  3a6d18:	f3 0f 58 56 04                                  	addss  xmm2,DWORD PTR [rsi+0x4]
  3a6d1d:	e8 1e 56 f2 ff                                  	call   0x2cc340
  3a6d22:	48 8b d0                                        	mov    rdx,rax
  3a6d25:	c7 44 24 20 0c 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xc
  3a6d2d:	44 8b cb                                        	mov    r9d,ebx
  3a6d30:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a6d34:	48 8b cd                                        	mov    rcx,rbp
  3a6d37:	e8 fc fd ff ff                                  	call   0x3a6b38
  3a6d3c:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  3a6d41:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  3a6d49:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  3a6d4d:	f3 0f 5c d7                                     	subss  xmm2,xmm7
  3a6d51:	f3 0f 5c cf                                     	subss  xmm1,xmm7
  3a6d55:	e8 e6 55 f2 ff                                  	call   0x2cc340
  3a6d5a:	bb 03 00 00 00                                  	mov    ebx,0x3
  3a6d5f:	48 8b d0                                        	mov    rdx,rax
  3a6d62:	45 33 c9                                        	xor    r9d,r9d
  3a6d65:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3a6d69:	0f 28 d7                                        	movaps xmm2,xmm7
  3a6d6c:	48 8b cd                                        	mov    rcx,rbp
  3a6d6f:	e8 c4 fd ff ff                                  	call   0x3a6b38
  3a6d74:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  3a6d79:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  3a6d81:	0f 28 ce                                        	movaps xmm1,xmm6
  3a6d84:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  3a6d88:	f3 0f 58 0e                                     	addss  xmm1,DWORD PTR [rsi]
  3a6d8c:	e8 af 55 f2 ff                                  	call   0x2cc340
  3a6d91:	48 8b d0                                        	mov    rdx,rax
  3a6d94:	c7 44 24 20 06 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x6
  3a6d9c:	44 8b cb                                        	mov    r9d,ebx
  3a6d9f:	0f 28 d6                                        	movaps xmm2,xmm6
  3a6da2:	48 8b cd                                        	mov    rcx,rbp
  3a6da5:	e8 8e fd ff ff                                  	call   0x3a6b38
  3a6daa:	eb 58                                           	jmp    0x3a6e04
  3a6dac:	48 8b d6                                        	mov    rdx,rsi
  3a6daf:	48 8b cd                                        	mov    rcx,rbp
  3a6db2:	e8 89 1c fd ff                                  	call   0x378a40
  3a6db7:	f3 0f 10 56 04                                  	movss  xmm2,DWORD PTR [rsi+0x4]
  3a6dbc:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  3a6dc4:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  3a6dc8:	e8 73 55 f2 ff                                  	call   0x2cc340
  3a6dcd:	48 8b d0                                        	mov    rdx,rax
  3a6dd0:	48 8b cd                                        	mov    rcx,rbp
  3a6dd3:	e8 68 1c fd ff                                  	call   0x378a40
  3a6dd8:	48 8b d7                                        	mov    rdx,rdi
  3a6ddb:	48 8b cd                                        	mov    rcx,rbp
  3a6dde:	e8 5d 1c fd ff                                  	call   0x378a40
  3a6de3:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  3a6de8:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  3a6df0:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [rsi]
  3a6df4:	e8 47 55 f2 ff                                  	call   0x2cc340
  3a6df9:	48 8b d0                                        	mov    rdx,rax
  3a6dfc:	48 8b cd                                        	mov    rcx,rbp
  3a6dff:	e8 3c 1c fd ff                                  	call   0x378a40
  3a6e04:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  3a6e09:	4c 8d 9c 24 98 00 00 00                         	lea    r11,[rsp+0x98]
  3a6e11:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3a6e16:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3a6e1b:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3a6e20:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3a6e25:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3a6e2a:	49 8b e3                                        	mov    rsp,r11
  3a6e2d:	5f                                              	pop    rdi
  3a6e2e:	5e                                              	pop    rsi
  3a6e2f:	5d                                              	pop    rbp
  3a6e30:	5b                                              	pop    rbx
  3a6e31:	c3                                              	ret
