
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003add94 <.data+0x3add94>:
  3add94:	0f b6 01                                        	movzx  eax,BYTE PTR [rcx]
  3add97:	0f b6 49 01                                     	movzx  ecx,BYTE PTR [rcx+0x1]
  3add9b:	66 c1 e0 08                                     	shl    ax,0x8
  3add9f:	66 0b c1                                        	or     ax,cx
  3adda2:	c3                                              	ret
  3adda3:	cc                                              	int3
