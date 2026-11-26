
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/32392c.bin:     file format binary


Disassembly of section .data:

000000000032392c <.data>:
  32392c:	8a 05 86 02 f7 ff                               	mov    al,BYTE PTR [rip+0xfffffffffff70286]        # 0x293bb8
  323932:	0f 10 05 6f 02 f7 ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffff7026f]        # 0x293ba8
  323939:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  32393c:	88 42 10                                        	mov    BYTE PTR [rdx+0x10],al
  32393f:	48 8b c2                                        	mov    rax,rdx
  323942:	c3                                              	ret
