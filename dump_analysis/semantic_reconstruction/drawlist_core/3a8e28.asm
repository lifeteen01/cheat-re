
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8e28 <.data+0x3a8e28>:
  3a8e28:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a8e2d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a8e32:	57                                              	push   rdi
  3a8e33:	48 83 ec 20                                     	sub    rsp,0x20
  3a8e37:	48 63 01                                        	movsxd rax,DWORD PTR [rcx]
  3a8e3a:	48 8b f1                                        	mov    rsi,rcx
  3a8e3d:	48 8b 79 08                                     	mov    rdi,QWORD PTR [rcx+0x8]
  3a8e41:	48 6b d8 38                                     	imul   rbx,rax,0x38
  3a8e45:	83 7c 3b e8 00                                  	cmp    DWORD PTR [rbx+rdi*1-0x18],0x0
  3a8e4a:	74 15                                           	je     0x3a8e61
  3a8e4c:	48 8b 81 98 00 00 00                            	mov    rax,QWORD PTR [rcx+0x98]
  3a8e53:	48 39 44 3b d8                                  	cmp    QWORD PTR [rbx+rdi*1-0x28],rax
  3a8e58:	74 49                                           	je     0x3a8ea3
  3a8e5a:	e8 b9 6e ff ff                                  	call   0x39fd18
  3a8e5f:	eb 4e                                           	jmp    0x3a8eaf
  3a8e61:	83 39 01                                        	cmp    DWORD PTR [rcx],0x1
  3a8e64:	7e 3d                                           	jle    0x3a8ea3
  3a8e66:	48 8d 57 90                                     	lea    rdx,[rdi-0x70]
  3a8e6a:	48 81 c1 88 00 00 00                            	add    rcx,0x88
  3a8e71:	48 03 d3                                        	add    rdx,rbx
  3a8e74:	41 b8 1c 00 00 00                               	mov    r8d,0x1c
  3a8e7a:	e8 95 fe 01 00                                  	call   0x3c8d14
  3a8e7f:	85 c0                                           	test   eax,eax
  3a8e81:	75 20                                           	jne    0x3a8ea3
  3a8e83:	8b 44 3b ac                                     	mov    eax,DWORD PTR [rbx+rdi*1-0x54]
  3a8e87:	03 44 3b b0                                     	add    eax,DWORD PTR [rbx+rdi*1-0x50]
  3a8e8b:	3b 44 3b e4                                     	cmp    eax,DWORD PTR [rbx+rdi*1-0x1c]
  3a8e8f:	75 12                                           	jne    0x3a8ea3
  3a8e91:	48 83 7c 3b b8 00                               	cmp    QWORD PTR [rbx+rdi*1-0x48],0x0
  3a8e97:	75 0a                                           	jne    0x3a8ea3
  3a8e99:	48 8b ce                                        	mov    rcx,rsi
  3a8e9c:	e8 ff 5f ff ff                                  	call   0x39eea0
  3a8ea1:	eb 0c                                           	jmp    0x3a8eaf
  3a8ea3:	48 8b 86 98 00 00 00                            	mov    rax,QWORD PTR [rsi+0x98]
  3a8eaa:	48 89 44 3b d8                                  	mov    QWORD PTR [rbx+rdi*1-0x28],rax
  3a8eaf:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a8eb4:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3a8eb9:	48 83 c4 20                                     	add    rsp,0x20
  3a8ebd:	5f                                              	pop    rdi
  3a8ebe:	c3                                              	ret
