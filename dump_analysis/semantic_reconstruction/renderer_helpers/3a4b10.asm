
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4b10 <.data+0x3a4b10>:
  3a4b10:	83 f9 20                                        	cmp    ecx,0x20
  3a4b13:	74 10                                           	je     0x3a4b25
  3a4b15:	83 f9 09                                        	cmp    ecx,0x9
  3a4b18:	74 0b                                           	je     0x3a4b25
  3a4b1a:	81 f9 00 30 00 00                               	cmp    ecx,0x3000
  3a4b20:	74 03                                           	je     0x3a4b25
  3a4b22:	32 c0                                           	xor    al,al
  3a4b24:	c3                                              	ret
  3a4b25:	b0 01                                           	mov    al,0x1
  3a4b27:	c3                                              	ret
