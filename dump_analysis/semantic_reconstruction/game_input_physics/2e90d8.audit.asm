
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e90d8.audit.bin:     file format binary


Disassembly of section .data:

00000000002e90d8 <.data>:
  2e90d8:	4c 8b dc                                        	mov    r11,rsp
  2e90db:	49 89 5b 08                                     	mov    QWORD PTR [r11+0x8],rbx
  2e90df:	55                                              	push   rbp
  2e90e0:	56                                              	push   rsi
  2e90e1:	57                                              	push   rdi
  2e90e2:	48 81 ec 80 00 00 00                            	sub    rsp,0x80
  2e90e9:	8b 05 41 b4 0f 00                               	mov    eax,DWORD PTR [rip+0xfb441]        # 0x3e4530
  2e90ef:	48 8b e9                                        	mov    rbp,rcx
  2e90f2:	a8 01                                           	test   al,0x1
  2e90f4:	0f 85 a9 00 00 00                               	jne    0x2e91a3
  2e90fa:	83 c8 01                                        	or     eax,0x1
  2e90fd:	49 8d 53 10                                     	lea    rdx,[r11+0x10]
  2e9101:	49 8d 4b 10                                     	lea    rcx,[r11+0x10]
  2e9105:	89 05 25 b4 0f 00                               	mov    DWORD PTR [rip+0xfb425],eax        # 0x3e4530
  2e910b:	e8 20 36 fe ff                                  	call   0x2cc730
  2e9110:	48 8b c8                                        	mov    rcx,rax
  2e9113:	e8 8c 4b fe ff                                  	call   0x2cdca4
  2e9118:	48 8d 54 24 3e                                  	lea    rdx,[rsp+0x3e]
  2e911d:	48 8b f0                                        	mov    rsi,rax
  2e9120:	48 8d 8c 24 b0 00 00 00                         	lea    rcx,[rsp+0xb0]
  2e9128:	e8 73 c6 ff ff                                  	call   0x2e57a0
  2e912d:	48 8b c8                                        	mov    rcx,rax
  2e9130:	e8 a7 a5 ff ff                                  	call   0x2e36dc
  2e9135:	48 8d 54 24 57                                  	lea    rdx,[rsp+0x57]
  2e913a:	48 8b f8                                        	mov    rdi,rax
  2e913d:	48 8d 8c 24 b0 00 00 00                         	lea    rcx,[rsp+0xb0]
  2e9145:	e8 aa c4 ff ff                                  	call   0x2e55f4
  2e914a:	48 8b c8                                        	mov    rcx,rax
  2e914d:	e8 da 0a 00 00                                  	call   0x2e9c2c
  2e9152:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e9157:	48 8b d8                                        	mov    rbx,rax
  2e915a:	48 8d 8c 24 b0 00 00 00                         	lea    rcx,[rsp+0xb0]
  2e9162:	e8 29 c3 ff ff                                  	call   0x2e5490
  2e9167:	48 8b c8                                        	mov    rcx,rax
  2e916a:	e8 ad f4 fe ff                                  	call   0x2d861c
  2e916f:	48 8b c8                                        	mov    rcx,rax
  2e9172:	48 8b d3                                        	mov    rdx,rbx
  2e9175:	e8 aa b0 04 00                                  	call   0x334224
  2e917a:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e917e:	48 8b c8                                        	mov    rcx,rax
  2e9181:	4c 8b ce                                        	mov    r9,rsi
  2e9184:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e9189:	48 8b d7                                        	mov    rdx,rdi
  2e918c:	e8 1b b8 04 00                                  	call   0x3349ac
  2e9191:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e9194:	8b 05 96 b3 0f 00                               	mov    eax,DWORD PTR [rip+0xfb396]        # 0x3e4530
  2e919a:	4c 89 05 87 b3 0f 00                            	mov    QWORD PTR [rip+0xfb387],r8        # 0x3e4528
  2e91a1:	eb 07                                           	jmp    0x2e91aa
  2e91a3:	4c 8b 05 7e b3 0f 00                            	mov    r8,QWORD PTR [rip+0xfb37e]        # 0x3e4528
  2e91aa:	a8 02                                           	test   al,0x2
  2e91ac:	75 1f                                           	jne    0x2e91cd
  2e91ae:	48 8b 0d ab cc 0e 00                            	mov    rcx,QWORD PTR [rip+0xeccab]        # 0x3d5e60
  2e91b5:	48 8d 15 84 b3 0f 00                            	lea    rdx,[rip+0xfb384]        # 0x3e4540
  2e91bc:	83 c8 02                                        	or     eax,0x2
  2e91bf:	45 33 c9                                        	xor    r9d,r9d
  2e91c2:	89 05 68 b3 0f 00                               	mov    DWORD PTR [rip+0xfb368],eax        # 0x3e4530
  2e91c8:	e8 57 2b fe ff                                  	call   0x2cbd24
  2e91cd:	48 8b 0d 8c cc 0e 00                            	mov    rcx,QWORD PTR [rip+0xecc8c]        # 0x3d5e60
  2e91d4:	48 8d 15 65 b3 0f 00                            	lea    rdx,[rip+0xfb365]        # 0x3e4540
  2e91db:	4c 8b c5                                        	mov    r8,rbp
  2e91de:	e8 19 28 fe ff                                  	call   0x2cb9fc
  2e91e3:	48 8b 9c 24 a0 00 00 00                         	mov    rbx,QWORD PTR [rsp+0xa0]
  2e91eb:	84 c0                                           	test   al,al
  2e91ed:	0f 95 c0                                        	setne  al
  2e91f0:	48 81 c4 80 00 00 00                            	add    rsp,0x80
  2e91f7:	5f                                              	pop    rdi
  2e91f8:	5e                                              	pop    rsi
  2e91f9:	5d                                              	pop    rbp
  2e91fa:	c3                                              	ret
