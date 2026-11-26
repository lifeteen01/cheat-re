
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e57a0.bin:     file format binary


Disassembly of section .data:

00000000002e57a0 <.data>:
  2e57a0:	0f 10 05 91 87 fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
  2e57a7:	48 8b c2                                        	mov    rax,rdx
  2e57aa:	0f 10 0d 90 87 fa ff                            	movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
  2e57b1:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e57b4:	0f 11 4a 09                                     	movups XMMWORD PTR [rdx+0x9],xmm1
  2e57b8:	c3                                              	ret
