
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000385b70 <.data+0x385b70>:
  385b70:	48 8b c4                                        	mov    rax,rsp
  385b73:	55                                              	push   rbp
  385b74:	53                                              	push   rbx
  385b75:	56                                              	push   rsi
  385b76:	57                                              	push   rdi
  385b77:	41 54                                           	push   r12
  385b79:	41 55                                           	push   r13
  385b7b:	41 56                                           	push   r14
  385b7d:	41 57                                           	push   r15
  385b7f:	48 8d 6c 24 a8                                  	lea    rbp,[rsp-0x58]
  385b84:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
  385b8b:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  385b8f:	45 8a e0                                        	mov    r12b,r8b
  385b92:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  385b96:	48 8b f2                                        	mov    rsi,rdx
  385b99:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  385b9e:	4c 8b f9                                        	mov    r15,rcx
  385ba1:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  385ba9:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  385bb1:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  385bb9:	e8 42 76 fd ff                                  	call   0x35d200
  385bbe:	48 8b f8                                        	mov    rdi,rax
  385bc1:	e8 de d0 00 00                                  	call   0x392ca4
  385bc6:	45 33 c0                                        	xor    r8d,r8d
  385bc9:	49 8b d7                                        	mov    rdx,r15
  385bcc:	48 8b cf                                        	mov    rcx,rdi
  385bcf:	4c 8b e8                                        	mov    r13,rax
  385bd2:	e8 3d ca 00 00                                  	call   0x392614
  385bd7:	f3 0f 10 0d 09 33 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec3309]        # 0x248ee8
  385bdf:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  385be4:	f3 0f 59 0d cc d5 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff0d5cc]        # 0x2931b8
  385bec:	8b d8                                           	mov    ebx,eax
  385bee:	0f 28 d1                                        	movaps xmm2,xmm1
  385bf1:	e8 4a 67 f4 ff                                  	call   0x2cc340
  385bf6:	f2 0f 10 87 00 01 00 00                         	movsd  xmm0,QWORD PTR [rdi+0x100]
  385bfe:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  385c03:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  385c07:	f2 0f 11 45 80                                  	movsd  QWORD PTR [rbp-0x80],xmm0
  385c0c:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  385c11:	e8 c2 9d f6 ff                                  	call   0x2ef9d8
  385c16:	4c 8b c0                                        	mov    r8,rax
  385c19:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  385c1d:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  385c21:	e8 62 57 f5 ff                                  	call   0x2db388
  385c26:	f3 44 0f 10 25 31 d6 f0 ff                      	movss  xmm12,DWORD PTR [rip+0xfffffffffff0d631]        # 0x293260
  385c2f:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  385c33:	41 0f 28 cc                                     	movaps xmm1,xmm12
  385c37:	e8 44 6e ff ff                                  	call   0x37ca80
  385c3c:	45 33 c9                                        	xor    r9d,r9d
  385c3f:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  385c43:	45 33 c0                                        	xor    r8d,r8d
  385c46:	8b d3                                           	mov    edx,ebx
  385c48:	e8 8f ec 00 00                                  	call   0x3948dc
  385c4d:	4c 8d 4c 24 51                                  	lea    r9,[rsp+0x51]
  385c52:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  385c5a:	4c 8d 85 b8 00 00 00                            	lea    r8,[rbp+0xb8]
  385c61:	8b d3                                           	mov    edx,ebx
  385c63:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  385c67:	e8 74 6b 03 00                                  	call   0x3bc7e0
  385c6c:	0f b7 4c 24 69                                  	movzx  ecx,WORD PTR [rsp+0x69]
  385c71:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  385c76:	66 89 4c 24 69                                  	mov    WORD PTR [rsp+0x69],cx
  385c7b:	33 d2                                           	xor    edx,edx
  385c7d:	8a 4c 24 6b                                     	mov    cl,BYTE PTR [rsp+0x6b]
  385c81:	8a d8                                           	mov    bl,al
  385c83:	88 4c 24 6b                                     	mov    BYTE PTR [rsp+0x6b],cl
  385c87:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  385c8b:	49 8b cf                                        	mov    rcx,r15
  385c8e:	48 c7 44 24 60 00 00 00 00                      	mov    QWORD PTR [rsp+0x60],0x0
  385c97:	c6 44 24 68 00                                  	mov    BYTE PTR [rsp+0x68],0x0
  385c9c:	e8 73 af ff ff                                  	call   0x380c14
  385ca1:	f3 44 0f 10 0d aa 75 f0 ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffff075aa]        # 0x28d254
  385caa:	0f 57 c9                                        	xorps  xmm1,xmm1
  385cad:	f3 0f 10 35 ff d4 f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff0d4ff]        # 0x2931b4
  385cb5:	41 0f 28 d1                                     	movaps xmm2,xmm9
  385cb9:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  385cbf:	4c 8b f0                                        	mov    r14,rax
  385cc2:	44 8a 48 08                                     	mov    r9b,BYTE PTR [rax+0x8]
  385cc6:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  385cca:	e8 79 01 fb ff                                  	call   0x335e48
  385ccf:	41 80 7e 08 00                                  	cmp    BYTE PTR [r14+0x8],0x0
  385cd4:	f3 41 0f 11 06                                  	movss  DWORD PTR [r14],xmm0
  385cd9:	75 0e                                           	jne    0x385ce9
  385cdb:	80 bd b8 00 00 00 00                            	cmp    BYTE PTR [rbp+0xb8],0x0
  385ce2:	75 05                                           	jne    0x385ce9
  385ce4:	45 33 c9                                        	xor    r9d,r9d
  385ce7:	eb 03                                           	jmp    0x385cec
  385ce9:	41 b1 01                                        	mov    r9b,0x1
  385cec:	f3 41 0f 10 46 04                               	movss  xmm0,DWORD PTR [r14+0x4]
  385cf2:	41 0f 28 d1                                     	movaps xmm2,xmm9
  385cf6:	0f 57 c9                                        	xorps  xmm1,xmm1
  385cf9:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  385cff:	e8 44 01 fb ff                                  	call   0x335e48
  385d04:	f3 41 0f 11 46 04                               	movss  DWORD PTR [r14+0x4],xmm0
  385d0a:	84 db                                           	test   bl,bl
  385d0c:	74 0c                                           	je     0x385d1a
  385d0e:	41 80 7e 08 00                                  	cmp    BYTE PTR [r14+0x8],0x0
  385d13:	0f 94 c0                                        	sete   al
  385d16:	41 88 46 08                                     	mov    BYTE PTR [r14+0x8],al
  385d1a:	48 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [rdi+0x298]
  385d21:	bb 01 00 00 00                                  	mov    ebx,0x1
  385d26:	f3 45 0f 10 06                                  	movss  xmm8,DWORD PTR [r14]
  385d2b:	8b cb                                           	mov    ecx,ebx
  385d2d:	41 0f 28 c9                                     	movaps xmm1,xmm9
  385d31:	e8 62 c5 00 00                                  	call   0x392298
  385d36:	8b d0                                           	mov    edx,eax
  385d38:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  385d3c:	e8 93 07 fb ff                                  	call   0x3364d4
  385d41:	f3 0f 10 0d 83 d3 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0d383]        # 0x2930cc
  385d49:	8b cb                                           	mov    ecx,ebx
  385d4b:	f3 41 0f 10 7e 04                               	movss  xmm7,DWORD PTR [r14+0x4]
  385d51:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  385d55:	e8 3e c5 00 00                                  	call   0x392298
  385d5a:	8b d0                                           	mov    edx,eax
  385d5c:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  385d60:	e8 6f 07 fb ff                                  	call   0x3364d4
  385d65:	41 0f 28 c9                                     	movaps xmm1,xmm9
  385d69:	8d 4b 01                                        	lea    ecx,[rbx+0x1]
  385d6c:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  385d6f:	f3 0f 7f 44 24 60                               	movdqu XMMWORD PTR [rsp+0x60],xmm0
  385d75:	e8 1e c5 00 00                                  	call   0x392298
  385d7a:	8b d0                                           	mov    edx,eax
  385d7c:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  385d80:	e8 4f 07 fb ff                                  	call   0x3364d4
  385d85:	0f 28 df                                        	movaps xmm3,xmm7
  385d88:	66 0f 7f 75 80                                  	movdqa XMMWORD PTR [rbp-0x80],xmm6
  385d8d:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  385d92:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  385d97:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  385d9a:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  385d9e:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  385da4:	e8 fb 37 ff ff                                  	call   0x3795a4
  385da9:	41 0f 28 d8                                     	movaps xmm3,xmm8
  385dad:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  385db1:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  385db6:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  385dba:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  385dbd:	f3 0f 7f 44 24 60                               	movdqu XMMWORD PTR [rsp+0x60],xmm0
  385dc3:	e8 dc 37 ff ff                                  	call   0x3795a4
  385dc8:	48 8b c8                                        	mov    rcx,rax
  385dcb:	e8 3c 9a f6 ff                                  	call   0x2ef80c
  385dd0:	f3 0f 10 35 10 31 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec3110]        # 0x248ee8
  385dd8:	48 8d 0d 01 63 07 00                            	lea    rcx,[rip+0x76301]        # 0x3fc0e0
  385ddf:	f3 0f 59 35 d1 d3 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff0d3d1]        # 0x2931b8
  385de7:	ba 02 00 00 00                                  	mov    edx,0x2
  385dec:	8b d8                                           	mov    ebx,eax
  385dee:	e8 c5 09 fb ff                                  	call   0x3367b8
  385df3:	f3 0f 10 0d bd d3 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0d3bd]        # 0x2931b8
  385dfb:	48 8b c8                                        	mov    rcx,rax
  385dfe:	e8 e9 ec fd ff                                  	call   0x364aec
  385e03:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  385e0c:	4c 8d 4d 90                                     	lea    r9,[rbp-0x70]
  385e10:	f3 44 0f 11 54 24 38                            	movss  DWORD PTR [rsp+0x38],xmm10
  385e17:	48 8b d0                                        	mov    rdx,rax
  385e1a:	48 8d 05 03 19 f2 ff                            	lea    rax,[rip+0xfffffffffff21903]        # 0x2a7724
  385e21:	48 c7 44 24 30 00 00 00 00                      	mov    QWORD PTR [rsp+0x30],0x0
  385e2a:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  385e2f:	0f 28 d6                                        	movaps xmm2,xmm6
  385e32:	48 8b cf                                        	mov    rcx,rdi
  385e35:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  385e39:	e8 ba d3 01 00                                  	call   0x3a31f8
  385e3e:	f3 41 0f 10 06                                  	movss  xmm0,DWORD PTR [r14]
  385e43:	0f 2f 05 42 d2 f0 ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffff0d242]        # 0x29308c
  385e4a:	0f 86 84 02 00 00                               	jbe    0x3860d4
  385e50:	41 0f 28 c9                                     	movaps xmm1,xmm9
  385e54:	b9 08 00 00 00                                  	mov    ecx,0x8
  385e59:	e8 3a c4 00 00                                  	call   0x392298
  385e5e:	bb 03 00 00 00                                  	mov    ebx,0x3
  385e63:	8b d0                                           	mov    edx,eax
  385e65:	8b cb                                           	mov    ecx,ebx
  385e67:	e8 80 2d 01 00                                  	call   0x398bec
  385e6c:	f3 41 0f 10 0e                                  	movss  xmm1,DWORD PTR [r14]
  385e71:	33 c9                                           	xor    ecx,ecx
  385e73:	e8 50 2e 01 00                                  	call   0x398cc8
  385e78:	f3 41 0f 10 4d 44                               	movss  xmm1,DWORD PTR [r13+0x44]
  385e7e:	8b cb                                           	mov    ecx,ebx
  385e80:	e8 43 2e 01 00                                  	call   0x398cc8
  385e85:	f3 0f 10 0d 5b 30 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec305b]        # 0x248ee8
  385e8d:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  385e92:	f3 0f 10 35 82 7c f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff07c82]        # 0x28db1c
  385e9a:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  385e9e:	0f 28 d1                                        	movaps xmm2,xmm1
  385ea1:	e8 9a 64 f4 ff                                  	call   0x2cc340
  385ea6:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  385eab:	8d 4b 0b                                        	lea    ecx,[rbx+0xb]
  385eae:	e8 ad 2d 01 00                                  	call   0x398c60
  385eb3:	f3 0f 10 0d 2d 30 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec302d]        # 0x248ee8
  385ebb:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  385ec0:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  385ec4:	0f 28 d1                                        	movaps xmm2,xmm1
  385ec7:	e8 74 64 f4 ff                                  	call   0x2cc340
  385ecc:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  385ed1:	8d 4b ff                                        	lea    ecx,[rbx-0x1]
  385ed4:	e8 87 2d 01 00                                  	call   0x398c60
  385ed9:	33 d2                                           	xor    edx,edx
  385edb:	44 8d 43 6c                                     	lea    r8d,[rbx+0x6c]
  385edf:	49 8b cf                                        	mov    rcx,r15
  385ee2:	e8 bd 70 00 00                                  	call   0x38cfa4
  385ee7:	f3 0f 10 1d f9 2f ec ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffec2ff9]        # 0x248ee8
  385eef:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  385ef4:	f3 45 0f 5c 0e                                  	subss  xmm9,DWORD PTR [r14]
  385ef9:	0f 28 cb                                        	movaps xmm1,xmm3
  385efc:	0f 28 c3                                        	movaps xmm0,xmm3
  385eff:	f3 0f 59 05 19 7c f0 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff07c19]        # 0x28db20
  385f07:	f3 0f 59 1d 11 d3 f0 ff                         	mulss  xmm3,DWORD PTR [rip+0xfffffffffff0d311]        # 0x293220
  385f0f:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  385f13:	f3 44 0f 59 c8                                  	mulss  xmm9,xmm0
  385f18:	f3 0f 58 4d 9c                                  	addss  xmm1,DWORD PTR [rbp-0x64]
  385f1d:	f3 44 0f 58 c9                                  	addss  xmm9,xmm1
  385f22:	f3 0f 10 4d 98                                  	movss  xmm1,DWORD PTR [rbp-0x68]
  385f27:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  385f2b:	41 0f 28 d1                                     	movaps xmm2,xmm9
  385f2f:	e8 0c 64 f4 ff                                  	call   0x2cc340
  385f34:	33 d2                                           	xor    edx,edx
  385f36:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  385f3b:	e8 e0 5b 01 00                                  	call   0x39bb20
  385f40:	e8 bb 72 fd ff                                  	call   0x35d200
  385f45:	48 8b c8                                        	mov    rcx,rax
  385f48:	e8 13 92 00 00                                  	call   0x38f160
  385f4d:	e8 ae 72 fd ff                                  	call   0x35d200
  385f52:	48 8b c8                                        	mov    rcx,rax
  385f55:	e8 62 91 00 00                                  	call   0x38f0bc
  385f5a:	33 c9                                           	xor    ecx,ecx
  385f5c:	e8 8b e8 00 00                                  	call   0x3947ec
  385f61:	33 ff                                           	xor    edi,edi
  385f63:	84 c0                                           	test   al,al
  385f65:	75 1a                                           	jne    0x385f81
  385f67:	33 d2                                           	xor    edx,edx
  385f69:	33 c9                                           	xor    ecx,ecx
  385f6b:	e8 74 e4 00 00                                  	call   0x3943e4
  385f70:	84 c0                                           	test   al,al
  385f72:	74 0d                                           	je     0x385f81
  385f74:	40 38 bd b8 00 00 00                            	cmp    BYTE PTR [rbp+0xb8],dil
  385f7b:	75 04                                           	jne    0x385f81
  385f7d:	41 88 7e 08                                     	mov    BYTE PTR [r14+0x8],dil
  385f81:	f3 0f 10 05 5f 2f ec ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffec2f5f]        # 0x248ee8
  385f89:	f3 0f 59 05 ab 34 f2 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff234ab]        # 0x2a943c
  385f91:	e8 6e 57 01 00                                  	call   0x39b704
  385f96:	48 8b d6                                        	mov    rdx,rsi
  385f99:	49 8b cf                                        	mov    rcx,r15
  385f9c:	e8 0f f4 ff ff                                  	call   0x3853b0
  385fa1:	45 84 e4                                        	test   r12b,r12b
  385fa4:	0f 85 11 01 00 00                               	jne    0x3860bb
  385faa:	39 7e 04                                        	cmp    DWORD PTR [rsi+0x4],edi
  385fad:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  385fb1:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  385fb6:	0f 94 c3                                        	sete   bl
  385fb9:	e8 6a ce ff ff                                  	call   0x382e28
  385fbe:	48 8b c8                                        	mov    rcx,rax
  385fc1:	e8 46 00 ff ff                                  	call   0x37600c
  385fc6:	48 8b c8                                        	mov    rcx,rax
  385fc9:	8a d3                                           	mov    dl,bl
  385fcb:	e8 5c 2e 00 00                                  	call   0x388e2c
  385fd0:	84 c0                                           	test   al,al
  385fd2:	74 03                                           	je     0x385fd7
  385fd4:	89 7e 04                                        	mov    DWORD PTR [rsi+0x4],edi
  385fd7:	f3 0f 10 0d 09 2f ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec2f09]        # 0x248ee8
  385fdf:	0f 57 c0                                        	xorps  xmm0,xmm0
  385fe2:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  385fe6:	e8 19 4c 01 00                                  	call   0x39ac04
  385feb:	83 7e 04 01                                     	cmp    DWORD PTR [rsi+0x4],0x1
  385fef:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  385ff3:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  385ff8:	0f 94 c3                                        	sete   bl
  385ffb:	e8 0c cf ff ff                                  	call   0x382f0c
  386000:	48 8b c8                                        	mov    rcx,rax
  386003:	e8 68 f7 fe ff                                  	call   0x375770
  386008:	48 8b c8                                        	mov    rcx,rax
  38600b:	8a d3                                           	mov    dl,bl
  38600d:	e8 1a 2e 00 00                                  	call   0x388e2c
  386012:	84 c0                                           	test   al,al
  386014:	74 07                                           	je     0x38601d
  386016:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [rsi+0x4],0x1
  38601d:	e8 82 cc 00 00                                  	call   0x392ca4
  386022:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  386027:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  38602c:	f3 0f 10 78 3c                                  	movss  xmm7,DWORD PTR [rax+0x3c]
  386031:	e8 7e cf ff ff                                  	call   0x382fb4
  386036:	48 8b c8                                        	mov    rcx,rax
  386039:	e8 9a f8 fe ff                                  	call   0x3758d8
  38603e:	48 8b d0                                        	mov    rdx,rax
  386041:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  386048:	45 33 c9                                        	xor    r9d,r9d
  38604b:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  386050:	45 33 c0                                        	xor    r8d,r8d
  386053:	e8 44 97 00 00                                  	call   0x38f79c
  386058:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  38605c:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  386061:	f3 0f 58 38                                     	addss  xmm7,DWORD PTR [rax]
  386065:	e8 d2 c2 00 00                                  	call   0x39233c
  38606a:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [rax]
  38606e:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  386072:	f3 0f 59 35 d6 71 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff071d6]        # 0x28d250
  38607a:	e8 a5 c3 00 00                                  	call   0x392424
  38607f:	f3 0f 58 c6                                     	addss  xmm0,xmm6
  386083:	e8 88 53 01 00                                  	call   0x39b410
  386088:	83 7e 04 02                                     	cmp    DWORD PTR [rsi+0x4],0x2
  38608c:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  386091:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  386096:	0f 94 c3                                        	sete   bl
  386099:	e8 46 cf ff ff                                  	call   0x382fe4
  38609e:	48 8b c8                                        	mov    rcx,rax
  3860a1:	e8 32 f8 fe ff                                  	call   0x3758d8
  3860a6:	48 8b c8                                        	mov    rcx,rax
  3860a9:	8a d3                                           	mov    dl,bl
  3860ab:	e8 7c 2d 00 00                                  	call   0x388e2c
  3860b0:	84 c0                                           	test   al,al
  3860b2:	74 07                                           	je     0x3860bb
  3860b4:	c7 46 04 02 00 00 00                            	mov    DWORD PTR [rsi+0x4],0x2
  3860bb:	e8 d4 a8 00 00                                  	call   0x390994
  3860c0:	b9 04 00 00 00                                  	mov    ecx,0x4
  3860c5:	e8 a2 28 01 00                                  	call   0x39896c
  3860ca:	b9 01 00 00 00                                  	mov    ecx,0x1
  3860cf:	e8 38 28 01 00                                  	call   0x39890c
  3860d4:	4c 8d 9c 24 58 01 00 00                         	lea    r11,[rsp+0x158]
  3860dc:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3860e1:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3860e6:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3860eb:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3860f0:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3860f5:	45 0f 28 63 98                                  	movaps xmm12,XMMWORD PTR [r11-0x68]
  3860fa:	49 8b e3                                        	mov    rsp,r11
  3860fd:	41 5f                                           	pop    r15
  3860ff:	41 5e                                           	pop    r14
  386101:	41 5d                                           	pop    r13
  386103:	41 5c                                           	pop    r12
  386105:	5f                                              	pop    rdi
  386106:	5e                                              	pop    rsi
  386107:	5b                                              	pop    rbx
  386108:	5d                                              	pop    rbp
  386109:	c3                                              	ret
