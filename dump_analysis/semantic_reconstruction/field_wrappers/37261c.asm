
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037261c <.data+0x37261c>:
  37261c:	48 83 ec 28                                     	sub    rsp,0x28
  372620:	4c 8b c1                                        	mov    r8,rcx
  372623:	e8 e0 88 f5 ff                                  	call   0x2caf08
  372628:	84 c0                                           	test   al,al
  37262a:	75 04                                           	jne    0x372630
  37262c:	33 c0                                           	xor    eax,eax
  37262e:	eb 0f                                           	jmp    0x37263f
  372630:	ba 20 00 00 00                                  	mov    edx,0x20
  372635:	49 8b c8                                        	mov    rcx,r8
  372638:	e8 ff c7 f6 ff                                  	call   0x2dee3c
  37263d:	8b 00                                           	mov    eax,DWORD PTR [rax]
  37263f:	48 83 c4 28                                     	add    rsp,0x28
  372643:	c3                                              	ret
