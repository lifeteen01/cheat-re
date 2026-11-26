
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e68b8.audit.bin:     file format binary


Disassembly of section .data:

00000000002e68b8 <.data>:
  2e68b8:	4c 8b dc                                        	mov    r11,rsp
  2e68bb:	49 89 5b 08                                     	mov    QWORD PTR [r11+0x8],rbx
  2e68bf:	55                                              	push   rbp
  2e68c0:	56                                              	push   rsi
  2e68c1:	57                                              	push   rdi
  2e68c2:	48 83 ec 70                                     	sub    rsp,0x70
  2e68c6:	8b 05 84 da 0f 00                               	mov    eax,DWORD PTR [rip+0xfda84]        # 0x3e4350
  2e68cc:	48 8b e9                                        	mov    rbp,rcx
  2e68cf:	a8 01                                           	test   al,0x1
  2e68d1:	0f 85 a9 00 00 00                               	jne    0x2e6980
  2e68d7:	83 c8 01                                        	or     eax,0x1
  2e68da:	49 8d 53 10                                     	lea    rdx,[r11+0x10]
  2e68de:	49 8d 4b 10                                     	lea    rcx,[r11+0x10]
  2e68e2:	89 05 68 da 0f 00                               	mov    DWORD PTR [rip+0xfda68],eax        # 0x3e4350
  2e68e8:	e8 43 5e fe ff                                  	call   0x2cc730
  2e68ed:	48 8b c8                                        	mov    rcx,rax
  2e68f0:	e8 af 73 fe ff                                  	call   0x2cdca4
  2e68f5:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e68fa:	48 8b f0                                        	mov    rsi,rax
  2e68fd:	48 8d 8c 24 a0 00 00 00                         	lea    rcx,[rsp+0xa0]
  2e6905:	e8 42 ee ff ff                                  	call   0x2e574c
  2e690a:	48 8b c8                                        	mov    rcx,rax
  2e690d:	e8 0a 1d ff ff                                  	call   0x2d861c
  2e6912:	48 8d 54 24 4c                                  	lea    rdx,[rsp+0x4c]
  2e6917:	48 8b f8                                        	mov    rdi,rax
  2e691a:	48 8d 8c 24 a0 00 00 00                         	lea    rcx,[rsp+0xa0]
  2e6922:	e8 69 ec ff ff                                  	call   0x2e5590
  2e6927:	48 8b c8                                        	mov    rcx,rax
  2e692a:	e8 fd 32 00 00                                  	call   0x2e9c2c
  2e692f:	48 8d 54 24 3e                                  	lea    rdx,[rsp+0x3e]
  2e6934:	48 8b d8                                        	mov    rbx,rax
  2e6937:	48 8d 8c 24 a0 00 00 00                         	lea    rcx,[rsp+0xa0]
  2e693f:	e8 f0 ea ff ff                                  	call   0x2e5434
  2e6944:	48 8b c8                                        	mov    rcx,rax
  2e6947:	e8 d0 1c ff ff                                  	call   0x2d861c
  2e694c:	48 8b c8                                        	mov    rcx,rax
  2e694f:	48 8b d3                                        	mov    rdx,rbx
  2e6952:	e8 cd d8 04 00                                  	call   0x334224
  2e6957:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e695b:	48 8b c8                                        	mov    rcx,rax
  2e695e:	4c 8b ce                                        	mov    r9,rsi
  2e6961:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e6966:	48 8b d7                                        	mov    rdx,rdi
  2e6969:	e8 3e e0 04 00                                  	call   0x3349ac
  2e696e:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e6971:	8b 05 d9 d9 0f 00                               	mov    eax,DWORD PTR [rip+0xfd9d9]        # 0x3e4350
  2e6977:	4c 89 05 ca d9 0f 00                            	mov    QWORD PTR [rip+0xfd9ca],r8        # 0x3e4348
  2e697e:	eb 07                                           	jmp    0x2e6987
  2e6980:	4c 8b 05 c1 d9 0f 00                            	mov    r8,QWORD PTR [rip+0xfd9c1]        # 0x3e4348
  2e6987:	a8 02                                           	test   al,0x2
  2e6989:	75 1f                                           	jne    0x2e69aa
  2e698b:	48 8b 0d ce f4 0e 00                            	mov    rcx,QWORD PTR [rip+0xef4ce]        # 0x3d5e60
  2e6992:	48 8d 15 c7 d9 0f 00                            	lea    rdx,[rip+0xfd9c7]        # 0x3e4360
  2e6999:	83 c8 02                                        	or     eax,0x2
  2e699c:	45 33 c9                                        	xor    r9d,r9d
  2e699f:	89 05 ab d9 0f 00                               	mov    DWORD PTR [rip+0xfd9ab],eax        # 0x3e4350
  2e69a5:	e8 7a 53 fe ff                                  	call   0x2cbd24
  2e69aa:	48 8b 0d af f4 0e 00                            	mov    rcx,QWORD PTR [rip+0xef4af]        # 0x3d5e60
  2e69b1:	48 8d 15 a8 d9 0f 00                            	lea    rdx,[rip+0xfd9a8]        # 0x3e4360
  2e69b8:	4c 8b c5                                        	mov    r8,rbp
  2e69bb:	e8 3c 50 fe ff                                  	call   0x2cb9fc
  2e69c0:	48 8b 9c 24 90 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x90]
  2e69c8:	84 c0                                           	test   al,al
  2e69ca:	0f 95 c0                                        	setne  al
  2e69cd:	48 83 c4 70                                     	add    rsp,0x70
  2e69d1:	5f                                              	pop    rdi
  2e69d2:	5e                                              	pop    rsi
  2e69d3:	5d                                              	pop    rbp
  2e69d4:	c3                                              	ret
