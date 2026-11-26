
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036bc14 <.data+0x36bc14>:
  36bc14:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  36bc19:	48 89 6c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbp
  36bc1e:	56                                              	push   rsi
  36bc1f:	57                                              	push   rdi
  36bc20:	41 56                                           	push   r14
  36bc22:	48 83 ec 40                                     	sub    rsp,0x40
  36bc26:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  36bc2b:	4d 8b f0                                        	mov    r14,r8
  36bc2e:	40 8a ea                                        	mov    bpl,dl
  36bc31:	48 8b f1                                        	mov    rsi,rcx
  36bc34:	e8 cf f2 f5 ff                                  	call   0x2caf08
  36bc39:	84 c0                                           	test   al,al
  36bc3b:	0f 84 41 02 00 00                               	je     0x36be82
  36bc41:	48 8b ce                                        	mov    rcx,rsi
  36bc44:	e8 1f ba ff ff                                  	call   0x367668
  36bc49:	48 8d 54 24 78                                  	lea    rdx,[rsp+0x78]
  36bc4e:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  36bc52:	48 8d 0d b7 a2 07 00                            	lea    rcx,[rip+0x7a2b7]        # 0x3e5f10
  36bc59:	e8 c6 3a f8 ff                                  	call   0x2ef724
  36bc5e:	48 8b f8                                        	mov    rdi,rax
  36bc61:	48 85 c0                                        	test   rax,rax
  36bc64:	0f 84 18 02 00 00                               	je     0x36be82
  36bc6a:	48 8b 9e 20 04 00 00                            	mov    rbx,QWORD PTR [rsi+0x420]
  36bc71:	48 8b cb                                        	mov    rcx,rbx
  36bc74:	e8 8f f2 f5 ff                                  	call   0x2caf08
  36bc79:	84 c0                                           	test   al,al
  36bc7b:	0f 84 01 02 00 00                               	je     0x36be82
  36bc81:	48 8b 93 80 00 00 00                            	mov    rdx,QWORD PTR [rbx+0x80]
  36bc88:	48 8b ca                                        	mov    rcx,rdx
  36bc8b:	e8 78 f2 f5 ff                                  	call   0x2caf08
  36bc90:	84 c0                                           	test   al,al
  36bc92:	48 0f 45 da                                     	cmovne rbx,rdx
  36bc96:	80 7f 14 00                                     	cmp    BYTE PTR [rdi+0x14],0x0
  36bc9a:	75 46                                           	jne    0x36bce2
  36bc9c:	8b 86 04 03 00 00                               	mov    eax,DWORD PTR [rsi+0x304]
  36bca2:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  36bca7:	89 47 10                                        	mov    DWORD PTR [rdi+0x10],eax
  36bcaa:	f3 0f 10 53 24                                  	movss  xmm2,DWORD PTR [rbx+0x24]
  36bcaf:	f3 0f 10 4b 20                                  	movss  xmm1,DWORD PTR [rbx+0x20]
  36bcb4:	e8 87 06 f6 ff                                  	call   0x2cc340
  36bcb9:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  36bcbe:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  36bcc2:	f2 0f 11 07                                     	movsd  QWORD PTR [rdi],xmm0
  36bcc6:	f3 0f 10 53 1c                                  	movss  xmm2,DWORD PTR [rbx+0x1c]
  36bccb:	f3 0f 10 4b 18                                  	movss  xmm1,DWORD PTR [rbx+0x18]
  36bcd0:	e8 6b 06 f6 ff                                  	call   0x2cc340
  36bcd5:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  36bcd9:	f2 0f 11 47 08                                  	movsd  QWORD PTR [rdi+0x8],xmm0
  36bcde:	c6 47 14 01                                     	mov    BYTE PTR [rdi+0x14],0x1
  36bce2:	49 8b ce                                        	mov    rcx,r14
  36bce5:	e8 1e f2 f5 ff                                  	call   0x2caf08
  36bcea:	84 c0                                           	test   al,al
  36bcec:	0f 84 90 01 00 00                               	je     0x36be82
  36bcf2:	49 8b ce                                        	mov    rcx,r14
  36bcf5:	e8 3e da ff ff                                  	call   0x369738
  36bcfa:	48 8b c8                                        	mov    rcx,rax
  36bcfd:	4c 8b c0                                        	mov    r8,rax
  36bd00:	e8 03 f2 f5 ff                                  	call   0x2caf08
  36bd05:	84 c0                                           	test   al,al
  36bd07:	0f 84 75 01 00 00                               	je     0x36be82
  36bd0d:	8a 15 45 09 09 00                               	mov    dl,BYTE PTR [rip+0x90945]        # 0x3fc658
  36bd13:	f3 0f 10 35 29 1e f2 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff21e29]        # 0x28db44
  36bd1b:	84 d2                                           	test   dl,dl
  36bd1d:	0f 85 a0 00 00 00                               	jne    0x36bdc3
  36bd23:	40 84 ed                                        	test   bpl,bpl
  36bd26:	0f 84 97 00 00 00                               	je     0x36bdc3
  36bd2c:	38 15 c6 74 08 00                               	cmp    BYTE PTR [rip+0x874c6],dl        # 0x3f31f8
  36bd32:	0f 84 8b 00 00 00                               	je     0x36bdc3
  36bd38:	66 0f 6e 05 58 13 09 00                         	movd   xmm0,DWORD PTR [rip+0x91358]        # 0x3fd098
  36bd40:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  36bd45:	f3 0f 10 0d 07 15 f2 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff21507]        # 0x28d254
  36bd4d:	f3 41 0f 10 50 48                               	movss  xmm2,DWORD PTR [r8+0x48]
  36bd53:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  36bd56:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  36bd5a:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  36bd5e:	66 0f 6e 05 e2 12 09 00                         	movd   xmm0,DWORD PTR [rip+0x912e2]        # 0x3fd048
  36bd66:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  36bd69:	f3 0f 59 8e 24 02 00 00                         	mulss  xmm1,DWORD PTR [rsi+0x224]
  36bd71:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  36bd75:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  36bd79:	f3 0f 10 0d d3 14 f2 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff214d3]        # 0x28d254
  36bd81:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  36bd85:	f3 41 0f 10 40 44                               	movss  xmm0,DWORD PTR [r8+0x44]
  36bd8b:	f3 0f 59 8e 20 02 00 00                         	mulss  xmm1,DWORD PTR [rsi+0x220]
  36bd93:	f3 41 0f 11 50 48                               	movss  DWORD PTR [r8+0x48],xmm2
  36bd99:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  36bd9d:	f3 41 0f 11 40 44                               	movss  DWORD PTR [r8+0x44],xmm0
  36bda3:	e8 14 be 05 00                                  	call   0x3c7bbc
  36bda8:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  36bdac:	f2 0f 11 86 20 02 00 00                         	movsd  QWORD PTR [rsi+0x220],xmm0
  36bdb4:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  36bdb7:	89 86 28 02 00 00                               	mov    DWORD PTR [rsi+0x228],eax
  36bdbd:	8a 15 95 08 09 00                               	mov    dl,BYTE PTR [rip+0x90895]        # 0x3fc658
  36bdc3:	48 8b cb                                        	mov    rcx,rbx
  36bdc6:	e8 3d f1 f5 ff                                  	call   0x2caf08
  36bdcb:	84 c0                                           	test   al,al
  36bdcd:	0f 84 af 00 00 00                               	je     0x36be82
  36bdd3:	40 84 ed                                        	test   bpl,bpl
  36bdd6:	74 11                                           	je     0x36bde9
  36bdd8:	84 d2                                           	test   dl,dl
  36bdda:	74 0d                                           	je     0x36bde9
  36bddc:	66 0f 6e 05 b4 12 09 00                         	movd   xmm0,DWORD PTR [rip+0x912b4]        # 0x3fd098
  36bde4:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  36bde7:	eb 03                                           	jmp    0x36bdec
  36bde9:	0f 28 c6                                        	movaps xmm0,xmm6
  36bdec:	0f 57 e4                                        	xorps  xmm4,xmm4
  36bdef:	0f 2f c4                                        	comiss xmm0,xmm4
  36bdf2:	76 27                                           	jbe    0x36be1b
  36bdf4:	f3 0f 10 15 58 14 f2 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff21458]        # 0x28d254
  36bdfc:	0f 57 c9                                        	xorps  xmm1,xmm1
  36bdff:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  36be03:	e8 3c 9c f7 ff                                  	call   0x2e5a44
  36be08:	0f 28 d8                                        	movaps xmm3,xmm0
  36be0b:	f3 0f 59 1f                                     	mulss  xmm3,DWORD PTR [rdi]
  36be0f:	f3 0f 11 5b 20                                  	movss  DWORD PTR [rbx+0x20],xmm3
  36be14:	f3 0f 59 47 04                                  	mulss  xmm0,DWORD PTR [rdi+0x4]
  36be19:	eb 0a                                           	jmp    0x36be25
  36be1b:	c7 43 20 00 00 00 00                            	mov    DWORD PTR [rbx+0x20],0x0
  36be22:	0f 57 c0                                        	xorps  xmm0,xmm0
  36be25:	f3 0f 11 43 24                                  	movss  DWORD PTR [rbx+0x24],xmm0
  36be2a:	40 84 ed                                        	test   bpl,bpl
  36be2d:	74 16                                           	je     0x36be45
  36be2f:	80 3d 22 08 09 00 00                            	cmp    BYTE PTR [rip+0x90822],0x0        # 0x3fc658
  36be36:	74 0d                                           	je     0x36be45
  36be38:	66 0f 6e 05 08 12 09 00                         	movd   xmm0,DWORD PTR [rip+0x91208]        # 0x3fd048
  36be40:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  36be43:	eb 03                                           	jmp    0x36be48
  36be45:	0f 28 c6                                        	movaps xmm0,xmm6
  36be48:	0f 2f c4                                        	comiss xmm0,xmm4
  36be4b:	76 2d                                           	jbe    0x36be7a
  36be4d:	f3 0f 10 15 ff 13 f2 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff213ff]        # 0x28d254
  36be55:	0f 57 c9                                        	xorps  xmm1,xmm1
  36be58:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  36be5c:	e8 e3 9b f7 ff                                  	call   0x2e5a44
  36be61:	0f 28 d8                                        	movaps xmm3,xmm0
  36be64:	f3 0f 59 5f 08                                  	mulss  xmm3,DWORD PTR [rdi+0x8]
  36be69:	f3 0f 11 5b 18                                  	movss  DWORD PTR [rbx+0x18],xmm3
  36be6e:	f3 0f 59 47 0c                                  	mulss  xmm0,DWORD PTR [rdi+0xc]
  36be73:	f3 0f 11 43 1c                                  	movss  DWORD PTR [rbx+0x1c],xmm0
  36be78:	eb 08                                           	jmp    0x36be82
  36be7a:	48 c7 43 18 00 00 00 00                         	mov    QWORD PTR [rbx+0x18],0x0
  36be82:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  36be87:	48 8b 6c 24 68                                  	mov    rbp,QWORD PTR [rsp+0x68]
  36be8c:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  36be91:	48 83 c4 40                                     	add    rsp,0x40
  36be95:	41 5e                                           	pop    r14
  36be97:	5f                                              	pop    rdi
  36be98:	5e                                              	pop    rsi
  36be99:	c3                                              	ret
