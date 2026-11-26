
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8d94 <.data+0x3a8d94>:
  3a8d94:	40 53                                           	rex push rbx
  3a8d96:	55                                              	push   rbp
  3a8d97:	56                                              	push   rsi
  3a8d98:	57                                              	push   rdi
  3a8d99:	48 83 ec 28                                     	sub    rsp,0x28
  3a8d9d:	48 63 01                                        	movsxd rax,DWORD PTR [rcx]
  3a8da0:	48 8d a9 88 00 00 00                            	lea    rbp,[rcx+0x88]
  3a8da7:	48 8b 79 08                                     	mov    rdi,QWORD PTR [rcx+0x8]
  3a8dab:	48 8b f1                                        	mov    rsi,rcx
  3a8dae:	48 6b d8 38                                     	imul   rbx,rax,0x38
  3a8db2:	83 7c 3b e8 00                                  	cmp    DWORD PTR [rbx+rdi*1-0x18],0x0
  3a8db7:	74 1d                                           	je     0x3a8dd6
  3a8db9:	48 8b 44 3b c8                                  	mov    rax,QWORD PTR [rbx+rdi*1-0x38]
  3a8dbe:	48 3b 45 00                                     	cmp    rax,QWORD PTR [rbp+0x0]
  3a8dc2:	75 0b                                           	jne    0x3a8dcf
  3a8dc4:	48 8b 44 3b d0                                  	mov    rax,QWORD PTR [rbx+rdi*1-0x30]
  3a8dc9:	48 3b 45 08                                     	cmp    rax,QWORD PTR [rbp+0x8]
  3a8dcd:	74 45                                           	je     0x3a8e14
  3a8dcf:	e8 44 6f ff ff                                  	call   0x39fd18
  3a8dd4:	eb 48                                           	jmp    0x3a8e1e
  3a8dd6:	83 39 01                                        	cmp    DWORD PTR [rcx],0x1
  3a8dd9:	7e 39                                           	jle    0x3a8e14
  3a8ddb:	48 8d 57 90                                     	lea    rdx,[rdi-0x70]
  3a8ddf:	41 b8 1c 00 00 00                               	mov    r8d,0x1c
  3a8de5:	48 03 d3                                        	add    rdx,rbx
  3a8de8:	48 8b cd                                        	mov    rcx,rbp
  3a8deb:	e8 24 ff 01 00                                  	call   0x3c8d14
  3a8df0:	85 c0                                           	test   eax,eax
  3a8df2:	75 20                                           	jne    0x3a8e14
  3a8df4:	8b 44 3b ac                                     	mov    eax,DWORD PTR [rbx+rdi*1-0x54]
  3a8df8:	03 44 3b b0                                     	add    eax,DWORD PTR [rbx+rdi*1-0x50]
  3a8dfc:	3b 44 3b e4                                     	cmp    eax,DWORD PTR [rbx+rdi*1-0x1c]
  3a8e00:	75 12                                           	jne    0x3a8e14
  3a8e02:	48 83 7c 3b b8 00                               	cmp    QWORD PTR [rbx+rdi*1-0x48],0x0
  3a8e08:	75 0a                                           	jne    0x3a8e14
  3a8e0a:	48 8b ce                                        	mov    rcx,rsi
  3a8e0d:	e8 8e 60 ff ff                                  	call   0x39eea0
  3a8e12:	eb 0a                                           	jmp    0x3a8e1e
  3a8e14:	0f 10 45 00                                     	movups xmm0,XMMWORD PTR [rbp+0x0]
  3a8e18:	f3 0f 7f 44 3b c8                               	movdqu XMMWORD PTR [rbx+rdi*1-0x38],xmm0
  3a8e1e:	48 83 c4 28                                     	add    rsp,0x28
  3a8e22:	5f                                              	pop    rdi
  3a8e23:	5e                                              	pop    rsi
  3a8e24:	5d                                              	pop    rbp
  3a8e25:	5b                                              	pop    rbx
  3a8e26:	c3                                              	ret
