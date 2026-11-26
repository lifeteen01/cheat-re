
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369040 <.data+0x369040>:
  369040:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  369045:	48 89 7c 24 10                                  	mov    QWORD PTR [rsp+0x10],rdi
  36904a:	55                                              	push   rbp
  36904b:	48 8b ec                                        	mov    rbp,rsp
  36904e:	48 83 ec 50                                     	sub    rsp,0x50
  369052:	48 8b da                                        	mov    rbx,rdx
  369055:	48 8b f9                                        	mov    rdi,rcx
  369058:	e8 ab 1e f6 ff                                  	call   0x2caf08
  36905d:	84 c0                                           	test   al,al
  36905f:	75 25                                           	jne    0x369086
  369061:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  369065:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  369069:	e8 c2 36 f6 ff                                  	call   0x2cc730
  36906e:	48 8b c8                                        	mov    rcx,rax
  369071:	e8 2e 4c f6 ff                                  	call   0x2cdca4
  369076:	48 8b d0                                        	mov    rdx,rax
  369079:	48 8b cb                                        	mov    rcx,rbx
  36907c:	e8 4b 32 f6 ff                                  	call   0x2cc2cc
  369081:	e9 ca 00 00 00                                  	jmp    0x369150
  369086:	48 8b cf                                        	mov    rcx,rdi
  369089:	e8 ea 10 00 00                                  	call   0x36a178
  36908e:	84 c0                                           	test   al,al
  369090:	74 17                                           	je     0x3690a9
  369092:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  369096:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  36909a:	e8 65 eb ff ff                                  	call   0x367c04
  36909f:	48 8b c8                                        	mov    rcx,rax
  3690a2:	e8 9d 4c f6 ff                                  	call   0x2cdd44
  3690a7:	eb cd                                           	jmp    0x369076
  3690a9:	48 8b 97 38 03 00 00                            	mov    rdx,QWORD PTR [rdi+0x338]
  3690b0:	48 8b ca                                        	mov    rcx,rdx
  3690b3:	e8 50 1e f6 ff                                  	call   0x2caf08
  3690b8:	84 c0                                           	test   al,al
  3690ba:	75 0f                                           	jne    0x3690cb
  3690bc:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3690c0:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3690c4:	e8 67 36 f6 ff                                  	call   0x2cc730
  3690c9:	eb a3                                           	jmp    0x36906e
  3690cb:	48 8d 4a 14                                     	lea    rcx,[rdx+0x14]
  3690cf:	e8 34 1e f6 ff                                  	call   0x2caf08
  3690d4:	84 c0                                           	test   al,al
  3690d6:	75 0f                                           	jne    0x3690e7
  3690d8:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3690dc:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3690e0:	e8 4b 36 f6 ff                                  	call   0x2cc730
  3690e5:	eb 87                                           	jmp    0x36906e
  3690e7:	48 8d 4a 14                                     	lea    rcx,[rdx+0x14]
  3690eb:	e8 14 bf ff ff                                  	call   0x365004
  3690f0:	48 8b d0                                        	mov    rdx,rax
  3690f3:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3690f7:	e8 d0 31 f6 ff                                  	call   0x2cc2cc
  3690fc:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  369100:	e8 8f f5 f6 ff                                  	call   0x2d8694
  369105:	84 c0                                           	test   al,al
  369107:	74 22                                           	je     0x36912b
  369109:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  36910d:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  369111:	e8 1a 36 f6 ff                                  	call   0x2cc730
  369116:	48 8b c8                                        	mov    rcx,rax
  369119:	e8 86 4b f6 ff                                  	call   0x2cdca4
  36911e:	48 8b d0                                        	mov    rdx,rax
  369121:	48 8b cb                                        	mov    rcx,rbx
  369124:	e8 a3 31 f6 ff                                  	call   0x2cc2cc
  369129:	eb 1c                                           	jmp    0x369147
  36912b:	80 3d 96 33 09 00 00                            	cmp    BYTE PTR [rip+0x93396],0x0        # 0x3fc4c8
  369132:	48 8d 55 e0                                     	lea    rdx,[rbp-0x20]
  369136:	48 8b cb                                        	mov    rcx,rbx
  369139:	74 07                                           	je     0x369142
  36913b:	e8 6c d0 ff ff                                  	call   0x3661ac
  369140:	eb 05                                           	jmp    0x369147
  369142:	e8 3d 31 f6 ff                                  	call   0x2cc284
  369147:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  36914b:	e8 a4 33 f6 ff                                  	call   0x2cc4f4
  369150:	48 8b 7c 24 68                                  	mov    rdi,QWORD PTR [rsp+0x68]
  369155:	48 8b c3                                        	mov    rax,rbx
  369158:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  36915d:	48 83 c4 50                                     	add    rsp,0x50
  369161:	5d                                              	pop    rbp
  369162:	c3                                              	ret
