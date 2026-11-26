
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3394 <.data+0x3a3394>:
  3a3394:	40 53                                           	rex push rbx
  3a3396:	48 83 ec 20                                     	sub    rsp,0x20
  3a339a:	83 79 78 00                                     	cmp    DWORD PTR [rcx+0x78],0x0
  3a339e:	48 8b d9                                        	mov    rbx,rcx
  3a33a1:	75 01                                           	jne    0x3a33a4
  3a33a3:	cc                                              	int3
  3a33a4:	48 8b 81 88 04 00 00                            	mov    rax,QWORD PTR [rcx+0x488]
  3a33ab:	48 85 c0                                        	test   rax,rax
  3a33ae:	75 05                                           	jne    0x3a33b5
  3a33b0:	e8 87 31 00 00                                  	call   0x3a653c
  3a33b5:	48 8b cb                                        	mov    rcx,rbx
  3a33b8:	48 83 c4 20                                     	add    rsp,0x20
  3a33bc:	5b                                              	pop    rbx
  3a33bd:	48 ff 20                                        	rex.W jmp QWORD PTR [rax]
