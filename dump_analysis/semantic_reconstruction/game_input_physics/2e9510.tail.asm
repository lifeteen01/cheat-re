
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e9510.tail.bin:     file format binary


Disassembly of section .data:

00000000002e971a <.data>:
  2e971a:	cc                                              	int3
  2e971b:	cc                                              	int3
  2e971c:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  2e9720:	48 83 f8 1f                                     	cmp    rax,0x1f
  2e9724:	73 05                                           	jae    0x2e972b
  2e9726:	48 ff c0                                        	inc    rax
  2e9729:	eb                                              	.byte 0xeb
