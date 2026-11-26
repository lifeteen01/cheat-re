
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5ff8.audit.bin:     file format binary


Disassembly of section .data:

00000000002e5ff8 <.data>:
  2e5ff8:	4c 8b dc                                        	mov    r11,rsp
  2e5ffb:	49 89 5b 08                                     	mov    QWORD PTR [r11+0x8],rbx
  2e5fff:	55                                              	push   rbp
  2e6000:	56                                              	push   rsi
  2e6001:	57                                              	push   rdi
  2e6002:	48 83 ec 60                                     	sub    rsp,0x60
  2e6006:	8b 05 04 e7 0f 00                               	mov    eax,DWORD PTR [rip+0xfe704]        # 0x3e4710
  2e600c:	48 8b e9                                        	mov    rbp,rcx
  2e600f:	a8 01                                           	test   al,0x1
  2e6011:	0f 85 a9 00 00 00                               	jne    0x2e60c0
  2e6017:	83 c8 01                                        	or     eax,0x1
  2e601a:	49 8d 53 10                                     	lea    rdx,[r11+0x10]
  2e601e:	49 8d 4b 10                                     	lea    rcx,[r11+0x10]
  2e6022:	89 05 e8 e6 0f 00                               	mov    DWORD PTR [rip+0xfe6e8],eax        # 0x3e4710
  2e6028:	e8 03 67 fe ff                                  	call   0x2cc730
  2e602d:	48 8b c8                                        	mov    rcx,rax
  2e6030:	e8 6f 7c fe ff                                  	call   0x2cdca4
  2e6035:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e603a:	48 8b f0                                        	mov    rsi,rax
  2e603d:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2e6045:	e8 8a f6 ff ff                                  	call   0x2e56d4
  2e604a:	48 8b c8                                        	mov    rcx,rax
  2e604d:	e8 b2 24 ff ff                                  	call   0x2d8504
  2e6052:	48 8d 54 24 42                                  	lea    rdx,[rsp+0x42]
  2e6057:	48 8b f8                                        	mov    rdi,rax
  2e605a:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2e6062:	e8 b9 f4 ff ff                                  	call   0x2e5520
  2e6067:	48 8b c8                                        	mov    rcx,rax
  2e606a:	e8 45 d6 ff ff                                  	call   0x2e36b4
  2e606f:	48 8d 54 24 39                                  	lea    rdx,[rsp+0x39]
  2e6074:	48 8b d8                                        	mov    rbx,rax
  2e6077:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2e607f:	e8 24 f3 ff ff                                  	call   0x2e53a8
  2e6084:	48 8b c8                                        	mov    rcx,rax
  2e6087:	e8 78 24 ff ff                                  	call   0x2d8504
  2e608c:	48 8b c8                                        	mov    rcx,rax
  2e608f:	48 8b d3                                        	mov    rdx,rbx
  2e6092:	e8 8d e1 04 00                                  	call   0x334224
  2e6097:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e609b:	48 8b c8                                        	mov    rcx,rax
  2e609e:	4c 8b ce                                        	mov    r9,rsi
  2e60a1:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e60a6:	48 8b d7                                        	mov    rdx,rdi
  2e60a9:	e8 fe e8 04 00                                  	call   0x3349ac
  2e60ae:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e60b1:	8b 05 59 e6 0f 00                               	mov    eax,DWORD PTR [rip+0xfe659]        # 0x3e4710
  2e60b7:	4c 89 05 4a e6 0f 00                            	mov    QWORD PTR [rip+0xfe64a],r8        # 0x3e4708
  2e60be:	eb 07                                           	jmp    0x2e60c7
  2e60c0:	4c 8b 05 41 e6 0f 00                            	mov    r8,QWORD PTR [rip+0xfe641]        # 0x3e4708
  2e60c7:	a8 02                                           	test   al,0x2
  2e60c9:	75 1f                                           	jne    0x2e60ea
  2e60cb:	48 8b 0d 8e fd 0e 00                            	mov    rcx,QWORD PTR [rip+0xefd8e]        # 0x3d5e60
  2e60d2:	48 8d 15 47 e6 0f 00                            	lea    rdx,[rip+0xfe647]        # 0x3e4720
  2e60d9:	83 c8 02                                        	or     eax,0x2
  2e60dc:	45 33 c9                                        	xor    r9d,r9d
  2e60df:	89 05 2b e6 0f 00                               	mov    DWORD PTR [rip+0xfe62b],eax        # 0x3e4710
  2e60e5:	e8 3a 5c fe ff                                  	call   0x2cbd24
  2e60ea:	48 8b 0d 6f fd 0e 00                            	mov    rcx,QWORD PTR [rip+0xefd6f]        # 0x3d5e60
  2e60f1:	48 8d 15 28 e6 0f 00                            	lea    rdx,[rip+0xfe628]        # 0x3e4720
  2e60f8:	4c 8b c5                                        	mov    r8,rbp
  2e60fb:	48 8b 9c 24 80 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x80]
  2e6103:	48 83 c4 60                                     	add    rsp,0x60
  2e6107:	5f                                              	pop    rdi
  2e6108:	5e                                              	pop    rsi
  2e6109:	5d                                              	pop    rbp
  2e610a:	e9 ed 58 fe ff                                  	jmp    0x2cb9fc
