
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003945fc <.data+0x3945fc>:
  3945fc:	8d 81 00 fe ff ff                               	lea    eax,[rcx-0x200]
  394602:	3d 8b 00 00 00                                  	cmp    eax,0x8b
  394607:	76 2b                                           	jbe    0x394634
  394609:	81 f9 00 10 00 00                               	cmp    ecx,0x1000
  39460f:	74 23                                           	je     0x394634
  394611:	81 f9 00 20 00 00                               	cmp    ecx,0x2000
  394617:	74 1b                                           	je     0x394634
  394619:	81 f9 00 40 00 00                               	cmp    ecx,0x4000
  39461f:	74 13                                           	je     0x394634
  394621:	81 f9 00 80 00 00                               	cmp    ecx,0x8000
  394627:	74 0b                                           	je     0x394634
  394629:	81 f9 00 08 00 00                               	cmp    ecx,0x800
  39462f:	74 03                                           	je     0x394634
  394631:	32 c0                                           	xor    al,al
  394633:	c3                                              	ret
  394634:	b0 01                                           	mov    al,0x1
  394636:	c3                                              	ret
