
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4db0 <.data+0x3a4db0>:
  3a4db0:	40 53                                           	rex push rbx
  3a4db2:	55                                              	push   rbp
  3a4db3:	56                                              	push   rsi
  3a4db4:	57                                              	push   rdi
  3a4db5:	41 56                                           	push   r14
  3a4db7:	48 83 ec 30                                     	sub    rsp,0x30
  3a4dbb:	48 8b e9                                        	mov    rbp,rcx
  3a4dbe:	4c 8d 71 68                                     	lea    r14,[rcx+0x68]
  3a4dc2:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4dc7:	48 8b f2                                        	mov    rsi,rdx
  3a4dca:	e8 d1 65 f3 ff                                  	call   0x2db3a0
  3a4dcf:	41 8b 16                                        	mov    edx,DWORD PTR [r14]
  3a4dd2:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4dd7:	e8 fc 4a 00 00                                  	call   0x3a98d8
  3a4ddc:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4de1:	e8 36 4b 00 00                                  	call   0x3a991c
  3a4de6:	48 8b 4c 24 28                                  	mov    rcx,QWORD PTR [rsp+0x28]
  3a4deb:	33 d2                                           	xor    edx,edx
  3a4ded:	4c 63 c0                                        	movsxd r8,eax
  3a4df0:	e8 7b 3f 02 00                                  	call   0x3c8d70
  3a4df5:	33 ff                                           	xor    edi,edi
  3a4df7:	41 39 3e                                        	cmp    DWORD PTR [r14],edi
  3a4dfa:	7e 37                                           	jle    0x3a4e33
  3a4dfc:	8b d7                                           	mov    edx,edi
  3a4dfe:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4e03:	e8 38 a8 ff ff                                  	call   0x39f640
  3a4e08:	8b d7                                           	mov    edx,edi
  3a4e0a:	49 8b ce                                        	mov    rcx,r14
  3a4e0d:	48 8b d8                                        	mov    rbx,rax
  3a4e10:	e8 87 6d fe ff                                  	call   0x38bb9c
  3a4e15:	8b d7                                           	mov    edx,edi
  3a4e17:	0f b7 08                                        	movzx  ecx,WORD PTR [rax]
  3a4e1a:	89 4b 04                                        	mov    DWORD PTR [rbx+0x4],ecx
  3a4e1d:	49 8b ce                                        	mov    rcx,r14
  3a4e20:	e8 77 6d fe ff                                  	call   0x38bb9c
  3a4e25:	ff c7                                           	inc    edi
  3a4e27:	0f b7 48 02                                     	movzx  ecx,WORD PTR [rax+0x2]
  3a4e2b:	89 4b 08                                        	mov    DWORD PTR [rbx+0x8],ecx
  3a4e2e:	41 3b 3e                                        	cmp    edi,DWORD PTR [r14]
  3a4e31:	7c c9                                           	jl     0x3a4dfc
  3a4e33:	33 d2                                           	xor    edx,edx
  3a4e35:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4e3a:	e8 01 a8 ff ff                                  	call   0x39f640
  3a4e3f:	8b 7c 24 20                                     	mov    edi,DWORD PTR [rsp+0x20]
  3a4e43:	48 8b d0                                        	mov    rdx,rax
  3a4e46:	44 8b c7                                        	mov    r8d,edi
  3a4e49:	48 8b ce                                        	mov    rcx,rsi
  3a4e4c:	e8 ff 8f 00 00                                  	call   0x3ade50
  3a4e51:	33 db                                           	xor    ebx,ebx
  3a4e53:	85 ff                                           	test   edi,edi
  3a4e55:	7e 50                                           	jle    0x3a4ea7
  3a4e57:	8b d3                                           	mov    edx,ebx
  3a4e59:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4e5e:	e8 dd a7 ff ff                                  	call   0x39f640
  3a4e63:	48 8b f0                                        	mov    rsi,rax
  3a4e66:	83 78 14 00                                     	cmp    DWORD PTR [rax+0x14],0x0
  3a4e6a:	74 35                                           	je     0x3a4ea1
  3a4e6c:	8b d3                                           	mov    edx,ebx
  3a4e6e:	49 8b ce                                        	mov    rcx,r14
  3a4e71:	e8 26 6d fe ff                                  	call   0x38bb9c
  3a4e76:	0f b7 4e 0c                                     	movzx  ecx,WORD PTR [rsi+0xc]
  3a4e7a:	8b d3                                           	mov    edx,ebx
  3a4e7c:	66 89 48 04                                     	mov    WORD PTR [rax+0x4],cx
  3a4e80:	49 8b ce                                        	mov    rcx,r14
  3a4e83:	e8 14 6d fe ff                                  	call   0x38bb9c
  3a4e88:	0f b7 4e 10                                     	movzx  ecx,WORD PTR [rsi+0x10]
  3a4e8c:	66 89 48 06                                     	mov    WORD PTR [rax+0x6],cx
  3a4e90:	8b 56 10                                        	mov    edx,DWORD PTR [rsi+0x10]
  3a4e93:	03 56 08                                        	add    edx,DWORD PTR [rsi+0x8]
  3a4e96:	8b 4d 44                                        	mov    ecx,DWORD PTR [rbp+0x44]
  3a4e99:	e8 ee a3 ff ff                                  	call   0x39f28c
  3a4e9e:	89 45 44                                        	mov    DWORD PTR [rbp+0x44],eax
  3a4ea1:	ff c3                                           	inc    ebx
  3a4ea3:	3b df                                           	cmp    ebx,edi
  3a4ea5:	7c b0                                           	jl     0x3a4e57
  3a4ea7:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a4eac:	e8 73 17 f9 ff                                  	call   0x336624
  3a4eb1:	48 83 c4 30                                     	add    rsp,0x30
  3a4eb5:	41 5e                                           	pop    r14
  3a4eb7:	5f                                              	pop    rdi
  3a4eb8:	5e                                              	pop    rsi
  3a4eb9:	5d                                              	pop    rbp
  3a4eba:	5b                                              	pop    rbx
  3a4ebb:	c3                                              	ret
