
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000335040 <.data+0x335040>:
  335040:	40 53                                           	rex push rbx
  335042:	48 83 ec 20                                     	sub    rsp,0x20
  335046:	8b 05 44 54 0c 00                               	mov    eax,DWORD PTR [rip+0xc5444]        # 0x3fa490
  33504c:	48 8b d9                                        	mov    rbx,rcx
  33504f:	a8 01                                           	test   al,0x1
  335051:	75 20                                           	jne    0x335073
  335053:	83 c8 01                                        	or     eax,0x1
  335056:	89 05 34 54 0c 00                               	mov    DWORD PTR [rip+0xc5434],eax        # 0x3fa490
  33505c:	e8 8b e9 ff ff                                  	call   0x3339ec
  335061:	4c 8b c0                                        	mov    r8,rax
  335064:	48 89 05 1d 54 0c 00                            	mov    QWORD PTR [rip+0xc541d],rax        # 0x3fa488
  33506b:	8b 05 1f 54 0c 00                               	mov    eax,DWORD PTR [rip+0xc541f]        # 0x3fa490
  335071:	eb 07                                           	jmp    0x33507a
  335073:	4c 8b 05 0e 54 0c 00                            	mov    r8,QWORD PTR [rip+0xc540e]        # 0x3fa488
  33507a:	a8 02                                           	test   al,0x2
  33507c:	75 1f                                           	jne    0x33509d
  33507e:	48 8b 0d db 0d 0a 00                            	mov    rcx,QWORD PTR [rip+0xa0ddb]        # 0x3d5e60
  335085:	48 8d 15 14 54 0c 00                            	lea    rdx,[rip+0xc5414]        # 0x3fa4a0
  33508c:	83 c8 02                                        	or     eax,0x2
  33508f:	45 33 c9                                        	xor    r9d,r9d
  335092:	89 05 f8 53 0c 00                               	mov    DWORD PTR [rip+0xc53f8],eax        # 0x3fa490
  335098:	e8 87 6c f9 ff                                  	call   0x2cbd24
  33509d:	48 8b 0d bc 0d 0a 00                            	mov    rcx,QWORD PTR [rip+0xa0dbc]        # 0x3d5e60
  3350a4:	48 8d 15 f5 53 0c 00                            	lea    rdx,[rip+0xc53f5]        # 0x3fa4a0
  3350ab:	4c 8b c3                                        	mov    r8,rbx
  3350ae:	48 83 c4 20                                     	add    rsp,0x20
  3350b2:	5b                                              	pop    rbx
  3350b3:	e9 44 69 f9 ff                                  	jmp    0x2cb9fc
