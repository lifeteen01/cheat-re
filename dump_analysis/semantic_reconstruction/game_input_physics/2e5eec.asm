
dump_analysis/semantic_reconstruction/game_input_physics/2e5eec.bin:     file format binary


Disassembly of section .data:

00000000002e5eec <.data>:
  2e5eec:	4c 8b dc                                        	mov    r11,rsp
  2e5eef:	49 89 5b 18                                     	mov    QWORD PTR [r11+0x18],rbx
  2e5ef3:	49 89 73 20                                     	mov    QWORD PTR [r11+0x20],rsi
  2e5ef7:	57                                              	push   rdi
  2e5ef8:	48 83 ec 60                                     	sub    rsp,0x60
  2e5efc:	8b 05 1e e7 0f 00                               	mov    eax,DWORD PTR [rip+0xfe71e]        # 0x3e4620
  2e5f02:	a8 01                                           	test   al,0x1
  2e5f04:	0f 85 a0 00 00 00                               	jne    0x2e5faa
  2e5f0a:	83 c8 01                                        	or     eax,0x1
  2e5f0d:	49 8d 53 08                                     	lea    rdx,[r11+0x8]
  2e5f11:	49 8d 4b 08                                     	lea    rcx,[r11+0x8]
  2e5f15:	89 05 05 e7 0f 00                               	mov    DWORD PTR [rip+0xfe705],eax        # 0x3e4620
  2e5f1b:	e8 10 68 fe ff                                  	call   0x2cc730
  2e5f20:	48 8b c8                                        	mov    rcx,rax
  2e5f23:	e8 7c 7d fe ff                                  	call   0x2cdca4
  2e5f28:	48 8d 54 24 39                                  	lea    rdx,[rsp+0x39]
  2e5f2d:	48 8b f0                                        	mov    rsi,rax
  2e5f30:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  2e5f35:	e8 7e f7 ff ff                                  	call   0x2e56b8
  2e5f3a:	48 8b c8                                        	mov    rcx,rax
  2e5f3d:	e8 ca 7e fe ff                                  	call   0x2cde0c
  2e5f42:	48 8d 54 24 45                                  	lea    rdx,[rsp+0x45]
  2e5f47:	48 8b f8                                        	mov    rdi,rax
  2e5f4a:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  2e5f4f:	e8 b0 f5 ff ff                                  	call   0x2e5504
  2e5f54:	48 8b c8                                        	mov    rcx,rax
  2e5f57:	e8 58 d7 ff ff                                  	call   0x2e36b4
  2e5f5c:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e5f61:	48 8b d8                                        	mov    rbx,rax
  2e5f64:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  2e5f69:	e8 1e f4 ff ff                                  	call   0x2e538c
  2e5f6e:	48 8b c8                                        	mov    rcx,rax
  2e5f71:	e8 8e 25 ff ff                                  	call   0x2d8504
  2e5f76:	48 8b c8                                        	mov    rcx,rax
  2e5f79:	48 8b d3                                        	mov    rdx,rbx
  2e5f7c:	e8 a3 e2 04 00                                  	call   0x334224
  2e5f81:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e5f85:	48 8b c8                                        	mov    rcx,rax
  2e5f88:	4c 8b ce                                        	mov    r9,rsi
  2e5f8b:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e5f90:	48 8b d7                                        	mov    rdx,rdi
  2e5f93:	e8 14 ea 04 00                                  	call   0x3349ac
  2e5f98:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e5f9b:	8b 05 7f e6 0f 00                               	mov    eax,DWORD PTR [rip+0xfe67f]        # 0x3e4620
  2e5fa1:	4c 89 05 70 e6 0f 00                            	mov    QWORD PTR [rip+0xfe670],r8        # 0x3e4618
  2e5fa8:	eb 07                                           	jmp    0x2e5fb1
  2e5faa:	4c 8b 05 67 e6 0f 00                            	mov    r8,QWORD PTR [rip+0xfe667]        # 0x3e4618
  2e5fb1:	a8 02                                           	test   al,0x2
  2e5fb3:	75 1f                                           	jne    0x2e5fd4
  2e5fb5:	48 8b 0d a4 fe 0e 00                            	mov    rcx,QWORD PTR [rip+0xefea4]        # 0x3d5e60
  2e5fbc:	48 8d 15 6d e6 0f 00                            	lea    rdx,[rip+0xfe66d]        # 0x3e4630
  2e5fc3:	83 c8 02                                        	or     eax,0x2
  2e5fc6:	45 33 c9                                        	xor    r9d,r9d
  2e5fc9:	89 05 51 e6 0f 00                               	mov    DWORD PTR [rip+0xfe651],eax        # 0x3e4620
  2e5fcf:	e8 50 5d fe ff                                  	call   0x2cbd24
  2e5fd4:	48 8b 0d 85 fe 0e 00                            	mov    rcx,QWORD PTR [rip+0xefe85]        # 0x3d5e60
  2e5fdb:	48 8d 15 4e e6 0f 00                            	lea    rdx,[rip+0xfe64e]        # 0x3e4630
  2e5fe2:	4c 8d 5c 24 60                                  	lea    r11,[rsp+0x60]
  2e5fe7:	49 8b 5b 20                                     	mov    rbx,QWORD PTR [r11+0x20]
  2e5feb:	49 8b 73 28                                     	mov    rsi,QWORD PTR [r11+0x28]
  2e5fef:	49 8b e3                                        	mov    rsp,r11
  2e5ff2:	5f                                              	pop    rdi
  2e5ff3:	e9 20 7a ff ff                                  	jmp    0x2dda18
