
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003add74 <.data+0x3add74>:
  3add74:	0f b6 51 01                                     	movzx  edx,BYTE PTR [rcx+0x1]
  3add78:	0f b6 01                                        	movzx  eax,BYTE PTR [rcx]
  3add7b:	c1 e0 08                                        	shl    eax,0x8
  3add7e:	0b c2                                           	or     eax,edx
  3add80:	0f b6 51 02                                     	movzx  edx,BYTE PTR [rcx+0x2]
  3add84:	0f b6 49 03                                     	movzx  ecx,BYTE PTR [rcx+0x3]
  3add88:	c1 e0 08                                        	shl    eax,0x8
  3add8b:	0b c2                                           	or     eax,edx
  3add8d:	c1 e0 08                                        	shl    eax,0x8
  3add90:	0b c1                                           	or     eax,ecx
  3add92:	c3                                              	ret
  3add93:	cc                                              	int3
