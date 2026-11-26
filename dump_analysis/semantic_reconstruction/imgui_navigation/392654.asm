
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392654 <.data+0x392654>:
  392654:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  392659:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  39265e:	57                                              	push   rdi
  39265f:	48 83 ec 30                                     	sub    rsp,0x30
  392663:	48 8b f1                                        	mov    rsi,rcx
  392666:	48 8b fa                                        	mov    rdi,rdx
  392669:	48 81 c1 f0 00 00 00                            	add    rcx,0xf0
  392670:	e8 8f bc 00 00                                  	call   0x39e304
  392675:	4c 8b c7                                        	mov    r8,rdi
  392678:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39267d:	48 8b d6                                        	mov    rdx,rsi
  392680:	8b 18                                           	mov    ebx,DWORD PTR [rax]
  392682:	e8 59 bb 00 00                                  	call   0x39e1e0
  392687:	44 8b c3                                        	mov    r8d,ebx
  39268a:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39268f:	ba 10 00 00 00                                  	mov    edx,0x10
  392694:	e8 7b 0c 00 00                                  	call   0x393314
  392699:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  39269e:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  3926a3:	48 83 c4 30                                     	add    rsp,0x30
  3926a7:	5f                                              	pop    rdi
  3926a8:	c3                                              	ret
