
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392dcc <.data+0x392dcc>:
  392dcc:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  392dd1:	48 89 6c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbp
  392dd6:	56                                              	push   rsi
  392dd7:	57                                              	push   rdi
  392dd8:	41 56                                           	push   r14
  392dda:	48 83 ec 20                                     	sub    rsp,0x20
  392dde:	48 8b 7c d1 38                                  	mov    rdi,QWORD PTR [rcx+rdx*8+0x38]
  392de3:	49 8b d8                                        	mov    rbx,r8
  392de6:	4c 8b 35 3b 2d 07 00                            	mov    r14,QWORD PTR [rip+0x72d3b]        # 0x405b28
  392ded:	48 8b ea                                        	mov    rbp,rdx
  392df0:	48 8b f1                                        	mov    rsi,rcx
  392df3:	48 85 ff                                        	test   rdi,rdi
  392df6:	75 3e                                           	jne    0x392e36
  392df8:	bf c8 00 00 00                                  	mov    edi,0xc8
  392dfd:	8b cf                                           	mov    ecx,edi
  392dff:	e8 54 23 00 00                                  	call   0x395158
  392e04:	8a 54 24 40                                     	mov    dl,BYTE PTR [rsp+0x40]
  392e08:	4c 8b c0                                        	mov    r8,rax
  392e0b:	8b cf                                           	mov    ecx,edi
  392e0d:	e8 5a 8d ff ff                                  	call   0x38bb6c
  392e12:	48 85 c0                                        	test   rax,rax
  392e15:	74 14                                           	je     0x392e2b
  392e17:	49 8d 96 38 3c 00 00                            	lea    rdx,[r14+0x3c38]
  392e1e:	48 8b c8                                        	mov    rcx,rax
  392e21:	e8 86 76 ff ff                                  	call   0x38a4ac
  392e26:	48 8b f8                                        	mov    rdi,rax
  392e29:	eb 02                                           	jmp    0x392e2d
  392e2b:	33 ff                                           	xor    edi,edi
  392e2d:	48 89 5f 40                                     	mov    QWORD PTR [rdi+0x40],rbx
  392e31:	48 89 7c ee 38                                  	mov    QWORD PTR [rsi+rbp*8+0x38],rdi
  392e36:	41 8b 86 60 3e 00 00                            	mov    eax,DWORD PTR [r14+0x3e60]
  392e3d:	39 44 ae 30                                     	cmp    DWORD PTR [rsi+rbp*4+0x30],eax
  392e41:	74 47                                           	je     0x392e8a
  392e43:	48 8b cf                                        	mov    rcx,rdi
  392e46:	e8 0d 64 01 00                                  	call   0x3a9258
  392e4b:	49 8b 56 58                                     	mov    rdx,QWORD PTR [r14+0x58]
  392e4f:	48 8b cf                                        	mov    rcx,rdi
  392e52:	48 8b 52 08                                     	mov    rdx,QWORD PTR [rdx+0x8]
  392e56:	e8 69 45 01 00                                  	call   0x3a73c4
  392e5b:	4c 8d 46 0c                                     	lea    r8,[rsi+0xc]
  392e5f:	48 8d 56 04                                     	lea    rdx,[rsi+0x4]
  392e63:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  392e68:	e8 6b cb f5 ff                                  	call   0x2ef9d8
  392e6d:	4c 8b c0                                        	mov    r8,rax
  392e70:	48 8d 56 04                                     	lea    rdx,[rsi+0x4]
  392e74:	45 33 c9                                        	xor    r9d,r9d
  392e77:	48 8b cf                                        	mov    rcx,rdi
  392e7a:	e8 e9 43 01 00                                  	call   0x3a7268
  392e7f:	41 8b 86 60 3e 00 00                            	mov    eax,DWORD PTR [r14+0x3e60]
  392e86:	89 44 ae 30                                     	mov    DWORD PTR [rsi+rbp*4+0x30],eax
  392e8a:	48 8b 5c 24 48                                  	mov    rbx,QWORD PTR [rsp+0x48]
  392e8f:	48 8b c7                                        	mov    rax,rdi
  392e92:	48 8b 6c 24 50                                  	mov    rbp,QWORD PTR [rsp+0x50]
  392e97:	48 83 c4 20                                     	add    rsp,0x20
  392e9b:	41 5e                                           	pop    r14
  392e9d:	5f                                              	pop    rdi
  392e9e:	5e                                              	pop    rsi
  392e9f:	c3                                              	ret
