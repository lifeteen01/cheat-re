
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036b434 <.data+0x36b434>:
  36b434:	48 83 ec 28                                     	sub    rsp,0x28
  36b438:	48 8b d1                                        	mov    rdx,rcx
  36b43b:	e8 c8 fa f5 ff                                  	call   0x2caf08
  36b440:	84 c0                                           	test   al,al
  36b442:	74 0e                                           	je     0x36b452
  36b444:	c6 82 57 04 00 00 00                            	mov    BYTE PTR [rdx+0x457],0x0
  36b44b:	c6 82 b0 03 00 00 01                            	mov    BYTE PTR [rdx+0x3b0],0x1
  36b452:	48 83 c4 28                                     	add    rsp,0x28
  36b456:	c3                                              	ret
