
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369c1c <.data+0x369c1c>:
  369c1c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  369c21:	57                                              	push   rdi
  369c22:	48 83 ec 30                                     	sub    rsp,0x30
  369c26:	48 8b da                                        	mov    rbx,rdx
  369c29:	48 8b f9                                        	mov    rdi,rcx
  369c2c:	e8 d7 12 f6 ff                                  	call   0x2caf08
  369c31:	84 c0                                           	test   al,al
  369c33:	75 0d                                           	jne    0x369c42
  369c35:	48 8b ca                                        	mov    rcx,rdx
  369c38:	e8 7f df 05 00                                  	call   0x3c7bbc
  369c3d:	e9 8c 00 00 00                                  	jmp    0x369cce
  369c42:	8b 0d 48 4c 09 00                               	mov    ecx,DWORD PTR [rip+0x94c48]        # 0x3fe890
  369c48:	f6 c1 01                                        	test   cl,0x1
  369c4b:	75 20                                           	jne    0x369c6d
  369c4d:	4c 8b 05 ac d2 06 00                            	mov    r8,QWORD PTR [rip+0x6d2ac]        # 0x3d6f00
  369c54:	83 c9 01                                        	or     ecx,0x1
  369c57:	49 81 c0 80 51 93 03                            	add    r8,0x3935180
  369c5e:	89 0d 2c 4c 09 00                               	mov    DWORD PTR [rip+0x94c2c],ecx        # 0x3fe890
  369c64:	4c 89 05 1d 4c 09 00                            	mov    QWORD PTR [rip+0x94c1d],r8        # 0x3fe888
  369c6b:	eb 07                                           	jmp    0x369c74
  369c6d:	4c 8b 05 14 4c 09 00                            	mov    r8,QWORD PTR [rip+0x94c14]        # 0x3fe888
  369c74:	f6 c1 02                                        	test   cl,0x2
  369c77:	75 1f                                           	jne    0x369c98
  369c79:	83 c9 02                                        	or     ecx,0x2
  369c7c:	48 8d 15 1d 4c 09 00                            	lea    rdx,[rip+0x94c1d]        # 0x3fe8a0
  369c83:	89 0d 07 4c 09 00                               	mov    DWORD PTR [rip+0x94c07],ecx        # 0x3fe890
  369c89:	45 33 c9                                        	xor    r9d,r9d
  369c8c:	48 8b 0d cd c1 06 00                            	mov    rcx,QWORD PTR [rip+0x6c1cd]        # 0x3d5e60
  369c93:	e8 8c 20 f6 ff                                  	call   0x2cbd24
  369c98:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  369c9d:	e8 1a df 05 00                                  	call   0x3c7bbc
  369ca2:	48 8b 0d b7 c1 06 00                            	mov    rcx,QWORD PTR [rip+0x6c1b7]        # 0x3d5e60
  369ca9:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  369cae:	4c 8b cf                                        	mov    r9,rdi
  369cb1:	48 8d 15 e8 4b 09 00                            	lea    rdx,[rip+0x94be8]        # 0x3fe8a0
  369cb8:	e8 d7 83 f6 ff                                  	call   0x2d2094
  369cbd:	f2 0f 10 44 24 20                               	movsd  xmm0,QWORD PTR [rsp+0x20]
  369cc3:	8b 44 24 28                                     	mov    eax,DWORD PTR [rsp+0x28]
  369cc7:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  369ccb:	89 43 08                                        	mov    DWORD PTR [rbx+0x8],eax
  369cce:	48 8b c3                                        	mov    rax,rbx
  369cd1:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  369cd6:	48 83 c4 30                                     	add    rsp,0x30
  369cda:	5f                                              	pop    rdi
  369cdb:	c3                                              	ret
