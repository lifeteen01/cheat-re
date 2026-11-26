
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a59bc <.data+0x3a59bc>:
  3a59bc:	48 8b c4                                        	mov    rax,rsp
  3a59bf:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3a59c3:	55                                              	push   rbp
  3a59c4:	53                                              	push   rbx
  3a59c5:	56                                              	push   rsi
  3a59c6:	57                                              	push   rdi
  3a59c7:	41 54                                           	push   r12
  3a59c9:	41 55                                           	push   r13
  3a59cb:	41 56                                           	push   r14
  3a59cd:	41 57                                           	push   r15
  3a59cf:	48 8d a8 78 fe ff ff                            	lea    rbp,[rax-0x188]
  3a59d6:	48 81 ec 48 02 00 00                            	sub    rsp,0x248
  3a59dd:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3a59e1:	48 8b f1                                        	mov    rsi,rcx
  3a59e4:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3a59e8:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3a59ed:	e8 be f2 ff ff                                  	call   0x3a4cb0
  3a59f2:	45 33 ff                                        	xor    r15d,r15d
  3a59f5:	48 8d 8d 98 01 00 00                            	lea    rcx,[rbp+0x198]
  3a59fc:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a59ff:	4c 89 7e 08                                     	mov    QWORD PTR [rsi+0x8],r15
  3a5a03:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a5a06:	4c 89 7e 40                                     	mov    QWORD PTR [rsi+0x40],r15
  3a5a0a:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3a5a0e:	e8 2d 69 f2 ff                                  	call   0x2cc340
  3a5a13:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a5a16:	48 8d 8d 98 01 00 00                            	lea    rcx,[rbp+0x198]
  3a5a1d:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a5a20:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a5a24:	f2 0f 11 46 48                                  	movsd  QWORD PTR [rsi+0x48],xmm0
  3a5a29:	e8 12 69 f2 ff                                  	call   0x2cc340
  3a5a2e:	48 8b ce                                        	mov    rcx,rsi
  3a5a31:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a5a35:	f2 0f 11 46 50                                  	movsd  QWORD PTR [rsi+0x50],xmm0
  3a5a3a:	e8 25 e4 ff ff                                  	call   0x3a3e64
  3a5a3f:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5a44:	e8 57 59 f3 ff                                  	call   0x2db3a0
  3a5a49:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5a4d:	e8 4e 59 f3 ff                                  	call   0x2db3a0
  3a5a52:	4c 8d 6e 78                                     	lea    r13,[rsi+0x78]
  3a5a56:	41 8b 55 00                                     	mov    edx,DWORD PTR [r13+0x0]
  3a5a5a:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5a5f:	4c 89 ad a0 01 00 00                            	mov    QWORD PTR [rbp+0x1a0],r13
  3a5a66:	e8 3d 3e 00 00                                  	call   0x3a98a8
  3a5a6b:	48 8d 7e 58                                     	lea    rdi,[rsi+0x58]
  3a5a6f:	8b 17                                           	mov    edx,DWORD PTR [rdi]
  3a5a71:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5a75:	48 89 bd 98 01 00 00                            	mov    QWORD PTR [rbp+0x198],rdi
  3a5a7c:	e8 e3 52 fd ff                                  	call   0x37ad64
  3a5a81:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5a86:	e8 89 3e 00 00                                  	call   0x3a9914
  3a5a8b:	48 8b 4c 24 78                                  	mov    rcx,QWORD PTR [rsp+0x78]
  3a5a90:	33 d2                                           	xor    edx,edx
  3a5a92:	4c 63 c0                                        	movsxd r8,eax
  3a5a95:	e8 d6 32 02 00                                  	call   0x3c8d70
  3a5a9a:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5a9e:	e8 69 3e 00 00                                  	call   0x3a990c
  3a5aa3:	48 8b 4d 90                                     	mov    rcx,QWORD PTR [rbp-0x70]
  3a5aa7:	33 d2                                           	xor    edx,edx
  3a5aa9:	4c 63 c0                                        	movsxd r8,eax
  3a5aac:	e8 bf 32 02 00                                  	call   0x3c8d70
  3a5ab1:	45 8d 77 01                                     	lea    r14d,[r15+0x1]
  3a5ab5:	45 8b e7                                        	mov    r12d,r15d
  3a5ab8:	45 39 7d 00                                     	cmp    DWORD PTR [r13+0x0],r15d
  3a5abc:	0f 8e 2a 01 00 00                               	jle    0x3a5bec
  3a5ac2:	41 8b d4                                        	mov    edx,r12d
  3a5ac5:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5aca:	e8 41 9b ff ff                                  	call   0x39f610
  3a5acf:	41 8b d4                                        	mov    edx,r12d
  3a5ad2:	49 8b cd                                        	mov    rcx,r13
  3a5ad5:	48 8b d8                                        	mov    rbx,rax
  3a5ad8:	e8 43 9b ff ff                                  	call   0x39f620
  3a5add:	4c 8b f8                                        	mov    r15,rax
  3a5ae0:	33 c9                                           	xor    ecx,ecx
  3a5ae2:	83 c8 ff                                        	or     eax,0xffffffff
  3a5ae5:	89 83 e0 00 00 00                               	mov    DWORD PTR [rbx+0xe0],eax
  3a5aeb:	39 0f                                           	cmp    DWORD PTR [rdi],ecx
  3a5aed:	7e 4f                                           	jle    0x3a5b3e
  3a5aef:	48 8b b5 98 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x198]
  3a5af6:	8b f9                                           	mov    edi,ecx
  3a5af8:	44 8b e8                                        	mov    r13d,eax
  3a5afb:	44 3b e8                                        	cmp    r13d,eax
  3a5afe:	75 2e                                           	jne    0x3a5b2e
  3a5b00:	8b d7                                           	mov    edx,edi
  3a5b02:	48 8b ce                                        	mov    rcx,rsi
  3a5b05:	44 8b e8                                        	mov    r13d,eax
  3a5b08:	e8 77 60 fe ff                                  	call   0x38bb84
  3a5b0d:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a5b10:	49 39 8f 80 00 00 00                            	cmp    QWORD PTR [r15+0x80],rcx
  3a5b17:	75 09                                           	jne    0x3a5b22
  3a5b19:	89 bb e0 00 00 00                               	mov    DWORD PTR [rbx+0xe0],edi
  3a5b1f:	44 8b ef                                        	mov    r13d,edi
  3a5b22:	41 03 fe                                        	add    edi,r14d
  3a5b25:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
  3a5b2a:	3b 3e                                           	cmp    edi,DWORD PTR [rsi]
  3a5b2c:	7c cd                                           	jl     0x3a5afb
  3a5b2e:	48 8b b5 90 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x190]
  3a5b35:	33 c9                                           	xor    ecx,ecx
  3a5b37:	4c 8b ad a0 01 00 00                            	mov    r13,QWORD PTR [rbp+0x1a0]
  3a5b3e:	39 83 e0 00 00 00                               	cmp    DWORD PTR [rbx+0xe0],eax
  3a5b44:	0f 84 a8 03 00 00                               	je     0x3a5ef2
  3a5b4a:	41 8b 57 10                                     	mov    edx,DWORD PTR [r15+0x10]
  3a5b4e:	49 8b 0f                                        	mov    rcx,QWORD PTR [r15]
  3a5b51:	e8 ee 86 00 00                                  	call   0x3ae244
  3a5b56:	49 8b 17                                        	mov    rdx,QWORD PTR [r15]
  3a5b59:	44 8b c0                                        	mov    r8d,eax
  3a5b5c:	48 8b cb                                        	mov    rcx,rbx
  3a5b5f:	e8 1c 8c 00 00                                  	call   0x3ae780
  3a5b64:	33 c9                                           	xor    ecx,ecx
  3a5b66:	85 c0                                           	test   eax,eax
  3a5b68:	0f 84 84 03 00 00                               	je     0x3a5ef2
  3a5b6e:	8b 93 e0 00 00 00                               	mov    edx,DWORD PTR [rbx+0xe0]
  3a5b74:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5b78:	e8 1f 60 fe ff                                  	call   0x38bb9c
  3a5b7d:	4d 8b 47 38                                     	mov    r8,QWORD PTR [r15+0x38]
  3a5b81:	48 8b f8                                        	mov    rdi,rax
  3a5b84:	45 33 ff                                        	xor    r15d,r15d
  3a5b87:	4d 85 c0                                        	test   r8,r8
  3a5b8a:	75 0b                                           	jne    0x3a5b97
  3a5b8c:	48 8b ce                                        	mov    rcx,rsi
  3a5b8f:	e8 28 ec ff ff                                  	call   0x3a47bc
  3a5b94:	4c 8b c0                                        	mov    r8,rax
  3a5b97:	4c 89 83 d8 00 00 00                            	mov    QWORD PTR [rbx+0xd8],r8
  3a5b9e:	eb 21                                           	jmp    0x3a5bc1
  3a5ba0:	66 45 39 78 02                                  	cmp    WORD PTR [r8+0x2],r15w
  3a5ba5:	74 20                                           	je     0x3a5bc7
  3a5ba7:	41 0f b7 50 02                                  	movzx  edx,WORD PTR [r8+0x2]
  3a5bac:	8b 8b e4 00 00 00                               	mov    ecx,DWORD PTR [rbx+0xe4]
  3a5bb2:	e8 d5 96 ff ff                                  	call   0x39f28c
  3a5bb7:	89 83 e4 00 00 00                               	mov    DWORD PTR [rbx+0xe4],eax
  3a5bbd:	49 83 c0 04                                     	add    r8,0x4
  3a5bc1:	66 45 39 38                                     	cmp    WORD PTR [r8],r15w
  3a5bc5:	75 d9                                           	jne    0x3a5ba0
  3a5bc7:	44 01 37                                        	add    DWORD PTR [rdi],r14d
  3a5bca:	8b 93 e4 00 00 00                               	mov    edx,DWORD PTR [rbx+0xe4]
  3a5bd0:	8b 4f 04                                        	mov    ecx,DWORD PTR [rdi+0x4]
  3a5bd3:	e8 b4 96 ff ff                                  	call   0x39f28c
  3a5bd8:	89 47 04                                        	mov    DWORD PTR [rdi+0x4],eax
  3a5bdb:	45 03 e6                                        	add    r12d,r14d
  3a5bde:	48 8d 7e 58                                     	lea    rdi,[rsi+0x58]
  3a5be2:	45 3b 65 00                                     	cmp    r12d,DWORD PTR [r13+0x0]
  3a5be6:	0f 8c d6 fe ff ff                               	jl     0x3a5ac2
  3a5bec:	45 8b ef                                        	mov    r13d,r15d
  3a5bef:	44 89 bd 98 01 00 00                            	mov    DWORD PTR [rbp+0x198],r15d
  3a5bf6:	45 8b e7                                        	mov    r12d,r15d
  3a5bf9:	33 c0                                           	xor    eax,eax
  3a5bfb:	44 8b 7c 24 70                                  	mov    r15d,DWORD PTR [rsp+0x70]
  3a5c00:	44 89 7c 24 60                                  	mov    DWORD PTR [rsp+0x60],r15d
  3a5c05:	45 85 ff                                        	test   r15d,r15d
  3a5c08:	0f 8e 1a 01 00 00                               	jle    0x3a5d28
  3a5c0e:	41 8b d4                                        	mov    edx,r12d
  3a5c11:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5c16:	e8 f5 99 ff ff                                  	call   0x39f610
  3a5c1b:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5c1f:	48 8b d8                                        	mov    rbx,rax
  3a5c22:	8b 90 e0 00 00 00                               	mov    edx,DWORD PTR [rax+0xe0]
  3a5c28:	e8 6f 5f fe ff                                  	call   0x38bb9c
  3a5c2d:	8b 93 e4 00 00 00                               	mov    edx,DWORD PTR [rbx+0xe4]
  3a5c33:	48 8d 8b f0 00 00 00                            	lea    rcx,[rbx+0xf0]
  3a5c3a:	41 03 d6                                        	add    edx,r14d
  3a5c3d:	48 89 44 24 68                                  	mov    QWORD PTR [rsp+0x68],rax
  3a5c42:	48 8b f0                                        	mov    rsi,rax
  3a5c45:	e8 36 e7 ff ff                                  	call   0x3a4380
  3a5c4a:	48 8d 7e 10                                     	lea    rdi,[rsi+0x10]
  3a5c4e:	48 8b cf                                        	mov    rcx,rdi
  3a5c51:	48 89 bd a8 01 00 00                            	mov    QWORD PTR [rbp+0x1a8],rdi
  3a5c58:	e8 03 b1 f2 ff                                  	call   0x2d0d60
  3a5c5d:	84 c0                                           	test   al,al
  3a5c5f:	74 0e                                           	je     0x3a5c6f
  3a5c61:	8b 56 04                                        	mov    edx,DWORD PTR [rsi+0x4]
  3a5c64:	48 8b cf                                        	mov    rcx,rdi
  3a5c67:	41 03 d6                                        	add    edx,r14d
  3a5c6a:	e8 11 e7 ff ff                                  	call   0x3a4380
  3a5c6f:	48 8b bb d8 00 00 00                            	mov    rdi,QWORD PTR [rbx+0xd8]
  3a5c76:	33 c0                                           	xor    eax,eax
  3a5c78:	66 39 07                                        	cmp    WORD PTR [rdi],ax
  3a5c7b:	0f 84 8d 00 00 00                               	je     0x3a5d0e
  3a5c81:	4c 8b bd a8 01 00 00                            	mov    r15,QWORD PTR [rbp+0x1a8]
  3a5c88:	48 8b f3                                        	mov    rsi,rbx
  3a5c8b:	0f b7 5f 02                                     	movzx  ebx,WORD PTR [rdi+0x2]
  3a5c8f:	66 85 db                                        	test   bx,bx
  3a5c92:	74 6e                                           	je     0x3a5d02
  3a5c94:	66 39 1f                                        	cmp    WORD PTR [rdi],bx
  3a5c97:	77 60                                           	ja     0x3a5cf9
  3a5c99:	44 0f b7 27                                     	movzx  r12d,WORD PTR [rdi]
  3a5c9d:	41 8b d4                                        	mov    edx,r12d
  3a5ca0:	49 8b cf                                        	mov    rcx,r15
  3a5ca3:	e8 2c 2f 00 00                                  	call   0x3a8bd4
  3a5ca8:	84 c0                                           	test   al,al
  3a5caa:	75 40                                           	jne    0x3a5cec
  3a5cac:	41 8b d4                                        	mov    edx,r12d
  3a5caf:	48 8b ce                                        	mov    rcx,rsi
  3a5cb2:	e8 c1 82 00 00                                  	call   0x3adf78
  3a5cb7:	85 c0                                           	test   eax,eax
  3a5cb9:	74 31                                           	je     0x3a5cec
  3a5cbb:	48 8b 44 24 68                                  	mov    rax,QWORD PTR [rsp+0x68]
  3a5cc0:	48 8d 8e f0 00 00 00                            	lea    rcx,[rsi+0xf0]
  3a5cc7:	44 01 b6 e8 00 00 00                            	add    DWORD PTR [rsi+0xe8],r14d
  3a5cce:	41 8b d4                                        	mov    edx,r12d
  3a5cd1:	44 01 70 08                                     	add    DWORD PTR [rax+0x8],r14d
  3a5cd5:	e8 9a 22 00 00                                  	call   0x3a7f74
  3a5cda:	41 8b d4                                        	mov    edx,r12d
  3a5cdd:	49 8b cf                                        	mov    rcx,r15
  3a5ce0:	e8 8f 22 00 00                                  	call   0x3a7f74
  3a5ce5:	0f b7 5f 02                                     	movzx  ebx,WORD PTR [rdi+0x2]
  3a5ce9:	41 ff c5                                        	inc    r13d
  3a5cec:	45 03 e6                                        	add    r12d,r14d
  3a5cef:	0f b7 c3                                        	movzx  eax,bx
  3a5cf2:	44 3b e0                                        	cmp    r12d,eax
  3a5cf5:	76 a6                                           	jbe    0x3a5c9d
  3a5cf7:	33 c0                                           	xor    eax,eax
  3a5cf9:	48 83 c7 04                                     	add    rdi,0x4
  3a5cfd:	66 39 07                                        	cmp    WORD PTR [rdi],ax
  3a5d00:	75 89                                           	jne    0x3a5c8b
  3a5d02:	44 8b 7c 24 60                                  	mov    r15d,DWORD PTR [rsp+0x60]
  3a5d07:	44 8b a5 98 01 00 00                            	mov    r12d,DWORD PTR [rbp+0x198]
  3a5d0e:	45 03 e6                                        	add    r12d,r14d
  3a5d11:	44 89 a5 98 01 00 00                            	mov    DWORD PTR [rbp+0x198],r12d
  3a5d18:	45 3b e7                                        	cmp    r12d,r15d
  3a5d1b:	0f 8c ed fe ff ff                               	jl     0x3a5c0e
  3a5d21:	48 8b b5 90 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x190]
  3a5d28:	44 8b e0                                        	mov    r12d,eax
  3a5d2b:	45 85 ff                                        	test   r15d,r15d
  3a5d2e:	7e 4a                                           	jle    0x3a5d7a
  3a5d30:	41 8b d4                                        	mov    edx,r12d
  3a5d33:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5d38:	e8 d3 98 ff ff                                  	call   0x39f610
  3a5d3d:	48 8b d8                                        	mov    rbx,rax
  3a5d40:	8b 90 e8 00 00 00                               	mov    edx,DWORD PTR [rax+0xe8]
  3a5d46:	48 8d b8 00 01 00 00                            	lea    rdi,[rax+0x100]
  3a5d4d:	48 8b cf                                        	mov    rcx,rdi
  3a5d50:	e8 37 f1 fb ff                                  	call   0x364e8c
  3a5d55:	48 8b d7                                        	mov    rdx,rdi
  3a5d58:	48 8d 8b f0 00 00 00                            	lea    rcx,[rbx+0xf0]
  3a5d5f:	e8 bc 2e 00 00                                  	call   0x3a8c20
  3a5d64:	48 8d 8b f0 00 00 00                            	lea    rcx,[rbx+0xf0]
  3a5d6b:	e8 7c 2b fd ff                                  	call   0x3788ec
  3a5d70:	45 03 e6                                        	add    r12d,r14d
  3a5d73:	45 3b e7                                        	cmp    r12d,r15d
  3a5d76:	7c b8                                           	jl     0x3a5d30
  3a5d78:	33 c0                                           	xor    eax,eax
  3a5d7a:	8b 7d 88                                        	mov    edi,DWORD PTR [rbp-0x78]
  3a5d7d:	8b d8                                           	mov    ebx,eax
  3a5d7f:	85 ff                                           	test   edi,edi
  3a5d81:	7e 1b                                           	jle    0x3a5d9e
  3a5d83:	8b d3                                           	mov    edx,ebx
  3a5d85:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5d89:	e8 0e 5e fe ff                                  	call   0x38bb9c
  3a5d8e:	48 8d 48 10                                     	lea    rcx,[rax+0x10]
  3a5d92:	e8 55 2b fd ff                                  	call   0x3788ec
  3a5d97:	41 03 de                                        	add    ebx,r14d
  3a5d9a:	3b df                                           	cmp    ebx,edi
  3a5d9c:	7c e5                                           	jl     0x3a5d83
  3a5d9e:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a5da2:	e8 d1 37 fd ff                                  	call   0x379578
  3a5da7:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3a5dab:	e8 f0 55 f3 ff                                  	call   0x2db3a0
  3a5db0:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a5db4:	e8 e7 55 f3 ff                                  	call   0x2db3a0
  3a5db9:	41 8b d5                                        	mov    edx,r13d
  3a5dbc:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3a5dc0:	e8 13 3b 00 00                                  	call   0x3a98d8
  3a5dc5:	41 8b d5                                        	mov    edx,r13d
  3a5dc8:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a5dcc:	e8 53 50 fd ff                                  	call   0x37ae24
  3a5dd1:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3a5dd5:	e8 42 3b 00 00                                  	call   0x3a991c
  3a5dda:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
  3a5dde:	33 d2                                           	xor    edx,edx
  3a5de0:	4c 63 c0                                        	movsxd r8,eax
  3a5de3:	e8 88 2f 02 00                                  	call   0x3c8d70
  3a5de8:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a5dec:	e8 37 3b 00 00                                  	call   0x3a9928
  3a5df1:	48 8b 4d c0                                     	mov    rcx,QWORD PTR [rbp-0x40]
  3a5df5:	33 d2                                           	xor    edx,edx
  3a5df7:	4c 63 c0                                        	movsxd r8,eax
  3a5dfa:	e8 71 2f 02 00                                  	call   0x3c8d70
  3a5dff:	45 33 ed                                        	xor    r13d,r13d
  3a5e02:	44 89 ad a0 01 00 00                            	mov    DWORD PTR [rbp+0x1a0],r13d
  3a5e09:	41 8b c5                                        	mov    eax,r13d
  3a5e0c:	89 85 a8 01 00 00                               	mov    DWORD PTR [rbp+0x1a8],eax
  3a5e12:	41 8b dd                                        	mov    ebx,r13d
  3a5e15:	89 9d 98 01 00 00                               	mov    DWORD PTR [rbp+0x198],ebx
  3a5e1b:	45 8b e5                                        	mov    r12d,r13d
  3a5e1e:	44 89 6d 80                                     	mov    DWORD PTR [rbp-0x80],r13d
  3a5e22:	45 85 ff                                        	test   r15d,r15d
  3a5e25:	0f 8e f5 01 00 00                               	jle    0x3a6020
  3a5e2b:	41 8b d4                                        	mov    edx,r12d
  3a5e2e:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a5e33:	e8 d8 97 ff ff                                  	call   0x39f610
  3a5e38:	48 8b f8                                        	mov    rdi,rax
  3a5e3b:	44 8b a8 e8 00 00 00                            	mov    r13d,DWORD PTR [rax+0xe8]
  3a5e42:	45 85 ed                                        	test   r13d,r13d
  3a5e45:	0f 84 bc 01 00 00                               	je     0x3a6007
  3a5e4b:	8b d3                                           	mov    edx,ebx
  3a5e4d:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3a5e51:	e8 ea 97 ff ff                                  	call   0x39f640
  3a5e56:	8b 95 a0 01 00 00                               	mov    edx,DWORD PTR [rbp+0x1a0]
  3a5e5c:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a5e60:	48 89 87 c8 00 00 00                            	mov    QWORD PTR [rdi+0xc8],rax
  3a5e67:	e8 3c 5d fe ff                                  	call   0x38bba8
  3a5e6c:	44 01 ad 98 01 00 00                            	add    DWORD PTR [rbp+0x198],r13d
  3a5e73:	48 8d 4e 78                                     	lea    rcx,[rsi+0x78]
  3a5e77:	44 01 ad a0 01 00 00                            	add    DWORD PTR [rbp+0x1a0],r13d
  3a5e7e:	41 8b d4                                        	mov    edx,r12d
  3a5e81:	48 8b d8                                        	mov    rbx,rax
  3a5e84:	48 89 87 d0 00 00 00                            	mov    QWORD PTR [rdi+0xd0],rax
  3a5e8b:	e8 90 97 ff ff                                  	call   0x39f620
  3a5e90:	44 8b 97 00 01 00 00                            	mov    r10d,DWORD PTR [rdi+0x100]
  3a5e97:	4c 8b e8                                        	mov    r13,rax
  3a5e9a:	45 33 db                                        	xor    r11d,r11d
  3a5e9d:	8b 48 14                                        	mov    ecx,DWORD PTR [rax+0x14]
  3a5ea0:	89 8f a0 00 00 00                               	mov    DWORD PTR [rdi+0xa0],ecx
  3a5ea6:	48 8b 8f 08 01 00 00                            	mov    rcx,QWORD PTR [rdi+0x108]
  3a5ead:	48 89 8f a8 00 00 00                            	mov    QWORD PTR [rdi+0xa8],rcx
  3a5eb4:	48 8b cf                                        	mov    rcx,rdi
  3a5eb7:	44 89 9f a4 00 00 00                            	mov    DWORD PTR [rdi+0xa4],r11d
  3a5ebe:	44 89 97 b0 00 00 00                            	mov    DWORD PTR [rdi+0xb0],r10d
  3a5ec5:	48 89 9f b8 00 00 00                            	mov    QWORD PTR [rdi+0xb8],rbx
  3a5ecc:	8a 40 18                                        	mov    al,BYTE PTR [rax+0x18]
  3a5ecf:	88 87 c0 00 00 00                               	mov    BYTE PTR [rdi+0xc0],al
  3a5ed5:	41 8a 45 1c                                     	mov    al,BYTE PTR [r13+0x1c]
  3a5ed9:	88 87 c1 00 00 00                               	mov    BYTE PTR [rdi+0xc1],al
  3a5edf:	f3 41 0f 10 4d 14                               	movss  xmm1,DWORD PTR [r13+0x14]
  3a5ee5:	41 0f 2f c8                                     	comiss xmm1,xmm8
  3a5ee9:	76 0f                                           	jbe    0x3a5efa
  3a5eeb:	e8 ec 90 00 00                                  	call   0x3aefdc
  3a5ef0:	eb 14                                           	jmp    0x3a5f06
  3a5ef2:	44 8a f1                                        	mov    r14b,cl
  3a5ef5:	e9 03 06 00 00                                  	jmp    0x3a64fd
  3a5efa:	0f 57 0d 9f d3 ee ff                            	xorps  xmm1,XMMWORD PTR [rip+0xffffffffffeed39f]        # 0x2932a0
  3a5f01:	e8 a6 90 00 00                                  	call   0x3aefac
  3a5f06:	8b 46 14                                        	mov    eax,DWORD PTR [rsi+0x14]
  3a5f09:	0f 28 f0                                        	movaps xmm6,xmm0
  3a5f0c:	41 8b db                                        	mov    ebx,r11d
  3a5f0f:	45 85 d2                                        	test   r10d,r10d
  3a5f12:	0f 8e e9 00 00 00                               	jle    0x3a6001
  3a5f18:	44 8b bd a8 01 00 00                            	mov    r15d,DWORD PTR [rbp+0x1a8]
  3a5f1f:	8d 70 ff                                        	lea    esi,[rax-0x1]
  3a5f22:	4c 8d a7 00 01 00 00                            	lea    r12,[rdi+0x100]
  3a5f29:	8b d3                                           	mov    edx,ebx
  3a5f2b:	49 8b cc                                        	mov    rcx,r12
  3a5f2e:	e8 45 5c fe ff                                  	call   0x38bb78
  3a5f33:	48 8b cf                                        	mov    rcx,rdi
  3a5f36:	8b 10                                           	mov    edx,DWORD PTR [rax]
  3a5f38:	e8 3b 80 00 00                                  	call   0x3adf78
  3a5f3d:	66 41 0f 6e 5d 1c                               	movd   xmm3,DWORD PTR [r13+0x1c]
  3a5f43:	8b d0                                           	mov    edx,eax
  3a5f45:	66 41 0f 6e 55 18                               	movd   xmm2,DWORD PTR [r13+0x18]
  3a5f4b:	48 8d 44 24 68                                  	lea    rax,[rsp+0x68]
  3a5f50:	48 89 44 24 48                                  	mov    QWORD PTR [rsp+0x48],rax
  3a5f55:	48 8b cf                                        	mov    rcx,rdi
  3a5f58:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  3a5f5b:	48 8d 45 a0                                     	lea    rax,[rbp-0x60]
  3a5f5f:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3a5f64:	48 8d 45 a4                                     	lea    rax,[rbp-0x5c]
  3a5f68:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  3a5f6d:	48 8d 45 9c                                     	lea    rax,[rbp-0x64]
  3a5f71:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3a5f76:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a5f79:	f3 44 0f 11 44 24 28                            	movss  DWORD PTR [rsp+0x28],xmm8
  3a5f80:	f3 0f 59 de                                     	mulss  xmm3,xmm6
  3a5f84:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3a5f88:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3a5f8f:	e8 74 83 00 00                                  	call   0x3ae308
  3a5f94:	41 8b 4d 18                                     	mov    ecx,DWORD PTR [r13+0x18]
  3a5f98:	2b 4d 9c                                        	sub    ecx,DWORD PTR [rbp-0x64]
  3a5f9b:	03 4d a0                                        	add    ecx,DWORD PTR [rbp-0x60]
  3a5f9e:	03 ce                                           	add    ecx,esi
  3a5fa0:	48 63 c3                                        	movsxd rax,ebx
  3a5fa3:	41 03 de                                        	add    ebx,r14d
  3a5fa6:	48 8d 14 40                                     	lea    rdx,[rax+rax*2]
  3a5faa:	48 8b 87 c8 00 00 00                            	mov    rax,QWORD PTR [rdi+0xc8]
  3a5fb1:	89 4c d0 04                                     	mov    DWORD PTR [rax+rdx*8+0x4],ecx
  3a5fb5:	41 8b 4d 1c                                     	mov    ecx,DWORD PTR [r13+0x1c]
  3a5fb9:	2b 4d a4                                        	sub    ecx,DWORD PTR [rbp-0x5c]
  3a5fbc:	03 4c 24 68                                     	add    ecx,DWORD PTR [rsp+0x68]
  3a5fc0:	48 8b 87 c8 00 00 00                            	mov    rax,QWORD PTR [rdi+0xc8]
  3a5fc7:	03 ce                                           	add    ecx,esi
  3a5fc9:	89 4c d0 08                                     	mov    DWORD PTR [rax+rdx*8+0x8],ecx
  3a5fcd:	48 8b 8f c8 00 00 00                            	mov    rcx,QWORD PTR [rdi+0xc8]
  3a5fd4:	8b 44 d1 08                                     	mov    eax,DWORD PTR [rcx+rdx*8+0x8]
  3a5fd8:	0f af 44 d1 04                                  	imul   eax,DWORD PTR [rcx+rdx*8+0x4]
  3a5fdd:	44 03 f8                                        	add    r15d,eax
  3a5fe0:	41 3b 1c 24                                     	cmp    ebx,DWORD PTR [r12]
  3a5fe4:	0f 8c 3f ff ff ff                               	jl     0x3a5f29
  3a5fea:	48 8b b5 90 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x190]
  3a5ff1:	44 8b 65 80                                     	mov    r12d,DWORD PTR [rbp-0x80]
  3a5ff5:	44 89 bd a8 01 00 00                            	mov    DWORD PTR [rbp+0x1a8],r15d
  3a5ffc:	44 8b 7c 24 60                                  	mov    r15d,DWORD PTR [rsp+0x60]
  3a6001:	8b 9d 98 01 00 00                               	mov    ebx,DWORD PTR [rbp+0x198]
  3a6007:	45 03 e6                                        	add    r12d,r14d
  3a600a:	44 89 65 80                                     	mov    DWORD PTR [rbp-0x80],r12d
  3a600e:	45 3b e7                                        	cmp    r12d,r15d
  3a6011:	0f 8c 14 fe ff ff                               	jl     0x3a5e2b
  3a6017:	8b 85 a8 01 00 00                               	mov    eax,DWORD PTR [rbp+0x1a8]
  3a601d:	45 33 ed                                        	xor    r13d,r13d
  3a6020:	8b 5e 10                                        	mov    ebx,DWORD PTR [rsi+0x10]
  3a6023:	44 89 6e 44                                     	mov    DWORD PTR [rsi+0x44],r13d
  3a6027:	85 db                                           	test   ebx,ebx
  3a6029:	7f 4c                                           	jg     0x3a6077
  3a602b:	66 0f 6e c0                                     	movd   xmm0,eax
  3a602f:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a6032:	e8 fd 2e 02 00                                  	call   0x3c8f34
  3a6037:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3a603b:	bb 00 02 00 00                                  	mov    ebx,0x200
  3a6040:	41 03 c6                                        	add    eax,r14d
  3a6043:	66 0f 6e c8                                     	movd   xmm1,eax
  3a6047:	b8 00 04 00 00                                  	mov    eax,0x400
  3a604c:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a604f:	0f 2f 0d 9e 6e f0 ff                            	comiss xmm1,DWORD PTR [rip+0xfffffffffff06e9e]        # 0x2acef4
  3a6056:	0f 43 d8                                        	cmovae ebx,eax
  3a6059:	b8 00 08 00 00                                  	mov    eax,0x800
  3a605e:	0f 2f 0d 93 6e f0 ff                            	comiss xmm1,DWORD PTR [rip+0xfffffffffff06e93]        # 0x2acef8
  3a6065:	0f 43 d8                                        	cmovae ebx,eax
  3a6068:	b8 00 10 00 00                                  	mov    eax,0x1000
  3a606d:	0f 2f 0d 88 6e f0 ff                            	comiss xmm1,DWORD PTR [rip+0xfffffffffff06e88]        # 0x2acefc
  3a6074:	0f 43 d8                                        	cmovae ebx,eax
  3a6077:	33 d2                                           	xor    edx,edx
  3a6079:	89 5e 40                                        	mov    DWORD PTR [rsi+0x40],ebx
  3a607c:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a6080:	44 8d 42 40                                     	lea    r8d,[rdx+0x40]
  3a6084:	e8 e7 2c 02 00                                  	call   0x3c8d70
  3a6089:	8b 46 14                                        	mov    eax,DWORD PTR [rsi+0x14]
  3a608c:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a6090:	4c 89 6c 24 30                                  	mov    QWORD PTR [rsp+0x30],r13
  3a6095:	41 b9 00 80 00 00                               	mov    r9d,0x8000
  3a609b:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a609f:	44 8b c3                                        	mov    r8d,ebx
  3a60a2:	33 d2                                           	xor    edx,edx
  3a60a4:	44 89 6c 24 20                                  	mov    DWORD PTR [rsp+0x20],r13d
  3a60a9:	e8 16 88 00 00                                  	call   0x3ae8c4
  3a60ae:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
  3a60b2:	48 8b ce                                        	mov    rcx,rsi
  3a60b5:	e8 f6 ec ff ff                                  	call   0x3a4db0
  3a60ba:	41 8b fd                                        	mov    edi,r13d
  3a60bd:	45 85 ff                                        	test   r15d,r15d
  3a60c0:	7e 73                                           	jle    0x3a6135
  3a60c2:	8b d7                                           	mov    edx,edi
  3a60c4:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a60c9:	e8 42 95 ff ff                                  	call   0x39f610
  3a60ce:	48 8b d8                                        	mov    rbx,rax
  3a60d1:	44 8b 80 e8 00 00 00                            	mov    r8d,DWORD PTR [rax+0xe8]
  3a60d8:	45 85 c0                                        	test   r8d,r8d
  3a60db:	74 50                                           	je     0x3a612d
  3a60dd:	48 8b 90 c8 00 00 00                            	mov    rdx,QWORD PTR [rax+0xc8]
  3a60e4:	48 8b 4d d8                                     	mov    rcx,QWORD PTR [rbp-0x28]
  3a60e8:	e8 63 7d 00 00                                  	call   0x3ade50
  3a60ed:	45 8b c5                                        	mov    r8d,r13d
  3a60f0:	44 39 ab e8 00 00 00                            	cmp    DWORD PTR [rbx+0xe8],r13d
  3a60f7:	7e 34                                           	jle    0x3a612d
  3a60f9:	49 63 c0                                        	movsxd rax,r8d
  3a60fc:	48 8d 0c 40                                     	lea    rcx,[rax+rax*2]
  3a6100:	48 8b 83 c8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xc8]
  3a6107:	44 39 6c c8 14                                  	cmp    DWORD PTR [rax+rcx*8+0x14],r13d
  3a610c:	74 13                                           	je     0x3a6121
  3a610e:	8b 54 c8 10                                     	mov    edx,DWORD PTR [rax+rcx*8+0x10]
  3a6112:	03 54 c8 08                                     	add    edx,DWORD PTR [rax+rcx*8+0x8]
  3a6116:	8b 4e 44                                        	mov    ecx,DWORD PTR [rsi+0x44]
  3a6119:	e8 6e 91 ff ff                                  	call   0x39f28c
  3a611e:	89 46 44                                        	mov    DWORD PTR [rsi+0x44],eax
  3a6121:	45 03 c6                                        	add    r8d,r14d
  3a6124:	44 3b 83 e8 00 00 00                            	cmp    r8d,DWORD PTR [rbx+0xe8]
  3a612b:	7c cc                                           	jl     0x3a60f9
  3a612d:	41 03 fe                                        	add    edi,r14d
  3a6130:	41 3b ff                                        	cmp    edi,r15d
  3a6133:	7c 8d                                           	jl     0x3a60c2
  3a6135:	8b 4e 44                                        	mov    ecx,DWORD PTR [rsi+0x44]
  3a6138:	44 84 36                                        	test   BYTE PTR [rsi],r14b
  3a613b:	74 05                                           	je     0x3a6142
  3a613d:	8d 79 01                                        	lea    edi,[rcx+0x1]
  3a6140:	eb 07                                           	jmp    0x3a6149
  3a6142:	e8 55 04 00 00                                  	call   0x3a659c
  3a6147:	8b f8                                           	mov    edi,eax
  3a6149:	f3 0f 10 35 03 71 ee ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffee7103]        # 0x28d254
  3a6151:	48 8d 8d 90 01 00 00                            	lea    rcx,[rbp+0x190]
  3a6158:	8b 5e 40                                        	mov    ebx,DWORD PTR [rsi+0x40]
  3a615b:	0f 28 d6                                        	movaps xmm2,xmm6
  3a615e:	66 0f 6e c7                                     	movd   xmm0,edi
  3a6162:	0f 28 ce                                        	movaps xmm1,xmm6
  3a6165:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a6168:	89 7e 44                                        	mov    DWORD PTR [rsi+0x44],edi
  3a616b:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  3a616f:	66 0f 6e c3                                     	movd   xmm0,ebx
  3a6173:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a6176:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3a617a:	e8 c1 61 f2 ff                                  	call   0x2cc340
  3a617f:	0f af df                                        	imul   ebx,edi
  3a6182:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a6186:	f2 0f 11 46 48                                  	movsd  QWORD PTR [rsi+0x48],xmm0
  3a618b:	48 63 cb                                        	movsxd rcx,ebx
  3a618e:	e8 c5 ef fe ff                                  	call   0x395158
  3a6193:	8b 4e 44                                        	mov    ecx,DWORD PTR [rsi+0x44]
  3a6196:	33 d2                                           	xor    edx,edx
  3a6198:	0f af 4e 40                                     	imul   ecx,DWORD PTR [rsi+0x40]
  3a619c:	48 89 46 30                                     	mov    QWORD PTR [rsi+0x30],rax
  3a61a0:	4c 63 c1                                        	movsxd r8,ecx
  3a61a3:	48 8b c8                                        	mov    rcx,rax
  3a61a6:	e8 c5 2b 02 00                                  	call   0x3c8d70
  3a61ab:	48 8b 46 30                                     	mov    rax,QWORD PTR [rsi+0x30]
  3a61af:	45 8b e5                                        	mov    r12d,r13d
  3a61b2:	48 89 45 00                                     	mov    QWORD PTR [rbp+0x0],rax
  3a61b6:	8b 46 44                                        	mov    eax,DWORD PTR [rsi+0x44]
  3a61b9:	89 45 e4                                        	mov    DWORD PTR [rbp-0x1c],eax
  3a61bc:	45 85 ff                                        	test   r15d,r15d
  3a61bf:	0f 8e c9 00 00 00                               	jle    0x3a628e
  3a61c5:	41 8b d4                                        	mov    edx,r12d
  3a61c8:	48 8d 4e 78                                     	lea    rcx,[rsi+0x78]
  3a61cc:	e8 4f 94 ff ff                                  	call   0x39f620
  3a61d1:	41 8b d4                                        	mov    edx,r12d
  3a61d4:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a61d9:	48 8b f8                                        	mov    rdi,rax
  3a61dc:	e8 2f 94 ff ff                                  	call   0x39f610
  3a61e1:	48 8b d8                                        	mov    rbx,rax
  3a61e4:	44 39 a8 e8 00 00 00                            	cmp    DWORD PTR [rax+0xe8],r13d
  3a61eb:	0f 84 91 00 00 00                               	je     0x3a6282
  3a61f1:	48 8b 88 c8 00 00 00                            	mov    rcx,QWORD PTR [rax+0xc8]
  3a61f8:	4c 8d 80 a0 00 00 00                            	lea    r8,[rax+0xa0]
  3a61ff:	48 89 4c 24 20                                  	mov    QWORD PTR [rsp+0x20],rcx
  3a6204:	45 8b ce                                        	mov    r9d,r14d
  3a6207:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a620b:	48 8b d0                                        	mov    rdx,rax
  3a620e:	e8 c1 87 00 00                                  	call   0x3ae9d4
  3a6213:	f3 0f 10 4f 50                                  	movss  xmm1,DWORD PTR [rdi+0x50]
  3a6218:	0f 2e ce                                        	ucomiss xmm1,xmm6
  3a621b:	7a 02                                           	jp     0x3a621f
  3a621d:	74 5c                                           	je     0x3a627b
  3a621f:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a6223:	e8 f0 ea ff ff                                  	call   0x3a4d18
  3a6228:	83 bb e8 00 00 00 00                            	cmp    DWORD PTR [rbx+0xe8],0x0
  3a622f:	48 8b bb c8 00 00 00                            	mov    rdi,QWORD PTR [rbx+0xc8]
  3a6236:	7e 40                                           	jle    0x3a6278
  3a6238:	83 7f 14 00                                     	cmp    DWORD PTR [rdi+0x14],0x0
  3a623c:	74 2a                                           	je     0x3a6268
  3a623e:	8b 46 40                                        	mov    eax,DWORD PTR [rsi+0x40]
  3a6241:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a6245:	44 8b 4f 10                                     	mov    r9d,DWORD PTR [rdi+0x10]
  3a6249:	44 8b 47 0c                                     	mov    r8d,DWORD PTR [rdi+0xc]
  3a624d:	48 8b 56 30                                     	mov    rdx,QWORD PTR [rsi+0x30]
  3a6251:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3a6255:	8b 47 08                                        	mov    eax,DWORD PTR [rdi+0x8]
  3a6258:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a625c:	8b 47 04                                        	mov    eax,DWORD PTR [rdi+0x4]
  3a625f:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3a6263:	e8 e8 ea ff ff                                  	call   0x3a4d50
  3a6268:	45 03 ee                                        	add    r13d,r14d
  3a626b:	48 83 c7 18                                     	add    rdi,0x18
  3a626f:	44 3b ab e8 00 00 00                            	cmp    r13d,DWORD PTR [rbx+0xe8]
  3a6276:	7c c0                                           	jl     0x3a6238
  3a6278:	45 33 ed                                        	xor    r13d,r13d
  3a627b:	4c 89 ab c8 00 00 00                            	mov    QWORD PTR [rbx+0xc8],r13
  3a6282:	45 03 e6                                        	add    r12d,r14d
  3a6285:	45 3b e7                                        	cmp    r12d,r15d
  3a6288:	0f 8c 37 ff ff ff                               	jl     0x3a61c5
  3a628e:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a6292:	e8 1d 87 00 00                                  	call   0x3ae9b4
  3a6297:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3a629b:	e8 d8 32 fd ff                                  	call   0x379578
  3a62a0:	41 8b dd                                        	mov    ebx,r13d
  3a62a3:	89 9d 90 01 00 00                               	mov    DWORD PTR [rbp+0x190],ebx
  3a62a9:	45 85 ff                                        	test   r15d,r15d
  3a62ac:	0f 8e 27 02 00 00                               	jle    0x3a64d9
  3a62b2:	8b d3                                           	mov    edx,ebx
  3a62b4:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a62b9:	e8 52 93 ff ff                                  	call   0x39f610
  3a62be:	48 8b f8                                        	mov    rdi,rax
  3a62c1:	44 39 a8 e8 00 00 00                            	cmp    DWORD PTR [rax+0xe8],r13d
  3a62c8:	0f 84 f9 01 00 00                               	je     0x3a64c7
  3a62ce:	8b d3                                           	mov    edx,ebx
  3a62d0:	48 8d 4e 78                                     	lea    rcx,[rsi+0x78]
  3a62d4:	e8 47 93 ff ff                                  	call   0x39f620
  3a62d9:	48 8b cf                                        	mov    rcx,rdi
  3a62dc:	4c 8b e8                                        	mov    r13,rax
  3a62df:	4c 8b a0 80 00 00 00                            	mov    r12,QWORD PTR [rax+0x80]
  3a62e6:	f3 0f 10 48 14                                  	movss  xmm1,DWORD PTR [rax+0x14]
  3a62eb:	4c 89 64 24 68                                  	mov    QWORD PTR [rsp+0x68],r12
  3a62f0:	e8 e7 8c 00 00                                  	call   0x3aefdc
  3a62f5:	4c 8d 8d a8 01 00 00                            	lea    r9,[rbp+0x1a8]
  3a62fc:	48 8b cf                                        	mov    rcx,rdi
  3a62ff:	4c 8d 85 a0 01 00 00                            	lea    r8,[rbp+0x1a0]
  3a6306:	0f 28 d8                                        	movaps xmm3,xmm0
  3a6309:	48 8d 95 98 01 00 00                            	lea    rdx,[rbp+0x198]
  3a6310:	e8 37 7f 00 00                                  	call   0x3ae24c
  3a6315:	66 0f 6e 8d a0 01 00 00                         	movd   xmm1,DWORD PTR [rbp+0x1a0]
  3a631d:	83 ca ff                                        	or     edx,0xffffffff
  3a6320:	66 0f 6e 95 98 01 00 00                         	movd   xmm2,DWORD PTR [rbp+0x198]
  3a6328:	8b ca                                           	mov    ecx,edx
  3a632a:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a632d:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a6330:	41 0f 2f c8                                     	comiss xmm1,xmm8
  3a6334:	f3 0f 59 cb                                     	mulss  xmm1,xmm3
  3a6338:	41 0f 47 ce                                     	cmova  ecx,r14d
  3a633c:	66 0f 6e c1                                     	movd   xmm0,ecx
  3a6340:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a6343:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a6347:	e8 60 cd fe ff                                  	call   0x3930ac
  3a634c:	0f 28 c8                                        	movaps xmm1,xmm0
  3a634f:	8b c2                                           	mov    eax,edx
  3a6351:	41 0f 2f d0                                     	comiss xmm2,xmm8
  3a6355:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  3a6359:	41 0f 47 c6                                     	cmova  eax,r14d
  3a635d:	66 0f 6e c0                                     	movd   xmm0,eax
  3a6361:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a6364:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3a6368:	e8 3f cd fe ff                                  	call   0x3930ac
  3a636d:	0f 28 d8                                        	movaps xmm3,xmm0
  3a6370:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  3a6376:	4d 8b c5                                        	mov    r8,r13
  3a6379:	49 8b d4                                        	mov    rdx,r12
  3a637c:	48 8b ce                                        	mov    rcx,rsi
  3a637f:	e8 cc f5 ff ff                                  	call   0x3a5950
  3a6384:	f3 41 0f 10 44 24 68                            	movss  xmm0,DWORD PTR [r12+0x68]
  3a638b:	f3 0f 58 05 bd 6e ee ff                         	addss  xmm0,DWORD PTR [rip+0xffffffffffee6ebd]        # 0x28d250
  3a6393:	f3 41 0f 10 7d 2c                               	movss  xmm7,DWORD PTR [r13+0x2c]
  3a6399:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3a639d:	66 0f 6e f0                                     	movd   xmm6,eax
  3a63a1:	33 c0                                           	xor    eax,eax
  3a63a3:	44 8b e0                                        	mov    r12d,eax
  3a63a6:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3a63a9:	f3 41 0f 58 75 30                               	addss  xmm6,DWORD PTR [r13+0x30]
  3a63af:	39 87 e8 00 00 00                               	cmp    DWORD PTR [rdi+0xe8],eax
  3a63b5:	0f 8e 09 01 00 00                               	jle    0x3a64c4
  3a63bb:	48 8b 5c 24 68                                  	mov    rbx,QWORD PTR [rsp+0x68]
  3a63c0:	41 8b d4                                        	mov    edx,r12d
  3a63c3:	48 8d 8f 00 01 00 00                            	lea    rcx,[rdi+0x100]
  3a63ca:	e8 a9 57 fe ff                                  	call   0x38bb78
  3a63cf:	4c 8b 9f d0 00 00 00                            	mov    r11,QWORD PTR [rdi+0xd0]
  3a63d6:	45 8b cc                                        	mov    r9d,r12d
  3a63d9:	44 8b 46 44                                     	mov    r8d,DWORD PTR [rsi+0x44]
  3a63dd:	49 8b cb                                        	mov    rcx,r11
  3a63e0:	8b 56 40                                        	mov    edx,DWORD PTR [rsi+0x40]
  3a63e3:	44 8b 10                                        	mov    r10d,DWORD PTR [rax]
  3a63e6:	48 8d 45 d0                                     	lea    rax,[rbp-0x30]
  3a63ea:	c7 44 24 38 00 00 00 00                         	mov    DWORD PTR [rsp+0x38],0x0
  3a63f2:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3a63f7:	48 8d 85 a8 01 00 00                            	lea    rax,[rbp+0x1a8]
  3a63fe:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3a6403:	48 8d 44 24 68                                  	lea    rax,[rsp+0x68]
  3a6408:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a640d:	c7 44 24 68 00 00 00 00                         	mov    DWORD PTR [rsp+0x68],0x0
  3a6415:	c7 85 a8 01 00 00 00 00 00 00                   	mov    DWORD PTR [rbp+0x1a8],0x0
  3a641f:	e8 00 82 00 00                                  	call   0x3ae624
  3a6424:	f3 0f 10 4d ec                                  	movss  xmm1,DWORD PTR [rbp-0x14]
  3a6429:	45 0f b7 c2                                     	movzx  r8d,r10w
  3a642d:	f3 0f 10 6d e4                                  	movss  xmm5,DWORD PTR [rbp-0x1c]
  3a6432:	49 8b d5                                        	mov    rdx,r13
  3a6435:	f3 0f 10 65 e0                                  	movss  xmm4,DWORD PTR [rbp-0x20]
  3a643a:	f3 0f 58 ee                                     	addss  xmm5,xmm6
  3a643e:	f3 0f 10 55 d4                                  	movss  xmm2,DWORD PTR [rbp-0x2c]
  3a6443:	f3 0f 58 e7                                     	addss  xmm4,xmm7
  3a6447:	f3 0f 10 5d d0                                  	movss  xmm3,DWORD PTR [rbp-0x30]
  3a644c:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  3a6450:	49 63 cc                                        	movsxd rcx,r12d
  3a6453:	f3 0f 58 df                                     	addss  xmm3,xmm7
  3a6457:	48 6b c1 1c                                     	imul   rax,rcx,0x1c
  3a645b:	48 8b cb                                        	mov    rcx,rbx
  3a645e:	f3 41 0f 10 44 03 10                            	movss  xmm0,DWORD PTR [r11+rax*1+0x10]
  3a6465:	f3 0f 11 44 24 58                               	movss  DWORD PTR [rsp+0x58],xmm0
  3a646b:	f3 0f 10 45 e8                                  	movss  xmm0,DWORD PTR [rbp-0x18]
  3a6470:	f3 0f 11 4c 24 50                               	movss  DWORD PTR [rsp+0x50],xmm1
  3a6476:	f3 0f 10 4d dc                                  	movss  xmm1,DWORD PTR [rbp-0x24]
  3a647b:	f3 0f 11 44 24 48                               	movss  DWORD PTR [rsp+0x48],xmm0
  3a6481:	f3 0f 10 45 d8                                  	movss  xmm0,DWORD PTR [rbp-0x28]
  3a6486:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [rsp+0x40],xmm1
  3a648c:	f3 0f 11 44 24 38                               	movss  DWORD PTR [rsp+0x38],xmm0
  3a6492:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm5
  3a6498:	f3 0f 11 64 24 28                               	movss  DWORD PTR [rsp+0x28],xmm4
  3a649e:	f3 0f 11 54 24 20                               	movss  DWORD PTR [rsp+0x20],xmm2
  3a64a4:	e8 d3 9a ff ff                                  	call   0x39ff7c
  3a64a9:	45 03 e6                                        	add    r12d,r14d
  3a64ac:	44 3b a7 e8 00 00 00                            	cmp    r12d,DWORD PTR [rdi+0xe8]
  3a64b3:	0f 8c 07 ff ff ff                               	jl     0x3a63c0
  3a64b9:	44 8b 7c 24 60                                  	mov    r15d,DWORD PTR [rsp+0x60]
  3a64be:	8b 9d 90 01 00 00                               	mov    ebx,DWORD PTR [rbp+0x190]
  3a64c4:	45 33 ed                                        	xor    r13d,r13d
  3a64c7:	41 03 de                                        	add    ebx,r14d
  3a64ca:	89 9d 90 01 00 00                               	mov    DWORD PTR [rbp+0x190],ebx
  3a64d0:	41 3b df                                        	cmp    ebx,r15d
  3a64d3:	0f 8c d9 fd ff ff                               	jl     0x3a62b2
  3a64d9:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a64de:	e8 9d 2e 00 00                                  	call   0x3a9380
  3a64e3:	48 8b ce                                        	mov    rcx,rsi
  3a64e6:	e8 55 e6 ff ff                                  	call   0x3a4b40
  3a64eb:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a64ef:	e8 30 01 f9 ff                                  	call   0x336624
  3a64f4:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3a64f8:	e8 27 01 f9 ff                                  	call   0x336624
  3a64fd:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3a6501:	e8 1e 01 f9 ff                                  	call   0x336624
  3a6506:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a650b:	e8 14 01 f9 ff                                  	call   0x336624
  3a6510:	4c 8d 9c 24 48 02 00 00                         	lea    r11,[rsp+0x248]
  3a6518:	41 8a c6                                        	mov    al,r14b
  3a651b:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3a6520:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3a6525:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3a652a:	49 8b e3                                        	mov    rsp,r11
  3a652d:	41 5f                                           	pop    r15
  3a652f:	41 5e                                           	pop    r14
  3a6531:	41 5d                                           	pop    r13
  3a6533:	41 5c                                           	pop    r12
  3a6535:	5f                                              	pop    rdi
  3a6536:	5e                                              	pop    rsi
  3a6537:	5b                                              	pop    rbx
  3a6538:	5d                                              	pop    rbp
  3a6539:	c3                                              	ret
