
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d9540 <.data+0x2d9540>:
  2d9540:	40 53                                           	rex push rbx
  2d9542:	48 83 ec 20                                     	sub    rsp,0x20
  2d9546:	f3 0f 5a c9                                     	cvtss2sd xmm1,xmm1
  2d954a:	48 8b d9                                        	mov    rbx,rcx
  2d954d:	e8 0a 00 00 00                                  	call   0x2d955c
  2d9552:	48 8b c3                                        	mov    rax,rbx
  2d9555:	48 83 c4 20                                     	add    rsp,0x20
  2d9559:	5b                                              	pop    rbx
  2d955a:	c3                                              	ret
