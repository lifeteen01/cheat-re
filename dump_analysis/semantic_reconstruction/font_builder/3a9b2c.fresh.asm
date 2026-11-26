
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9b2c <.data+0x3a9b2c>:
  3a9b2c:	40 53                                           	rex push rbx
  3a9b2e:	55                                              	push   rbp
  3a9b2f:	56                                              	push   rsi
  3a9b30:	41 56                                           	push   r14
  3a9b32:	41 57                                           	push   r15
  3a9b34:	43 8d 2c 08                                     	lea    ebp,[r8+r9*1]
  3a9b38:	33 db                                           	xor    ebx,ebx
  3a9b3a:	45 33 d2                                        	xor    r10d,r10d
  3a9b3d:	33 f6                                           	xor    esi,esi
  3a9b3f:	45 8b f9                                        	mov    r15d,r9d
  3a9b42:	45 8b f0                                        	mov    r14d,r8d
  3a9b45:	4c 8b da                                        	mov    r11,rdx
  3a9b48:	39 2a                                           	cmp    DWORD PTR [rdx],ebp
  3a9b4a:	7d 57                                           	jge    0x3a9ba3
  3a9b4c:	4d 8d 4b 08                                     	lea    r9,[r11+0x8]
  3a9b50:	49 8b 01                                        	mov    rax,QWORD PTR [r9]
  3a9b53:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3a9b55:	41 39 5b 04                                     	cmp    DWORD PTR [r11+0x4],ebx
  3a9b59:	7e 1f                                           	jle    0x3a9b7a
  3a9b5b:	45 8b 43 04                                     	mov    r8d,DWORD PTR [r11+0x4]
  3a9b5f:	41 8b d6                                        	mov    edx,r14d
  3a9b62:	44 2b c3                                        	sub    r8d,ebx
  3a9b65:	41 8b 5b 04                                     	mov    ebx,DWORD PTR [r11+0x4]
  3a9b69:	44 0f af c6                                     	imul   r8d,esi
  3a9b6d:	45 39 33                                        	cmp    DWORD PTR [r11],r14d
  3a9b70:	41 0f 4d 13                                     	cmovge edx,DWORD PTR [r11]
  3a9b74:	2b ca                                           	sub    ecx,edx
  3a9b76:	03 f1                                           	add    esi,ecx
  3a9b78:	eb 1e                                           	jmp    0x3a9b98
  3a9b7a:	41 2b 0b                                        	sub    ecx,DWORD PTR [r11]
  3a9b7d:	41 8b d7                                        	mov    edx,r15d
  3a9b80:	2b d6                                           	sub    edx,esi
  3a9b82:	44 8b c3                                        	mov    r8d,ebx
  3a9b85:	8d 04 31                                        	lea    eax,[rcx+rsi*1]
  3a9b88:	41 3b c7                                        	cmp    eax,r15d
  3a9b8b:	0f 4e d1                                        	cmovle edx,ecx
  3a9b8e:	45 2b 43 04                                     	sub    r8d,DWORD PTR [r11+0x4]
  3a9b92:	03 f2                                           	add    esi,edx
  3a9b94:	44 0f af c2                                     	imul   r8d,edx
  3a9b98:	4d 8b 19                                        	mov    r11,QWORD PTR [r9]
  3a9b9b:	45 03 d0                                        	add    r10d,r8d
  3a9b9e:	41 39 2b                                        	cmp    DWORD PTR [r11],ebp
  3a9ba1:	7c a9                                           	jl     0x3a9b4c
  3a9ba3:	48 8b 4c 24 50                                  	mov    rcx,QWORD PTR [rsp+0x50]
  3a9ba8:	8b c3                                           	mov    eax,ebx
  3a9baa:	44 89 11                                        	mov    DWORD PTR [rcx],r10d
  3a9bad:	41 5f                                           	pop    r15
  3a9baf:	41 5e                                           	pop    r14
  3a9bb1:	5e                                              	pop    rsi
  3a9bb2:	5d                                              	pop    rbp
  3a9bb3:	5b                                              	pop    rbx
  3a9bb4:	c3                                              	ret
