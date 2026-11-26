
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9540 <.data+0x3a9540>:
  3a9540:	44 8b 41 14                                     	mov    r8d,DWORD PTR [rcx+0x14]
  3a9544:	44 3b 42 14                                     	cmp    r8d,DWORD PTR [rdx+0x14]
  3a9548:	7d 04                                           	jge    0x3a954e
  3a954a:	83 c8 ff                                        	or     eax,0xffffffff
  3a954d:	c3                                              	ret
  3a954e:	33 c0                                           	xor    eax,eax
  3a9550:	44 3b 42 14                                     	cmp    r8d,DWORD PTR [rdx+0x14]
  3a9554:	0f 9f c0                                        	setg   al
  3a9557:	c3                                              	ret
