
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a792c <.data+0x3a792c>:
  3a792c:	48 8b c4             	mov    rax,rsp
  3a792f:	48 89 58 18          	mov    QWORD PTR [rax+0x18],rbx
  3a7933:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  3a7937:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  3a793b:	55                   	push   rbp
  3a793c:	56                   	push   rsi
  3a793d:	57                   	push   rdi
  3a793e:	41 54                	push   r12
  3a7940:	41 55                	push   r13
  3a7942:	41 56                	push   r14
  3a7944:	41 57                	push   r15
  3a7946:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  3a794d:	48 8b bc 24 58 01 00 00 	mov    rdi,QWORD PTR [rsp+0x158]
  3a7955:	49 8b e9             	mov    rbp,r9
  3a7958:	48 8b 9c 24 50 01 00 00 	mov    rbx,QWORD PTR [rsp+0x150]
  3a7960:	48 8b f2             	mov    rsi,rdx
  3a7963:	0f 29 70 b8          	movaps XMMWORD PTR [rax-0x48],xmm6
  3a7967:	4c 8b f9             	mov    r15,rcx
  3a796a:	0f 29 78 a8          	movaps XMMWORD PTR [rax-0x58],xmm7
  3a796e:	44 0f 29 40 98       	movaps XMMWORD PTR [rax-0x68],xmm8
  3a7973:	44 0f 29 48 88       	movaps XMMWORD PTR [rax-0x78],xmm9
  3a7978:	44 0f 28 ca          	movaps xmm9,xmm2
  3a797c:	44 0f 29 90 78 ff ff ff 	movaps XMMWORD PTR [rax-0x88],xmm10
  3a7984:	44 0f 29 98 68 ff ff ff 	movaps XMMWORD PTR [rax-0x98],xmm11
  3a798c:	44 0f 29 64 24 70    	movaps XMMWORD PTR [rsp+0x70],xmm12
  3a7992:	44 0f 29 6c 24 60    	movaps XMMWORD PTR [rsp+0x60],xmm13
  3a7998:	44 0f 29 74 24 50    	movaps XMMWORD PTR [rsp+0x50],xmm14
  3a799e:	44 0f 29 7c 24 40    	movaps XMMWORD PTR [rsp+0x40],xmm15
  3a79a4:	48 85 ff             	test   rdi,rdi
  3a79a7:	75 0c                	jne    0x3a79b5
  3a79a9:	48 8b cb             	mov    rcx,rbx
  3a79ac:	e8 53 2f 02 00       	call   0x3ca904
  3a79b1:	48 8d 3c 18          	lea    rdi,[rax+rbx*1]
  3a79b5:	f3 0f 2c 45 04       	cvttss2si eax,DWORD PTR [rbp+0x4]
  3a79ba:	4c 8b b4 24 48 01 00 00 	mov    r14,QWORD PTR [rsp+0x148]
  3a79c2:	66 0f 6e f0          	movd   xmm6,eax
  3a79c6:	0f 5b f6             	cvtdq2ps xmm6,xmm6
  3a79c9:	41 0f 2f 76 0c       	comiss xmm6,DWORD PTR [r14+0xc]
  3a79ce:	0f 87 4e 05 00 00    	ja     0x3a7f22
  3a79d4:	f3 41 0f 10 7f 14    	movss  xmm7,DWORD PTR [r15+0x14]
  3a79da:	f3 44 0f 10 a4 24 60 01 00 00 	movss  xmm12,DWORD PTR [rsp+0x160]
  3a79e4:	44 0f 2f 25 60 58 ee ff 	comiss xmm12,DWORD PTR [rip+0xffffffffffee5860]        # 0x28d24c
  3a79ec:	f3 44 0f 10 5d 00    	movss  xmm11,DWORD PTR [rbp+0x0]
  3a79f2:	f3 44 0f 5e cf       	divss  xmm9,xmm7
  3a79f7:	40 0f 97 c5          	seta   bpl
  3a79fb:	40 88 ac 24 58 01 00 00 	mov    BYTE PTR [rsp+0x158],bpl
  3a7a03:	f3 41 0f 59 f9       	mulss  xmm7,xmm9
  3a7a08:	eb 61                	jmp    0x3a7a6b
  3a7a0a:	48 3b df             	cmp    rbx,rdi
  3a7a0d:	73 6e                	jae    0x3a7a7d
  3a7a0f:	4c 8b c7             	mov    r8,rdi
  3a7a12:	ba 0a 00 00 00       	mov    edx,0xa
  3a7a17:	4c 2b c3             	sub    r8,rbx
  3a7a1a:	48 8b cb             	mov    rcx,rbx
  3a7a1d:	e8 ce 12 02 00       	call   0x3c8cf0
  3a7a22:	48 8b c8             	mov    rcx,rax
  3a7a25:	40 84 ed             	test   bpl,bpl
  3a7a28:	74 30                	je     0x3a7a5a
  3a7a2a:	48 85 c0             	test   rax,rax
  3a7a2d:	f3 44 0f 11 64 24 20 	movss  DWORD PTR [rsp+0x20],xmm12
  3a7a34:	4c 8b cf             	mov    r9,rdi
  3a7a37:	4c 8b c3             	mov    r8,rbx
  3a7a3a:	4c 0f 45 c8          	cmovne r9,rax
  3a7a3e:	41 0f 28 c9          	movaps xmm1,xmm9
  3a7a42:	49 8b cf             	mov    rcx,r15
  3a7a45:	e8 5a c0 ff ff       	call   0x3a3aa4
  3a7a4a:	48 8b d7             	mov    rdx,rdi
  3a7a4d:	48 8b c8             	mov    rcx,rax
  3a7a50:	e8 1b c0 ff ff       	call   0x3a3a70
  3a7a55:	48 8b d8             	mov    rbx,rax
  3a7a58:	eb 0d                	jmp    0x3a7a67
  3a7a5a:	48 ff c0             	inc    rax
  3a7a5d:	48 8b df             	mov    rbx,rdi
  3a7a60:	48 85 c9             	test   rcx,rcx
  3a7a63:	48 0f 45 d8          	cmovne rbx,rax
  3a7a67:	f3 0f 58 f7          	addss  xmm6,xmm7
  3a7a6b:	f3 41 0f 10 46 04    	movss  xmm0,DWORD PTR [r14+0x4]
  3a7a71:	0f 28 cf             	movaps xmm1,xmm7
  3a7a74:	f3 0f 58 ce          	addss  xmm1,xmm6
  3a7a78:	0f 2f c1             	comiss xmm0,xmm1
  3a7a7b:	77 8d                	ja     0x3a7a0a
  3a7a7d:	48 8b c7             	mov    rax,rdi
  3a7a80:	48 2b c3             	sub    rax,rbx
  3a7a83:	48 3d 10 27 00 00    	cmp    rax,0x2710
  3a7a89:	7e 4c                	jle    0x3a7ad7
  3a7a8b:	40 84 ed             	test   bpl,bpl
  3a7a8e:	75 47                	jne    0x3a7ad7
  3a7a90:	f3 45 0f 10 56 0c    	movss  xmm10,DWORD PTR [r14+0xc]
  3a7a96:	4c 8b cb             	mov    r9,rbx
  3a7a99:	44 0f 2f d6          	comiss xmm10,xmm6
  3a7a9d:	44 0f 28 c6          	movaps xmm8,xmm6
  3a7aa1:	76 31                	jbe    0x3a7ad4
  3a7aa3:	4c 3b cf             	cmp    r9,rdi
  3a7aa6:	73 2c                	jae    0x3a7ad4
  3a7aa8:	4c 8b c7             	mov    r8,rdi
  3a7aab:	ba 0a 00 00 00       	mov    edx,0xa
  3a7ab0:	4d 2b c1             	sub    r8,r9
  3a7ab3:	49 8b c9             	mov    rcx,r9
  3a7ab6:	e8 35 12 02 00       	call   0x3c8cf0
  3a7abb:	48 85 c0             	test   rax,rax
  3a7abe:	f3 44 0f 58 c7       	addss  xmm8,xmm7
  3a7ac3:	4c 8b cf             	mov    r9,rdi
  3a7ac6:	48 8d 48 01          	lea    rcx,[rax+0x1]
  3a7aca:	4c 0f 45 c9          	cmovne r9,rcx
  3a7ace:	45 0f 2f d0          	comiss xmm10,xmm8
  3a7ad2:	77 cf                	ja     0x3a7aa3
  3a7ad4:	49 8b f9             	mov    rdi,r9
  3a7ad7:	48 3b df             	cmp    rbx,rdi
  3a7ada:	0f 84 42 04 00 00    	je     0x3a7f22
  3a7ae0:	f3 41 0f 2c c3       	cvttss2si eax,xmm11
  3a7ae5:	44 8b c7             	mov    r8d,edi
  3a7ae8:	48 8b ce             	mov    rcx,rsi
  3a7aeb:	44 2b c3             	sub    r8d,ebx
  3a7aee:	66 44 0f 6e c0       	movd   xmm8,eax
  3a7af3:	43 8d 04 40          	lea    eax,[r8+r8*2]
  3a7af7:	45 0f 5b c0          	cvtdq2ps xmm8,xmm8
  3a7afb:	8d 14 00             	lea    edx,[rax+rax*1]
  3a7afe:	41 c1 e0 02          	shl    r8d,0x2
  3a7b02:	8b 46 10             	mov    eax,DWORD PTR [rsi+0x10]
  3a7b05:	03 c2                	add    eax,edx
  3a7b07:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  3a7b0b:	f3 44 0f 11 44 24 38 	movss  DWORD PTR [rsp+0x38],xmm8
  3a7b12:	45 0f 28 d0          	movaps xmm10,xmm8
  3a7b16:	e8 81 f6 ff ff       	call   0x3a719c
  3a7b1b:	8b 84 24 40 01 00 00 	mov    eax,DWORD PTR [rsp+0x140]
  3a7b22:	45 33 e4             	xor    r12d,r12d
  3a7b25:	48 8b 6e 48          	mov    rbp,QWORD PTR [rsi+0x48]
  3a7b29:	0d ff ff ff 00       	or     eax,0xffffff
  3a7b2e:	4c 8b 7e 50          	mov    r15,QWORD PTR [rsi+0x50]
  3a7b32:	44 8b 6e 34          	mov    r13d,DWORD PTR [rsi+0x34]
  3a7b36:	89 44 24 34          	mov    DWORD PTR [rsp+0x34],eax
  3a7b3a:	41 8d 44 24 01       	lea    eax,[r12+0x1]
  3a7b3f:	48 3b df             	cmp    rbx,rdi
  3a7b42:	0f 83 85 03 00 00    	jae    0x3a7ecd
  3a7b48:	48 8b b4 24 20 01 00 00 	mov    rsi,QWORD PTR [rsp+0x120]
  3a7b50:	eb 05                	jmp    0x3a7b57
  3a7b52:	b8 01 00 00 00       	mov    eax,0x1
  3a7b57:	80 bc 24 58 01 00 00 00 	cmp    BYTE PTR [rsp+0x158],0x0
  3a7b5f:	74 73                	je     0x3a7bd4
  3a7b61:	4d 85 e4             	test   r12,r12
  3a7b64:	75 31                	jne    0x3a7b97
  3a7b66:	41 0f 28 c8          	movaps xmm1,xmm8
  3a7b6a:	41 0f 28 c4          	movaps xmm0,xmm12
  3a7b6e:	f3 41 0f 5c ca       	subss  xmm1,xmm10
  3a7b73:	4c 8b cf             	mov    r9,rdi
  3a7b76:	4c 8b c3             	mov    r8,rbx
  3a7b79:	48 8b ce             	mov    rcx,rsi
  3a7b7c:	f3 0f 5c c1          	subss  xmm0,xmm1
  3a7b80:	41 0f 28 c9          	movaps xmm1,xmm9
  3a7b84:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  3a7b8a:	e8 15 bf ff ff       	call   0x3a3aa4
  3a7b8f:	4c 8b e0             	mov    r12,rax
  3a7b92:	b8 01 00 00 00       	mov    eax,0x1
  3a7b97:	49 3b dc             	cmp    rbx,r12
  3a7b9a:	72 38                	jb     0x3a7bd4
  3a7b9c:	45 33 e4             	xor    r12d,r12d
  3a7b9f:	f3 0f 58 f7          	addss  xmm6,xmm7
  3a7ba3:	48 8b d7             	mov    rdx,rdi
  3a7ba6:	48 8b cb             	mov    rcx,rbx
  3a7ba9:	45 0f 28 c2          	movaps xmm8,xmm10
  3a7bad:	e8 be be ff ff       	call   0x3a3a70
  3a7bb2:	48 8b d8             	mov    rbx,rax
  3a7bb5:	41 b8 01 00 00 00    	mov    r8d,0x1
  3a7bbb:	f3 44 0f 10 54 24 38 	movss  xmm10,DWORD PTR [rsp+0x38]
  3a7bc2:	48 3b df             	cmp    rbx,rdi
  3a7bc5:	72 8b                	jb     0x3a7b52
  3a7bc7:	48 8b b4 24 28 01 00 00 	mov    rsi,QWORD PTR [rsp+0x128]
  3a7bcf:	e9 fc 02 00 00       	jmp    0x3a7ed0
  3a7bd4:	0f be 13             	movsx  edx,BYTE PTR [rbx]
  3a7bd7:	89 94 24 38 01 00 00 	mov    DWORD PTR [rsp+0x138],edx
  3a7bde:	81 fa 80 00 00 00    	cmp    edx,0x80
  3a7be4:	73 05                	jae    0x3a7beb
  3a7be6:	48 03 d8             	add    rbx,rax
  3a7be9:	eb 20                	jmp    0x3a7c0b
  3a7beb:	4c 8b c7             	mov    r8,rdi
  3a7bee:	48 8d 8c 24 38 01 00 00 	lea    rcx,[rsp+0x138]
  3a7bf6:	48 8b d3             	mov    rdx,rbx
  3a7bf9:	e8 7e b9 fe ff       	call   0x39357c
  3a7bfe:	8b 94 24 38 01 00 00 	mov    edx,DWORD PTR [rsp+0x138]
  3a7c05:	48 63 c8             	movsxd rcx,eax
  3a7c08:	48 03 d9             	add    rbx,rcx
  3a7c0b:	83 fa 20             	cmp    edx,0x20
  3a7c0e:	73 25                	jae    0x3a7c35
  3a7c10:	83 fa 0a             	cmp    edx,0xa
  3a7c13:	75 1b                	jne    0x3a7c30
  3a7c15:	0f 28 c7             	movaps xmm0,xmm7
  3a7c18:	44 8d 42 f7          	lea    r8d,[rdx-0x9]
  3a7c1c:	f3 0f 58 c6          	addss  xmm0,xmm6
  3a7c20:	41 0f 2f 46 0c       	comiss xmm0,DWORD PTR [r14+0xc]
  3a7c25:	0f 28 f0             	movaps xmm6,xmm0
  3a7c28:	77 9d                	ja     0x3a7bc7
  3a7c2a:	45 0f 28 c2          	movaps xmm8,xmm10
  3a7c2e:	eb 8b                	jmp    0x3a7bbb
  3a7c30:	83 fa 0d             	cmp    edx,0xd
  3a7c33:	74 80                	je     0x3a7bb5
  3a7c35:	48 8b ce             	mov    rcx,rsi
  3a7c38:	e8 e3 c8 ff ff       	call   0x3a4520
  3a7c3d:	48 85 c0             	test   rax,rax
  3a7c40:	0f 84 6f ff ff ff    	je     0x3a7bb5
  3a7c46:	f6 00 02             	test   BYTE PTR [rax],0x2
  3a7c49:	45 0f 28 e1          	movaps xmm12,xmm9
  3a7c4d:	f3 44 0f 59 60 04    	mulss  xmm12,DWORD PTR [rax+0x4]
  3a7c53:	0f 84 5a 02 00 00    	je     0x3a7eb3
  3a7c59:	f3 45 0f 10 76 08    	movss  xmm14,DWORD PTR [r14+0x8]
  3a7c5f:	41 0f 28 e1          	movaps xmm4,xmm9
  3a7c63:	f3 0f 59 60 08       	mulss  xmm4,DWORD PTR [rax+0x8]
  3a7c68:	f3 41 0f 58 e0       	addss  xmm4,xmm8
  3a7c6d:	44 0f 2f f4          	comiss xmm14,xmm4
  3a7c71:	0f 82 3c 02 00 00    	jb     0x3a7eb3
  3a7c77:	f3 45 0f 10 2e       	movss  xmm13,DWORD PTR [r14]
  3a7c7c:	41 0f 28 d9          	movaps xmm3,xmm9
  3a7c80:	f3 0f 59 58 10       	mulss  xmm3,DWORD PTR [rax+0x10]
  3a7c85:	f3 41 0f 58 d8       	addss  xmm3,xmm8
  3a7c8a:	41 0f 2f dd          	comiss xmm3,xmm13
  3a7c8e:	0f 82 1f 02 00 00    	jb     0x3a7eb3
  3a7c94:	80 bc 24 68 01 00 00 00 	cmp    BYTE PTR [rsp+0x168],0x0
  3a7c9c:	45 0f 28 d1          	movaps xmm10,xmm9
  3a7ca0:	f3 44 0f 59 50 0c    	mulss  xmm10,DWORD PTR [rax+0xc]
  3a7ca6:	41 0f 28 e9          	movaps xmm5,xmm9
  3a7caa:	f3 0f 59 68 14       	mulss  xmm5,DWORD PTR [rax+0x14]
  3a7caf:	f3 0f 10 48 18       	movss  xmm1,DWORD PTR [rax+0x18]
  3a7cb4:	f3 44 0f 58 d6       	addss  xmm10,xmm6
  3a7cb9:	f3 0f 10 50 1c       	movss  xmm2,DWORD PTR [rax+0x1c]
  3a7cbe:	f3 44 0f 10 78 20    	movss  xmm15,DWORD PTR [rax+0x20]
  3a7cc4:	f3 0f 58 ee          	addss  xmm5,xmm6
  3a7cc8:	f3 44 0f 10 58 24    	movss  xmm11,DWORD PTR [rax+0x24]
  3a7cce:	f3 0f 11 8c 24 48 01 00 00 	movss  DWORD PTR [rsp+0x148],xmm1
  3a7cd7:	0f 84 28 01 00 00    	je     0x3a7e05
  3a7cdd:	44 0f 2f ec          	comiss xmm13,xmm4
  3a7ce1:	76 4a                	jbe    0x3a7d2d
  3a7ce3:	f3 0f 10 15 69 55 ee ff 	movss  xmm2,DWORD PTR [rip+0xffffffffffee5569]        # 0x28d254
  3a7ceb:	0f 28 cb             	movaps xmm1,xmm3
  3a7cee:	0f 28 c3             	movaps xmm0,xmm3
  3a7cf1:	f3 41 0f 5c cd       	subss  xmm1,xmm13
  3a7cf6:	f3 0f 5c c4          	subss  xmm0,xmm4
  3a7cfa:	41 0f 28 e5          	movaps xmm4,xmm13
  3a7cfe:	f3 0f 5e c8          	divss  xmm1,xmm0
  3a7d02:	41 0f 28 c7          	movaps xmm0,xmm15
  3a7d06:	f3 0f 5c d1          	subss  xmm2,xmm1
  3a7d0a:	f3 0f 10 8c 24 48 01 00 00 	movss  xmm1,DWORD PTR [rsp+0x148]
  3a7d13:	f3 0f 5c c1          	subss  xmm0,xmm1
  3a7d17:	f3 0f 59 d0          	mulss  xmm2,xmm0
  3a7d1b:	f3 0f 58 d1          	addss  xmm2,xmm1
  3a7d1f:	f3 0f 11 94 24 48 01 00 00 	movss  DWORD PTR [rsp+0x148],xmm2
  3a7d28:	f3 0f 10 50 1c       	movss  xmm2,DWORD PTR [rax+0x1c]
  3a7d2d:	f3 45 0f 10 6e 04    	movss  xmm13,DWORD PTR [r14+0x4]
  3a7d33:	45 0f 2f ea          	comiss xmm13,xmm10
  3a7d37:	76 39                	jbe    0x3a7d72
  3a7d39:	f3 0f 10 15 13 55 ee ff 	movss  xmm2,DWORD PTR [rip+0xffffffffffee5513]        # 0x28d254
  3a7d41:	0f 28 cd             	movaps xmm1,xmm5
  3a7d44:	0f 28 c5             	movaps xmm0,xmm5
  3a7d47:	f3 41 0f 5c cd       	subss  xmm1,xmm13
  3a7d4c:	f3 41 0f 5c c2       	subss  xmm0,xmm10
  3a7d51:	45 0f 28 d5          	movaps xmm10,xmm13
  3a7d55:	f3 0f 5e c8          	divss  xmm1,xmm0
  3a7d59:	41 0f 28 c3          	movaps xmm0,xmm11
  3a7d5d:	f3 0f 5c d1          	subss  xmm2,xmm1
  3a7d61:	f3 0f 10 48 1c       	movss  xmm1,DWORD PTR [rax+0x1c]
  3a7d66:	f3 0f 5c c1          	subss  xmm0,xmm1
  3a7d6a:	f3 0f 59 d0          	mulss  xmm2,xmm0
  3a7d6e:	f3 0f 58 d1          	addss  xmm2,xmm1
  3a7d72:	41 0f 2f de          	comiss xmm3,xmm14
  3a7d76:	76 33                	jbe    0x3a7dab
  3a7d78:	f3 0f 5c dc          	subss  xmm3,xmm4
  3a7d7c:	41 0f 28 c7          	movaps xmm0,xmm15
  3a7d80:	41 0f 28 ce          	movaps xmm1,xmm14
  3a7d84:	f3 0f 5c cc          	subss  xmm1,xmm4
  3a7d88:	f3 0f 5e cb          	divss  xmm1,xmm3
  3a7d8c:	f3 0f 10 9c 24 48 01 00 00 	movss  xmm3,DWORD PTR [rsp+0x148]
  3a7d95:	f3 0f 5c c3          	subss  xmm0,xmm3
  3a7d99:	44 0f 28 f9          	movaps xmm15,xmm1
  3a7d9d:	f3 44 0f 59 f8       	mulss  xmm15,xmm0
  3a7da2:	f3 44 0f 58 fb       	addss  xmm15,xmm3
  3a7da7:	41 0f 28 de          	movaps xmm3,xmm14
  3a7dab:	41 0f 2f 6e 0c       	comiss xmm5,DWORD PTR [r14+0xc]
  3a7db0:	76 30                	jbe    0x3a7de2
  3a7db2:	f3 41 0f 10 4e 0c    	movss  xmm1,DWORD PTR [r14+0xc]
  3a7db8:	f3 41 0f 5c ea       	subss  xmm5,xmm10
  3a7dbd:	41 0f 28 c3          	movaps xmm0,xmm11
  3a7dc1:	f3 41 0f 5c ca       	subss  xmm1,xmm10
  3a7dc6:	f3 0f 5c c2          	subss  xmm0,xmm2
  3a7dca:	f3 0f 5e cd          	divss  xmm1,xmm5
  3a7dce:	f3 41 0f 10 6e 0c    	movss  xmm5,DWORD PTR [r14+0xc]
  3a7dd4:	44 0f 28 d9          	movaps xmm11,xmm1
  3a7dd8:	f3 44 0f 59 d8       	mulss  xmm11,xmm0
  3a7ddd:	f3 44 0f 58 da       	addss  xmm11,xmm2
  3a7de2:	44 0f 2f d5          	comiss xmm10,xmm5
  3a7de6:	72 14                	jb     0x3a7dfc
  3a7de8:	f3 45 0f 58 c4       	addss  xmm8,xmm12
  3a7ded:	f3 44 0f 10 a4 24 60 01 00 00 	movss  xmm12,DWORD PTR [rsp+0x160]
  3a7df7:	e9 b9 fd ff ff       	jmp    0x3a7bb5
  3a7dfc:	f3 0f 10 8c 24 48 01 00 00 	movss  xmm1,DWORD PTR [rsp+0x148]
  3a7e05:	41 b8 01 00 00 00    	mov    r8d,0x1
  3a7e0b:	44 84 00             	test   BYTE PTR [rax],r8b
  3a7e0e:	8b 84 24 40 01 00 00 	mov    eax,DWORD PTR [rsp+0x140]
  3a7e15:	0f 45 44 24 34       	cmovne eax,DWORD PTR [rsp+0x34]
  3a7e1a:	89 45 10             	mov    DWORD PTR [rbp+0x10],eax
  3a7e1d:	89 45 24             	mov    DWORD PTR [rbp+0x24],eax
  3a7e20:	89 45 38             	mov    DWORD PTR [rbp+0x38],eax
  3a7e23:	89 45 4c             	mov    DWORD PTR [rbp+0x4c],eax
  3a7e26:	43 8d 04 28          	lea    eax,[r8+r13*1]
  3a7e2a:	f3 0f 11 65 00       	movss  DWORD PTR [rbp+0x0],xmm4
  3a7e2f:	f3 44 0f 11 55 04    	movss  DWORD PTR [rbp+0x4],xmm10
  3a7e35:	f3 0f 11 4d 08       	movss  DWORD PTR [rbp+0x8],xmm1
  3a7e3a:	f3 0f 11 55 0c       	movss  DWORD PTR [rbp+0xc],xmm2
  3a7e3f:	f3 0f 11 5d 14       	movss  DWORD PTR [rbp+0x14],xmm3
  3a7e44:	f3 44 0f 11 55 18    	movss  DWORD PTR [rbp+0x18],xmm10
  3a7e4a:	f3 44 0f 11 7d 1c    	movss  DWORD PTR [rbp+0x1c],xmm15
  3a7e50:	f3 0f 11 55 20       	movss  DWORD PTR [rbp+0x20],xmm2
  3a7e55:	f3 0f 11 5d 28       	movss  DWORD PTR [rbp+0x28],xmm3
  3a7e5a:	f3 0f 11 6d 2c       	movss  DWORD PTR [rbp+0x2c],xmm5
  3a7e5f:	f3 44 0f 11 7d 30    	movss  DWORD PTR [rbp+0x30],xmm15
  3a7e65:	f3 44 0f 11 5d 34    	movss  DWORD PTR [rbp+0x34],xmm11
  3a7e6b:	f3 0f 11 65 3c       	movss  DWORD PTR [rbp+0x3c],xmm4
  3a7e70:	f3 0f 11 6d 40       	movss  DWORD PTR [rbp+0x40],xmm5
  3a7e75:	f3 0f 11 4d 44       	movss  DWORD PTR [rbp+0x44],xmm1
  3a7e7a:	f3 44 0f 11 5d 48    	movss  DWORD PTR [rbp+0x48],xmm11
  3a7e80:	48 83 c5 50          	add    rbp,0x50
  3a7e84:	66 41 89 47 02       	mov    WORD PTR [r15+0x2],ax
  3a7e89:	41 8d 45 02          	lea    eax,[r13+0x2]
  3a7e8d:	66 41 89 47 04       	mov    WORD PTR [r15+0x4],ax
  3a7e92:	66 41 89 47 08       	mov    WORD PTR [r15+0x8],ax
  3a7e97:	41 8d 45 03          	lea    eax,[r13+0x3]
  3a7e9b:	66 45 89 2f          	mov    WORD PTR [r15],r13w
  3a7e9f:	66 45 89 6f 06       	mov    WORD PTR [r15+0x6],r13w
  3a7ea4:	41 83 c5 04          	add    r13d,0x4
  3a7ea8:	66 41 89 47 0a       	mov    WORD PTR [r15+0xa],ax
  3a7ead:	49 83 c7 0c          	add    r15,0xc
  3a7eb1:	eb 06                	jmp    0x3a7eb9
  3a7eb3:	41 b8 01 00 00 00    	mov    r8d,0x1
  3a7eb9:	f3 45 0f 58 c4       	addss  xmm8,xmm12
  3a7ebe:	f3 44 0f 10 a4 24 60 01 00 00 	movss  xmm12,DWORD PTR [rsp+0x160]
  3a7ec8:	e9 ee fc ff ff       	jmp    0x3a7bbb
  3a7ecd:	4c 8b c0             	mov    r8,rax
  3a7ed0:	48 8b cd             	mov    rcx,rbp
  3a7ed3:	48 b8 67 66 66 66 66 66 66 66 	movabs rax,0x6666666666666667
  3a7edd:	48 2b 4e 28          	sub    rcx,QWORD PTR [rsi+0x28]
  3a7ee1:	49 8b df             	mov    rbx,r15
  3a7ee4:	48 2b 5e 18          	sub    rbx,QWORD PTR [rsi+0x18]
  3a7ee8:	48 f7 e9             	imul   rcx
  3a7eeb:	48 d1 fb             	sar    rbx,1
  3a7eee:	48 8b ce             	mov    rcx,rsi
  3a7ef1:	48 c1 fa 03          	sar    rdx,0x3
  3a7ef5:	48 8b c2             	mov    rax,rdx
  3a7ef8:	89 5e 10             	mov    DWORD PTR [rsi+0x10],ebx
  3a7efb:	48 c1 e8 3f          	shr    rax,0x3f
  3a7eff:	48 03 d0             	add    rdx,rax
  3a7f02:	89 56 20             	mov    DWORD PTR [rsi+0x20],edx
  3a7f05:	8b 16                	mov    edx,DWORD PTR [rsi]
  3a7f07:	41 2b d0             	sub    edx,r8d
  3a7f0a:	e8 81 3c fe ff       	call   0x38bb90
  3a7f0f:	2b 5c 24 3c          	sub    ebx,DWORD PTR [rsp+0x3c]
  3a7f13:	01 58 20             	add    DWORD PTR [rax+0x20],ebx
  3a7f16:	48 89 6e 48          	mov    QWORD PTR [rsi+0x48],rbp
  3a7f1a:	4c 89 7e 50          	mov    QWORD PTR [rsi+0x50],r15
  3a7f1e:	44 89 6e 34          	mov    DWORD PTR [rsi+0x34],r13d
  3a7f22:	44 0f 28 74 24 50    	movaps xmm14,XMMWORD PTR [rsp+0x50]
  3a7f28:	4c 8d 9c 24 e0 00 00 00 	lea    r11,[rsp+0xe0]
  3a7f30:	49 8b 5b 50          	mov    rbx,QWORD PTR [r11+0x50]
  3a7f34:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3a7f39:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3a7f3e:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3a7f43:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3a7f48:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  3a7f4d:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  3a7f52:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  3a7f57:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  3a7f5c:	44 0f 28 7c 24 40    	movaps xmm15,XMMWORD PTR [rsp+0x40]
  3a7f62:	49 8b e3             	mov    rsp,r11
  3a7f65:	41 5f                	pop    r15
  3a7f67:	41 5e                	pop    r14
  3a7f69:	41 5d                	pop    r13
  3a7f6b:	41 5c                	pop    r12
  3a7f6d:	5f                   	pop    rdi
  3a7f6e:	5e                   	pop    rsi
  3a7f6f:	5d                   	pop    rbp
  3a7f70:	c3                   	ret
