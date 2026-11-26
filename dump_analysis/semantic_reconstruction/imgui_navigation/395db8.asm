
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395db8 <.data+0x395db8>:
  395db8:	48 8b c4                                        	mov    rax,rsp
  395dbb:	53                                              	push   rbx
  395dbc:	55                                              	push   rbp
  395dbd:	56                                              	push   rsi
  395dbe:	57                                              	push   rdi
  395dbf:	48 81 ec d8 00 00 00                            	sub    rsp,0xd8
  395dc6:	48 8b 1d 5b fd 06 00                            	mov    rbx,QWORD PTR [rip+0x6fd5b]        # 0x405b28
  395dcd:	48 8b f9                                        	mov    rdi,rcx
  395dd0:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  395dd4:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  395dd8:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  395ddd:	48 8b 8b 08 3f 00 00                            	mov    rcx,QWORD PTR [rbx+0x3f08]
  395de4:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  395de9:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  395dee:	44 0f 29 5c 24 70                               	movaps XMMWORD PTR [rsp+0x70],xmm11
  395df4:	8b 81 58 01 00 00                               	mov    eax,DWORD PTR [rcx+0x158]
  395dfa:	44 0f 29 64 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm12
  395e00:	44 0f 29 6c 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm13
  395e06:	44 0f 29 74 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm14
  395e0c:	44 0f 29 7c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm15
  395e12:	39 83 20 49 00 00                               	cmp    DWORD PTR [rbx+0x4920],eax
  395e18:	0f 85 ce 02 00 00                               	jne    0x3960ec
  395e1e:	0f 10 83 c0 47 00 00                            	movups xmm0,XMMWORD PTR [rbx+0x47c0]
  395e25:	48 8b 83 e8 48 00 00                            	mov    rax,QWORD PTR [rbx+0x48e8]
  395e2c:	bd 01 00 00 00                                  	mov    ebp,0x1
  395e31:	01 ab 7c 49 00 00                               	add    DWORD PTR [rbx+0x497c],ebp
  395e37:	f3 44 0f 10 a3 5c 49 00 00                      	movss  xmm12,DWORD PTR [rbx+0x495c]
  395e40:	f3 44 0f 10 93 60 49 00 00                      	movss  xmm10,DWORD PTR [rbx+0x4960]
  395e49:	f3 44 0f 10 bb 64 49 00 00                      	movss  xmm15,DWORD PTR [rbx+0x4964]
  395e52:	f3 44 0f 10 b3 68 49 00 00                      	movss  xmm14,DWORD PTR [rbx+0x4968]
  395e5b:	f3 0f 7f 44 24 20                               	movdqu XMMWORD PTR [rsp+0x20],xmm0
  395e61:	48 39 81 68 03 00 00                            	cmp    QWORD PTR [rcx+0x368],rax
  395e68:	75 29                                           	jne    0x395e93
  395e6a:	48 8d b1 38 02 00 00                            	lea    rsi,[rcx+0x238]
  395e71:	48 8b ce                                        	mov    rcx,rsi
  395e74:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  395e79:	e8 aa 28 00 00                                  	call   0x398728
  395e7e:	84 c0                                           	test   al,al
  395e80:	0f 84 66 02 00 00                               	je     0x3960ec
  395e86:	48 8b d6                                        	mov    rdx,rsi
  395e89:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  395e8e:	e8 75 a3 ff ff                                  	call   0x390208
  395e93:	f3 44 0f 10 4c 24 20                            	movss  xmm9,DWORD PTR [rsp+0x20]
  395e9a:	41 0f 28 df                                     	movaps xmm3,xmm15
  395e9e:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [rsp+0x28]
  395ea4:	41 0f 28 c1                                     	movaps xmm0,xmm9
  395ea8:	41 0f 28 d4                                     	movaps xmm2,xmm12
  395eac:	e8 83 02 00 00                                  	call   0x396134
  395eb1:	f3 0f 10 25 1b d2 ef ff                         	movss  xmm4,DWORD PTR [rip+0xffffffffffefd21b]        # 0x2930d4
  395eb9:	0f 28 f8                                        	movaps xmm7,xmm0
  395ebc:	0f 28 d4                                        	movaps xmm2,xmm4
  395ebf:	41 0f 28 c2                                     	movaps xmm0,xmm10
  395ec3:	41 0f 28 ce                                     	movaps xmm1,xmm14
  395ec7:	e8 90 f7 f9 ff                                  	call   0x33565c
  395ecc:	f3 0f 10 2d d4 d1 ef ff                         	movss  xmm5,DWORD PTR [rip+0xffffffffffefd1d4]        # 0x2930a8
  395ed4:	0f 28 d8                                        	movaps xmm3,xmm0
  395ed7:	0f 28 d5                                        	movaps xmm2,xmm5
  395eda:	41 0f 28 c2                                     	movaps xmm0,xmm10
  395ede:	41 0f 28 ce                                     	movaps xmm1,xmm14
  395ee2:	e8 75 f7 f9 ff                                  	call   0x33565c
  395ee7:	f3 44 0f 10 44 24 24                            	movss  xmm8,DWORD PTR [rsp+0x24]
  395eee:	0f 28 f0                                        	movaps xmm6,xmm0
  395ef1:	f3 0f 10 4c 24 2c                               	movss  xmm1,DWORD PTR [rsp+0x2c]
  395ef7:	41 0f 28 c0                                     	movaps xmm0,xmm8
  395efb:	0f 28 d4                                        	movaps xmm2,xmm4
  395efe:	e8 59 f7 f9 ff                                  	call   0x33565c
  395f03:	f3 0f 10 4c 24 2c                               	movss  xmm1,DWORD PTR [rsp+0x2c]
  395f09:	0f 28 e0                                        	movaps xmm4,xmm0
  395f0c:	41 0f 28 c0                                     	movaps xmm0,xmm8
  395f10:	0f 28 d5                                        	movaps xmm2,xmm5
  395f13:	e8 44 f7 f9 ff                                  	call   0x33565c
  395f18:	0f 28 cc                                        	movaps xmm1,xmm4
  395f1b:	0f 28 d6                                        	movaps xmm2,xmm6
  395f1e:	e8 11 02 00 00                                  	call   0x396134
  395f23:	44 0f 28 e8                                     	movaps xmm13,xmm0
  395f27:	0f 57 f6                                        	xorps  xmm6,xmm6
  395f2a:	44 0f 2e ee                                     	ucomiss xmm13,xmm6
  395f2e:	7a 02                                           	jp     0x395f32
  395f30:	74 2a                                           	je     0x395f5c
  395f32:	0f 2e fe                                        	ucomiss xmm7,xmm6
  395f35:	7a 02                                           	jp     0x395f39
  395f37:	74 23                                           	je     0x395f5c
  395f39:	0f 2f fe                                        	comiss xmm7,xmm6
  395f3c:	76 0a                                           	jbe    0x395f48
  395f3e:	f3 0f 10 05 0e 73 ef ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffef730e]        # 0x28d254
  395f46:	eb 08                                           	jmp    0x395f50
  395f48:	f3 0f 10 05 10 d3 ef ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffefd310]        # 0x293260
  395f50:	f3 0f 5e 3d a8 76 ef ff                         	divss  xmm7,DWORD PTR [rip+0xffffffffffef76a8]        # 0x28d600
  395f58:	f3 0f 58 f8                                     	addss  xmm7,xmm0
  395f5c:	41 0f 28 c5                                     	movaps xmm0,xmm13
  395f60:	e8 8b df f4 ff                                  	call   0x2e3ef0
  395f65:	44 0f 28 d8                                     	movaps xmm11,xmm0
  395f69:	0f 28 c7                                        	movaps xmm0,xmm7
  395f6c:	e8 7f df f4 ff                                  	call   0x2e3ef0
  395f71:	f3 44 0f 58 44 24 2c                            	addss  xmm8,DWORD PTR [rsp+0x2c]
  395f78:	f3 44 0f 58 4c 24 28                            	addss  xmm9,DWORD PTR [rsp+0x28]
  395f7f:	f3 45 0f 58 d6                                  	addss  xmm10,xmm14
  395f84:	f3 45 0f 58 e7                                  	addss  xmm12,xmm15
  395f89:	f3 44 0f 58 d8                                  	addss  xmm11,xmm0
  395f8e:	f3 45 0f 5c c2                                  	subss  xmm8,xmm10
  395f93:	f3 45 0f 5c cc                                  	subss  xmm9,xmm12
  395f98:	41 0f 28 c0                                     	movaps xmm0,xmm8
  395f9c:	e8 4f df f4 ff                                  	call   0x2e3ef0
  395fa1:	44 0f 28 d0                                     	movaps xmm10,xmm0
  395fa5:	41 0f 28 c1                                     	movaps xmm0,xmm9
  395fa9:	e8 42 df f4 ff                                  	call   0x2e3ef0
  395fae:	0f 2e fe                                        	ucomiss xmm7,xmm6
  395fb1:	f3 44 0f 58 d0                                  	addss  xmm10,xmm0
  395fb6:	7a 49                                           	jp     0x396001
  395fb8:	75 47                                           	jne    0x396001
  395fba:	44 0f 2e ee                                     	ucomiss xmm13,xmm6
  395fbe:	7a 41                                           	jp     0x396001
  395fc0:	75 3f                                           	jne    0x396001
  395fc2:	44 0f 2e ce                                     	ucomiss xmm9,xmm6
  395fc6:	7a 2b                                           	jp     0x395ff3
  395fc8:	75 29                                           	jne    0x395ff3
  395fca:	44 0f 2e c6                                     	ucomiss xmm8,xmm6
  395fce:	7a 23                                           	jp     0x395ff3
  395fd0:	75 21                                           	jne    0x395ff3
  395fd2:	8b 83 f0 48 00 00                               	mov    eax,DWORD PTR [rbx+0x48f0]
  395fd8:	45 33 c0                                        	xor    r8d,r8d
  395fdb:	39 83 a4 47 00 00                               	cmp    DWORD PTR [rbx+0x47a4],eax
  395fe1:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  395fe5:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  395fe9:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  395fed:	41 0f 93 c0                                     	setae  r8b
  395ff1:	eb 29                                           	jmp    0x39601c
  395ff3:	45 0f 28 e2                                     	movaps xmm12,xmm10
  395ff7:	41 0f 28 c8                                     	movaps xmm1,xmm8
  395ffb:	41 0f 28 c1                                     	movaps xmm0,xmm9
  395fff:	eb 13                                           	jmp    0x396014
  396001:	44 0f 28 cf                                     	movaps xmm9,xmm7
  396005:	45 0f 28 c5                                     	movaps xmm8,xmm13
  396009:	45 0f 28 e3                                     	movaps xmm12,xmm11
  39600d:	41 0f 28 cd                                     	movaps xmm1,xmm13
  396011:	0f 28 c7                                        	movaps xmm0,xmm7
  396014:	e8 97 d2 ff ff                                  	call   0x3932b0
  396019:	44 8b c0                                        	mov    r8d,eax
  39601c:	8b 93 50 49 00 00                               	mov    edx,DWORD PTR [rbx+0x4950]
  396022:	32 c9                                           	xor    cl,cl
  396024:	44 3b c2                                        	cmp    r8d,edx
  396027:	75 59                                           	jne    0x396082
  396029:	f3 0f 10 47 24                                  	movss  xmm0,DWORD PTR [rdi+0x24]
  39602e:	41 0f 2f c3                                     	comiss xmm0,xmm11
  396032:	76 14                                           	jbe    0x396048
  396034:	f3 44 0f 11 5f 24                               	movss  DWORD PTR [rdi+0x24],xmm11
  39603a:	40 8a c5                                        	mov    al,bpl
  39603d:	f3 44 0f 11 57 28                               	movss  DWORD PTR [rdi+0x28],xmm10
  396043:	e9 a6 00 00 00                                  	jmp    0x3960ee
  396048:	44 0f 2e d8                                     	ucomiss xmm11,xmm0
  39604c:	7a 34                                           	jp     0x396082
  39604e:	75 32                                           	jne    0x396082
  396050:	f3 0f 10 47 28                                  	movss  xmm0,DWORD PTR [rdi+0x28]
  396055:	41 0f 2f c2                                     	comiss xmm0,xmm10
  396059:	76 0b                                           	jbe    0x396066
  39605b:	f3 44 0f 11 57 28                               	movss  DWORD PTR [rdi+0x28],xmm10
  396061:	40 8a cd                                        	mov    cl,bpl
  396064:	eb 1c                                           	jmp    0x396082
  396066:	44 0f 2e d0                                     	ucomiss xmm10,xmm0
  39606a:	7a 16                                           	jp     0x396082
  39606c:	75 14                                           	jne    0x396082
  39606e:	8d 42 fe                                        	lea    eax,[rdx-0x2]
  396071:	3b c5                                           	cmp    eax,ebp
  396073:	77 04                                           	ja     0x396079
  396075:	41 0f 28 fd                                     	movaps xmm7,xmm13
  396079:	0f 2f f7                                        	comiss xmm6,xmm7
  39607c:	0f b6 c9                                        	movzx  ecx,cl
  39607f:	0f 47 cd                                        	cmova  ecx,ebp
  396082:	f3 0f 10 47 24                                  	movss  xmm0,DWORD PTR [rdi+0x24]
  396087:	0f 2e 05 c6 7a ef ff                            	ucomiss xmm0,DWORD PTR [rip+0xffffffffffef7ac6]        # 0x28db54
  39608e:	7a 58                                           	jp     0x3960e8
  396090:	75 56                                           	jne    0x3960e8
  396092:	f3 0f 10 47 2c                                  	movss  xmm0,DWORD PTR [rdi+0x2c]
  396097:	41 0f 2f c4                                     	comiss xmm0,xmm12
  39609b:	76 4b                                           	jbe    0x3960e8
  39609d:	39 ab 20 49 00 00                               	cmp    DWORD PTR [rbx+0x4920],ebp
  3960a3:	75 43                                           	jne    0x3960e8
  3960a5:	48 8b 83 e8 48 00 00                            	mov    rax,QWORD PTR [rbx+0x48e8]
  3960ac:	f7 40 14 00 00 00 10                            	test   DWORD PTR [rax+0x14],0x10000000
  3960b3:	75 33                                           	jne    0x3960e8
  3960b5:	85 d2                                           	test   edx,edx
  3960b7:	75 06                                           	jne    0x3960bf
  3960b9:	41 0f 2f f1                                     	comiss xmm6,xmm9
  3960bd:	77 20                                           	ja     0x3960df
  3960bf:	3b d5                                           	cmp    edx,ebp
  3960c1:	75 06                                           	jne    0x3960c9
  3960c3:	44 0f 2f ce                                     	comiss xmm9,xmm6
  3960c7:	77 16                                           	ja     0x3960df
  3960c9:	83 fa 02                                        	cmp    edx,0x2
  3960cc:	75 06                                           	jne    0x3960d4
  3960ce:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3960d2:	77 0b                                           	ja     0x3960df
  3960d4:	83 fa 03                                        	cmp    edx,0x3
  3960d7:	75 0f                                           	jne    0x3960e8
  3960d9:	44 0f 2f c6                                     	comiss xmm8,xmm6
  3960dd:	76 09                                           	jbe    0x3960e8
  3960df:	f3 44 0f 11 67 2c                               	movss  DWORD PTR [rdi+0x2c],xmm12
  3960e5:	40 8a cd                                        	mov    cl,bpl
  3960e8:	8a c1                                           	mov    al,cl
  3960ea:	eb 02                                           	jmp    0x3960ee
  3960ec:	32 c0                                           	xor    al,al
  3960ee:	44 0f 28 6c 24 50                               	movaps xmm13,XMMWORD PTR [rsp+0x50]
  3960f4:	4c 8d 9c 24 d8 00 00 00                         	lea    r11,[rsp+0xd8]
  3960fc:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  396101:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  396106:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  39610b:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  396110:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  396115:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  39611a:	45 0f 28 63 88                                  	movaps xmm12,XMMWORD PTR [r11-0x78]
  39611f:	44 0f 28 74 24 40                               	movaps xmm14,XMMWORD PTR [rsp+0x40]
  396125:	44 0f 28 7c 24 30                               	movaps xmm15,XMMWORD PTR [rsp+0x30]
  39612b:	49 8b e3                                        	mov    rsp,r11
  39612e:	5f                                              	pop    rdi
  39612f:	5e                                              	pop    rsi
  396130:	5d                                              	pop    rbp
  396131:	5b                                              	pop    rbx
  396132:	c3                                              	ret
