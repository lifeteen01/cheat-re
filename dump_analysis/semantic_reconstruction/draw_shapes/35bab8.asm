
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035bab8 <.data+0x35bab8>:
  35bab8:	48 8b c4                                        	mov    rax,rsp
  35babb:	55                                              	push   rbp
  35babc:	53                                              	push   rbx
  35babd:	56                                              	push   rsi
  35babe:	57                                              	push   rdi
  35babf:	41 56                                           	push   r14
  35bac1:	41 57                                           	push   r15
  35bac3:	48 8d 68 b9                                     	lea    rbp,[rax-0x47]
  35bac7:	48 81 ec a8 00 00 00                            	sub    rsp,0xa8
  35bace:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  35bad2:	bb ff 00 00 00                                  	mov    ebx,0xff
  35bad7:	41 8b f0                                        	mov    esi,r8d
  35bada:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  35bade:	44 8b f2                                        	mov    r14d,edx
  35bae1:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35bae5:	4c 8b f9                                        	mov    r15,rcx
  35bae8:	8b d3                                           	mov    edx,ebx
  35baea:	45 33 c9                                        	xor    r9d,r9d
  35baed:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  35baf1:	45 33 c0                                        	xor    r8d,r8d
  35baf4:	0f 28 f3                                        	movaps xmm6,xmm3
  35baf7:	e8 1c f8 f7 ff                                  	call   0x2db318
  35bafc:	45 33 c9                                        	xor    r9d,r9d
  35baff:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35bb03:	44 8b c3                                        	mov    r8d,ebx
  35bb06:	48 8d 4d af                                     	lea    rcx,[rbp-0x51]
  35bb0a:	33 d2                                           	xor    edx,edx
  35bb0c:	e8 07 f8 f7 ff                                  	call   0x2db318
  35bb11:	45 33 c9                                        	xor    r9d,r9d
  35bb14:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35bb18:	44 8b c3                                        	mov    r8d,ebx
  35bb1b:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  35bb1f:	8b d3                                           	mov    edx,ebx
  35bb21:	e8 f2 f7 f7 ff                                  	call   0x2db318
  35bb26:	45 33 c9                                        	xor    r9d,r9d
  35bb29:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35bb2d:	8d 53 9f                                        	lea    edx,[rbx-0x61]
  35bb30:	48 8d 4d cf                                     	lea    rcx,[rbp-0x31]
  35bb34:	45 8d 41 53                                     	lea    r8d,[r9+0x53]
  35bb38:	e8 db f7 f7 ff                                  	call   0x2db318
  35bb3d:	45 33 c9                                        	xor    r9d,r9d
  35bb40:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35bb44:	45 33 c0                                        	xor    r8d,r8d
  35bb47:	48 8d 4d 9f                                     	lea    rcx,[rbp-0x61]
  35bb4b:	33 d2                                           	xor    edx,edx
  35bb4d:	e8 c6 f7 f7 ff                                  	call   0x2db318
  35bb52:	f3 0f 10 7d 6f                                  	movss  xmm7,DWORD PTR [rbp+0x6f]
  35bb57:	0f 28 cf                                        	movaps xmm1,xmm7
  35bb5a:	f3 0f 59 0d 4a 75 f3 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff3754a]        # 0x2930ac
  35bb62:	0f 2f ce                                        	comiss xmm1,xmm6
  35bb65:	72 06                                           	jb     0x35bb6d
  35bb67:	0f 10 45 af                                     	movups xmm0,XMMWORD PTR [rbp-0x51]
  35bb6b:	eb 2e                                           	jmp    0x35bb9b
  35bb6d:	0f 28 c1                                        	movaps xmm0,xmm1
  35bb70:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  35bb74:	0f 2f c6                                        	comiss xmm0,xmm6
  35bb77:	72 06                                           	jb     0x35bb7f
  35bb79:	0f 10 45 bf                                     	movups xmm0,XMMWORD PTR [rbp-0x41]
  35bb7d:	eb 1c                                           	jmp    0x35bb9b
  35bb7f:	f3 0f 59 0d d1 75 f3 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff375d1]        # 0x293158
  35bb87:	0f 2f ce                                        	comiss xmm1,xmm6
  35bb8a:	72 06                                           	jb     0x35bb92
  35bb8c:	0f 10 45 cf                                     	movups xmm0,XMMWORD PTR [rbp-0x31]
  35bb90:	eb 09                                           	jmp    0x35bb9b
  35bb92:	0f 2f fe                                        	comiss xmm7,xmm6
  35bb95:	72 08                                           	jb     0x35bb9f
  35bb97:	0f 10 45 df                                     	movups xmm0,XMMWORD PTR [rbp-0x21]
  35bb9b:	0f 11 45 9f                                     	movups XMMWORD PTR [rbp-0x61],xmm0
  35bb9f:	45 33 c9                                        	xor    r9d,r9d
  35bba2:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  35bba6:	45 33 c0                                        	xor    r8d,r8d
  35bba9:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  35bbad:	33 d2                                           	xor    edx,edx
  35bbaf:	e8 64 f7 f7 ff                                  	call   0x2db318
  35bbb4:	48 8b c8                                        	mov    rcx,rax
  35bbb7:	e8 50 3c f9 ff                                  	call   0x2ef80c
  35bbbc:	8b 7d 7f                                        	mov    edi,DWORD PTR [rbp+0x7f]
  35bbbf:	49 8b cf                                        	mov    rcx,r15
  35bbc2:	8b 5d 77                                        	mov    ebx,DWORD PTR [rbp+0x77]
  35bbc5:	66 0f 6e d6                                     	movd   xmm2,esi
  35bbc9:	66 41 0f 6e ce                                  	movd   xmm1,r14d
  35bbce:	66 0f 6e c7                                     	movd   xmm0,edi
  35bbd2:	66 0f 6e db                                     	movd   xmm3,ebx
  35bbd6:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  35bbd9:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35bbdd:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  35bbe0:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  35bbe3:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  35bbe6:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35bbec:	e8 47 0b 00 00                                  	call   0x35c738
  35bbf1:	83 c3 fe                                        	add    ebx,0xfffffffe
  35bbf4:	66 0f 6e c3                                     	movd   xmm0,ebx
  35bbf8:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  35bbfb:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  35bbff:	f3 0f 5e c7                                     	divss  xmm0,xmm7
  35bc03:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  35bc07:	3b c3                                           	cmp    eax,ebx
  35bc09:	0f 4c d8                                        	cmovl  ebx,eax
  35bc0c:	85 db                                           	test   ebx,ebx
  35bc0e:	7e 41                                           	jle    0x35bc51
  35bc10:	48 8d 4d 9f                                     	lea    rcx,[rbp-0x61]
  35bc14:	e8 f3 3b f9 ff                                  	call   0x2ef80c
  35bc19:	8d 4f fe                                        	lea    ecx,[rdi-0x2]
  35bc1c:	66 0f 6e db                                     	movd   xmm3,ebx
  35bc20:	66 0f 6e c1                                     	movd   xmm0,ecx
  35bc24:	8d 4e 01                                        	lea    ecx,[rsi+0x1]
  35bc27:	66 0f 6e d1                                     	movd   xmm2,ecx
  35bc2b:	41 8d 4e 01                                     	lea    ecx,[r14+0x1]
  35bc2f:	66 0f 6e c9                                     	movd   xmm1,ecx
  35bc33:	49 8b cf                                        	mov    rcx,r15
  35bc36:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  35bc39:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35bc3d:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  35bc40:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  35bc43:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  35bc46:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35bc4c:	e8 e7 0a 00 00                                  	call   0x35c738
  35bc51:	4c 8d 9c 24 a8 00 00 00                         	lea    r11,[rsp+0xa8]
  35bc59:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  35bc5e:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  35bc63:	49 8b e3                                        	mov    rsp,r11
  35bc66:	41 5f                                           	pop    r15
  35bc68:	41 5e                                           	pop    r14
  35bc6a:	5f                                              	pop    rdi
  35bc6b:	5e                                              	pop    rsi
  35bc6c:	5b                                              	pop    rbx
  35bc6d:	5d                                              	pop    rbp
  35bc6e:	c3                                              	ret
