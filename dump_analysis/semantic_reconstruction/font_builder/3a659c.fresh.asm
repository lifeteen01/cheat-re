
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a659c <.data+0x3a659c>:
  3a659c:	ff c9                                           	dec    ecx
  3a659e:	8b c1                                           	mov    eax,ecx
  3a65a0:	d1 f8                                           	sar    eax,1
  3a65a2:	0b c1                                           	or     eax,ecx
  3a65a4:	8b c8                                           	mov    ecx,eax
  3a65a6:	c1 f9 02                                        	sar    ecx,0x2
  3a65a9:	0b c8                                           	or     ecx,eax
  3a65ab:	8b c1                                           	mov    eax,ecx
  3a65ad:	c1 f8 04                                        	sar    eax,0x4
  3a65b0:	0b c1                                           	or     eax,ecx
  3a65b2:	8b c8                                           	mov    ecx,eax
  3a65b4:	c1 f9 08                                        	sar    ecx,0x8
  3a65b7:	0b c8                                           	or     ecx,eax
  3a65b9:	8b c1                                           	mov    eax,ecx
  3a65bb:	c1 f8 10                                        	sar    eax,0x10
  3a65be:	0b c1                                           	or     eax,ecx
  3a65c0:	ff c0                                           	inc    eax
  3a65c2:	c3                                              	ret
