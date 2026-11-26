
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003762ac <.data+0x3762ac>:
  3762ac:	41 3b c8                                        	cmp    ecx,r8d
  3762af:	8b c1                                           	mov    eax,ecx
  3762b1:	41 0f 4f c0                                     	cmovg  eax,r8d
  3762b5:	3b ca                                           	cmp    ecx,edx
  3762b7:	0f 4c c2                                        	cmovl  eax,edx
  3762ba:	c3                                              	ret
