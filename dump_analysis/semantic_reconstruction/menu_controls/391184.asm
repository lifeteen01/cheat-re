
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000391184 <.data+0x391184>:
  391184:	40 53                                           	rex push rbx
  391186:	48 83 ec 20                                     	sub    rsp,0x20
  39118a:	48 8b 05 97 49 07 00                            	mov    rax,QWORD PTR [rip+0x74997]        # 0x405b28
  391191:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  391196:	4c 8b 80 08 3f 00 00                            	mov    r8,QWORD PTR [rax+0x3f08]
  39119d:	49 8d 98 18 01 00 00                            	lea    rbx,[r8+0x118]
  3911a4:	41 c6 80 41 01 00 00 00                         	mov    BYTE PTR [r8+0x141],0x0
  3911ac:	48 8b d3                                        	mov    rdx,rbx
  3911af:	49 81 c0 00 01 00 00                            	add    r8,0x100
  3911b6:	e8 89 1e ff ff                                  	call   0x383044
  3911bb:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3911bf:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  3911c3:	48 83 c4 20                                     	add    rsp,0x20
  3911c7:	5b                                              	pop    rbx
  3911c8:	c3                                              	ret
