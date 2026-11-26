
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4b40 <.data+0x3a4b40>:
  3a4b40:	48 89 5c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbx
  3a4b45:	55                                              	push   rbp
  3a4b46:	56                                              	push   rsi
  3a4b47:	57                                              	push   rdi
  3a4b48:	48 83 ec 60                                     	sub    rsp,0x60
  3a4b4c:	48 8b d9                                        	mov    rbx,rcx
  3a4b4f:	e8 e4 03 00 00                                  	call   0x3a4f38
  3a4b54:	48 8b cb                                        	mov    rcx,rbx
  3a4b57:	e8 ac 04 00 00                                  	call   0x3a5008
  3a4b5c:	48 8b cb                                        	mov    rcx,rbx
  3a4b5f:	e8 a0 06 00 00                                  	call   0x3a5204
  3a4b64:	33 ff                                           	xor    edi,edi
  3a4b66:	48 8d 6b 68                                     	lea    rbp,[rbx+0x68]
  3a4b6a:	39 7d 00                                        	cmp    DWORD PTR [rbp+0x0],edi
  3a4b6d:	0f 8e f3 00 00 00                               	jle    0x3a4c66
  3a4b73:	8b d7                                           	mov    edx,edi
  3a4b75:	48 8b cd                                        	mov    rcx,rbp
  3a4b78:	e8 1f 70 fe ff                                  	call   0x38bb9c
  3a4b7d:	48 8b f0                                        	mov    rsi,rax
  3a4b80:	48 83 78 18 00                                  	cmp    QWORD PTR [rax+0x18],0x0
  3a4b85:	0f 84 d0 00 00 00                               	je     0x3a4c5b
  3a4b8b:	83 78 08 00                                     	cmp    DWORD PTR [rax+0x8],0x0
  3a4b8f:	0f 84 c6 00 00 00                               	je     0x3a4c5b
  3a4b95:	48 8d 8c 24 88 00 00 00                         	lea    rcx,[rsp+0x88]
  3a4b9d:	e8 ce fc f2 ff                                  	call   0x2d4870
  3a4ba2:	48 8d 8c 24 80 00 00 00                         	lea    rcx,[rsp+0x80]
  3a4baa:	e8 c1 fc f2 ff                                  	call   0x2d4870
  3a4baf:	4c 8d 8c 24 80 00 00 00                         	lea    r9,[rsp+0x80]
  3a4bb7:	48 8b d6                                        	mov    rdx,rsi
  3a4bba:	4c 8d 84 24 88 00 00 00                         	lea    r8,[rsp+0x88]
  3a4bc2:	48 8b cb                                        	mov    rcx,rbx
  3a4bc5:	e8 fe eb ff ff                                  	call   0x3a37c8
  3a4bca:	0f b7 46 02                                     	movzx  eax,WORD PTR [rsi+0x2]
  3a4bce:	33 d2                                           	xor    edx,edx
  3a4bd0:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [rsi+0xc]
  3a4bd5:	f3 0f 10 6e 14                                  	movss  xmm5,DWORD PTR [rsi+0x14]
  3a4bda:	f3 0f 10 8c 24 84 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0x84]
  3a4be3:	f3 0f 10 5e 10                                  	movss  xmm3,DWORD PTR [rsi+0x10]
  3a4be8:	44 0f b7 46 08                                  	movzx  r8d,WORD PTR [rsi+0x8]
  3a4bed:	48 8b 4e 18                                     	mov    rcx,QWORD PTR [rsi+0x18]
  3a4bf1:	f3 0f 11 44 24 58                               	movss  DWORD PTR [rsp+0x58],xmm0
  3a4bf7:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x80]
  3a4c00:	f3 0f 11 4c 24 50                               	movss  DWORD PTR [rsp+0x50],xmm1
  3a4c06:	f3 0f 10 8c 24 8c 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0x8c]
  3a4c0f:	f3 0f 11 44 24 48                               	movss  DWORD PTR [rsp+0x48],xmm0
  3a4c15:	f3 0f 10 84 24 88 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x88]
  3a4c1e:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [rsp+0x40],xmm1
  3a4c24:	f3 0f 11 44 24 38                               	movss  DWORD PTR [rsp+0x38],xmm0
  3a4c2a:	66 0f 6e e0                                     	movd   xmm4,eax
  3a4c2e:	0f b7 06                                        	movzx  eax,WORD PTR [rsi]
  3a4c31:	0f 5b e4                                        	cvtdq2ps xmm4,xmm4
  3a4c34:	66 0f 6e d0                                     	movd   xmm2,eax
  3a4c38:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a4c3b:	f3 0f 58 e5                                     	addss  xmm4,xmm5
  3a4c3f:	f3 0f 58 56 10                                  	addss  xmm2,DWORD PTR [rsi+0x10]
  3a4c44:	f3 0f 11 64 24 30                               	movss  DWORD PTR [rsp+0x30],xmm4
  3a4c4a:	f3 0f 11 54 24 28                               	movss  DWORD PTR [rsp+0x28],xmm2
  3a4c50:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm5
  3a4c56:	e8 21 b3 ff ff                                  	call   0x39ff7c
  3a4c5b:	ff c7                                           	inc    edi
  3a4c5d:	3b 7d 00                                        	cmp    edi,DWORD PTR [rbp+0x0]
  3a4c60:	0f 8c 0d ff ff ff                               	jl     0x3a4b73
  3a4c66:	33 ff                                           	xor    edi,edi
  3a4c68:	48 8d 73 58                                     	lea    rsi,[rbx+0x58]
  3a4c6c:	39 3e                                           	cmp    DWORD PTR [rsi],edi
  3a4c6e:	7e 2b                                           	jle    0x3a4c9b
  3a4c70:	8b d7                                           	mov    edx,edi
  3a4c72:	48 8b ce                                        	mov    rcx,rsi
  3a4c75:	e8 0a 6f fe ff                                  	call   0x38bb84
  3a4c7a:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a4c7d:	80 79 60 00                                     	cmp    BYTE PTR [rcx+0x60],0x0
  3a4c81:	74 12                                           	je     0x3a4c95
  3a4c83:	8b d7                                           	mov    edx,edi
  3a4c85:	48 8b ce                                        	mov    rcx,rsi
  3a4c88:	e8 f7 6e fe ff                                  	call   0x38bb84
  3a4c8d:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a4c90:	e8 2b e7 ff ff                                  	call   0x3a33c0
  3a4c95:	ff c7                                           	inc    edi
  3a4c97:	3b 3e                                           	cmp    edi,DWORD PTR [rsi]
  3a4c99:	7c d5                                           	jl     0x3a4c70
  3a4c9b:	c6 43 28 01                                     	mov    BYTE PTR [rbx+0x28],0x1
  3a4c9f:	48 8b 9c 24 90 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x90]
  3a4ca7:	48 83 c4 60                                     	add    rsp,0x60
  3a4cab:	5f                                              	pop    rdi
  3a4cac:	5e                                              	pop    rsi
  3a4cad:	5d                                              	pop    rbp
  3a4cae:	c3                                              	ret
  3a4caf:	cc                                              	int3
