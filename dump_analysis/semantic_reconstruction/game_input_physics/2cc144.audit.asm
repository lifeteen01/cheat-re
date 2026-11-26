
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cc144.audit.bin:     file format binary


Disassembly of section .data:

00000000002cc144 <.data>:
  2cc144:	48 8b 02                                        	mov    rax,QWORD PTR [rdx]
  2cc147:	48 39 01                                        	cmp    QWORD PTR [rcx],rax
  2cc14a:	48 0f 42 ca                                     	cmovb  rcx,rdx
  2cc14e:	48 8b c1                                        	mov    rax,rcx
  2cc151:	c3                                              	ret
