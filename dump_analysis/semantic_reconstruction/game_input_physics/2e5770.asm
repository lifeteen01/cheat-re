
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5770.bin:     file format binary


Disassembly of section .data:

00000000002e5770 <.data>:
  2e5770:	0f 10 05 71 87 fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
  2e5777:	48 8b c2                                        	mov    rax,rdx
  2e577a:	f2 0f 10 0d 76 87 fa ff                         	movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
  2e5782:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e5785:	f2 0f 11 4a 10                                  	movsd  QWORD PTR [rdx+0x10],xmm1
  2e578a:	c3                                              	ret
