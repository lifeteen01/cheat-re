
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae2b8 <.data+0x3ae2b8>:
  3ae2b8:	4c 8b dc                                        	mov    r11,rsp
  3ae2bb:	48 83 ec 58                                     	sub    rsp,0x58
  3ae2bf:	48 8b 84 24 98 00 00 00                         	mov    rax,QWORD PTR [rsp+0x98]
  3ae2c7:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ae2ca:	49 89 43 f0                                     	mov    QWORD PTR [r11-0x10],rax
  3ae2ce:	48 8b 84 24 90 00 00 00                         	mov    rax,QWORD PTR [rsp+0x90]
  3ae2d6:	49 89 43 e8                                     	mov    QWORD PTR [r11-0x18],rax
  3ae2da:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  3ae2e2:	49 89 43 e0                                     	mov    QWORD PTR [r11-0x20],rax
  3ae2e6:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  3ae2ee:	49 89 43 d8                                     	mov    QWORD PTR [r11-0x28],rax
  3ae2f2:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  3ae2f8:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3ae2fe:	e8 05 00 00 00                                  	call   0x3ae308
  3ae303:	48 83 c4 58                                     	add    rsp,0x58
  3ae307:	c3                                              	ret
