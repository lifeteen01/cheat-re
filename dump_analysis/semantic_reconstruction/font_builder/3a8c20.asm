
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8c20 <.data+0x3a8c20>:
  3a8c20:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  3a8c25:	48 89 6c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbp
  3a8c2a:	56                                              	push   rsi
  3a8c2b:	57                                              	push   rdi
  3a8c2c:	41 54                                           	push   r12
  3a8c2e:	41 56                                           	push   r14
  3a8c30:	41 57                                           	push   r15
  3a8c32:	48 83 ec 20                                     	sub    rsp,0x20
  3a8c36:	4c 8b e2                                        	mov    r12,rdx
  3a8c39:	48 8b d9                                        	mov    rbx,rcx
  3a8c3c:	e8 93 07 f3 ff                                  	call   0x2d93d4
  3a8c41:	48 8b cb                                        	mov    rcx,rbx
  3a8c44:	48 8b f8                                        	mov    rdi,rax
  3a8c47:	e8 74 07 00 00                                  	call   0x3a93c0
  3a8c4c:	48 8b e8                                        	mov    rbp,rax
  3a8c4f:	48 3b f8                                        	cmp    rdi,rax
  3a8c52:	73 49                                           	jae    0x3a8c9d
  3a8c54:	4c 8d 3c fd 00 00 00 00                         	lea    r15,[rdi*8+0x0]
  3a8c5c:	8b 37                                           	mov    esi,DWORD PTR [rdi]
  3a8c5e:	85 f6                                           	test   esi,esi
  3a8c60:	74 32                                           	je     0x3a8c94
  3a8c62:	33 db                                           	xor    ebx,ebx
  3a8c64:	4c 8d 34 fd 00 00 00 00                         	lea    r14,[rdi*8+0x0]
  3a8c6c:	0f a3 de                                        	bt     esi,ebx
  3a8c6f:	73 1c                                           	jae    0x3a8c8d
  3a8c71:	41 8b c6                                        	mov    eax,r14d
  3a8c74:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3a8c79:	41 2b c7                                        	sub    eax,r15d
  3a8c7c:	49 8b cc                                        	mov    rcx,r12
  3a8c7f:	83 e0 e0                                        	and    eax,0xffffffe0
  3a8c82:	03 c3                                           	add    eax,ebx
  3a8c84:	89 44 24 50                                     	mov    DWORD PTR [rsp+0x50],eax
  3a8c88:	e8 5b 62 ff ff                                  	call   0x39eee8
  3a8c8d:	ff c3                                           	inc    ebx
  3a8c8f:	83 fb 20                                        	cmp    ebx,0x20
  3a8c92:	72 d8                                           	jb     0x3a8c6c
  3a8c94:	48 83 c7 04                                     	add    rdi,0x4
  3a8c98:	48 3b fd                                        	cmp    rdi,rbp
  3a8c9b:	72 bf                                           	jb     0x3a8c5c
  3a8c9d:	48 8b 5c 24 58                                  	mov    rbx,QWORD PTR [rsp+0x58]
  3a8ca2:	48 8b 6c 24 60                                  	mov    rbp,QWORD PTR [rsp+0x60]
  3a8ca7:	48 83 c4 20                                     	add    rsp,0x20
  3a8cab:	41 5f                                           	pop    r15
  3a8cad:	41 5e                                           	pop    r14
  3a8caf:	41 5c                                           	pop    r12
  3a8cb1:	5f                                              	pop    rdi
  3a8cb2:	5e                                              	pop    rsi
  3a8cb3:	c3                                              	ret
