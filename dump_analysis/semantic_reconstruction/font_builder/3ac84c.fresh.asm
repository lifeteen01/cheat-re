
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac84c <.data+0x3ac84c>:
  3ac84c:	48 8b c4                                        	mov    rax,rsp
  3ac84f:	48 89 58 18                                     	mov    QWORD PTR [rax+0x18],rbx
  3ac853:	89 50 10                                        	mov    DWORD PTR [rax+0x10],edx
  3ac856:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3ac85a:	55                                              	push   rbp
  3ac85b:	56                                              	push   rsi
  3ac85c:	57                                              	push   rdi
  3ac85d:	41 54                                           	push   r12
  3ac85f:	41 55                                           	push   r13
  3ac861:	41 56                                           	push   r14
  3ac863:	41 57                                           	push   r15
  3ac865:	48 8d a8 28 fe ff ff                            	lea    rbp,[rax-0x1d8]
  3ac86c:	48 81 ec a0 02 00 00                            	sub    rsp,0x2a0
  3ac873:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3ac877:	4d 8b e0                                        	mov    r12,r8
  3ac87a:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3ac87e:	45 33 ff                                        	xor    r15d,r15d
  3ac881:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3ac886:	44 8b c2                                        	mov    r8d,edx
  3ac889:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3ac88e:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3ac893:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  3ac89b:	bf 01 00 00 00                                  	mov    edi,0x1
  3ac8a0:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  3ac8a8:	45 33 ed                                        	xor    r13d,r13d
  3ac8ab:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  3ac8b3:	33 f6                                           	xor    esi,esi
  3ac8b5:	44 0f 29 a8 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm13
  3ac8bd:	44 0f 29 b0 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm14
  3ac8c5:	44 0f 29 b8 28 ff ff ff                         	movaps XMMWORD PTR [rax-0xd8],xmm15
  3ac8cd:	48 8b c1                                        	mov    rax,rcx
  3ac8d0:	33 c9                                           	xor    ecx,ecx
  3ac8d2:	89 bd f8 01 00 00                               	mov    DWORD PTR [rbp+0x1f8],edi
  3ac8d8:	89 4c 24 64                                     	mov    DWORD PTR [rsp+0x64],ecx
  3ac8dc:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3ac8e0:	44 89 7c 24 60                                  	mov    DWORD PTR [rsp+0x60],r15d
  3ac8e5:	0f 10 40 70                                     	movups xmm0,XMMWORD PTR [rax+0x70]
  3ac8e9:	0f 10 48 50                                     	movups xmm1,XMMWORD PTR [rax+0x50]
  3ac8ed:	f3 0f 7f 45 30                                  	movdqu XMMWORD PTR [rbp+0x30],xmm0
  3ac8f2:	f3 0f 7f 4c 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm1
  3ac8f8:	e8 9f e7 ff ff                                  	call   0x3ab09c
  3ac8fd:	f3 44 0f 10 0d 9a 69 ee ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffee699a]        # 0x2932a0
  3ac906:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  3ac90a:	f3 44 0f 10 7d 80                               	movss  xmm15,DWORD PTR [rbp-0x80]
  3ac910:	f3 44 0f 10 64 24 7c                            	movss  xmm12,DWORD PTR [rsp+0x7c]
  3ac917:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3ac91a:	f3 44 0f 10 74 24 78                            	movss  xmm14,DWORD PTR [rsp+0x78]
  3ac921:	f3 44 0f 10 6c 24 74                            	movss  xmm13,DWORD PTR [rsp+0x74]
  3ac928:	f3 44 0f 10 5c 24 70                            	movss  xmm11,DWORD PTR [rsp+0x70]
  3ac92f:	0f 11 4c 24 50                                  	movups XMMWORD PTR [rsp+0x50],xmm1
  3ac934:	f3 0f 7e 48 08                                  	movq   xmm1,QWORD PTR [rax+0x8]
  3ac939:	66 0f 7e 4c 24 58                               	movd   DWORD PTR [rsp+0x58],xmm1
  3ac93f:	48 8b 44 24 58                                  	mov    rax,QWORD PTR [rsp+0x58]
  3ac944:	48 c1 e8 20                                     	shr    rax,0x20
  3ac948:	39 44 24 58                                     	cmp    DWORD PTR [rsp+0x58],eax
  3ac94c:	0f 8d 04 09 00 00                               	jge    0x3ad256
  3ac952:	45 33 f6                                        	xor    r14d,r14d
  3ac955:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3ac95a:	45 8d 4e 01                                     	lea    r9d,[r14+0x1]
  3ac95e:	44 89 4c 24 40                                  	mov    DWORD PTR [rsp+0x40],r9d
  3ac963:	e8 b4 e5 ff ff                                  	call   0x3aaf1c
  3ac968:	0f b6 d8                                        	movzx  ebx,al
  3ac96b:	80 fb 13                                        	cmp    bl,0x13
  3ac96e:	0f 87 1c 04 00 00                               	ja     0x3acd90
  3ac974:	0f 84 20 05 00 00                               	je     0x3ace9a
  3ac97a:	80 fb 08                                        	cmp    bl,0x8
  3ac97d:	0f 87 36 01 00 00                               	ja     0x3acab9
  3ac983:	0f 84 d3 00 00 00                               	je     0x3aca5c
  3ac989:	41 2b d9                                        	sub    ebx,r9d
  3ac98c:	0f 84 52 01 00 00                               	je     0x3acae4
  3ac992:	83 eb 02                                        	sub    ebx,0x2
  3ac995:	0f 84 49 01 00 00                               	je     0x3acae4
  3ac99b:	41 2b d9                                        	sub    ebx,r9d
  3ac99e:	0f 84 a4 00 00 00                               	je     0x3aca48
  3ac9a4:	41 2b d9                                        	sub    ebx,r9d
  3ac9a7:	74 6c                                           	je     0x3aca15
  3ac9a9:	41 2b d9                                        	sub    ebx,r9d
  3ac9ac:	74 17                                           	je     0x3ac9c5
  3ac9ae:	41 3b d9                                        	cmp    ebx,r9d
  3ac9b1:	0f 85 9f 08 00 00                               	jne    0x3ad256
  3ac9b7:	41 3b f1                                        	cmp    esi,r9d
  3ac9ba:	0f 8c 96 08 00 00                               	jl     0x3ad256
  3ac9c0:	41 8b d9                                        	mov    ebx,r9d
  3ac9c3:	eb 26                                           	jmp    0x3ac9eb
  3ac9c5:	41 3b f1                                        	cmp    esi,r9d
  3ac9c8:	0f 8c 88 08 00 00                               	jl     0x3ad256
  3ac9ce:	49 63 c6                                        	movsxd rax,r14d
  3ac9d1:	0f 57 d2                                        	xorps  xmm2,xmm2
  3ac9d4:	49 8b cc                                        	mov    rcx,r12
  3ac9d7:	41 8b de                                        	mov    ebx,r14d
  3ac9da:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3ac9e0:	e8 d7 ea ff ff                                  	call   0x3ab4bc
  3ac9e5:	41 ff c6                                        	inc    r14d
  3ac9e8:	83 c3 02                                        	add    ebx,0x2
  3ac9eb:	44 3b f6                                        	cmp    r14d,esi
  3ac9ee:	0f 8d 3e 08 00 00                               	jge    0x3ad232
  3ac9f4:	49 63 c6                                        	movsxd rax,r14d
  3ac9f7:	0f 57 c9                                        	xorps  xmm1,xmm1
  3ac9fa:	49 8b cc                                        	mov    rcx,r12
  3ac9fd:	f3 0f 10 54 84 70                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x70]
  3aca03:	e8 b4 ea ff ff                                  	call   0x3ab4bc
  3aca08:	3b de                                           	cmp    ebx,esi
  3aca0a:	0f 8d 22 08 00 00                               	jge    0x3ad232
  3aca10:	44 8b f3                                        	mov    r14d,ebx
  3aca13:	eb b9                                           	jmp    0x3ac9ce
  3aca15:	83 fe 02                                        	cmp    esi,0x2
  3aca18:	0f 8c 38 08 00 00                               	jl     0x3ad256
  3aca1e:	49 63 c6                                        	movsxd rax,r14d
  3aca21:	49 8b cc                                        	mov    rcx,r12
  3aca24:	41 8b de                                        	mov    ebx,r14d
  3aca27:	f3 0f 10 54 84 74                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x74]
  3aca2d:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3aca33:	e8 84 ea ff ff                                  	call   0x3ab4bc
  3aca38:	8d 43 03                                        	lea    eax,[rbx+0x3]
  3aca3b:	41 83 c6 02                                     	add    r14d,0x2
  3aca3f:	3b c6                                           	cmp    eax,esi
  3aca41:	7c db                                           	jl     0x3aca1e
  3aca43:	e9 ea 07 00 00                                  	jmp    0x3ad232
  3aca48:	41 3b f1                                        	cmp    esi,r9d
  3aca4b:	0f 8c 05 08 00 00                               	jl     0x3ad256
  3aca51:	48 63 c6                                        	movsxd rax,esi
  3aca54:	0f 57 c9                                        	xorps  xmm1,xmm1
  3aca57:	e9 23 04 00 00                                  	jmp    0x3ace7f
  3aca5c:	83 fe 06                                        	cmp    esi,0x6
  3aca5f:	0f 8c f1 07 00 00                               	jl     0x3ad256
  3aca65:	49 63 c6                                        	movsxd rax,r14d
  3aca68:	49 8b cc                                        	mov    rcx,r12
  3aca6b:	41 8b de                                        	mov    ebx,r14d
  3aca6e:	f3 0f 10 44 85 84                               	movss  xmm0,DWORD PTR [rbp+rax*4-0x7c]
  3aca74:	f3 0f 10 4c 85 80                               	movss  xmm1,DWORD PTR [rbp+rax*4-0x80]
  3aca7a:	f3 0f 10 5c 84 78                               	movss  xmm3,DWORD PTR [rsp+rax*4+0x78]
  3aca80:	f3 0f 10 54 84 74                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x74]
  3aca86:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3aca8c:	f3 0f 10 44 84 7c                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x7c]
  3aca92:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  3aca98:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3aca9e:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3acaa4:	e8 7f e9 ff ff                                  	call   0x3ab428
  3acaa9:	8d 43 0b                                        	lea    eax,[rbx+0xb]
  3acaac:	41 83 c6 06                                     	add    r14d,0x6
  3acab0:	3b c6                                           	cmp    eax,esi
  3acab2:	7c b1                                           	jl     0x3aca65
  3acab4:	e9 79 07 00 00                                  	jmp    0x3ad232
  3acab9:	8b cb                                           	mov    ecx,ebx
  3acabb:	83 e9 0a                                        	sub    ecx,0xa
  3acabe:	0f 84 85 02 00 00                               	je     0x3acd49
  3acac4:	41 2b c9                                        	sub    ecx,r9d
  3acac7:	0f 84 48 02 00 00                               	je     0x3acd15
  3acacd:	41 2b c9                                        	sub    ecx,r9d
  3acad0:	74 26                                           	je     0x3acaf8
  3acad2:	83 e9 02                                        	sub    ecx,0x2
  3acad5:	0f 84 6c 07 00 00                               	je     0x3ad247
  3acadb:	83 f9 04                                        	cmp    ecx,0x4
  3acade:	0f 85 72 07 00 00                               	jne    0x3ad256
  3acae4:	8b c6                                           	mov    eax,esi
  3acae6:	99                                              	cdq
  3acae7:	2b c2                                           	sub    eax,edx
  3acae9:	d1 f8                                           	sar    eax,1
  3acaeb:	44 03 f8                                        	add    r15d,eax
  3acaee:	44 89 7c 24 60                                  	mov    DWORD PTR [rsp+0x60],r15d
  3acaf3:	e9 3a 07 00 00                                  	jmp    0x3ad232
  3acaf8:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3acafd:	e8 1a e4 ff ff                                  	call   0x3aaf1c
  3acb02:	44 0f b6 c8                                     	movzx  r9d,al
  3acb06:	41 83 e9 22                                     	sub    r9d,0x22
  3acb0a:	0f 84 98 01 00 00                               	je     0x3acca8
  3acb10:	41 83 e9 01                                     	sub    r9d,0x1
  3acb14:	0f 84 37 01 00 00                               	je     0x3acc51
  3acb1a:	41 83 e9 01                                     	sub    r9d,0x1
  3acb1e:	0f 84 d1 00 00 00                               	je     0x3acbf5
  3acb24:	41 83 f9 01                                     	cmp    r9d,0x1
  3acb28:	0f 85 28 07 00 00                               	jne    0x3ad256
  3acb2e:	83 fe 0b                                        	cmp    esi,0xb
  3acb31:	0f 8c 1f 07 00 00                               	jl     0x3ad256
  3acb37:	f3 0f 10 7d 98                                  	movss  xmm7,DWORD PTR [rbp-0x68]
  3acb3c:	45 0f 28 c6                                     	movaps xmm8,xmm14
  3acb40:	f3 45 0f 58 c3                                  	addss  xmm8,xmm11
  3acb45:	45 0f 28 cd                                     	movaps xmm9,xmm13
  3acb49:	f3 45 0f 58 cc                                  	addss  xmm9,xmm12
  3acb4e:	f3 45 0f 58 c7                                  	addss  xmm8,xmm15
  3acb53:	f3 44 0f 58 4d 84                               	addss  xmm9,DWORD PTR [rbp-0x7c]
  3acb59:	f3 44 0f 58 45 88                               	addss  xmm8,DWORD PTR [rbp-0x78]
  3acb5f:	f3 44 0f 58 4d 8c                               	addss  xmm9,DWORD PTR [rbp-0x74]
  3acb65:	f3 44 0f 58 45 90                               	addss  xmm8,DWORD PTR [rbp-0x70]
  3acb6b:	f3 44 0f 58 4d 94                               	addss  xmm9,DWORD PTR [rbp-0x6c]
  3acb71:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3acb75:	e8 76 73 f3 ff                                  	call   0x2e3ef0
  3acb7a:	0f 28 f0                                        	movaps xmm6,xmm0
  3acb7d:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3acb81:	e8 6a 73 f3 ff                                  	call   0x2e3ef0
  3acb86:	0f 2f f0                                        	comiss xmm6,xmm0
  3acb89:	76 17                                           	jbe    0x3acba2
  3acb8b:	44 0f 28 c7                                     	movaps xmm8,xmm7
  3acb8f:	41 0f 28 f9                                     	movaps xmm7,xmm9
  3acb93:	f3 44 0f 10 0d 04 67 ee ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffee6704]        # 0x2932a0
  3acb9c:	41 0f 57 f9                                     	xorps  xmm7,xmm9
  3acba0:	eb 0d                                           	jmp    0x3acbaf
  3acba2:	f3 44 0f 10 0d f5 66 ee ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffee66f5]        # 0x2932a0
  3acbab:	45 0f 57 c1                                     	xorps  xmm8,xmm9
  3acbaf:	f3 0f 10 45 84                                  	movss  xmm0,DWORD PTR [rbp-0x7c]
  3acbb4:	41 0f 28 de                                     	movaps xmm3,xmm14
  3acbb8:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3acbbe:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3acbc2:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3acbc9:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3acbcd:	49 8b cc                                        	mov    rcx,r12
  3acbd0:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  3acbd7:	e8 4c e8 ff ff                                  	call   0x3ab428
  3acbdc:	f3 0f 10 4d 88                                  	movss  xmm1,DWORD PTR [rbp-0x78]
  3acbe1:	f3 0f 10 55 8c                                  	movss  xmm2,DWORD PTR [rbp-0x74]
  3acbe6:	f3 0f 10 5d 90                                  	movss  xmm3,DWORD PTR [rbp-0x70]
  3acbeb:	f3 0f 10 75 94                                  	movss  xmm6,DWORD PTR [rbp-0x6c]
  3acbf0:	e9 00 01 00 00                                  	jmp    0x3accf5
  3acbf5:	83 fe 09                                        	cmp    esi,0x9
  3acbf8:	0f 8c 58 06 00 00                               	jl     0x3ad256
  3acbfe:	f3 0f 10 75 8c                                  	movss  xmm6,DWORD PTR [rbp-0x74]
  3acc03:	41 0f 28 fd                                     	movaps xmm7,xmm13
  3acc07:	f3 44 0f 11 54 24 30                            	movss  DWORD PTR [rsp+0x30],xmm10
  3acc0e:	0f 28 d7                                        	movaps xmm2,xmm7
  3acc11:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3acc18:	41 0f 28 de                                     	movaps xmm3,xmm14
  3acc1c:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3acc20:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  3acc27:	49 8b cc                                        	mov    rcx,r12
  3acc2a:	e8 f9 e7 ff ff                                  	call   0x3ab428
  3acc2f:	f3 0f 10 4d 84                                  	movss  xmm1,DWORD PTR [rbp-0x7c]
  3acc34:	f3 41 0f 58 fc                                  	addss  xmm7,xmm12
  3acc39:	f3 0f 10 5d 88                                  	movss  xmm3,DWORD PTR [rbp-0x78]
  3acc3e:	f3 44 0f 10 45 90                               	movss  xmm8,DWORD PTR [rbp-0x70]
  3acc44:	f3 0f 58 fe                                     	addss  xmm7,xmm6
  3acc48:	41 0f 57 f9                                     	xorps  xmm7,xmm9
  3acc4c:	e9 a1 00 00 00                                  	jmp    0x3accf2
  3acc51:	83 fe 0d                                        	cmp    esi,0xd
  3acc54:	0f 8c fc 05 00 00                               	jl     0x3ad256
  3acc5a:	f3 0f 10 45 84                                  	movss  xmm0,DWORD PTR [rbp-0x7c]
  3acc5f:	41 0f 28 de                                     	movaps xmm3,xmm14
  3acc63:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3acc69:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3acc6d:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3acc74:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3acc78:	49 8b cc                                        	mov    rcx,r12
  3acc7b:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  3acc82:	e8 a1 e7 ff ff                                  	call   0x3ab428
  3acc87:	f3 0f 10 4d 88                                  	movss  xmm1,DWORD PTR [rbp-0x78]
  3acc8c:	f3 0f 10 55 8c                                  	movss  xmm2,DWORD PTR [rbp-0x74]
  3acc91:	f3 0f 10 5d 90                                  	movss  xmm3,DWORD PTR [rbp-0x70]
  3acc96:	f3 0f 10 75 94                                  	movss  xmm6,DWORD PTR [rbp-0x6c]
  3acc9b:	f3 44 0f 10 45 98                               	movss  xmm8,DWORD PTR [rbp-0x68]
  3acca1:	f3 0f 10 7d 9c                                  	movss  xmm7,DWORD PTR [rbp-0x64]
  3acca6:	eb 4d                                           	jmp    0x3accf5
  3acca8:	83 fe 07                                        	cmp    esi,0x7
  3accab:	0f 8c a5 05 00 00                               	jl     0x3ad256
  3accb1:	f3 44 0f 11 54 24 30                            	movss  DWORD PTR [rsp+0x30],xmm10
  3accb8:	41 0f 28 f6                                     	movaps xmm6,xmm14
  3accbc:	f3 44 0f 11 64 24 28                            	movss  DWORD PTR [rsp+0x28],xmm12
  3accc3:	41 0f 28 dd                                     	movaps xmm3,xmm13
  3accc7:	0f 57 d2                                        	xorps  xmm2,xmm2
  3accca:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3accd0:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3accd4:	49 8b cc                                        	mov    rcx,r12
  3accd7:	e8 4c e7 ff ff                                  	call   0x3ab428
  3accdc:	f3 0f 10 5d 84                                  	movss  xmm3,DWORD PTR [rbp-0x7c]
  3acce1:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3acce5:	f3 44 0f 10 45 88                               	movss  xmm8,DWORD PTR [rbp-0x78]
  3acceb:	41 0f 57 f1                                     	xorps  xmm6,xmm9
  3accef:	0f 57 ff                                        	xorps  xmm7,xmm7
  3accf2:	0f 57 d2                                        	xorps  xmm2,xmm2
  3accf5:	f3 0f 11 7c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm7
  3accfb:	49 8b cc                                        	mov    rcx,r12
  3accfe:	f3 44 0f 11 44 24 28                            	movss  DWORD PTR [rsp+0x28],xmm8
  3acd05:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3acd0b:	e8 18 e7 ff ff                                  	call   0x3ab428
  3acd10:	e9 1d 05 00 00                                  	jmp    0x3ad232
  3acd15:	45 85 ed                                        	test   r13d,r13d
  3acd18:	0f 8e 38 05 00 00                               	jle    0x3ad256
  3acd1e:	49 63 cd                                        	movsxd rcx,r13d
  3acd21:	45 2b e9                                        	sub    r13d,r9d
  3acd24:	49 2b c9                                        	sub    rcx,r9
  3acd27:	44 89 74 24 40                                  	mov    DWORD PTR [rsp+0x40],r14d
  3acd2c:	48 03 c9                                        	add    rcx,rcx
  3acd2f:	0f 10 44 cd 60                                  	movups xmm0,XMMWORD PTR [rbp+rcx*8+0x60]
  3acd34:	0f 11 44 24 50                                  	movups XMMWORD PTR [rsp+0x50],xmm0
  3acd39:	66 0f 73 d8 08                                  	psrldq xmm0,0x8
  3acd3e:	66 0f 7e 44 24 58                               	movd   DWORD PTR [rsp+0x58],xmm0
  3acd44:	e9 e9 04 00 00                                  	jmp    0x3ad232
  3acd49:	44 39 74 24 64                                  	cmp    DWORD PTR [rsp+0x64],r14d
  3acd4e:	4c 8b b5 e0 01 00 00                            	mov    r14,QWORD PTR [rbp+0x1e0]
  3acd55:	0f 85 ce 03 00 00                               	jne    0x3ad129
  3acd5b:	41 83 be 9c 00 00 00 00                         	cmp    DWORD PTR [r14+0x9c],0x0
  3acd63:	74 21                                           	je     0x3acd86
  3acd65:	44 8b 85 e8 01 00 00                            	mov    r8d,DWORD PTR [rbp+0x1e8]
  3acd6c:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3acd70:	49 8b d6                                        	mov    rdx,r14
  3acd73:	e8 94 e4 ff ff                                  	call   0x3ab20c
  3acd78:	41 b9 01 00 00 00                               	mov    r9d,0x1
  3acd7e:	0f 10 10                                        	movups xmm2,XMMWORD PTR [rax]
  3acd81:	f3 0f 7f 55 30                                  	movdqu XMMWORD PTR [rbp+0x30],xmm2
  3acd86:	44 89 4c 24 64                                  	mov    DWORD PTR [rsp+0x64],r9d
  3acd8b:	e9 99 03 00 00                                  	jmp    0x3ad129
  3acd90:	80 fb 19                                        	cmp    bl,0x19
  3acd93:	0f 87 c2 01 00 00                               	ja     0x3acf5b
  3acd99:	0f 84 32 01 00 00                               	je     0x3aced1
  3acd9f:	83 eb 14                                        	sub    ebx,0x14
  3acda2:	0f 84 f2 00 00 00                               	je     0x3ace9a
  3acda8:	41 2b d9                                        	sub    ebx,r9d
  3acdab:	0f 84 bc 00 00 00                               	je     0x3ace6d
  3acdb1:	41 2b d9                                        	sub    ebx,r9d
  3acdb4:	0f 84 9c 00 00 00                               	je     0x3ace56
  3acdba:	41 2b d9                                        	sub    ebx,r9d
  3acdbd:	0f 84 21 fd ff ff                               	je     0x3acae4
  3acdc3:	41 3b d9                                        	cmp    ebx,r9d
  3acdc6:	0f 85 8a 04 00 00                               	jne    0x3ad256
  3acdcc:	83 fe 08                                        	cmp    esi,0x8
  3acdcf:	0f 8c 81 04 00 00                               	jl     0x3ad256
  3acdd5:	8d 7e fe                                        	lea    edi,[rsi-0x2]
  3acdd8:	83 ff 05                                        	cmp    edi,0x5
  3acddb:	7e 5d                                           	jle    0x3ace3a
  3acddd:	49 63 c6                                        	movsxd rax,r14d
  3acde0:	49 8b cc                                        	mov    rcx,r12
  3acde3:	45 8b fe                                        	mov    r15d,r14d
  3acde6:	41 8b de                                        	mov    ebx,r14d
  3acde9:	f3 0f 10 44 85 84                               	movss  xmm0,DWORD PTR [rbp+rax*4-0x7c]
  3acdef:	f3 0f 10 4c 85 80                               	movss  xmm1,DWORD PTR [rbp+rax*4-0x80]
  3acdf5:	f3 0f 10 5c 84 78                               	movss  xmm3,DWORD PTR [rsp+rax*4+0x78]
  3acdfb:	f3 0f 10 54 84 74                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x74]
  3ace01:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3ace07:	f3 0f 10 44 84 7c                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x7c]
  3ace0d:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  3ace13:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3ace19:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3ace1f:	e8 04 e6 ff ff                                  	call   0x3ab428
  3ace24:	8d 43 0b                                        	lea    eax,[rbx+0xb]
  3ace27:	41 83 c6 06                                     	add    r14d,0x6
  3ace2b:	3b c7                                           	cmp    eax,edi
  3ace2d:	7c ae                                           	jl     0x3acddd
  3ace2f:	8d 43 07                                        	lea    eax,[rbx+0x7]
  3ace32:	3b c6                                           	cmp    eax,esi
  3ace34:	0f 8d 1c 04 00 00                               	jge    0x3ad256
  3ace3a:	49 63 c6                                        	movsxd rax,r14d
  3ace3d:	49 8b cc                                        	mov    rcx,r12
  3ace40:	f3 0f 10 54 84 74                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x74]
  3ace46:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3ace4c:	e8 6b e6 ff ff                                  	call   0x3ab4bc
  3ace51:	e9 d6 03 00 00                                  	jmp    0x3ad22c
  3ace56:	41 3b f1                                        	cmp    esi,r9d
  3ace59:	0f 8c f7 03 00 00                               	jl     0x3ad256
  3ace5f:	48 63 c6                                        	movsxd rax,esi
  3ace62:	0f 57 d2                                        	xorps  xmm2,xmm2
  3ace65:	f3 0f 10 4c 84 6c                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x6c]
  3ace6b:	eb 18                                           	jmp    0x3ace85
  3ace6d:	83 fe 02                                        	cmp    esi,0x2
  3ace70:	0f 8c e0 03 00 00                               	jl     0x3ad256
  3ace76:	48 63 c6                                        	movsxd rax,esi
  3ace79:	f3 0f 10 4c 84 68                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x68]
  3ace7f:	f3 0f 10 54 84 6c                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x6c]
  3ace85:	33 ff                                           	xor    edi,edi
  3ace87:	49 8b cc                                        	mov    rcx,r12
  3ace8a:	89 bd f8 01 00 00                               	mov    DWORD PTR [rbp+0x1f8],edi
  3ace90:	e8 67 e6 ff ff                                  	call   0x3ab4fc
  3ace95:	e9 98 03 00 00                                  	jmp    0x3ad232
  3ace9a:	85 ff                                           	test   edi,edi
  3ace9c:	74 0f                                           	je     0x3acead
  3ace9e:	8b c6                                           	mov    eax,esi
  3acea0:	99                                              	cdq
  3acea1:	2b c2                                           	sub    eax,edx
  3acea3:	d1 f8                                           	sar    eax,1
  3acea5:	44 03 f8                                        	add    r15d,eax
  3acea8:	44 89 7c 24 60                                  	mov    DWORD PTR [rsp+0x60],r15d
  3acead:	33 ff                                           	xor    edi,edi
  3aceaf:	41 8d 47 07                                     	lea    eax,[r15+0x7]
  3aceb3:	99                                              	cdq
  3aceb4:	89 bd f8 01 00 00                               	mov    DWORD PTR [rbp+0x1f8],edi
  3aceba:	83 e2 07                                        	and    edx,0x7
  3acebd:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3acec2:	03 d0                                           	add    edx,eax
  3acec4:	c1 fa 03                                        	sar    edx,0x3
  3acec7:	e8 28 e1 ff ff                                  	call   0x3aaff4
  3acecc:	e9 61 03 00 00                                  	jmp    0x3ad232
  3aced1:	83 fe 08                                        	cmp    esi,0x8
  3aced4:	0f 8c 7c 03 00 00                               	jl     0x3ad256
  3aceda:	8d 7e fa                                        	lea    edi,[rsi-0x6]
  3acedd:	41 3b f9                                        	cmp    edi,r9d
  3acee0:	7e 33                                           	jle    0x3acf15
  3acee2:	49 63 c6                                        	movsxd rax,r14d
  3acee5:	49 8b cc                                        	mov    rcx,r12
  3acee8:	45 8b fe                                        	mov    r15d,r14d
  3aceeb:	41 8b de                                        	mov    ebx,r14d
  3aceee:	f3 0f 10 54 84 74                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x74]
  3acef4:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3acefa:	e8 bd e5 ff ff                                  	call   0x3ab4bc
  3aceff:	8d 43 03                                        	lea    eax,[rbx+0x3]
  3acf02:	41 83 c6 02                                     	add    r14d,0x2
  3acf06:	3b c7                                           	cmp    eax,edi
  3acf08:	7c d8                                           	jl     0x3acee2
  3acf0a:	8d 43 07                                        	lea    eax,[rbx+0x7]
  3acf0d:	3b c6                                           	cmp    eax,esi
  3acf0f:	0f 8d 41 03 00 00                               	jge    0x3ad256
  3acf15:	49 63 c6                                        	movsxd rax,r14d
  3acf18:	49 8b cc                                        	mov    rcx,r12
  3acf1b:	f3 0f 10 44 85 84                               	movss  xmm0,DWORD PTR [rbp+rax*4-0x7c]
  3acf21:	f3 0f 10 54 85 80                               	movss  xmm2,DWORD PTR [rbp+rax*4-0x80]
  3acf27:	f3 0f 10 5c 84 78                               	movss  xmm3,DWORD PTR [rsp+rax*4+0x78]
  3acf2d:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3acf33:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3acf39:	f3 0f 10 44 84 7c                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x7c]
  3acf3f:	f3 0f 11 54 24 28                               	movss  DWORD PTR [rsp+0x28],xmm2
  3acf45:	f3 0f 10 54 84 74                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x74]
  3acf4b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3acf51:	e8 d2 e4 ff ff                                  	call   0x3ab428
  3acf56:	e9 d1 02 00 00                                  	jmp    0x3ad22c
  3acf5b:	8b cb                                           	mov    ecx,ebx
  3acf5d:	83 e9 1a                                        	sub    ecx,0x1a
  3acf60:	0f 84 47 02 00 00                               	je     0x3ad1ad
  3acf66:	41 2b c9                                        	sub    ecx,r9d
  3acf69:	0f 84 3e 02 00 00                               	je     0x3ad1ad
  3acf6f:	83 e9 02                                        	sub    ecx,0x2
  3acf72:	0f 84 aa 01 00 00                               	je     0x3ad122
  3acf78:	41 2b c9                                        	sub    ecx,r9d
  3acf7b:	0f 84 ba 00 00 00                               	je     0x3ad03b
  3acf81:	41 3b c9                                        	cmp    ecx,r9d
  3acf84:	0f 84 94 00 00 00                               	je     0x3ad01e
  3acf8a:	80 fb ff                                        	cmp    bl,0xff
  3acf8d:	74 31                                           	je     0x3acfc0
  3acf8f:	f6 c3 e0                                        	test   bl,0xe0
  3acf92:	75 09                                           	jne    0x3acf9d
  3acf94:	80 fb 1c                                        	cmp    bl,0x1c
  3acf97:	0f 85 b9 02 00 00                               	jne    0x3ad256
  3acf9d:	83 ca ff                                        	or     edx,0xffffffff
  3acfa0:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3acfa5:	e8 4a e0 ff ff                                  	call   0x3aaff4
  3acfaa:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3acfaf:	e8 68 e1 ff ff                                  	call   0x3ab11c
  3acfb4:	0f bf c8                                        	movsx  ecx,ax
  3acfb7:	66 0f 6e c1                                     	movd   xmm0,ecx
  3acfbb:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3acfbe:	eb 1e                                           	jmp    0x3acfde
  3acfc0:	ba 04 00 00 00                                  	mov    edx,0x4
  3acfc5:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3acfca:	e8 6d df ff ff                                  	call   0x3aaf3c
  3acfcf:	66 0f 6e c0                                     	movd   xmm0,eax
  3acfd3:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3acfd6:	f3 0f 59 05 9e fe ef ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffeffe9e]        # 0x2ace7c
  3acfde:	83 fe 30                                        	cmp    esi,0x30
  3acfe1:	0f 8d 6f 02 00 00                               	jge    0x3ad256
  3acfe7:	48 63 c6                                        	movsxd rax,esi
  3acfea:	ff c6                                           	inc    esi
  3acfec:	44 89 74 24 40                                  	mov    DWORD PTR [rsp+0x40],r14d
  3acff1:	f3 0f 11 44 84 70                               	movss  DWORD PTR [rsp+rax*4+0x70],xmm0
  3acff7:	f3 44 0f 10 7d 80                               	movss  xmm15,DWORD PTR [rbp-0x80]
  3acffd:	f3 44 0f 10 64 24 7c                            	movss  xmm12,DWORD PTR [rsp+0x7c]
  3ad004:	f3 44 0f 10 74 24 78                            	movss  xmm14,DWORD PTR [rsp+0x78]
  3ad00b:	f3 44 0f 10 6c 24 74                            	movss  xmm13,DWORD PTR [rsp+0x74]
  3ad012:	f3 44 0f 10 5c 24 70                            	movss  xmm11,DWORD PTR [rsp+0x70]
  3ad019:	e9 14 02 00 00                                  	jmp    0x3ad232
  3ad01e:	83 fe 04                                        	cmp    esi,0x4
  3ad021:	0f 8c 2f 02 00 00                               	jl     0x3ad256
  3ad027:	b8 03 00 00 00                                  	mov    eax,0x3
  3ad02c:	41 8b d9                                        	mov    ebx,r9d
  3ad02f:	8d 48 ff                                        	lea    ecx,[rax-0x1]
  3ad032:	44 8d 78 01                                     	lea    r15d,[rax+0x1]
  3ad036:	8d 78 04                                        	lea    edi,[rax+0x4]
  3ad039:	eb 77                                           	jmp    0x3ad0b2
  3ad03b:	83 fe 04                                        	cmp    esi,0x4
  3ad03e:	0f 8c 12 02 00 00                               	jl     0x3ad256
  3ad044:	8b c6                                           	mov    eax,esi
  3ad046:	41 2b c6                                        	sub    eax,r14d
  3ad049:	83 f8 05                                        	cmp    eax,0x5
  3ad04c:	75 0f                                           	jne    0x3ad05d
  3ad04e:	41 8d 46 04                                     	lea    eax,[r14+0x4]
  3ad052:	48 63 c8                                        	movsxd rcx,eax
  3ad055:	f3 0f 10 44 8c 70                               	movss  xmm0,DWORD PTR [rsp+rcx*4+0x70]
  3ad05b:	eb 03                                           	jmp    0x3ad060
  3ad05d:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ad060:	49 63 c6                                        	movsxd rax,r14d
  3ad063:	49 8b cc                                        	mov    rcx,r12
  3ad066:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3ad06c:	41 8b de                                        	mov    ebx,r14d
  3ad06f:	41 8b fe                                        	mov    edi,r14d
  3ad072:	f3 0f 10 4c 84 78                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x78]
  3ad078:	f3 0f 10 44 84 7c                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x7c]
  3ad07e:	f3 0f 10 5c 84 74                               	movss  xmm3,DWORD PTR [rsp+rax*4+0x74]
  3ad084:	f3 0f 10 54 84 70                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x70]
  3ad08a:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  3ad090:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  3ad096:	0f 57 c9                                        	xorps  xmm1,xmm1
  3ad099:	e8 8a e3 ff ff                                  	call   0x3ab428
  3ad09e:	8d 43 07                                        	lea    eax,[rbx+0x7]
  3ad0a1:	41 83 c6 04                                     	add    r14d,0x4
  3ad0a5:	8d 4b 06                                        	lea    ecx,[rbx+0x6]
  3ad0a8:	44 8d 7b 08                                     	lea    r15d,[rbx+0x8]
  3ad0ac:	83 c3 05                                        	add    ebx,0x5
  3ad0af:	83 c7 0b                                        	add    edi,0xb
  3ad0b2:	3b c6                                           	cmp    eax,esi
  3ad0b4:	0f 8d 72 01 00 00                               	jge    0x3ad22c
  3ad0ba:	48 98                                           	cdqe
  3ad0bc:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3ad0c2:	8b c6                                           	mov    eax,esi
  3ad0c4:	41 2b c6                                        	sub    eax,r14d
  3ad0c7:	83 f8 05                                        	cmp    eax,0x5
  3ad0ca:	75 0b                                           	jne    0x3ad0d7
  3ad0cc:	49 63 c7                                        	movsxd rax,r15d
  3ad0cf:	f3 0f 10 44 84 70                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x70]
  3ad0d5:	eb 03                                           	jmp    0x3ad0da
  3ad0d7:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ad0da:	48 63 c1                                        	movsxd rax,ecx
  3ad0dd:	0f 57 d2                                        	xorps  xmm2,xmm2
  3ad0e0:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm1
  3ad0e6:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  3ad0ec:	48 63 cb                                        	movsxd rcx,ebx
  3ad0ef:	f3 0f 10 44 84 70                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x70]
  3ad0f5:	49 63 d6                                        	movsxd rdx,r14d
  3ad0f8:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3ad0fe:	f3 0f 10 5c 8c 70                               	movss  xmm3,DWORD PTR [rsp+rcx*4+0x70]
  3ad104:	49 8b cc                                        	mov    rcx,r12
  3ad107:	f3 0f 10 4c 94 70                               	movss  xmm1,DWORD PTR [rsp+rdx*4+0x70]
  3ad10d:	e8 16 e3 ff ff                                  	call   0x3ab428
  3ad112:	3b fe                                           	cmp    edi,esi
  3ad114:	0f 8d 12 01 00 00                               	jge    0x3ad22c
  3ad11a:	45 8b f7                                        	mov    r14d,r15d
  3ad11d:	e9 22 ff ff ff                                  	jmp    0x3ad044
  3ad122:	4c 8b b5 e0 01 00 00                            	mov    r14,QWORD PTR [rbp+0x1e0]
  3ad129:	41 3b f1                                        	cmp    esi,r9d
  3ad12c:	0f 8c 24 01 00 00                               	jl     0x3ad256
  3ad132:	41 83 fd 0a                                     	cmp    r13d,0xa
  3ad136:	0f 8d 1a 01 00 00                               	jge    0x3ad256
  3ad13c:	0f 10 44 24 50                                  	movups xmm0,XMMWORD PTR [rsp+0x50]
  3ad141:	49 63 c5                                        	movsxd rax,r13d
  3ad144:	48 03 c0                                        	add    rax,rax
  3ad147:	f3 0f 7f 44 c5 60                               	movdqu XMMWORD PTR [rbp+rax*8+0x60],xmm0
  3ad14d:	48 63 c6                                        	movsxd rax,esi
  3ad150:	f3 44 0f 2c 44 84 6c                            	cvttss2si r8d,DWORD PTR [rsp+rax*4+0x6c]
  3ad157:	48 8d 45 30                                     	lea    rax,[rbp+0x30]
  3ad15b:	80 fb 0a                                        	cmp    bl,0xa
  3ad15e:	74 04                                           	je     0x3ad164
  3ad160:	49 8d 46 60                                     	lea    rax,[r14+0x60]
  3ad164:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3ad167:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3ad16c:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  3ad170:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  3ad176:	e8 fd ea ff ff                                  	call   0x3abc78
  3ad17b:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3ad17e:	48 8b 40 08                                     	mov    rax,QWORD PTR [rax+0x8]
  3ad182:	48 c1 e8 20                                     	shr    rax,0x20
  3ad186:	0f 11 4c 24 50                                  	movups XMMWORD PTR [rsp+0x50],xmm1
  3ad18b:	85 c0                                           	test   eax,eax
  3ad18d:	0f 84 c3 00 00 00                               	je     0x3ad256
  3ad193:	ff ce                                           	dec    esi
  3ad195:	c7 44 24 58 00 00 00 00                         	mov    DWORD PTR [rsp+0x58],0x0
  3ad19d:	41 ff c5                                        	inc    r13d
  3ad1a0:	c7 44 24 40 00 00 00 00                         	mov    DWORD PTR [rsp+0x40],0x0
  3ad1a8:	e9 85 00 00 00                                  	jmp    0x3ad232
  3ad1ad:	83 fe 04                                        	cmp    esi,0x4
  3ad1b0:	0f 8c a0 00 00 00                               	jl     0x3ad256
  3ad1b6:	8b fe                                           	mov    edi,esi
  3ad1b8:	41 23 f9                                        	and    edi,r9d
  3ad1bb:	74 0d                                           	je     0x3ad1ca
  3ad1bd:	8d 47 03                                        	lea    eax,[rdi+0x3]
  3ad1c0:	3b c6                                           	cmp    eax,esi
  3ad1c2:	7d 68                                           	jge    0x3ad22c
  3ad1c4:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3ad1c8:	eb 03                                           	jmp    0x3ad1cd
  3ad1ca:	0f 57 d2                                        	xorps  xmm2,xmm2
  3ad1cd:	48 63 c7                                        	movsxd rax,edi
  3ad1d0:	44 8b f7                                        	mov    r14d,edi
  3ad1d3:	f3 0f 10 44 84 7c                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x7c]
  3ad1d9:	80 fb 1b                                        	cmp    bl,0x1b
  3ad1dc:	75 0e                                           	jne    0x3ad1ec
  3ad1de:	f3 0f 10 4c 84 70                               	movss  xmm1,DWORD PTR [rsp+rax*4+0x70]
  3ad1e4:	0f 28 d8                                        	movaps xmm3,xmm0
  3ad1e7:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ad1ea:	eb 0c                                           	jmp    0x3ad1f8
  3ad1ec:	0f 28 ca                                        	movaps xmm1,xmm2
  3ad1ef:	0f 57 db                                        	xorps  xmm3,xmm3
  3ad1f2:	f3 0f 10 54 84 70                               	movss  xmm2,DWORD PTR [rsp+rax*4+0x70]
  3ad1f8:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  3ad1fe:	49 8b cc                                        	mov    rcx,r12
  3ad201:	f3 0f 10 44 84 78                               	movss  xmm0,DWORD PTR [rsp+rax*4+0x78]
  3ad207:	f3 0f 11 5c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm3
  3ad20d:	f3 0f 10 5c 84 74                               	movss  xmm3,DWORD PTR [rsp+rax*4+0x74]
  3ad213:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3ad219:	e8 0a e2 ff ff                                  	call   0x3ab428
  3ad21e:	41 8d 46 07                                     	lea    eax,[r14+0x7]
  3ad222:	83 c7 04                                        	add    edi,0x4
  3ad225:	0f 57 d2                                        	xorps  xmm2,xmm2
  3ad228:	3b c6                                           	cmp    eax,esi
  3ad22a:	7c a1                                           	jl     0x3ad1cd
  3ad22c:	8b bd f8 01 00 00                               	mov    edi,DWORD PTR [rbp+0x1f8]
  3ad232:	44 8b 7c 24 60                                  	mov    r15d,DWORD PTR [rsp+0x60]
  3ad237:	33 c0                                           	xor    eax,eax
  3ad239:	39 44 24 40                                     	cmp    DWORD PTR [rsp+0x40],eax
  3ad23d:	0f 44 c6                                        	cmove  eax,esi
  3ad240:	8b f0                                           	mov    esi,eax
  3ad242:	e9 f8 f6 ff ff                                  	jmp    0x3ac93f
  3ad247:	49 8b cc                                        	mov    rcx,r12
  3ad24a:	e8 91 e1 ff ff                                  	call   0x3ab3e0
  3ad24f:	b8 01 00 00 00                                  	mov    eax,0x1
  3ad254:	eb 02                                           	jmp    0x3ad258
  3ad256:	33 c0                                           	xor    eax,eax
  3ad258:	4c 8d 9c 24 a0 02 00 00                         	lea    r11,[rsp+0x2a0]
  3ad260:	49 8b 5b 50                                     	mov    rbx,QWORD PTR [r11+0x50]
  3ad264:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3ad269:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3ad26e:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3ad273:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3ad278:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3ad27d:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3ad282:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3ad287:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3ad28c:	45 0f 28 b3 70 ff ff ff                         	movaps xmm14,XMMWORD PTR [r11-0x90]
  3ad294:	45 0f 28 bb 60 ff ff ff                         	movaps xmm15,XMMWORD PTR [r11-0xa0]
  3ad29c:	49 8b e3                                        	mov    rsp,r11
  3ad29f:	41 5f                                           	pop    r15
  3ad2a1:	41 5e                                           	pop    r14
  3ad2a3:	41 5d                                           	pop    r13
  3ad2a5:	41 5c                                           	pop    r12
  3ad2a7:	5f                                              	pop    rdi
  3ad2a8:	5e                                              	pop    rsi
  3ad2a9:	5d                                              	pop    rbp
  3ad2aa:	c3                                              	ret
