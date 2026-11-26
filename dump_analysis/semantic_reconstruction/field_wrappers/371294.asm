
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371294 <.data+0x371294>:
  371294:	48 83 ec 28                                     	sub    rsp,0x28
  371298:	4c 8b c1                                        	mov    r8,rcx
  37129b:	e8 68 9c f5 ff                                  	call   0x2caf08
  3712a0:	84 c0                                           	test   al,al
  3712a2:	75 04                                           	jne    0x3712a8
  3712a4:	33 c0                                           	xor    eax,eax
  3712a6:	eb 0f                                           	jmp    0x3712b7
  3712a8:	ba 30 00 00 00                                  	mov    edx,0x30
  3712ad:	49 8b c8                                        	mov    rcx,r8
  3712b0:	e8 87 db f6 ff                                  	call   0x2dee3c
  3712b5:	8b 00                                           	mov    eax,DWORD PTR [rax]
  3712b7:	48 83 c4 28                                     	add    rsp,0x28
  3712bb:	c3                                              	ret
