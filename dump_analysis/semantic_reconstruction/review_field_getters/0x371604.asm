
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371604 <.data+0x371604>:
  371604:	48 83 ec 28                                     	sub    rsp,0x28
  371608:	4c 8b c1                                        	mov    r8,rcx
  37160b:	e8 f8 98 f5 ff                                  	call   0x2caf08
  371610:	84 c0                                           	test   al,al
  371612:	75 05                                           	jne    0x371619
  371614:	83 c8 ff                                        	or     eax,0xffffffff
  371617:	eb 0f                                           	jmp    0x371628
  371619:	ba 88 00 00 00                                  	mov    edx,0x88
  37161e:	49 8b c8                                        	mov    rcx,r8
  371621:	e8 16 d8 f6 ff                                  	call   0x2dee3c
  371626:	8b 00                                           	mov    eax,DWORD PTR [rax]
  371628:	48 83 c4 28                                     	add    rsp,0x28
  37162c:	c3                                              	ret
