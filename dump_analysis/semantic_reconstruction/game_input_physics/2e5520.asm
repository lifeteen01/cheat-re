
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5520.bin:     file format binary


Disassembly of section .data:

00000000002e5520 <.data>:
  2e5520:	0f 10 05 79 8a fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
  2e5527:	48 8b c2                                        	mov    rax,rdx
  2e552a:	f2 0f 10 0d 7e 8a fa ff                         	movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
  2e5532:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e5535:	f2 0f 11 4a 10                                  	movsd  QWORD PTR [rdx+0x10],xmm1
  2e553a:	c3                                              	ret
