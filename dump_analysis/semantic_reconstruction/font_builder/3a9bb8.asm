
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9bb8 <.data+0x3a9bb8>:
  3a9bb8:	40 53                                           	rex push rbx
  3a9bba:	55                                              	push   rbp
  3a9bbb:	56                                              	push   rsi
  3a9bbc:	57                                              	push   rdi
  3a9bbd:	48 83 ec 38                                     	sub    rsp,0x38
  3a9bc1:	48 8b d9                                        	mov    rbx,rcx
  3a9bc4:	41 8b e9                                        	mov    ebp,r9d
  3a9bc7:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a9bcc:	41 8b f0                                        	mov    esi,r8d
  3a9bcf:	48 8b fa                                        	mov    rdi,rdx
  3a9bd2:	e8 55 fd ff ff                                  	call   0x3a992c
  3a9bd7:	45 33 db                                        	xor    r11d,r11d
  3a9bda:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3a9bdd:	f3 0f 7f 03                                     	movdqu XMMWORD PTR [rbx],xmm0
  3a9be1:	4c 8b 53 08                                     	mov    r10,QWORD PTR [rbx+0x8]
  3a9be5:	4d 85 d2                                        	test   r10,r10
  3a9be8:	74 73                                           	je     0x3a9c5d
  3a9bea:	8b 4b 04                                        	mov    ecx,DWORD PTR [rbx+0x4]
  3a9bed:	03 cd                                           	add    ecx,ebp
  3a9bef:	3b 4f 04                                        	cmp    ecx,DWORD PTR [rdi+0x4]
  3a9bf2:	7f 69                                           	jg     0x3a9c5d
  3a9bf4:	48 8b 57 20                                     	mov    rdx,QWORD PTR [rdi+0x20]
  3a9bf8:	48 85 d2                                        	test   rdx,rdx
  3a9bfb:	74 60                                           	je     0x3a9c5d
  3a9bfd:	44 8b 03                                        	mov    r8d,DWORD PTR [rbx]
  3a9c00:	48 8b 42 08                                     	mov    rax,QWORD PTR [rdx+0x8]
  3a9c04:	44 89 02                                        	mov    DWORD PTR [rdx],r8d
  3a9c07:	89 4a 04                                        	mov    DWORD PTR [rdx+0x4],ecx
  3a9c0a:	48 89 47 20                                     	mov    QWORD PTR [rdi+0x20],rax
  3a9c0e:	49 8b 0a                                        	mov    rcx,QWORD PTR [r10]
  3a9c11:	44 39 01                                        	cmp    DWORD PTR [rcx],r8d
  3a9c14:	7d 0c                                           	jge    0x3a9c22
  3a9c16:	48 8d 41 08                                     	lea    rax,[rcx+0x8]
  3a9c1a:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a9c1d:	48 89 10                                        	mov    QWORD PTR [rax],rdx
  3a9c20:	eb 03                                           	jmp    0x3a9c25
  3a9c22:	49 89 12                                        	mov    QWORD PTR [r10],rdx
  3a9c25:	4c 39 59 08                                     	cmp    QWORD PTR [rcx+0x8],r11
  3a9c29:	74 22                                           	je     0x3a9c4d
  3a9c2b:	45 8d 14 30                                     	lea    r10d,[r8+rsi*1]
  3a9c2f:	4c 8b 49 08                                     	mov    r9,QWORD PTR [rcx+0x8]
  3a9c33:	45 39 11                                        	cmp    DWORD PTR [r9],r10d
  3a9c36:	7f 15                                           	jg     0x3a9c4d
  3a9c38:	48 8b 47 20                                     	mov    rax,QWORD PTR [rdi+0x20]
  3a9c3c:	48 89 41 08                                     	mov    QWORD PTR [rcx+0x8],rax
  3a9c40:	48 89 4f 20                                     	mov    QWORD PTR [rdi+0x20],rcx
  3a9c44:	49 8b c9                                        	mov    rcx,r9
  3a9c47:	4d 39 59 08                                     	cmp    QWORD PTR [r9+0x8],r11
  3a9c4b:	75 e2                                           	jne    0x3a9c2f
  3a9c4d:	41 8d 04 30                                     	lea    eax,[r8+rsi*1]
  3a9c51:	48 89 4a 08                                     	mov    QWORD PTR [rdx+0x8],rcx
  3a9c55:	39 01                                           	cmp    DWORD PTR [rcx],eax
  3a9c57:	7d 08                                           	jge    0x3a9c61
  3a9c59:	89 01                                           	mov    DWORD PTR [rcx],eax
  3a9c5b:	eb 04                                           	jmp    0x3a9c61
  3a9c5d:	4c 89 5b 08                                     	mov    QWORD PTR [rbx+0x8],r11
  3a9c61:	48 8b c3                                        	mov    rax,rbx
  3a9c64:	48 83 c4 38                                     	add    rsp,0x38
  3a9c68:	5f                                              	pop    rdi
  3a9c69:	5e                                              	pop    rsi
  3a9c6a:	5d                                              	pop    rbp
  3a9c6b:	5b                                              	pop    rbx
  3a9c6c:	c3                                              	ret
