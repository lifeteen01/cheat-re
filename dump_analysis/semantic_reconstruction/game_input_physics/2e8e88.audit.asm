
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e8e88.audit.bin:     file format binary


Disassembly of section .data:

00000000002e8e88 <.data>:
  2e8e88:	4c 8b dc                                        	mov    r11,rsp
  2e8e8b:	49 89 5b 08                                     	mov    QWORD PTR [r11+0x8],rbx
  2e8e8f:	55                                              	push   rbp
  2e8e90:	56                                              	push   rsi
  2e8e91:	57                                              	push   rdi
  2e8e92:	48 81 ec 80 00 00 00                            	sub    rsp,0x80
  2e8e99:	8b 05 a1 b5 0f 00                               	mov    eax,DWORD PTR [rip+0xfb5a1]        # 0x3e4440
  2e8e9f:	48 8b e9                                        	mov    rbp,rcx
  2e8ea2:	a8 01                                           	test   al,0x1
  2e8ea4:	0f 85 a9 00 00 00                               	jne    0x2e8f53
  2e8eaa:	83 c8 01                                        	or     eax,0x1
  2e8ead:	49 8d 53 10                                     	lea    rdx,[r11+0x10]
  2e8eb1:	49 8d 4b 10                                     	lea    rcx,[r11+0x10]
  2e8eb5:	89 05 85 b5 0f 00                               	mov    DWORD PTR [rip+0xfb585],eax        # 0x3e4440
  2e8ebb:	e8 70 38 fe ff                                  	call   0x2cc730
  2e8ec0:	48 8b c8                                        	mov    rcx,rax
  2e8ec3:	e8 dc 4d fe ff                                  	call   0x2cdca4
  2e8ec8:	48 8d 54 24 3e                                  	lea    rdx,[rsp+0x3e]
  2e8ecd:	48 8b f0                                        	mov    rsi,rax
  2e8ed0:	48 8d 8c 24 b0 00 00 00                         	lea    rcx,[rsp+0xb0]
  2e8ed8:	e8 93 c8 ff ff                                  	call   0x2e5770
  2e8edd:	48 8b c8                                        	mov    rcx,rax
  2e8ee0:	e8 cf a7 ff ff                                  	call   0x2e36b4
  2e8ee5:	48 8d 54 24 56                                  	lea    rdx,[rsp+0x56]
  2e8eea:	48 8b f8                                        	mov    rdi,rax
  2e8eed:	48 8d 8c 24 b0 00 00 00                         	lea    rcx,[rsp+0xb0]
  2e8ef5:	e8 ba c6 ff ff                                  	call   0x2e55b4
  2e8efa:	48 8b c8                                        	mov    rcx,rax
  2e8efd:	e8 2a 0d 00 00                                  	call   0x2e9c2c
  2e8f02:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e8f07:	48 8b d8                                        	mov    rbx,rax
  2e8f0a:	48 8d 8c 24 b0 00 00 00                         	lea    rcx,[rsp+0xb0]
  2e8f12:	e8 41 c5 ff ff                                  	call   0x2e5458
  2e8f17:	48 8b c8                                        	mov    rcx,rax
  2e8f1a:	e8 fd f6 fe ff                                  	call   0x2d861c
  2e8f1f:	48 8b c8                                        	mov    rcx,rax
  2e8f22:	48 8b d3                                        	mov    rdx,rbx
  2e8f25:	e8 fa b2 04 00                                  	call   0x334224
  2e8f2a:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e8f2e:	48 8b c8                                        	mov    rcx,rax
  2e8f31:	4c 8b ce                                        	mov    r9,rsi
  2e8f34:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e8f39:	48 8b d7                                        	mov    rdx,rdi
  2e8f3c:	e8 6b ba 04 00                                  	call   0x3349ac
  2e8f41:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e8f44:	8b 05 f6 b4 0f 00                               	mov    eax,DWORD PTR [rip+0xfb4f6]        # 0x3e4440
  2e8f4a:	4c 89 05 e7 b4 0f 00                            	mov    QWORD PTR [rip+0xfb4e7],r8        # 0x3e4438
  2e8f51:	eb 07                                           	jmp    0x2e8f5a
  2e8f53:	4c 8b 05 de b4 0f 00                            	mov    r8,QWORD PTR [rip+0xfb4de]        # 0x3e4438
  2e8f5a:	a8 02                                           	test   al,0x2
  2e8f5c:	75 1f                                           	jne    0x2e8f7d
  2e8f5e:	48 8b 0d fb ce 0e 00                            	mov    rcx,QWORD PTR [rip+0xecefb]        # 0x3d5e60
  2e8f65:	48 8d 15 e4 b4 0f 00                            	lea    rdx,[rip+0xfb4e4]        # 0x3e4450
  2e8f6c:	83 c8 02                                        	or     eax,0x2
  2e8f6f:	45 33 c9                                        	xor    r9d,r9d
  2e8f72:	89 05 c8 b4 0f 00                               	mov    DWORD PTR [rip+0xfb4c8],eax        # 0x3e4440
  2e8f78:	e8 a7 2d fe ff                                  	call   0x2cbd24
  2e8f7d:	48 8b 0d dc ce 0e 00                            	mov    rcx,QWORD PTR [rip+0xecedc]        # 0x3d5e60
  2e8f84:	48 8d 15 c5 b4 0f 00                            	lea    rdx,[rip+0xfb4c5]        # 0x3e4450
  2e8f8b:	4c 8b c5                                        	mov    r8,rbp
  2e8f8e:	e8 69 2a fe ff                                  	call   0x2cb9fc
  2e8f93:	48 8b 9c 24 a0 00 00 00                         	mov    rbx,QWORD PTR [rsp+0xa0]
  2e8f9b:	84 c0                                           	test   al,al
  2e8f9d:	0f 95 c0                                        	setne  al
  2e8fa0:	48 81 c4 80 00 00 00                            	add    rsp,0x80
  2e8fa7:	5f                                              	pop    rdi
  2e8fa8:	5e                                              	pop    rsi
  2e8fa9:	5d                                              	pop    rbp
  2e8faa:	c3                                              	ret
