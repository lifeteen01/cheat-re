
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000373a68 <.data+0x373a68>:
  373a68:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  373a6d:	57                                              	push   rdi
  373a6e:	48 83 ec 30                                     	sub    rsp,0x30
  373a72:	48 8b da                                        	mov    rbx,rdx
  373a75:	48 8b f9                                        	mov    rdi,rcx
  373a78:	e8 8b 74 f5 ff                                  	call   0x2caf08
  373a7d:	84 c0                                           	test   al,al
  373a7f:	75 0d                                           	jne    0x373a8e
  373a81:	48 8b ca                                        	mov    rcx,rdx
  373a84:	e8 33 41 05 00                                  	call   0x3c7bbc
  373a89:	e9 8c 00 00 00                                  	jmp    0x373b1a
  373a8e:	8b 0d bc df 08 00                               	mov    ecx,DWORD PTR [rip+0x8dfbc]        # 0x401a50
  373a94:	f6 c1 01                                        	test   cl,0x1
  373a97:	75 20                                           	jne    0x373ab9
  373a99:	4c 8b 05 60 34 06 00                            	mov    r8,QWORD PTR [rip+0x63460]        # 0x3d6f00
  373aa0:	83 c9 01                                        	or     ecx,0x1
  373aa3:	49 81 c0 00 0a 9f 01                            	add    r8,0x19f0a00
  373aaa:	89 0d a0 df 08 00                               	mov    DWORD PTR [rip+0x8dfa0],ecx        # 0x401a50
  373ab0:	4c 89 05 91 df 08 00                            	mov    QWORD PTR [rip+0x8df91],r8        # 0x401a48
  373ab7:	eb 07                                           	jmp    0x373ac0
  373ab9:	4c 8b 05 88 df 08 00                            	mov    r8,QWORD PTR [rip+0x8df88]        # 0x401a48
  373ac0:	f6 c1 02                                        	test   cl,0x2
  373ac3:	75 1f                                           	jne    0x373ae4
  373ac5:	83 c9 02                                        	or     ecx,0x2
  373ac8:	48 8d 15 91 df 08 00                            	lea    rdx,[rip+0x8df91]        # 0x401a60
  373acf:	89 0d 7b df 08 00                               	mov    DWORD PTR [rip+0x8df7b],ecx        # 0x401a50
  373ad5:	45 33 c9                                        	xor    r9d,r9d
  373ad8:	48 8b 0d 81 23 06 00                            	mov    rcx,QWORD PTR [rip+0x62381]        # 0x3d5e60
  373adf:	e8 40 82 f5 ff                                  	call   0x2cbd24
  373ae4:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  373ae9:	e8 ce 40 05 00                                  	call   0x3c7bbc
  373aee:	48 8b 0d 6b 23 06 00                            	mov    rcx,QWORD PTR [rip+0x6236b]        # 0x3d5e60
  373af5:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  373afa:	4c 8b cf                                        	mov    r9,rdi
  373afd:	48 8d 15 5c df 08 00                            	lea    rdx,[rip+0x8df5c]        # 0x401a60
  373b04:	e8 8b e5 f5 ff                                  	call   0x2d2094
  373b09:	f2 0f 10 44 24 20                               	movsd  xmm0,QWORD PTR [rsp+0x20]
  373b0f:	8b 44 24 28                                     	mov    eax,DWORD PTR [rsp+0x28]
  373b13:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  373b17:	89 43 08                                        	mov    DWORD PTR [rbx+0x8],eax
  373b1a:	48 8b c3                                        	mov    rax,rbx
  373b1d:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  373b22:	48 83 c4 30                                     	add    rsp,0x30
  373b26:	5f                                              	pop    rdi
  373b27:	c3                                              	ret
