
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000387d18 <.data+0x387d18>:
  387d18:	48 8b c4                                        	mov    rax,rsp
  387d1b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  387d1f:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  387d23:	55                                              	push   rbp
  387d24:	56                                              	push   rsi
  387d25:	57                                              	push   rdi
  387d26:	41 54                                           	push   r12
  387d28:	41 55                                           	push   r13
  387d2a:	41 56                                           	push   r14
  387d2c:	41 57                                           	push   r15
  387d2e:	48 8d a8 18 fe ff ff                            	lea    rbp,[rax-0x1e8]
  387d35:	48 81 ec b0 02 00 00                            	sub    rsp,0x2b0
  387d3c:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  387d40:	4d 8b e0                                        	mov    r12,r8
  387d43:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  387d47:	48 8b f2                                        	mov    rsi,rdx
  387d4a:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  387d4f:	4c 8b e9                                        	mov    r13,rcx
  387d52:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  387d57:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  387d5f:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  387d67:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  387d6f:	e8 8c 54 fd ff                                  	call   0x35d200
  387d74:	45 33 c0                                        	xor    r8d,r8d
  387d77:	48 89 44 24 50                                  	mov    QWORD PTR [rsp+0x50],rax
  387d7c:	49 8b d5                                        	mov    rdx,r13
  387d7f:	48 8b c8                                        	mov    rcx,rax
  387d82:	4c 8b f0                                        	mov    r14,rax
  387d85:	e8 8a a8 00 00                                  	call   0x392614
  387d8a:	8b f8                                           	mov    edi,eax
  387d8c:	e8 13 af 00 00                                  	call   0x392ca4
  387d91:	f2 41 0f 10 86 00 01 00 00                      	movsd  xmm0,QWORD PTR [r14+0x100]
  387d9a:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  387d9e:	f3 44 0f 10 0d b9 b4 f0 ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffff0b4b9]        # 0x293260
  387da7:	41 b1 01                                        	mov    r9b,0x1
  387daa:	45 33 c0                                        	xor    r8d,r8d
  387dad:	f2 0f 11 45 88                                  	movsd  QWORD PTR [rbp-0x78],xmm0
  387db2:	49 8b d5                                        	mov    rdx,r13
  387db5:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  387dbc:	48 89 44 24 48                                  	mov    QWORD PTR [rsp+0x48],rax
  387dc1:	e8 d6 79 00 00                                  	call   0x38f79c
  387dc6:	e8 01 a8 00 00                                  	call   0x3925cc
  387dcb:	48 8b 0d 56 dd 07 00                            	mov    rcx,QWORD PTR [rip+0x7dd56]        # 0x405b28
  387dd2:	bb 00 00 00 00                                  	mov    ebx,0x0
  387dd7:	0f 28 f0                                        	movaps xmm6,xmm0
  387dda:	f7 81 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rcx+0x4788],0x800
  387de4:	0f 95 c3                                        	setne  bl
  387de7:	e8 84 75 00 00                                  	call   0x38f370
  387dec:	66 0f 6e cb                                     	movd   xmm1,ebx
  387df0:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  387df4:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  387df7:	0f 28 d6                                        	movaps xmm2,xmm6
  387dfa:	f3 0f 59 0d d2 b3 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff0b3d2]        # 0x2931d4
  387e02:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  387e06:	0f 28 c8                                        	movaps xmm1,xmm0
  387e09:	e8 32 45 f4 ff                                  	call   0x2cc340
  387e0e:	4c 8b c0                                        	mov    r8,rax
  387e11:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  387e15:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  387e1a:	e8 b9 7b f6 ff                                  	call   0x2ef9d8
  387e1f:	4c 8b c0                                        	mov    r8,rax
  387e22:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  387e26:	48 8d 4d f8                                     	lea    rcx,[rbp-0x8]
  387e2a:	e8 59 35 f5 ff                                  	call   0x2db388
  387e2f:	e8 98 a7 00 00                                  	call   0x3925cc
  387e34:	f3 41 0f 10 4e 28                               	movss  xmm1,DWORD PTR [r14+0x28]
  387e3a:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  387e3f:	f3 44 0f 10 25 08 54 f0 ff                      	movss  xmm12,DWORD PTR [rip+0xfffffffffff05408]        # 0x28d250
  387e48:	0f 28 d0                                        	movaps xmm2,xmm0
  387e4b:	f3 41 0f 59 cc                                  	mulss  xmm1,xmm12
  387e50:	e8 eb 44 f4 ff                                  	call   0x2cc340
  387e55:	4c 8b c0                                        	mov    r8,rax
  387e58:	48 8d 55 00                                     	lea    rdx,[rbp+0x0]
  387e5c:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  387e60:	e8 7f e9 fa ff                                  	call   0x3367e4
  387e65:	48 8b d0                                        	mov    rdx,rax
  387e68:	4c 8d 45 00                                     	lea    r8,[rbp+0x0]
  387e6c:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  387e71:	e8 12 35 f5 ff                                  	call   0x2db388
  387e76:	41 0f 28 c9                                     	movaps xmm1,xmm9
  387e7a:	48 8d 4d f8                                     	lea    rcx,[rbp-0x8]
  387e7e:	e8 fd 4b ff ff                                  	call   0x37ca80
  387e83:	45 33 c9                                        	xor    r9d,r9d
  387e86:	48 8d 4d f8                                     	lea    rcx,[rbp-0x8]
  387e8a:	45 33 c0                                        	xor    r8d,r8d
  387e8d:	8b d7                                           	mov    edx,edi
  387e8f:	e8 48 ca 00 00                                  	call   0x3948dc
  387e94:	4c 8d 4d 80                                     	lea    r9,[rbp-0x80]
  387e98:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  387ea0:	4c 8d 85 08 02 00 00                            	lea    r8,[rbp+0x208]
  387ea7:	8b d7                                           	mov    edx,edi
  387ea9:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  387eae:	e8 2d 49 03 00                                  	call   0x3bc7e0
  387eb3:	0f 57 c0                                        	xorps  xmm0,xmm0
  387eb6:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  387eba:	33 d2                                           	xor    edx,edx
  387ebc:	40 8a f8                                        	mov    dil,al
  387ebf:	0f 11 45 d0                                     	movups XMMWORD PTR [rbp-0x30],xmm0
  387ec3:	e8 0c e6 fa ff                                  	call   0x3364d4
  387ec8:	0f 10 45 d0                                     	movups xmm0,XMMWORD PTR [rbp-0x30]
  387ecc:	0f b7 45 f1                                     	movzx  eax,WORD PTR [rbp-0xf]
  387ed0:	4c 8d 45 10                                     	lea    r8,[rbp+0x10]
  387ed4:	66 89 45 31                                     	mov    WORD PTR [rbp+0x31],ax
  387ed8:	33 d2                                           	xor    edx,edx
  387eda:	8a 45 f3                                        	mov    al,BYTE PTR [rbp-0xd]
  387edd:	49 8b cd                                        	mov    rcx,r13
  387ee0:	0f 29 45 10                                     	movaps XMMWORD PTR [rbp+0x10],xmm0
  387ee4:	0f 10 45 e0                                     	movups xmm0,XMMWORD PTR [rbp-0x20]
  387ee8:	c6 45 30 00                                     	mov    BYTE PTR [rbp+0x30],0x0
  387eec:	88 45 33                                        	mov    BYTE PTR [rbp+0x33],al
  387eef:	f3 0f 7f 45 20                                  	movdqu XMMWORD PTR [rbp+0x20],xmm0
  387ef4:	e8 87 8f ff ff                                  	call   0x380e80
  387ef9:	4c 8b f8                                        	mov    r15,rax
  387efc:	80 78 20 00                                     	cmp    BYTE PTR [rax+0x20],0x0
  387f00:	0f 85 9f 00 00 00                               	jne    0x387fa5
  387f06:	48 8b 0d 1b dc 07 00                            	mov    rcx,QWORD PTR [rip+0x7dc1b]        # 0x405b28
  387f0d:	f7 81 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rcx+0x4788],0x800
  387f17:	0f 85 88 00 00 00                               	jne    0x387fa5
  387f1d:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  387f21:	e8 5e aa ff ff                                  	call   0x382984
  387f26:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  387f2b:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  387f30:	e8 9f af ff ff                                  	call   0x382ed4
  387f35:	48 8b c8                                        	mov    rcx,rax
  387f38:	e8 4b d9 fe ff                                  	call   0x375888
  387f3d:	48 8b d0                                        	mov    rdx,rax
  387f40:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  387f44:	e8 1f cd f4 ff                                  	call   0x2d4c68
  387f49:	49 8b d5                                        	mov    rdx,r13
  387f4c:	48 8d 8d 80 00 00 00                            	lea    rcx,[rbp+0x80]
  387f53:	e8 10 cd f4 ff                                  	call   0x2d4c68
  387f58:	48 8b d6                                        	mov    rdx,rsi
  387f5b:	4c 89 a5 f8 00 00 00                            	mov    QWORD PTR [rbp+0xf8],r12
  387f62:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  387f69:	e8 02 cd f4 ff                                  	call   0x2d4c70
  387f6e:	48 8d 0d 7b 0f ec ff                            	lea    rcx,[rip+0xffffffffffec0f7b]        # 0x248ef0
  387f75:	e8 82 12 00 00                                  	call   0x3891fc
  387f7a:	48 8d 0d 6f 0f ec ff                            	lea    rcx,[rip+0xffffffffffec0f6f]        # 0x248ef0
  387f81:	48 8d 50 ff                                     	lea    rdx,[rax-0x1]
  387f85:	e8 2e ae ff ff                                  	call   0x382db8
  387f8a:	48 8d 55 60                                     	lea    rdx,[rbp+0x60]
  387f8e:	48 8d 48 48                                     	lea    rcx,[rax+0x48]
  387f92:	e8 39 a3 ff ff                                  	call   0x3822d0
  387f97:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  387f9b:	41 c6 47 20 01                                  	mov    BYTE PTR [r15+0x20],0x1
  387fa0:	e8 8b e7 fa ff                                  	call   0x336730
  387fa5:	48 8b 05 7c db 07 00                            	mov    rax,QWORD PTR [rip+0x7db7c]        # 0x405b28
  387fac:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  387fb0:	f3 0f 10 3d 64 5b f0 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff05b64]        # 0x28db1c
  387fb8:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  387fc2:	0f 84 f5 00 00 00                               	je     0x3880bd
  387fc8:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  387fcc:	e8 b3 a9 ff ff                                  	call   0x382984
  387fd1:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  387fd6:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  387fdb:	e8 80 af ff ff                                  	call   0x382f60
  387fe0:	48 8b c8                                        	mov    rcx,rax
  387fe3:	e8 a0 d8 fe ff                                  	call   0x375888
  387fe8:	48 8b d0                                        	mov    rdx,rax
  387feb:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  387fef:	e8 74 cc f4 ff                                  	call   0x2d4c68
  387ff4:	49 8b d5                                        	mov    rdx,r13
  387ff7:	48 8d 8d 80 00 00 00                            	lea    rcx,[rbp+0x80]
  387ffe:	e8 65 cc f4 ff                                  	call   0x2d4c68
  388003:	48 8b d6                                        	mov    rdx,rsi
  388006:	4c 89 a5 f8 00 00 00                            	mov    QWORD PTR [rbp+0xf8],r12
  38800d:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  388014:	e8 57 cc f4 ff                                  	call   0x2d4c70
  388019:	f3 0f 10 0d c7 0e ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec0ec7]        # 0x248ee8
  388021:	0f 57 c0                                        	xorps  xmm0,xmm0
  388024:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  388028:	e8 d7 2b 01 00                                  	call   0x39ac04
  38802d:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  388032:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  388037:	e8 b8 08 ff ff                                  	call   0x3788f4
  38803c:	f3 0f 10 05 a4 0e ec ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffec0ea4]        # 0x248ee8
  388044:	f3 0f 59 05 6c b1 f0 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff0b16c]        # 0x2931b8
  38804c:	f3 0f 10 70 04                                  	movss  xmm6,DWORD PTR [rax+0x4]
  388051:	f3 41 0f 59 c4                                  	mulss  xmm0,xmm12
  388056:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  38805a:	e8 a1 51 fd ff                                  	call   0x35d200
  38805f:	49 8b d5                                        	mov    rdx,r13
  388062:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  388066:	f3 0f 11 b0 04 01 00 00                         	movss  DWORD PTR [rax+0x104],xmm6
  38806e:	e8 59 42 f4 ff                                  	call   0x2cc2cc
  388073:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  388077:	48 8b d8                                        	mov    rbx,rax
  38807a:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  38807f:	e8 18 af ff ff                                  	call   0x382f9c
  388084:	48 8b c8                                        	mov    rcx,rax
  388087:	e8 80 df fe ff                                  	call   0x37600c
  38808c:	48 8b d0                                        	mov    rdx,rax
  38808f:	48 8b cb                                        	mov    rcx,rbx
  388092:	e8 15 57 f4 ff                                  	call   0x2cd7ac
  388097:	48 8b c8                                        	mov    rcx,rax
  38809a:	e8 4d 57 f4 ff                                  	call   0x2cd7ec
  38809f:	48 8b c8                                        	mov    rcx,rax
  3880a2:	48 8d 55 60                                     	lea    rdx,[rbp+0x60]
  3880a6:	e8 b9 f5 ff ff                                  	call   0x387664
  3880ab:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3880af:	e8 40 44 f4 ff                                  	call   0x2cc4f4
  3880b4:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  3880b8:	e8 73 e6 fa ff                                  	call   0x336730
  3880bd:	f3 44 0f 10 1d 8e 51 f0 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff0518e]        # 0x28d254
  3880c6:	40 84 ff                                        	test   dil,dil
  3880c9:	74 1d                                           	je     0x3880e8
  3880cb:	f3 41 0f 10 47 0c                               	movss  xmm0,DWORD PTR [r15+0xc]
  3880d1:	41 0f 2e c2                                     	ucomiss xmm0,xmm10
  3880d5:	7a 08                                           	jp     0x3880df
  3880d7:	75 06                                           	jne    0x3880df
  3880d9:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3880dd:	eb 03                                           	jmp    0x3880e2
  3880df:	0f 57 c0                                        	xorps  xmm0,xmm0
  3880e2:	f3 41 0f 11 47 0c                               	movss  DWORD PTR [r15+0xc],xmm0
  3880e8:	f3 41 0f 10 47 0c                               	movss  xmm0,DWORD PTR [r15+0xc]
  3880ee:	41 0f 2e c2                                     	ucomiss xmm0,xmm10
  3880f2:	7a 07                                           	jp     0x3880fb
  3880f4:	75 05                                           	jne    0x3880fb
  3880f6:	45 33 c9                                        	xor    r9d,r9d
  3880f9:	eb 03                                           	jmp    0x3880fe
  3880fb:	41 b1 01                                        	mov    r9b,0x1
  3880fe:	f3 0f 10 35 ae b0 f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff0b0ae]        # 0x2931b4
  388106:	41 0f 28 d3                                     	movaps xmm2,xmm11
  38810a:	f3 41 0f 10 07                                  	movss  xmm0,DWORD PTR [r15]
  38810f:	0f 57 c9                                        	xorps  xmm1,xmm1
  388112:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388118:	e8 2b dd fa ff                                  	call   0x335e48
  38811d:	f3 41 0f 10 4f 0c                               	movss  xmm1,DWORD PTR [r15+0xc]
  388123:	41 0f 2e ca                                     	ucomiss xmm1,xmm10
  388127:	f3 41 0f 11 07                                  	movss  DWORD PTR [r15],xmm0
  38812c:	7a 07                                           	jp     0x388135
  38812e:	75 05                                           	jne    0x388135
  388130:	45 33 c9                                        	xor    r9d,r9d
  388133:	eb 03                                           	jmp    0x388138
  388135:	41 b1 01                                        	mov    r9b,0x1
  388138:	f3 0f 10 15 e8 12 f2 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff212e8]        # 0x2a9428
  388140:	f3 0f 10 0d dc 12 f2 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff212dc]        # 0x2a9424
  388148:	f3 41 0f 10 47 04                               	movss  xmm0,DWORD PTR [r15+0x4]
  38814e:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388154:	e8 ef dc fa ff                                  	call   0x335e48
  388159:	f3 41 0f 10 37                                  	movss  xmm6,DWORD PTR [r15]
  38815e:	41 0f 28 cb                                     	movaps xmm1,xmm11
  388162:	b9 01 00 00 00                                  	mov    ecx,0x1
  388167:	f3 41 0f 11 47 04                               	movss  DWORD PTR [r15+0x4],xmm0
  38816d:	e8 26 a1 00 00                                  	call   0x392298
  388172:	8b d0                                           	mov    edx,eax
  388174:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  388178:	e8 57 e3 fa ff                                  	call   0x3364d4
  38817d:	41 0f 28 cb                                     	movaps xmm1,xmm11
  388181:	b9 02 00 00 00                                  	mov    ecx,0x2
  388186:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  388189:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  38818f:	e8 04 a1 00 00                                  	call   0x392298
  388194:	8b d0                                           	mov    edx,eax
  388196:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  38819a:	e8 35 e3 fa ff                                  	call   0x3364d4
  38819f:	0f 28 de                                        	movaps xmm3,xmm6
  3881a2:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3881a7:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3881ab:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3881af:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3881b2:	f3 0f 7f 45 c0                                  	movdqu XMMWORD PTR [rbp-0x40],xmm0
  3881b7:	e8 e8 13 ff ff                                  	call   0x3795a4
  3881bc:	4c 8b 44 24 48                                  	mov    r8,QWORD PTR [rsp+0x48]
  3881c1:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3881c5:	b9 06 00 00 00                                  	mov    ecx,0x6
  3881ca:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3881cd:	f3 41 0f 7f 47 10                               	movdqu XMMWORD PTR [r15+0x10],xmm0
  3881d3:	49 8b 9e 98 02 00 00                            	mov    rbx,QWORD PTR [r14+0x298]
  3881da:	f3 41 0f 10 70 44                               	movss  xmm6,DWORD PTR [r8+0x44]
  3881e0:	e8 b3 a0 00 00                                  	call   0x392298
  3881e5:	f3 44 0f 11 5c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm11
  3881ec:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  3881f1:	44 8b c8                                        	mov    r9d,eax
  3881f4:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3881fc:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  388201:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388207:	48 8b cb                                        	mov    rcx,rbx
  38820a:	e8 39 8f 01 00                                  	call   0x3a1148
  38820f:	e8 34 0b 00 00                                  	call   0x388d48
  388214:	49 8d 4f 10                                     	lea    rcx,[r15+0x10]
  388218:	e8 ef 75 f6 ff                                  	call   0x2ef80c
  38821d:	f3 0f 10 74 24 60                               	movss  xmm6,DWORD PTR [rsp+0x60]
  388223:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  388228:	48 8b 7c 24 48                                  	mov    rdi,QWORD PTR [rsp+0x48]
  38822d:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  388232:	8b d8                                           	mov    ebx,eax
  388234:	f3 0f 5c 77 3c                                  	subss  xmm6,DWORD PTR [rdi+0x3c]
  388239:	f3 0f 5c 35 63 af f0 ff                         	subss  xmm6,DWORD PTR [rip+0xfffffffffff0af63]        # 0x2931a4
  388241:	e8 ae 06 ff ff                                  	call   0x3788f4
  388246:	0f 28 ce                                        	movaps xmm1,xmm6
  388249:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  38824d:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  388252:	f3 0f 5c 15 ea ae f0 ff                         	subss  xmm2,DWORD PTR [rip+0xfffffffffff0aeea]        # 0x293144
  38825a:	e8 e1 40 f4 ff                                  	call   0x2cc340
  38825f:	f3 0f 10 05 55 ae f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff0ae55]        # 0x2930bc
  388267:	41 b9 03 00 00 00                               	mov    r9d,0x3
  38826d:	49 8b 8e 98 02 00 00                            	mov    rcx,QWORD PTR [r14+0x298]
  388274:	44 8b c3                                        	mov    r8d,ebx
  388277:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  38827d:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  388280:	e8 7b f1 01 00                                  	call   0x3a7400
  388285:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  38828a:	e8 d1 0a 00 00                                  	call   0x388d60
  38828f:	f3 41 0f 10 47 04                               	movss  xmm0,DWORD PTR [r15+0x4]
  388295:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  388298:	e8 bf 09 00 00                                  	call   0x388c5c
  38829d:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3882a1:	e8 ba c2 f4 ff                                  	call   0x2d4560
  3882a6:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3882aa:	e8 c5 fc f4 ff                                  	call   0x2d7f74
  3882af:	49 8b cc                                        	mov    rcx,r12
  3882b2:	33 db                                           	xor    ebx,ebx
  3882b4:	e8 3b 11 f5 ff                                  	call   0x2d93f4
  3882b9:	48 85 c0                                        	test   rax,rax
  3882bc:	74 64                                           	je     0x388322
  3882be:	4c 8b c3                                        	mov    r8,rbx
  3882c1:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  3882c5:	49 8b cc                                        	mov    rcx,r12
  3882c8:	e8 5f ca f4 ff                                  	call   0x2d4d2c
  3882cd:	48 8b c8                                        	mov    rcx,rax
  3882d0:	e8 9b ca f4 ff                                  	call   0x2d4d70
  3882d5:	84 c0                                           	test   al,al
  3882d7:	74 39                                           	je     0x388312
  3882d9:	48 8b d3                                        	mov    rdx,rbx
  3882dc:	48 8b ce                                        	mov    rcx,rsi
  3882df:	e8 3c ca f4 ff                                  	call   0x2d4d20
  3882e4:	48 8b d0                                        	mov    rdx,rax
  3882e7:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3882eb:	e8 f4 d2 f4 ff                                  	call   0x2d55e4
  3882f0:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  3882f4:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3882f9:	e8 16 ad ff ff                                  	call   0x383014
  3882fe:	48 8b c8                                        	mov    rcx,rax
  388301:	e8 ea 1c ff ff                                  	call   0x379ff0
  388306:	48 8b d0                                        	mov    rdx,rax
  388309:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  38830d:	e8 f2 d2 f4 ff                                  	call   0x2d5604
  388312:	49 8b cc                                        	mov    rcx,r12
  388315:	48 ff c3                                        	inc    rbx
  388318:	e8 d7 10 f5 ff                                  	call   0x2d93f4
  38831d:	48 3b d8                                        	cmp    rbx,rax
  388320:	72 9c                                           	jb     0x3882be
  388322:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388326:	e8 69 03 f5 ff                                  	call   0x2d8694
  38832b:	84 c0                                           	test   al,al
  38832d:	75 19                                           	jne    0x388348
  38832f:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388333:	e8 a0 07 f5 ff                                  	call   0x2d8ad8
  388338:	45 33 c0                                        	xor    r8d,r8d
  38833b:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  38833f:	48 8d 50 fe                                     	lea    rdx,[rax-0x2]
  388343:	e8 c4 08 00 00                                  	call   0x388c0c
  388348:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  38834c:	e8 9b 54 f4 ff                                  	call   0x2cd7ec
  388351:	48 8b d0                                        	mov    rdx,rax
  388354:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  38835b:	41 b1 01                                        	mov    r9b,0x1
  38835e:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  388363:	45 33 c0                                        	xor    r8d,r8d
  388366:	e8 31 74 00 00                                  	call   0x38f79c
  38836b:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  388370:	48 8b d8                                        	mov    rbx,rax
  388373:	e8 f8 05 ff ff                                  	call   0x378970
  388378:	f3 0f 10 4f 3c                                  	movss  xmm1,DWORD PTR [rdi+0x3c]
  38837d:	f3 44 0f 10 05 d2 ad f0 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff0add2]        # 0x293158
  388386:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  38838b:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  38838f:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  388393:	f3 0f 5c c7                                     	subss  xmm0,xmm7
  388397:	0f 2f c8                                        	comiss xmm1,xmm0
  38839a:	0f 86 07 01 00 00                               	jbe    0x3884a7
  3883a0:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3883a4:	33 ff                                           	xor    edi,edi
  3883a6:	e8 2d 07 f5 ff                                  	call   0x2d8ad8
  3883ab:	48 83 f8 01                                     	cmp    rax,0x1
  3883af:	0f 84 f2 00 00 00                               	je     0x3884a7
  3883b5:	4c 8b 74 24 48                                  	mov    r14,QWORD PTR [rsp+0x48]
  3883ba:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3883bf:	e8 ac 05 ff ff                                  	call   0x378970
  3883c4:	f3 41 0f 10 4e 3c                               	movss  xmm1,DWORD PTR [r14+0x3c]
  3883ca:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  3883ce:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  3883d3:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3883d7:	48 63 f7                                        	movsxd rsi,edi
  3883da:	45 33 c0                                        	xor    r8d,r8d
  3883dd:	0f 28 f0                                        	movaps xmm6,xmm0
  3883e0:	f3 0f 5c f1                                     	subss  xmm6,xmm1
  3883e4:	4c 8d 4e 01                                     	lea    r9,[rsi+0x1]
  3883e8:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  3883ec:	e8 a7 10 f5 ff                                  	call   0x2d9498
  3883f1:	48 8b c8                                        	mov    rcx,rax
  3883f4:	e8 f3 53 f4 ff                                  	call   0x2cd7ec
  3883f9:	48 8b d0                                        	mov    rdx,rax
  3883fc:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  388403:	41 b1 01                                        	mov    r9b,0x1
  388406:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  38840b:	45 33 c0                                        	xor    r8d,r8d
  38840e:	e8 89 73 00 00                                  	call   0x38f79c
  388413:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  388417:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  38841b:	0f 2f c6                                        	comiss xmm0,xmm6
  38841e:	0f 97 c3                                        	seta   bl
  388421:	e8 ce 40 f4 ff                                  	call   0x2cc4f4
  388426:	84 db                                           	test   bl,bl
  388428:	74 5e                                           	je     0x388488
  38842a:	45 33 c0                                        	xor    r8d,r8d
  38842d:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388431:	48 8b d6                                        	mov    rdx,rsi
  388434:	e8 d3 07 00 00                                  	call   0x388c0c
  388439:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  38843d:	e8 96 06 f5 ff                                  	call   0x2d8ad8
  388442:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388446:	48 8d 58 ff                                     	lea    rbx,[rax-0x1]
  38844a:	48 8b d3                                        	mov    rdx,rbx
  38844d:	e8 7a c8 f4 ff                                  	call   0x2d4ccc
  388452:	80 38 2c                                        	cmp    BYTE PTR [rax],0x2c
  388455:	75 0f                                           	jne    0x388466
  388457:	45 33 c0                                        	xor    r8d,r8d
  38845a:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  38845e:	48 8b d3                                        	mov    rdx,rbx
  388461:	e8 a6 07 00 00                                  	call   0x388c0c
  388466:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  38846a:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  38846f:	e8 b8 ab ff ff                                  	call   0x38302c
  388474:	48 8b c8                                        	mov    rcx,rax
  388477:	e8 74 1b ff ff                                  	call   0x379ff0
  38847c:	48 8b d0                                        	mov    rdx,rax
  38847f:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388483:	e8 24 53 f4 ff                                  	call   0x2cd7ac
  388488:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  38848c:	ff c7                                           	inc    edi
  38848e:	e8 45 06 f5 ff                                  	call   0x2d8ad8
  388493:	48 ff c8                                        	dec    rax
  388496:	48 63 cf                                        	movsxd rcx,edi
  388499:	48 3b c8                                        	cmp    rcx,rax
  38849c:	0f 82 18 ff ff ff                               	jb     0x3883ba
  3884a2:	4c 8b 74 24 50                                  	mov    r14,QWORD PTR [rsp+0x50]
  3884a7:	49 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [r14+0x298]
  3884ae:	33 d2                                           	xor    edx,edx
  3884b0:	49 8b cd                                        	mov    rcx,r13
  3884b3:	e8 98 97 00 00                                  	call   0x391c50
  3884b8:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3884bc:	b9 01 00 00 00                                  	mov    ecx,0x1
  3884c1:	48 8b f8                                        	mov    rdi,rax
  3884c4:	e8 cf 9d 00 00                                  	call   0x392298
  3884c9:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3884ce:	8b d8                                           	mov    ebx,eax
  3884d0:	e8 5f 04 ff ff                                  	call   0x378934
  3884d5:	48 8b 0d 4c d6 07 00                            	mov    rcx,QWORD PTR [rip+0x7d64c]        # 0x405b28
  3884dc:	0f 28 d0                                        	movaps xmm2,xmm0
  3884df:	f3 41 0f 59 d4                                  	mulss  xmm2,xmm12
  3884e4:	0f 57 c9                                        	xorps  xmm1,xmm1
  3884e7:	f3 0f 10 81 30 3c 00 00                         	movss  xmm0,DWORD PTR [rcx+0x3c30]
  3884ef:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3884f4:	f3 41 0f 59 c4                                  	mulss  xmm0,xmm12
  3884f9:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3884fd:	e8 3e 3e f4 ff                                  	call   0x2cc340
  388502:	4c 8b c0                                        	mov    r8,rax
  388505:	48 8d 55 f8                                     	lea    rdx,[rbp-0x8]
  388509:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  38850d:	e8 c6 74 f6 ff                                  	call   0x2ef9d8
  388512:	48 8b d0                                        	mov    rdx,rax
  388515:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  38851a:	4d 8b cd                                        	mov    r9,r13
  38851d:	44 8b c3                                        	mov    r8d,ebx
  388520:	48 8b ce                                        	mov    rcx,rsi
  388523:	e8 94 ac 01 00                                  	call   0x3a31bc
  388528:	4d 8b b6 98 02 00 00                            	mov    r14,QWORD PTR [r14+0x298]
  38852f:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388533:	e8 b4 52 f4 ff                                  	call   0x2cd7ec
  388538:	48 8b c8                                        	mov    rcx,rax
  38853b:	33 d2                                           	xor    edx,edx
  38853d:	e8 0e 97 00 00                                  	call   0x391c50
  388542:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388546:	48 8b f0                                        	mov    rsi,rax
  388549:	e8 9e 52 f4 ff                                  	call   0x2cd7ec
  38854e:	41 0f 28 cb                                     	movaps xmm1,xmm11
  388552:	b9 01 00 00 00                                  	mov    ecx,0x1
  388557:	48 8b f8                                        	mov    rdi,rax
  38855a:	e8 39 9d 00 00                                  	call   0x392298
  38855f:	4c 8b 44 24 48                                  	mov    r8,QWORD PTR [rsp+0x48]
  388564:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  388569:	49 83 c0 3c                                     	add    r8,0x3c
  38856d:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  388572:	8b d8                                           	mov    ebx,eax
  388574:	e8 5f 74 f6 ff                                  	call   0x2ef9d8
  388579:	48 8b d0                                        	mov    rdx,rax
  38857c:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  388581:	4c 8b cf                                        	mov    r9,rdi
  388584:	44 8b c3                                        	mov    r8d,ebx
  388587:	49 8b ce                                        	mov    rcx,r14
  38858a:	e8 2d ac 01 00                                  	call   0x3a31bc
  38858f:	f3 41 0f 10 07                                  	movss  xmm0,DWORD PTR [r15]
  388594:	0f 2f 05 fd aa f0 ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffff0aafd]        # 0x293098
  38859b:	0f 86 e9 03 00 00                               	jbe    0x38898a
  3885a1:	0f 57 d2                                        	xorps  xmm2,xmm2
  3885a4:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3885a8:	0f 57 c9                                        	xorps  xmm1,xmm1
  3885ab:	e8 90 3d f4 ff                                  	call   0x2cc340
  3885b0:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  3885b4:	b9 0e 00 00 00                                  	mov    ecx,0xe
  3885b9:	e8 a2 06 01 00                                  	call   0x398c60
  3885be:	33 d2                                           	xor    edx,edx
  3885c0:	41 b8 af 00 00 00                               	mov    r8d,0xaf
  3885c6:	49 8b cd                                        	mov    rcx,r13
  3885c9:	e8 d6 49 00 00                                  	call   0x38cfa4
  3885ce:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3885d3:	e8 98 03 ff ff                                  	call   0x378970
  3885d8:	4c 8b 74 24 48                                  	mov    r14,QWORD PTR [rsp+0x48]
  3885dd:	49 8b cc                                        	mov    rcx,r12
  3885e0:	f3 45 0f 10 07                                  	movss  xmm8,DWORD PTR [r15]
  3885e5:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3885e9:	f3 41 0f 10 7e 44                               	movss  xmm7,DWORD PTR [r14+0x44]
  3885ef:	e8 00 0e f5 ff                                  	call   0x2d93f4
  3885f4:	48 8b c8                                        	mov    rcx,rax
  3885f7:	ba 19 00 00 00                                  	mov    edx,0x19
  3885fc:	e8 9b 7b ff ff                                  	call   0x38019c
  388601:	66 0f 6e f0                                     	movd   xmm6,eax
  388605:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  388608:	e8 bf 9f 00 00                                  	call   0x3925cc
  38860d:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  388612:	f3 0f 59 f0                                     	mulss  xmm6,xmm0
  388616:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  38861a:	41 0f 28 c9                                     	movaps xmm1,xmm9
  38861e:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  388622:	f3 41 0f 59 f0                                  	mulss  xmm6,xmm8
  388627:	0f 28 d6                                        	movaps xmm2,xmm6
  38862a:	e8 11 3d f4 ff                                  	call   0x2cc340
  38862f:	33 d2                                           	xor    edx,edx
  388631:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  388636:	e8 31 36 01 00                                  	call   0x39bc6c
  38863b:	f3 0f 10 54 24 64                               	movss  xmm2,DWORD PTR [rsp+0x64]
  388641:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  388646:	f3 0f 10 4c 24 58                               	movss  xmm1,DWORD PTR [rsp+0x58]
  38864c:	e8 ef 3c f4 ff                                  	call   0x2cc340
  388651:	33 d2                                           	xor    edx,edx
  388653:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  388658:	e8 c3 34 01 00                                  	call   0x39bb20
  38865d:	e8 6a a8 00 00                                  	call   0x392ecc
  388662:	f3 41 0f 10 76 44                               	movss  xmm6,DWORD PTR [r14+0x44]
  388668:	41 0f 28 cb                                     	movaps xmm1,xmm11
  38866c:	b9 04 00 00 00                                  	mov    ecx,0x4
  388671:	48 8b f0                                        	mov    rsi,rax
  388674:	e8 1f 9c 00 00                                  	call   0x392298
  388679:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  38867e:	8b f8                                           	mov    edi,eax
  388680:	e8 8f a8 00 00                                  	call   0x392f14
  388685:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  388689:	48 8b d8                                        	mov    rbx,rax
  38868c:	e8 67 a8 00 00                                  	call   0x392ef8
  388691:	48 8b d0                                        	mov    rdx,rax
  388694:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  388699:	4c 8b c3                                        	mov    r8,rbx
  38869c:	e8 37 73 f6 ff                                  	call   0x2ef9d8
  3886a1:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3886a5:	48 8b d8                                        	mov    rbx,rax
  3886a8:	e8 4b a8 00 00                                  	call   0x392ef8
  3886ad:	41 bd c0 00 00 00                               	mov    r13d,0xc0
  3886b3:	48 8b d0                                        	mov    rdx,rax
  3886b6:	44 89 6c 24 28                                  	mov    DWORD PTR [rsp+0x28],r13d
  3886bb:	44 8b cf                                        	mov    r9d,edi
  3886be:	4c 8b c3                                        	mov    r8,rbx
  3886c1:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3886c7:	48 8b ce                                        	mov    rcx,rsi
  3886ca:	e8 75 8b 01 00                                  	call   0x3a1244
  3886cf:	e8 f8 a7 00 00                                  	call   0x392ecc
  3886d4:	f3 41 0f 10 76 44                               	movss  xmm6,DWORD PTR [r14+0x44]
  3886da:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3886de:	b9 06 00 00 00                                  	mov    ecx,0x6
  3886e3:	48 8b f0                                        	mov    rsi,rax
  3886e6:	e8 ad 9b 00 00                                  	call   0x392298
  3886eb:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3886f0:	8b f8                                           	mov    edi,eax
  3886f2:	e8 1d a8 00 00                                  	call   0x392f14
  3886f7:	48 8b d8                                        	mov    rbx,rax
  3886fa:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3886fe:	e8 f5 a7 00 00                                  	call   0x392ef8
  388703:	48 8b d0                                        	mov    rdx,rax
  388706:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  38870b:	4c 8b c3                                        	mov    r8,rbx
  38870e:	e8 c5 72 f6 ff                                  	call   0x2ef9d8
  388713:	f3 44 0f 11 5c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm11
  38871a:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  38871f:	4c 8b c0                                        	mov    r8,rax
  388722:	44 89 6c 24 28                                  	mov    DWORD PTR [rsp+0x28],r13d
  388727:	44 8b cf                                        	mov    r9d,edi
  38872a:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388730:	48 8b ce                                        	mov    rcx,rsi
  388733:	e8 10 8a 01 00                                  	call   0x3a1148
  388738:	48 8b 74 24 50                                  	mov    rsi,QWORD PTR [rsp+0x50]
  38873d:	41 bd 06 00 00 00                               	mov    r13d,0x6
  388743:	41 0f 28 cb                                     	movaps xmm1,xmm11
  388747:	41 8b cd                                        	mov    ecx,r13d
  38874a:	48 8b be 98 02 00 00                            	mov    rdi,QWORD PTR [rsi+0x298]
  388751:	e8 42 9b 00 00                                  	call   0x392298
  388756:	f3 0f 10 74 24 64                               	movss  xmm6,DWORD PTR [rsp+0x64]
  38875c:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  388761:	f3 0f 10 4c 24 58                               	movss  xmm1,DWORD PTR [rsp+0x58]
  388767:	0f 28 d6                                        	movaps xmm2,xmm6
  38876a:	8b d8                                           	mov    ebx,eax
  38876c:	e8 cf 3b f4 ff                                  	call   0x2cc340
  388771:	f3 41 0f 5c 76 44                               	subss  xmm6,DWORD PTR [r14+0x44]
  388777:	f3 0f 10 4c 24 58                               	movss  xmm1,DWORD PTR [rsp+0x58]
  38877d:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  388782:	0f 28 d6                                        	movaps xmm2,xmm6
  388785:	e8 b6 3b f4 ff                                  	call   0x2cc340
  38878a:	44 8b cb                                        	mov    r9d,ebx
  38878d:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  388794:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  388799:	48 8b cf                                        	mov    rcx,rdi
  38879c:	48 8d 54 24 48                                  	lea    rdx,[rsp+0x48]
  3887a1:	e8 4e 7a 01 00                                  	call   0x3a01f4
  3887a6:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3887ad:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3887b1:	41 8b cd                                        	mov    ecx,r13d
  3887b4:	e8 df 9a 00 00                                  	call   0x392298
  3887b9:	0f 57 d2                                        	xorps  xmm2,xmm2
  3887bc:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3887c1:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3887c5:	8b f8                                           	mov    edi,eax
  3887c7:	e8 74 3b f4 ff                                  	call   0x2cc340
  3887cc:	4c 8b c0                                        	mov    r8,rax
  3887cf:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3887d4:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3887d8:	e8 07 e0 fa ff                                  	call   0x3367e4
  3887dd:	f3 0f 10 54 24 64                               	movss  xmm2,DWORD PTR [rsp+0x64]
  3887e3:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3887e8:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3887ee:	48 8b d8                                        	mov    rbx,rax
  3887f1:	f3 41 0f 5c 56 44                               	subss  xmm2,DWORD PTR [r14+0x44]
  3887f7:	f3 41 0f 5c cb                                  	subss  xmm1,xmm11
  3887fc:	e8 3f 3b f4 ff                                  	call   0x2cc340
  388801:	44 8b cf                                        	mov    r9d,edi
  388804:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  38880b:	4c 8b c3                                        	mov    r8,rbx
  38880e:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  388813:	48 8b ce                                        	mov    rcx,rsi
  388816:	e8 d9 79 01 00                                  	call   0x3a01f4
  38881b:	e8 e0 49 fd ff                                  	call   0x35d200
  388820:	48 8b c8                                        	mov    rcx,rax
  388823:	e8 38 69 00 00                                  	call   0x38f160
  388828:	e8 d3 49 fd ff                                  	call   0x35d200
  38882d:	48 8b c8                                        	mov    rcx,rax
  388830:	e8 87 68 00 00                                  	call   0x38f0bc
  388835:	33 c9                                           	xor    ecx,ecx
  388837:	e8 b0 bf 00 00                                  	call   0x3947ec
  38883c:	45 33 ed                                        	xor    r13d,r13d
  38883f:	84 c0                                           	test   al,al
  388841:	75 1a                                           	jne    0x38885d
  388843:	33 d2                                           	xor    edx,edx
  388845:	33 c9                                           	xor    ecx,ecx
  388847:	e8 98 bb 00 00                                  	call   0x3943e4
  38884c:	84 c0                                           	test   al,al
  38884e:	74 0d                                           	je     0x38885d
  388850:	44 38 ad 08 02 00 00                            	cmp    BYTE PTR [rbp+0x208],r13b
  388857:	75 04                                           	jne    0x38885d
  388859:	45 89 6f 0c                                     	mov    DWORD PTR [r15+0xc],r13d
  38885d:	f3 41 0f 10 46 44                               	movss  xmm0,DWORD PTR [r14+0x44]
  388863:	e8 e4 2b 01 00                                  	call   0x39b44c
  388868:	e8 23 64 00 00                                  	call   0x38ec90
  38886d:	49 8b cc                                        	mov    rcx,r12
  388870:	41 8b fd                                        	mov    edi,r13d
  388873:	e8 7c 0b f5 ff                                  	call   0x2d93f4
  388878:	4c 8b b5 f8 01 00 00                            	mov    r14,QWORD PTR [rbp+0x1f8]
  38887f:	48 85 c0                                        	test   rax,rax
  388882:	0f 84 bf 00 00 00                               	je     0x388947
  388888:	e8 a7 a6 00 00                                  	call   0x392f34
  38888d:	0f 28 f0                                        	movaps xmm6,xmm0
  388890:	e8 37 9d 00 00                                  	call   0x3925cc
  388895:	0f 28 d0                                        	movaps xmm2,xmm0
  388898:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  38889d:	0f 28 ce                                        	movaps xmm1,xmm6
  3888a0:	e8 9b 3a f4 ff                                  	call   0x2cc340
  3888a5:	48 63 f7                                        	movsxd rsi,edi
  3888a8:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  3888ac:	4c 8b c6                                        	mov    r8,rsi
  3888af:	49 8b cc                                        	mov    rcx,r12
  3888b2:	e8 75 c4 f4 ff                                  	call   0x2d4d2c
  3888b7:	48 8b c8                                        	mov    rcx,rax
  3888ba:	e8 b1 c4 f4 ff                                  	call   0x2d4d70
  3888bf:	48 8b d6                                        	mov    rdx,rsi
  3888c2:	49 8b ce                                        	mov    rcx,r14
  3888c5:	8a d8                                           	mov    bl,al
  3888c7:	e8 54 c4 f4 ff                                  	call   0x2d4d20
  3888cc:	48 8b c8                                        	mov    rcx,rax
  3888cf:	e8 18 4f f4 ff                                  	call   0x2cd7ec
  3888d4:	48 8b c8                                        	mov    rcx,rax
  3888d7:	44 88 6c 24 28                                  	mov    BYTE PTR [rsp+0x28],r13b
  3888dc:	48 8d 05 45 4a f0 ff                            	lea    rax,[rip+0xfffffffffff04a45]        # 0x28d328
  3888e3:	45 33 c0                                        	xor    r8d,r8d
  3888e6:	4c 8d 4c 24 50                                  	lea    r9,[rsp+0x50]
  3888eb:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3888f0:	8a d3                                           	mov    dl,bl
  3888f2:	e8 b1 af 03 00                                  	call   0x3c38a8
  3888f7:	84 c0                                           	test   al,al
  3888f9:	74 36                                           	je     0x388931
  3888fb:	4c 8b c6                                        	mov    r8,rsi
  3888fe:	48 8d 55 48                                     	lea    rdx,[rbp+0x48]
  388902:	49 8b cc                                        	mov    rcx,r12
  388905:	e8 22 c4 f4 ff                                  	call   0x2d4d2c
  38890a:	48 8b c8                                        	mov    rcx,rax
  38890d:	e8 5e c4 f4 ff                                  	call   0x2d4d70
  388912:	8a d8                                           	mov    bl,al
  388914:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  388919:	4c 8b c6                                        	mov    r8,rsi
  38891c:	49 8b cc                                        	mov    rcx,r12
  38891f:	80 f3 01                                        	xor    bl,0x1
  388922:	e8 05 c4 f4 ff                                  	call   0x2d4d2c
  388927:	48 8b c8                                        	mov    rcx,rax
  38892a:	8a d3                                           	mov    dl,bl
  38892c:	e8 6b c2 f4 ff                                  	call   0x2d4b9c
  388931:	49 8b cc                                        	mov    rcx,r12
  388934:	ff c7                                           	inc    edi
  388936:	e8 b9 0a f5 ff                                  	call   0x2d93f4
  38893b:	48 63 cf                                        	movsxd rcx,edi
  38893e:	48 3b c8                                        	cmp    rcx,rax
  388941:	0f 82 41 ff ff ff                               	jb     0x388888
  388947:	49 8b cc                                        	mov    rcx,r12
  38894a:	e8 a5 0a f5 ff                                  	call   0x2d93f4
  38894f:	48 83 f8 05                                     	cmp    rax,0x5
  388953:	76 1f                                           	jbe    0x388974
  388955:	f3 0f 10 15 43 a8 f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff0a843]        # 0x2931a0
  38895d:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  388962:	0f 57 c9                                        	xorps  xmm1,xmm1
  388965:	e8 d6 39 f4 ff                                  	call   0x2cc340
  38896a:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  38896f:	e8 d8 74 03 00                                  	call   0x3bfe4c
  388974:	e8 83 85 00 00                                  	call   0x390efc
  388979:	e8 16 80 00 00                                  	call   0x390994
  38897e:	b9 01 00 00 00                                  	mov    ecx,0x1
  388983:	e8 e4 ff 00 00                                  	call   0x39896c
  388988:	eb 07                                           	jmp    0x388991
  38898a:	4c 8b b5 f8 01 00 00                            	mov    r14,QWORD PTR [rbp+0x1f8]
  388991:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  388995:	e8 5a 3b f4 ff                                  	call   0x2cc4f4
  38899a:	49 8b ce                                        	mov    rcx,r14
  38899d:	e8 de c0 f4 ff                                  	call   0x2d4a80
  3889a2:	4c 8d 9c 24 b0 02 00 00                         	lea    r11,[rsp+0x2b0]
  3889aa:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  3889ae:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3889b3:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3889b8:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3889bd:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3889c2:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3889c7:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3889cc:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3889d1:	49 8b e3                                        	mov    rsp,r11
  3889d4:	41 5f                                           	pop    r15
  3889d6:	41 5e                                           	pop    r14
  3889d8:	41 5d                                           	pop    r13
  3889da:	41 5c                                           	pop    r12
  3889dc:	5f                                              	pop    rdi
  3889dd:	5e                                              	pop    rsi
  3889de:	5d                                              	pop    rbp
  3889df:	c3                                              	ret
