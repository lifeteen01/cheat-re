
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5504.audit.bin:     file format binary


Disassembly of section .data:

00000000002e5504 <.data>:
  2e5504:	0f 10 05 5d 8a fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
  2e550b:	48 8b c2                                        	mov    rax,rdx
  2e550e:	f2 0f 10 0d 62 8a fa ff                         	movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
  2e5516:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e5519:	f2 0f 11 4a 10                                  	movsd  QWORD PTR [rdx+0x10],xmm1
  2e551e:	c3                                              	ret
