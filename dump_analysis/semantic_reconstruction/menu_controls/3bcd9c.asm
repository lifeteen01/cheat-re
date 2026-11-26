
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bcd9c <.data+0x3bcd9c>:
  3bcd9c:	48 8b c4                                        	mov    rax,rsp
  3bcd9f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3bcda3:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  3bcda7:	55                                              	push   rbp
  3bcda8:	57                                              	push   rdi
  3bcda9:	41 54                                           	push   r12
  3bcdab:	41 56                                           	push   r14
  3bcdad:	41 57                                           	push   r15
  3bcdaf:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  3bcdb3:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  3bcdba:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  3bcdbe:	41 8b f8                                        	mov    edi,r8d
  3bcdc1:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  3bcdc5:	48 8b f2                                        	mov    rsi,rdx
  3bcdc8:	4c 8b e1                                        	mov    r12,rcx
  3bcdcb:	e8 30 04 fa ff                                  	call   0x35d200
  3bcdd0:	4c 8b f0                                        	mov    r14,rax
  3bcdd3:	80 b8 bb 00 00 00 00                            	cmp    BYTE PTR [rax+0xbb],0x0
  3bcdda:	0f 85 61 02 00 00                               	jne    0x3bd041
  3bcde0:	48 8b 1d 41 8d 04 00                            	mov    rbx,QWORD PTR [rip+0x48d41]        # 0x405b28
  3bcde7:	45 33 c0                                        	xor    r8d,r8d
  3bcdea:	49 8b d4                                        	mov    rdx,r12
  3bcded:	48 8b c8                                        	mov    rcx,rax
  3bcdf0:	e8 1f 58 fd ff                                  	call   0x392614
  3bcdf5:	f3 0f 10 05 63 64 ed ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffed6463]        # 0x293260
  3bcdfd:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  3bce01:	41 b1 01                                        	mov    r9b,0x1
  3bce04:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3bce0a:	45 33 c0                                        	xor    r8d,r8d
  3bce0d:	49 8b d4                                        	mov    rdx,r12
  3bce10:	44 8b f8                                        	mov    r15d,eax
  3bce13:	e8 84 29 fd ff                                  	call   0x38f79c
  3bce18:	f2 41 0f 10 86 00 01 00 00                      	movsd  xmm0,QWORD PTR [r14+0x100]
  3bce21:	f2 0f 11 45 7f                                  	movsd  QWORD PTR [rbp+0x7f],xmm0
  3bce26:	0f ba e7 0f                                     	bt     edi,0xf
  3bce2a:	73 2e                                           	jae    0x3bce5a
  3bce2c:	f3 41 0f 10 8e 38 01 00 00                      	movss  xmm1,DWORD PTR [r14+0x138]
  3bce35:	f3 0f 10 83 10 38 00 00                         	movss  xmm0,DWORD PTR [rbx+0x3810]
  3bce3d:	0f 2f c8                                        	comiss xmm1,xmm0
  3bce40:	76 18                                           	jbe    0x3bce5a
  3bce42:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3bce46:	f3 0f 10 85 83 00 00 00                         	movss  xmm0,DWORD PTR [rbp+0x83]
  3bce4e:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3bce52:	f3 0f 11 85 83 00 00 00                         	movss  DWORD PTR [rbp+0x83],xmm0
  3bce5a:	f3 0f 10 9b 10 38 00 00                         	movss  xmm3,DWORD PTR [rbx+0x3810]
  3bce62:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  3bce66:	f3 0f 10 93 0c 38 00 00                         	movss  xmm2,DWORD PTR [rbx+0x380c]
  3bce6e:	f3 0f 58 db                                     	addss  xmm3,xmm3
  3bce72:	48 8b 16                                        	mov    rdx,QWORD PTR [rsi]
  3bce75:	f3 0f 58 d2                                     	addss  xmm2,xmm2
  3bce79:	f3 0f 58 5d e3                                  	addss  xmm3,DWORD PTR [rbp-0x1d]
  3bce7e:	f3 0f 58 55 df                                  	addss  xmm2,DWORD PTR [rbp-0x21]
  3bce83:	e8 9c 23 fd ff                                  	call   0x38f224
  3bce88:	4c 8d 45 e7                                     	lea    r8,[rbp-0x19]
  3bce8c:	48 8d 55 7f                                     	lea    rdx,[rbp+0x7f]
  3bce90:	48 8d 4d ef                                     	lea    rcx,[rbp-0x11]
  3bce94:	e8 3f 2b f3 ff                                  	call   0x2ef9d8
  3bce99:	4c 8b c0                                        	mov    r8,rax
  3bce9c:	48 8d 55 7f                                     	lea    rdx,[rbp+0x7f]
  3bcea0:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  3bcea4:	e8 df e4 f1 ff                                  	call   0x2db388
  3bcea9:	f3 0f 10 8b 10 38 00 00                         	movss  xmm1,DWORD PTR [rbx+0x3810]
  3bceb1:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  3bceb5:	e8 86 7c fd ff                                  	call   0x394b40
  3bceba:	45 33 c9                                        	xor    r9d,r9d
  3bcebd:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  3bcec1:	45 33 c0                                        	xor    r8d,r8d
  3bcec4:	41 8b d7                                        	mov    edx,r15d
  3bcec7:	e8 10 7a fd ff                                  	call   0x3948dc
  3bcecc:	84 c0                                           	test   al,al
  3bcece:	0f 84 6d 01 00 00                               	je     0x3bd041
  3bced4:	8b cf                                           	mov    ecx,edi
  3bced6:	4c 8d 4d 7f                                     	lea    r9,[rbp+0x7f]
  3bceda:	0f ba e9 0a                                     	bts    ecx,0xa
  3bcede:	4c 8d 45 d7                                     	lea    r8,[rbp-0x29]
  3bcee2:	f6 83 a8 47 00 00 02                            	test   BYTE PTR [rbx+0x47a8],0x2
  3bcee9:	41 8b d7                                        	mov    edx,r15d
  3bceec:	0f 44 cf                                        	cmove  ecx,edi
  3bceef:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3bcef3:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  3bcef7:	e8 e4 f8 ff ff                                  	call   0x3bc7e0
  3bcefc:	0f 57 c0                                        	xorps  xmm0,xmm0
  3bceff:	0f 57 ff                                        	xorps  xmm7,xmm7
  3bcf02:	0f 14 c7                                        	unpcklps xmm0,xmm7
  3bcf05:	33 d2                                           	xor    edx,edx
  3bcf07:	66 49 0f 7e c0                                  	movq   r8,xmm0
  3bcf0c:	49 8b cc                                        	mov    rcx,r12
  3bcf0f:	44 8a f8                                        	mov    r15b,al
  3bcf12:	e8 f9 e5 ff ff                                  	call   0x3bb510
  3bcf17:	f3 0f 10 35 95 62 ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed6295]        # 0x2931b4
  3bcf1f:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bcf22:	44 8a 4d 7f                                     	mov    r9b,BYTE PTR [rbp+0x7f]
  3bcf26:	48 8b f8                                        	mov    rdi,rax
  3bcf29:	f3 0f 10 15 23 03 ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffed0323]        # 0x28d254
  3bcf31:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3bcf35:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bcf3b:	e8 08 8f f7 ff                                  	call   0x335e48
  3bcf40:	44 8a 4d d7                                     	mov    r9b,BYTE PTR [rbp-0x29]
  3bcf44:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bcf47:	f3 0f 10 15 05 03 ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffed0305]        # 0x28d254
  3bcf4f:	f3 0f 11 07                                     	movss  DWORD PTR [rdi],xmm0
  3bcf53:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [rdi+0x4]
  3bcf58:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bcf5e:	e8 e5 8e f7 ff                                  	call   0x335e48
  3bcf63:	f3 0f 10 15 3d 61 ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffed613d]        # 0x2930a8
  3bcf6b:	33 c9                                           	xor    ecx,ecx
  3bcf6d:	f3 0f 10 0d df 02 ed ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffed02df]        # 0x28d254
  3bcf75:	f3 0f 11 47 04                                  	movss  DWORD PTR [rdi+0x4],xmm0
  3bcf7a:	48 8b 05 a7 8b 04 00                            	mov    rax,QWORD PTR [rip+0x48ba7]        # 0x405b28
  3bcf81:	49 8b 9e 98 02 00 00                            	mov    rbx,QWORD PTR [r14+0x298]
  3bcf88:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  3bcf8c:	f3 0f 10 b0 14 38 00 00                         	movss  xmm6,DWORD PTR [rax+0x3814]
  3bcf94:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3bcf98:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [rdi]
  3bcf9c:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  3bcfa0:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3bcfa4:	e8 ef 52 fd ff                                  	call   0x392298
  3bcfa9:	44 8b c8                                        	mov    r9d,eax
  3bcfac:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3bcfb4:	4c 8d 45 07                                     	lea    r8,[rbp+0x7]
  3bcfb8:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bcfbe:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  3bcfc2:	48 8b cb                                        	mov    rcx,rbx
  3bcfc5:	e8 7a 42 fe ff                                  	call   0x3a1244
  3bcfca:	4d 8b b6 98 02 00 00                            	mov    r14,QWORD PTR [r14+0x298]
  3bcfd1:	33 d2                                           	xor    edx,edx
  3bcfd3:	49 8b cc                                        	mov    rcx,r12
  3bcfd6:	e8 75 4c fd ff                                  	call   0x391c50
  3bcfdb:	f3 0f 10 0d 71 02 ed ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffed0271]        # 0x28d254
  3bcfe3:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bcfe8:	48 8b f0                                        	mov    rsi,rax
  3bcfeb:	e8 a8 52 fd ff                                  	call   0x392298
  3bcff0:	f3 0f 10 15 3c 61 ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffed613c]        # 0x293134
  3bcff8:	48 8d 55 df                                     	lea    rdx,[rbp-0x21]
  3bcffc:	48 8d 4d 7f                                     	lea    rcx,[rbp+0x7f]
  3bd000:	8b f8                                           	mov    edi,eax
  3bd002:	e8 f9 f9 fb ff                                  	call   0x37ca00
  3bd007:	48 8d 55 ef                                     	lea    rdx,[rbp-0x11]
  3bd00b:	48 8b d8                                        	mov    rbx,rax
  3bd00e:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  3bd012:	e8 dd b8 fb ff                                  	call   0x3788f4
  3bd017:	48 8b d0                                        	mov    rdx,rax
  3bd01a:	48 8d 4d f7                                     	lea    rcx,[rbp-0x9]
  3bd01e:	4c 8b c3                                        	mov    r8,rbx
  3bd021:	e8 be 97 f7 ff                                  	call   0x3367e4
  3bd026:	48 8b d0                                        	mov    rdx,rax
  3bd029:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  3bd02e:	4d 8b cc                                        	mov    r9,r12
  3bd031:	44 8b c7                                        	mov    r8d,edi
  3bd034:	49 8b ce                                        	mov    rcx,r14
  3bd037:	e8 80 61 fe ff                                  	call   0x3a31bc
  3bd03c:	41 8a c7                                        	mov    al,r15b
  3bd03f:	eb 02                                           	jmp    0x3bd043
  3bd041:	32 c0                                           	xor    al,al
  3bd043:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  3bd048:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  3bd050:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  3bd054:	49 8b 73 38                                     	mov    rsi,QWORD PTR [r11+0x38]
  3bd058:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3bd05d:	49 8b e3                                        	mov    rsp,r11
  3bd060:	41 5f                                           	pop    r15
  3bd062:	41 5e                                           	pop    r14
  3bd064:	41 5c                                           	pop    r12
  3bd066:	5f                                              	pop    rdi
  3bd067:	5d                                              	pop    rbp
  3bd068:	c3                                              	ret
