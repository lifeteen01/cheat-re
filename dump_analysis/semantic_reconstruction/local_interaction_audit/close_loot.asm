
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e5bec <.data+0x2e5bec>:
  2e5bec:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  2e5bf1:	55                                              	push   rbp
  2e5bf2:	56                                              	push   rsi
  2e5bf3:	57                                              	push   rdi
  2e5bf4:	48 8b ec                                        	mov    rbp,rsp
  2e5bf7:	48 81 ec 80 00 00 00                            	sub    rsp,0x80
  2e5bfe:	48 83 3d 3a e6 0f 00 00                         	cmp    QWORD PTR [rip+0xfe63a],0x0        # 0x3e4240
  2e5c06:	0f 84 2a 01 00 00                               	je     0x2e5d36
  2e5c0c:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  2e5c10:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  2e5c14:	e8 3f f7 ff ff                                  	call   0x2e5358
  2e5c19:	48 8b c8                                        	mov    rcx,rax
  2e5c1c:	e8 5b 29 ff ff                                  	call   0x2d857c
  2e5c21:	48 8b d0                                        	mov    rdx,rax
  2e5c24:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  2e5c28:	e8 9f 66 fe ff                                  	call   0x2cc2cc
  2e5c2d:	8b 05 8d ef 0f 00                               	mov    eax,DWORD PTR [rip+0xfef8d]        # 0x3e4bc0
  2e5c33:	a8 01                                           	test   al,0x1
  2e5c35:	0f 85 9a 00 00 00                               	jne    0x2e5cd5
  2e5c3b:	83 c8 01                                        	or     eax,0x1
  2e5c3e:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  2e5c42:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  2e5c46:	89 05 74 ef 0f 00                               	mov    DWORD PTR [rip+0xfef74],eax        # 0x3e4bc0
  2e5c4c:	e8 df 6a fe ff                                  	call   0x2cc730
  2e5c51:	48 8b c8                                        	mov    rcx,rax
  2e5c54:	e8 4b 80 fe ff                                  	call   0x2cdca4
  2e5c59:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  2e5c5d:	48 8b f0                                        	mov    rsi,rax
  2e5c60:	48 8d 4d 28                                     	lea    rcx,[rbp+0x28]
  2e5c64:	e8 03 fa ff ff                                  	call   0x2e566c
  2e5c69:	48 8b c8                                        	mov    rcx,rax
  2e5c6c:	e8 ab 80 fe ff                                  	call   0x2cdd1c
  2e5c71:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  2e5c75:	48 8b f8                                        	mov    rdi,rax
  2e5c78:	48 8d 4d 28                                     	lea    rcx,[rbp+0x28]
  2e5c7c:	e8 af 6a fe ff                                  	call   0x2cc730
  2e5c81:	48 8b c8                                        	mov    rcx,rax
  2e5c84:	e8 1b 80 fe ff                                  	call   0x2cdca4
  2e5c89:	48 8d 55 c2                                     	lea    rdx,[rbp-0x3e]
  2e5c8d:	48 8b d8                                        	mov    rbx,rax
  2e5c90:	48 8d 4d 28                                     	lea    rcx,[rbp+0x28]
  2e5c94:	e8 33 f8 ff ff                                  	call   0x2e54cc
  2e5c99:	48 8b c8                                        	mov    rcx,rax
  2e5c9c:	e8 db 28 ff ff                                  	call   0x2d857c
  2e5ca1:	48 8b c8                                        	mov    rcx,rax
  2e5ca4:	48 8b d3                                        	mov    rdx,rbx
  2e5ca7:	e8 78 e5 04 00                                  	call   0x334224
  2e5cac:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e5cb0:	48 8b c8                                        	mov    rcx,rax
  2e5cb3:	4c 8b ce                                        	mov    r9,rsi
  2e5cb6:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e5cbb:	48 8b d7                                        	mov    rdx,rdi
  2e5cbe:	e8 e9 ec 04 00                                  	call   0x3349ac
  2e5cc3:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e5cc6:	8b 05 f4 ee 0f 00                               	mov    eax,DWORD PTR [rip+0xfeef4]        # 0x3e4bc0
  2e5ccc:	4c 89 05 e5 ee 0f 00                            	mov    QWORD PTR [rip+0xfeee5],r8        # 0x3e4bb8
  2e5cd3:	eb 07                                           	jmp    0x2e5cdc
  2e5cd5:	4c 8b 05 dc ee 0f 00                            	mov    r8,QWORD PTR [rip+0xfeedc]        # 0x3e4bb8
  2e5cdc:	a8 02                                           	test   al,0x2
  2e5cde:	75 1f                                           	jne    0x2e5cff
  2e5ce0:	48 8b 0d 79 01 0f 00                            	mov    rcx,QWORD PTR [rip+0xf0179]        # 0x3d5e60
  2e5ce7:	48 8d 15 e2 ee 0f 00                            	lea    rdx,[rip+0xfeee2]        # 0x3e4bd0
  2e5cee:	83 c8 02                                        	or     eax,0x2
  2e5cf1:	45 33 c9                                        	xor    r9d,r9d
  2e5cf4:	89 05 c6 ee 0f 00                               	mov    DWORD PTR [rip+0xfeec6],eax        # 0x3e4bc0
  2e5cfa:	e8 25 60 fe ff                                  	call   0x2cbd24
  2e5cff:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  2e5d03:	e8 e4 7a fe ff                                  	call   0x2cd7ec
  2e5d08:	48 8b c8                                        	mov    rcx,rax
  2e5d0b:	e8 cc 88 fe ff                                  	call   0x2ce5dc
  2e5d10:	4c 8b 05 29 e5 0f 00                            	mov    r8,QWORD PTR [rip+0xfe529]        # 0x3e4240
  2e5d17:	48 8d 15 b2 ee 0f 00                            	lea    rdx,[rip+0xfeeb2]        # 0x3e4bd0
  2e5d1e:	48 8b 0d 3b 01 0f 00                            	mov    rcx,QWORD PTR [rip+0xf013b]        # 0x3d5e60
  2e5d25:	4c 8b c8                                        	mov    r9,rax
  2e5d28:	e8 67 c3 fe ff                                  	call   0x2d2094
  2e5d2d:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  2e5d31:	e8 be 67 fe ff                                  	call   0x2cc4f4
  2e5d36:	48 8b 9c 24 b8 00 00 00                         	mov    rbx,QWORD PTR [rsp+0xb8]
  2e5d3e:	48 81 c4 80 00 00 00                            	add    rsp,0x80
  2e5d45:	5f                                              	pop    rdi
  2e5d46:	5e                                              	pop    rsi
  2e5d47:	5d                                              	pop    rbp
  2e5d48:	c3                                              	ret
