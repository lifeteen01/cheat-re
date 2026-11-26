
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036a2f4 <.data+0x36a2f4>:
  36a2f4:	48 83 ec 28                                     	sub    rsp,0x28
  36a2f8:	4c 8b c1                                        	mov    r8,rcx
  36a2fb:	e8 08 0c f6 ff                                  	call   0x2caf08
  36a300:	84 c0                                           	test   al,al
  36a302:	75 04                                           	jne    0x36a308
  36a304:	33 c0                                           	xor    eax,eax
  36a306:	eb 10                                           	jmp    0x36a318
  36a308:	ba d0 06 00 00                                  	mov    edx,0x6d0
  36a30d:	49 8b c8                                        	mov    rcx,r8
  36a310:	e8 27 4b f7 ff                                  	call   0x2dee3c
  36a315:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  36a318:	48 83 c4 28                                     	add    rsp,0x28
  36a31c:	c3                                              	ret
