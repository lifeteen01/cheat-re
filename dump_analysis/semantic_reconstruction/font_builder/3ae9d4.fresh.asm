
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae9d4 <.data+0x3ae9d4>:
  3ae9d4:	48 8b c4                                        	mov    rax,rsp
  3ae9d7:	48 89 58 18                                     	mov    QWORD PTR [rax+0x18],rbx
  3ae9db:	44 89 48 20                                     	mov    DWORD PTR [rax+0x20],r9d
  3ae9df:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3ae9e3:	55                                              	push   rbp
  3ae9e4:	56                                              	push   rsi
  3ae9e5:	57                                              	push   rdi
  3ae9e6:	41 54                                           	push   r12
  3ae9e8:	41 55                                           	push   r13
  3ae9ea:	41 56                                           	push   r14
  3ae9ec:	41 57                                           	push   r15
  3ae9ee:	48 81 ec e0 00 00 00                            	sub    rsp,0xe0
  3ae9f5:	48 8b bc 24 40 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x140]
  3ae9fd:	41 8b d9                                        	mov    ebx,r9d
  3aea00:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3aea04:	41 83 c9 ff                                     	or     r9d,0xffffffff
  3aea08:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3aea0c:	45 33 db                                        	xor    r11d,r11d
  3aea0f:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3aea14:	4d 8b f0                                        	mov    r14,r8
  3aea17:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  3aea1c:	4c 8b c2                                        	mov    r8,rdx
  3aea1f:	44 0f 29 98 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm11
  3aea27:	45 8d 51 02                                     	lea    r10d,[r9+0x2]
  3aea2b:	44 0f 29 a0 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm12
  3aea33:	48 8b f1                                        	mov    rsi,rcx
  3aea36:	8b 41 24                                        	mov    eax,DWORD PTR [rcx+0x24]
  3aea39:	89 44 24 74                                     	mov    DWORD PTR [rsp+0x74],eax
  3aea3d:	8b 41 28                                        	mov    eax,DWORD PTR [rcx+0x28]
  3aea40:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  3aea44:	33 c0                                           	xor    eax,eax
  3aea46:	44 89 4c 24 50                                  	mov    DWORD PTR [rsp+0x50],r9d
  3aea4b:	44 89 54 24 54                                  	mov    DWORD PTR [rsp+0x54],r10d
  3aea50:	44 89 5c 24 60                                  	mov    DWORD PTR [rsp+0x60],r11d
  3aea55:	89 44 24 64                                     	mov    DWORD PTR [rsp+0x64],eax
  3aea59:	85 db                                           	test   ebx,ebx
  3aea5b:	0f 8e ea 03 00 00                               	jle    0x3aee4b
  3aea61:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  3aea65:	48 8d 2c 80                                     	lea    rbp,[rax+rax*4]
  3aea69:	49 8b c8                                        	mov    rcx,r8
  3aea6c:	f3 41 0f 10 0c ee                               	movss  xmm1,DWORD PTR [r14+rbp*8]
  3aea72:	41 0f 2f ca                                     	comiss xmm1,xmm10
  3aea76:	76 14                                           	jbe    0x3aea8c
  3aea78:	e8 5f 05 00 00                                  	call   0x3aefdc
  3aea7d:	44 8b 4c 24 50                                  	mov    r9d,DWORD PTR [rsp+0x50]
  3aea82:	4c 8b 84 24 28 01 00 00                         	mov    r8,QWORD PTR [rsp+0x128]
  3aea8a:	eb 0c                                           	jmp    0x3aea98
  3aea8c:	0f 57 0d 0d 48 ee ff                            	xorps  xmm1,XMMWORD PTR [rip+0xffffffffffee480d]        # 0x2932a0
  3aea93:	e8 14 05 00 00                                  	call   0x3aefac
  3aea98:	41 0f b6 4c ee 20                               	movzx  ecx,BYTE PTR [r14+rbp*8+0x20]
  3aea9e:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3aeaa2:	f3 0f 10 35 aa e7 ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffede7aa]        # 0x28d254
  3aeaaa:	0f 57 c0                                        	xorps  xmm0,xmm0
  3aeaad:	f3 0f 10 3d 9f e7 ed ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffede79f]        # 0x28d254
  3aeab5:	89 4e 24                                        	mov    DWORD PTR [rsi+0x24],ecx
  3aeab8:	41 0f b6 54 ee 21                               	movzx  edx,BYTE PTR [r14+rbp*8+0x21]
  3aeabe:	f3 48 0f 2a c1                                  	cvtsi2ss xmm0,rcx
  3aeac3:	89 56 28                                        	mov    DWORD PTR [rsi+0x28],edx
  3aeac6:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3aeaca:	0f 57 c0                                        	xorps  xmm0,xmm0
  3aeacd:	f3 48 0f 2a c2                                  	cvtsi2ss xmm0,rdx
  3aead2:	f3 0f 5e f8                                     	divss  xmm7,xmm0
  3aead6:	e8 51 d8 ff ff                                  	call   0x3ac32c
  3aeadb:	8b ca                                           	mov    ecx,edx
  3aeadd:	44 0f 28 d8                                     	movaps xmm11,xmm0
  3aeae1:	e8 46 d8 ff ff                                  	call   0x3ac32c
  3aeae6:	45 33 ff                                        	xor    r15d,r15d
  3aeae9:	44 0f 28 e0                                     	movaps xmm12,xmm0
  3aeaed:	45 39 7c ee 10                                  	cmp    DWORD PTR [r14+rbp*8+0x10],r15d
  3aeaf2:	0f 8e 39 03 00 00                               	jle    0x3aee31
  3aeaf8:	49 63 c3                                        	movsxd rax,r11d
  3aeafb:	48 8d 1c 40                                     	lea    rbx,[rax+rax*2]
  3aeaff:	8b 44 df 14                                     	mov    eax,DWORD PTR [rdi+rbx*8+0x14]
  3aeb03:	85 c0                                           	test   eax,eax
  3aeb05:	0f 84 b1 02 00 00                               	je     0x3aedbc
  3aeb0b:	83 7c df 04 00                                  	cmp    DWORD PTR [rdi+rbx*8+0x4],0x0
  3aeb10:	0f 84 a6 02 00 00                               	je     0x3aedbc
  3aeb16:	83 7c df 08 00                                  	cmp    DWORD PTR [rdi+rbx*8+0x8],0x0
  3aeb1b:	0f 84 9b 02 00 00                               	je     0x3aedbc
  3aeb21:	49 8b 4c ee 08                                  	mov    rcx,QWORD PTR [r14+rbp*8+0x8]
  3aeb26:	4d 8b 6c ee 18                                  	mov    r13,QWORD PTR [r14+rbp*8+0x18]
  3aeb2b:	49 63 c7                                        	movsxd rax,r15d
  3aeb2e:	4c 6b e0 1c                                     	imul   r12,rax,0x1c
  3aeb32:	48 85 c9                                        	test   rcx,rcx
  3aeb35:	75 0a                                           	jne    0x3aeb41
  3aeb37:	41 8b 54 ee 04                                  	mov    edx,DWORD PTR [r14+rbp*8+0x4]
  3aeb3c:	41 03 d7                                        	add    edx,r15d
  3aeb3f:	eb 03                                           	jmp    0x3aeb44
  3aeb41:	8b 14 81                                        	mov    edx,DWORD PTR [rcx+rax*4]
  3aeb44:	49 8b c8                                        	mov    rcx,r8
  3aeb47:	e8 2c f4 ff ff                                  	call   0x3adf78
  3aeb4c:	f3 0f 7e 4c df 0c                               	movq   xmm1,QWORD PTR [rdi+rbx*8+0xc]
  3aeb52:	4c 8d 4c 24 6c                                  	lea    r9,[rsp+0x6c]
  3aeb57:	48 8b 8c 24 28 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x128]
  3aeb5f:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3aeb64:	8b d0                                           	mov    edx,eax
  3aeb66:	89 84 24 20 01 00 00                            	mov    DWORD PTR [rsp+0x120],eax
  3aeb6d:	8b 46 1c                                        	mov    eax,DWORD PTR [rsi+0x1c]
  3aeb70:	29 44 df 04                                     	sub    DWORD PTR [rdi+rbx*8+0x4],eax
  3aeb74:	29 44 df 08                                     	sub    DWORD PTR [rdi+rbx*8+0x8],eax
  3aeb78:	66 0f 6e c0                                     	movd   xmm0,eax
  3aeb7c:	66 0f 70 c0 00                                  	pshufd xmm0,xmm0,0x0
  3aeb81:	66 0f fe c8                                     	paddd  xmm1,xmm0
  3aeb85:	66 0f d6 4c df 0c                               	movq   QWORD PTR [rdi+rbx*8+0xc],xmm1
  3aeb8b:	e8 c0 f9 ff ff                                  	call   0x3ae550
  3aeb90:	8b 46 24                                        	mov    eax,DWORD PTR [rsi+0x24]
  3aeb93:	0f 57 db                                        	xorps  xmm3,xmm3
  3aeb96:	44 8b 46 28                                     	mov    r8d,DWORD PTR [rsi+0x28]
  3aeb9a:	0f 57 d2                                        	xorps  xmm2,xmm2
  3aeb9d:	8b 94 24 20 01 00 00                            	mov    edx,DWORD PTR [rsp+0x120]
  3aeba4:	48 8b 8c 24 28 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x128]
  3aebac:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  3aebb1:	48 8d 44 24 68                                  	lea    rax,[rsp+0x68]
  3aebb6:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  3aebbb:	48 8d 44 24 7c                                  	lea    rax,[rsp+0x7c]
  3aebc0:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3aebc5:	48 8d 44 24 5c                                  	lea    rax,[rsp+0x5c]
  3aebca:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3aebcf:	48 8d 44 24 58                                  	lea    rax,[rsp+0x58]
  3aebd4:	f3 49 0f 2a d8                                  	cvtsi2ss xmm3,r8
  3aebd9:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3aebde:	f3 41 0f 59 d0                                  	mulss  xmm2,xmm8
  3aebe3:	f3 41 0f 59 d8                                  	mulss  xmm3,xmm8
  3aebe8:	e8 cb f6 ff ff                                  	call   0x3ae2b8
  3aebed:	8b 46 28                                        	mov    eax,DWORD PTR [rsi+0x28]
  3aebf0:	0f 57 c9                                        	xorps  xmm1,xmm1
  3aebf3:	8b 4e 24                                        	mov    ecx,DWORD PTR [rsi+0x24]
  3aebf6:	0f 57 c0                                        	xorps  xmm0,xmm0
  3aebf9:	44 8b 56 18                                     	mov    r10d,DWORD PTR [rsi+0x18]
  3aebfd:	44 8b 4c df 08                                  	mov    r9d,DWORD PTR [rdi+rbx*8+0x8]
  3aec02:	44 8b 44 df 04                                  	mov    r8d,DWORD PTR [rdi+rbx*8+0x4]
  3aec07:	44 2b c8                                        	sub    r9d,eax
  3aec0a:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  3aec0f:	44 2b c1                                        	sub    r8d,ecx
  3aec12:	41 8b c2                                        	mov    eax,r10d
  3aec15:	41 ff c1                                        	inc    r9d
  3aec18:	41 ff c0                                        	inc    r8d
  3aec1b:	0f af 44 df 10                                  	imul   eax,DWORD PTR [rdi+rbx*8+0x10]
  3aec20:	f3 48 0f 2a c1                                  	cvtsi2ss xmm0,rcx
  3aec25:	48 63 4c df 0c                                  	movsxd rcx,DWORD PTR [rdi+rbx*8+0xc]
  3aec2a:	48 63 d0                                        	movsxd rdx,eax
  3aec2d:	8b 84 24 20 01 00 00                            	mov    eax,DWORD PTR [rsp+0x120]
  3aec34:	48 03 d1                                        	add    rdx,rcx
  3aec37:	48 03 56 30                                     	add    rdx,QWORD PTR [rsi+0x30]
  3aec3b:	48 8b 8c 24 28 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x128]
  3aec43:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  3aec47:	f3 44 0f 11 54 24 40                            	movss  DWORD PTR [rsp+0x40],xmm10
  3aec4e:	f3 44 0f 11 54 24 38                            	movss  DWORD PTR [rsp+0x38],xmm10
  3aec55:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  3aec5a:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3aec5f:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm1
  3aec65:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  3aec6b:	44 89 54 24 20                                  	mov    DWORD PTR [rsp+0x20],r10d
  3aec70:	e8 13 fb ff ff                                  	call   0x3ae788
  3aec75:	8b 56 24                                        	mov    edx,DWORD PTR [rsi+0x24]
  3aec78:	83 fa 01                                        	cmp    edx,0x1
  3aec7b:	76 2d                                           	jbe    0x3aecaa
  3aec7d:	44 8b 4e 18                                     	mov    r9d,DWORD PTR [rsi+0x18]
  3aec81:	41 8b c1                                        	mov    eax,r9d
  3aec84:	0f af 44 df 10                                  	imul   eax,DWORD PTR [rdi+rbx*8+0x10]
  3aec89:	44 8b 44 df 08                                  	mov    r8d,DWORD PTR [rdi+rbx*8+0x8]
  3aec8e:	89 54 24 20                                     	mov    DWORD PTR [rsp+0x20],edx
  3aec92:	8b 54 df 04                                     	mov    edx,DWORD PTR [rdi+rbx*8+0x4]
  3aec96:	48 63 c8                                        	movsxd rcx,eax
  3aec99:	48 63 44 df 0c                                  	movsxd rax,DWORD PTR [rdi+rbx*8+0xc]
  3aec9e:	48 03 c8                                        	add    rcx,rax
  3aeca1:	48 03 4e 30                                     	add    rcx,QWORD PTR [rsi+0x30]
  3aeca5:	e8 1e d1 ff ff                                  	call   0x3abdc8
  3aecaa:	8b 56 28                                        	mov    edx,DWORD PTR [rsi+0x28]
  3aecad:	83 fa 01                                        	cmp    edx,0x1
  3aecb0:	76 2d                                           	jbe    0x3aecdf
  3aecb2:	44 8b 4e 18                                     	mov    r9d,DWORD PTR [rsi+0x18]
  3aecb6:	41 8b c1                                        	mov    eax,r9d
  3aecb9:	0f af 44 df 10                                  	imul   eax,DWORD PTR [rdi+rbx*8+0x10]
  3aecbe:	44 8b 44 df 08                                  	mov    r8d,DWORD PTR [rdi+rbx*8+0x8]
  3aecc3:	89 54 24 20                                     	mov    DWORD PTR [rsp+0x20],edx
  3aecc7:	8b 54 df 04                                     	mov    edx,DWORD PTR [rdi+rbx*8+0x4]
  3aeccb:	48 63 c8                                        	movsxd rcx,eax
  3aecce:	48 63 44 df 0c                                  	movsxd rax,DWORD PTR [rdi+rbx*8+0xc]
  3aecd3:	48 03 c8                                        	add    rcx,rax
  3aecd6:	48 03 4e 30                                     	add    rcx,QWORD PTR [rsi+0x30]
  3aecda:	e8 3d ee ff ff                                  	call   0x3adb1c
  3aecdf:	0f b7 44 df 0c                                  	movzx  eax,WORD PTR [rdi+rbx*8+0xc]
  3aece4:	66 0f 6e 44 24 70                               	movd   xmm0,DWORD PTR [rsp+0x70]
  3aecea:	66 0f 6e 4c 24 58                               	movd   xmm1,DWORD PTR [rsp+0x58]
  3aecf0:	44 8b 54 24 54                                  	mov    r10d,DWORD PTR [rsp+0x54]
  3aecf5:	44 8b 5c 24 60                                  	mov    r11d,DWORD PTR [rsp+0x60]
  3aecfa:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3aecfd:	66 43 89 04 2c                                  	mov    WORD PTR [r12+r13*1],ax
  3aed02:	0f b7 44 df 10                                  	movzx  eax,WORD PTR [rdi+rbx*8+0x10]
  3aed07:	66 43 89 44 2c 02                               	mov    WORD PTR [r12+r13*1+0x2],ax
  3aed0d:	0f b7 44 df 0c                                  	movzx  eax,WORD PTR [rdi+rbx*8+0xc]
  3aed12:	66 03 44 df 04                                  	add    ax,WORD PTR [rdi+rbx*8+0x4]
  3aed17:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3aed1c:	66 43 89 44 2c 04                               	mov    WORD PTR [r12+r13*1+0x4],ax
  3aed22:	0f b7 44 df 10                                  	movzx  eax,WORD PTR [rdi+rbx*8+0x10]
  3aed27:	66 03 44 df 08                                  	add    ax,WORD PTR [rdi+rbx*8+0x8]
  3aed2c:	f3 43 0f 11 44 2c 10                            	movss  DWORD PTR [r12+r13*1+0x10],xmm0
  3aed33:	66 0f 6e 44 24 5c                               	movd   xmm0,DWORD PTR [rsp+0x5c]
  3aed39:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3aed3c:	66 43 89 44 2c 06                               	mov    WORD PTR [r12+r13*1+0x6],ax
  3aed42:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3aed45:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3aed49:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3aed4d:	f3 41 0f 58 c4                                  	addss  xmm0,xmm12
  3aed52:	f3 41 0f 58 cb                                  	addss  xmm1,xmm11
  3aed57:	f3 43 0f 11 44 2c 0c                            	movss  DWORD PTR [r12+r13*1+0xc],xmm0
  3aed5e:	f3 43 0f 11 4c 2c 08                            	movss  DWORD PTR [r12+r13*1+0x8],xmm1
  3aed65:	8b 44 df 04                                     	mov    eax,DWORD PTR [rdi+rbx*8+0x4]
  3aed69:	03 44 24 58                                     	add    eax,DWORD PTR [rsp+0x58]
  3aed6d:	66 0f 6e c0                                     	movd   xmm0,eax
  3aed71:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3aed74:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3aed78:	f3 41 0f 58 c3                                  	addss  xmm0,xmm11
  3aed7d:	f3 43 0f 11 44 2c 14                            	movss  DWORD PTR [r12+r13*1+0x14],xmm0
  3aed84:	8b 44 df 08                                     	mov    eax,DWORD PTR [rdi+rbx*8+0x8]
  3aed88:	03 44 24 5c                                     	add    eax,DWORD PTR [rsp+0x5c]
  3aed8c:	83 bc 24 20 01 00 00 00                         	cmp    DWORD PTR [rsp+0x120],0x0
  3aed94:	66 0f 6e c0                                     	movd   xmm0,eax
  3aed98:	41 8b c7                                        	mov    eax,r15d
  3aed9b:	0f 45 44 24 50                                  	cmovne eax,DWORD PTR [rsp+0x50]
  3aeda0:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3aeda3:	44 8b c8                                        	mov    r9d,eax
  3aeda6:	89 44 24 50                                     	mov    DWORD PTR [rsp+0x50],eax
  3aedaa:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3aedae:	f3 41 0f 58 c4                                  	addss  xmm0,xmm12
  3aedb3:	f3 43 0f 11 44 2c 18                            	movss  DWORD PTR [r12+r13*1+0x18],xmm0
  3aedba:	eb 50                                           	jmp    0x3aee0c
  3aedbc:	83 7e 20 00                                     	cmp    DWORD PTR [rsi+0x20],0x0
  3aedc0:	75 42                                           	jne    0x3aee04
  3aedc2:	85 c0                                           	test   eax,eax
  3aedc4:	74 3e                                           	je     0x3aee04
  3aedc6:	83 7c df 04 00                                  	cmp    DWORD PTR [rdi+rbx*8+0x4],0x0
  3aedcb:	75 37                                           	jne    0x3aee04
  3aedcd:	83 7c df 08 00                                  	cmp    DWORD PTR [rdi+rbx*8+0x8],0x0
  3aedd2:	75 30                                           	jne    0x3aee04
  3aedd4:	45 85 c9                                        	test   r9d,r9d
  3aedd7:	78 2b                                           	js     0x3aee04
  3aedd9:	4d 8b 44 ee 18                                  	mov    r8,QWORD PTR [r14+rbp*8+0x18]
  3aedde:	49 63 c7                                        	movsxd rax,r15d
  3aede1:	48 6b d0 1c                                     	imul   rdx,rax,0x1c
  3aede5:	49 63 c1                                        	movsxd rax,r9d
  3aede8:	48 6b c8 1c                                     	imul   rcx,rax,0x1c
  3aedec:	41 0f 10 04 08                                  	movups xmm0,XMMWORD PTR [r8+rcx*1]
  3aedf1:	41 0f 11 04 10                                  	movups XMMWORD PTR [r8+rdx*1],xmm0
  3aedf6:	41 0f 10 4c 08 0c                               	movups xmm1,XMMWORD PTR [r8+rcx*1+0xc]
  3aedfc:	41 0f 11 4c 10 0c                               	movups XMMWORD PTR [r8+rdx*1+0xc],xmm1
  3aee02:	eb 08                                           	jmp    0x3aee0c
  3aee04:	45 33 d2                                        	xor    r10d,r10d
  3aee07:	44 89 54 24 54                                  	mov    DWORD PTR [rsp+0x54],r10d
  3aee0c:	4c 8b 84 24 28 01 00 00                         	mov    r8,QWORD PTR [rsp+0x128]
  3aee14:	41 ff c3                                        	inc    r11d
  3aee17:	41 ff c7                                        	inc    r15d
  3aee1a:	44 89 5c 24 60                                  	mov    DWORD PTR [rsp+0x60],r11d
  3aee1f:	45 3b 7c ee 10                                  	cmp    r15d,DWORD PTR [r14+rbp*8+0x10]
  3aee24:	0f 8c ce fc ff ff                               	jl     0x3aeaf8
  3aee2a:	8b 9c 24 38 01 00 00                            	mov    ebx,DWORD PTR [rsp+0x138]
  3aee31:	8b 44 24 64                                     	mov    eax,DWORD PTR [rsp+0x64]
  3aee35:	4c 8b 84 24 28 01 00 00                         	mov    r8,QWORD PTR [rsp+0x128]
  3aee3d:	ff c0                                           	inc    eax
  3aee3f:	89 44 24 64                                     	mov    DWORD PTR [rsp+0x64],eax
  3aee43:	3b c3                                           	cmp    eax,ebx
  3aee45:	0f 8c 1a fc ff ff                               	jl     0x3aea65
  3aee4b:	8b 44 24 74                                     	mov    eax,DWORD PTR [rsp+0x74]
  3aee4f:	4c 8d 9c 24 e0 00 00 00                         	lea    r11,[rsp+0xe0]
  3aee57:	49 8b 5b 50                                     	mov    rbx,QWORD PTR [r11+0x50]
  3aee5b:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3aee60:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3aee65:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3aee6a:	45 0f 28 53 c0                                  	movaps xmm10,XMMWORD PTR [r11-0x40]
  3aee6f:	45 0f 28 5b b0                                  	movaps xmm11,XMMWORD PTR [r11-0x50]
  3aee74:	45 0f 28 63 a0                                  	movaps xmm12,XMMWORD PTR [r11-0x60]
  3aee79:	89 46 24                                        	mov    DWORD PTR [rsi+0x24],eax
  3aee7c:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  3aee80:	89 46 28                                        	mov    DWORD PTR [rsi+0x28],eax
  3aee83:	41 8b c2                                        	mov    eax,r10d
  3aee86:	49 8b e3                                        	mov    rsp,r11
  3aee89:	41 5f                                           	pop    r15
  3aee8b:	41 5e                                           	pop    r14
  3aee8d:	41 5d                                           	pop    r13
  3aee8f:	41 5c                                           	pop    r12
  3aee91:	5f                                              	pop    rdi
  3aee92:	5e                                              	pop    rsi
  3aee93:	5d                                              	pop    rbp
  3aee94:	c3                                              	ret
