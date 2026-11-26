
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039ff7c <.data+0x39ff7c>:
  39ff7c:	48 8b c4                                        	mov    rax,rsp
  39ff7f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  39ff83:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  39ff87:	57                                              	push   rdi
  39ff88:	48 83 ec 50                                     	sub    rsp,0x50
  39ff8c:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  39ff90:	48 8b f9                                        	mov    rdi,rcx
  39ff93:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  39ff97:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  39ff9c:	44 0f 28 c3                                     	movaps xmm8,xmm3
  39ffa0:	41 0f b7 f0                                     	movzx  esi,r8w
  39ffa4:	48 85 d2                                        	test   rdx,rdx
  39ffa7:	74 79                                           	je     0x3a0022
  39ffa9:	f3 0f 10 a4 24 b8 00 00 00                      	movss  xmm4,DWORD PTR [rsp+0xb8]
  39ffb2:	f3 0f 10 52 44                                  	movss  xmm2,DWORD PTR [rdx+0x44]
  39ffb7:	0f 28 c4                                        	movaps xmm0,xmm4
  39ffba:	f3 0f 10 4a 40                                  	movss  xmm1,DWORD PTR [rdx+0x40]
  39ffbf:	e8 f8 62 fd ff                                  	call   0x3762bc
  39ffc4:	f3 0f 10 1d 84 d2 ee ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffeed284]        # 0x28d250
  39ffcc:	0f 28 f0                                        	movaps xmm6,xmm0
  39ffcf:	0f 2e f4                                        	ucomiss xmm6,xmm4
  39ffd2:	7a 0d                                           	jp     0x39ffe1
  39ffd4:	75 0b                                           	jne    0x39ffe1
  39ffd6:	f3 0f 10 bc 24 88 00 00 00                      	movss  xmm7,DWORD PTR [rsp+0x88]
  39ffdf:	eb 25                                           	jmp    0x3a0006
  39ffe1:	80 7a 20 00                                     	cmp    BYTE PTR [rdx+0x20],0x0
  39ffe5:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  39ffe9:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  39ffed:	74 05                                           	je     0x39fff4
  39ffef:	e8 b8 30 ff ff                                  	call   0x3930ac
  39fff4:	f3 0f 10 bc 24 88 00 00 00                      	movss  xmm7,DWORD PTR [rsp+0x88]
  39fffd:	f3 44 0f 58 c0                                  	addss  xmm8,xmm0
  3a0002:	f3 0f 58 f8                                     	addss  xmm7,xmm0
  3a0006:	80 7a 20 00                                     	cmp    BYTE PTR [rdx+0x20],0x0
  3a000a:	74 0f                                           	je     0x3a001b
  3a000c:	f3 0f 58 f3                                     	addss  xmm6,xmm3
  3a0010:	f3 0f 2c c6                                     	cvttss2si eax,xmm6
  3a0014:	66 0f 6e f0                                     	movd   xmm6,eax
  3a0018:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3a001b:	f3 0f 58 72 24                                  	addss  xmm6,DWORD PTR [rdx+0x24]
  3a0020:	eb 12                                           	jmp    0x3a0034
  3a0022:	f3 0f 10 b4 24 b8 00 00 00                      	movss  xmm6,DWORD PTR [rsp+0xb8]
  3a002b:	f3 0f 10 bc 24 88 00 00 00                      	movss  xmm7,DWORD PTR [rsp+0x88]
  3a0034:	48 8d 59 28                                     	lea    rbx,[rcx+0x28]
  3a0038:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  3a003a:	48 8b cb                                        	mov    rcx,rbx
  3a003d:	ff c2                                           	inc    edx
  3a003f:	e8 50 ad fd ff                                  	call   0x37ad94
  3a0044:	48 8b cb                                        	mov    rcx,rbx
  3a0047:	e8 e4 92 00 00                                  	call   0x3a9330
  3a004c:	f3 0f 10 84 24 90 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x90]
  3a0055:	8b d6                                           	mov    edx,esi
  3a0057:	f3 0f 10 8c 24 80 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0x80]
  3a0060:	4c 8b c0                                        	mov    r8,rax
  3a0063:	c1 e2 02                                        	shl    edx,0x2
  3a0066:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3a0068:	83 e1 03                                        	and    ecx,0x3
  3a006b:	0b d1                                           	or     edx,ecx
  3a006d:	44 0f 2e c7                                     	ucomiss xmm8,xmm7
  3a0071:	7a 02                                           	jp     0x3a0075
  3a0073:	74 07                                           	je     0x3a007c
  3a0075:	0f 2e c8                                        	ucomiss xmm1,xmm0
  3a0078:	7a 06                                           	jp     0x3a0080
  3a007a:	75 04                                           	jne    0x3a0080
  3a007c:	33 c0                                           	xor    eax,eax
  3a007e:	eb 05                                           	jmp    0x3a0085
  3a0080:	b8 02 00 00 00                                  	mov    eax,0x2
  3a0085:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  3a008a:	83 e2 fd                                        	and    edx,0xfffffffd
  3a008d:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  3a0092:	0b c2                                           	or     eax,edx
  3a0094:	f3 41 0f 11 48 0c                               	movss  DWORD PTR [r8+0xc],xmm1
  3a009a:	83 e0 fe                                        	and    eax,0xfffffffe
  3a009d:	f3 0f 10 8c 24 a0 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0xa0]
  3a00a6:	f3 41 0f 11 48 1c                               	movss  DWORD PTR [r8+0x1c],xmm1
  3a00ac:	f3 0f 10 8c 24 b0 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0xb0]
  3a00b5:	f3 41 0f 11 48 24                               	movss  DWORD PTR [r8+0x24],xmm1
  3a00bb:	f3 41 0f 11 40 14                               	movss  DWORD PTR [r8+0x14],xmm0
  3a00c1:	f3 0f 10 84 24 98 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x98]
  3a00ca:	f3 41 0f 11 40 18                               	movss  DWORD PTR [r8+0x18],xmm0
  3a00d0:	f3 0f 10 84 24 a8 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xa8]
  3a00d9:	f3 41 0f 11 40 20                               	movss  DWORD PTR [r8+0x20],xmm0
  3a00df:	41 89 00                                        	mov    DWORD PTR [r8],eax
  3a00e2:	f3 45 0f 11 40 08                               	movss  DWORD PTR [r8+0x8],xmm8
  3a00e8:	44 0f 28 44 24 20                               	movaps xmm8,XMMWORD PTR [rsp+0x20]
  3a00ee:	f3 41 0f 11 78 10                               	movss  DWORD PTR [r8+0x10],xmm7
  3a00f4:	0f 28 7c 24 30                                  	movaps xmm7,XMMWORD PTR [rsp+0x30]
  3a00f9:	f3 41 0f 11 70 04                               	movss  DWORD PTR [r8+0x4],xmm6
  3a00ff:	48 8b 47 40                                     	mov    rax,QWORD PTR [rdi+0x40]
  3a0103:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  3a0108:	66 0f 6e 50 14                                  	movd   xmm2,DWORD PTR [rax+0x14]
  3a010d:	c6 47 60 01                                     	mov    BYTE PTR [rdi+0x60],0x1
  3a0111:	66 0f 6e 40 44                                  	movd   xmm0,DWORD PTR [rax+0x44]
  3a0116:	f3 41 0f 10 48 24                               	movss  xmm1,DWORD PTR [r8+0x24]
  3a011c:	f3 41 0f 5c 48 1c                               	subss  xmm1,DWORD PTR [r8+0x1c]
  3a0122:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a0125:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a0128:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  3a012c:	f3 0f 58 15 00 4d ef ff                         	addss  xmm2,DWORD PTR [rip+0xffffffffffef4d00]        # 0x294e34
  3a0134:	f3 41 0f 10 40 20                               	movss  xmm0,DWORD PTR [r8+0x20]
  3a013a:	f3 41 0f 5c 40 18                               	subss  xmm0,DWORD PTR [r8+0x18]
  3a0140:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  3a0144:	f3 0f 2c c9                                     	cvttss2si ecx,xmm1
  3a0148:	66 0f 6e 48 40                                  	movd   xmm1,DWORD PTR [rax+0x40]
  3a014d:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a0150:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  3a0154:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  3a0158:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  3a015c:	0f af c8                                        	imul   ecx,eax
  3a015f:	01 4f 70                                        	add    DWORD PTR [rdi+0x70],ecx
  3a0162:	48 83 c4 50                                     	add    rsp,0x50
  3a0166:	5f                                              	pop    rdi
  3a0167:	c3                                              	ret
