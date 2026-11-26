
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000335140 <.data+0x335140>:
  335140:	40 53                                           	rex push rbx
  335142:	48 83 ec 20                                     	sub    rsp,0x20
  335146:	8b 05 e4 49 0c 00                               	mov    eax,DWORD PTR [rip+0xc49e4]        # 0x3f9b30
  33514c:	48 8b d9                                        	mov    rbx,rcx
  33514f:	a8 01                                           	test   al,0x1
  335151:	75 20                                           	jne    0x335173
  335153:	83 c8 01                                        	or     eax,0x1
  335156:	89 05 d4 49 0c 00                               	mov    DWORD PTR [rip+0xc49d4],eax        # 0x3f9b30
  33515c:	e8 ab 95 fb ff                                  	call   0x2ee70c
  335161:	4c 8b c0                                        	mov    r8,rax
  335164:	48 89 05 bd 49 0c 00                            	mov    QWORD PTR [rip+0xc49bd],rax        # 0x3f9b28
  33516b:	8b 05 bf 49 0c 00                               	mov    eax,DWORD PTR [rip+0xc49bf]        # 0x3f9b30
  335171:	eb 07                                           	jmp    0x33517a
  335173:	4c 8b 05 ae 49 0c 00                            	mov    r8,QWORD PTR [rip+0xc49ae]        # 0x3f9b28
  33517a:	a8 02                                           	test   al,0x2
  33517c:	75 1f                                           	jne    0x33519d
  33517e:	48 8b 0d db 0c 0a 00                            	mov    rcx,QWORD PTR [rip+0xa0cdb]        # 0x3d5e60
  335185:	48 8d 15 b4 49 0c 00                            	lea    rdx,[rip+0xc49b4]        # 0x3f9b40
  33518c:	83 c8 02                                        	or     eax,0x2
  33518f:	45 33 c9                                        	xor    r9d,r9d
  335192:	89 05 98 49 0c 00                               	mov    DWORD PTR [rip+0xc4998],eax        # 0x3f9b30
  335198:	e8 87 6b f9 ff                                  	call   0x2cbd24
  33519d:	48 8b 0d bc 0c 0a 00                            	mov    rcx,QWORD PTR [rip+0xa0cbc]        # 0x3d5e60
  3351a4:	48 8d 15 95 49 0c 00                            	lea    rdx,[rip+0xc4995]        # 0x3f9b40
  3351ab:	4c 8b c3                                        	mov    r8,rbx
  3351ae:	48 83 c4 20                                     	add    rsp,0x20
  3351b2:	5b                                              	pop    rbx
  3351b3:	e9 44 68 f9 ff                                  	jmp    0x2cb9fc
