
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cc534.tail.bin:     file format binary


Disassembly of section .data:

00000000002cc53e <.data>:
  2cc53e:	cc                                              	int3
  2cc53f:	cc                                              	int3
  2cc540:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  2cc543:	48 39 41 08                                     	cmp    QWORD PTR [rcx+0x8],rax
  2cc547:	0f 95 c0                                        	setne  al
  2cc54a:	c3                                              	ret
  2cc54b:	cc                                              	int3
  2cc54c:	48                                              	rex.W
  2cc54d:	83                                              	.byte 0x83
