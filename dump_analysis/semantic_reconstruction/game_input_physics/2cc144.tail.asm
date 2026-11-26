
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cc144.tail.bin:     file format binary


Disassembly of section .data:

00000000002cc152 <.data>:
  2cc152:	cc                                              	int3
  2cc153:	cc                                              	int3
  2cc154:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  2cc157:	48 39 02                                        	cmp    QWORD PTR [rdx],rax
  2cc15a:	48 0f 42 ca                                     	cmovb  rcx,rdx
  2cc15e:	48 8b c1                                        	mov    rax,rcx
  2cc161:	c3                                              	ret
