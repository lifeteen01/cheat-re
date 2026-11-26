
dump_analysis/semantic_reconstruction/game_input_physics/2cc534.bin:     file format binary


Disassembly of section .data:

00000000002cc534 <.data>:
  2cc534:	48 8b 02                                        	mov    rax,QWORD PTR [rdx]
  2cc537:	48 39 01                                        	cmp    QWORD PTR [rcx],rax
  2cc53a:	0f 94 c0                                        	sete   al
  2cc53d:	c3                                              	ret
  2cc53e:	cc                                              	int3
  2cc53f:	cc                                              	int3
  2cc540:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  2cc543:	48 39 41 08                                     	cmp    QWORD PTR [rcx+0x8],rax
  2cc547:	0f 95 c0                                        	setne  al
  2cc54a:	c3                                              	ret
  2cc54b:	cc                                              	int3
