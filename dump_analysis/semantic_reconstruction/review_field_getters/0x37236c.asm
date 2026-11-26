
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037236c <.data+0x37236c>:
  37236c:	48 83 ec 28                                     	sub    rsp,0x28
  372370:	4c 8b c1                                        	mov    r8,rcx
  372373:	e8 90 8b f5 ff                                  	call   0x2caf08
  372378:	84 c0                                           	test   al,al
  37237a:	75 05                                           	jne    0x372381
  37237c:	83 c8 ff                                        	or     eax,0xffffffff
  37237f:	eb 0f                                           	jmp    0x372390
  372381:	ba 58 00 00 00                                  	mov    edx,0x58
  372386:	49 8b c8                                        	mov    rcx,r8
  372389:	e8 ae ca f6 ff                                  	call   0x2dee3c
  37238e:	8b 00                                           	mov    eax,DWORD PTR [rax]
  372390:	48 83 c4 28                                     	add    rsp,0x28
  372394:	c3                                              	ret
