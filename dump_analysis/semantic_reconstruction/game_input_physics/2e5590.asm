
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5590.bin:     file format binary


Disassembly of section .data:

00000000002e5590 <.data>:
  2e5590:	8a 05 02 89 fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
  2e5596:	0f 10 05 db 88 fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
  2e559d:	0f 10 0d e4 88 fa ff                            	movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
  2e55a4:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e55a7:	0f 11 4a 10                                     	movups XMMWORD PTR [rdx+0x10],xmm1
  2e55ab:	88 42 20                                        	mov    BYTE PTR [rdx+0x20],al
  2e55ae:	48 8b c2                                        	mov    rax,rdx
  2e55b1:	c3                                              	ret
