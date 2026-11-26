
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e55f4.audit.bin:     file format binary


Disassembly of section .data:

00000000002e55f4 <.data>:
  2e55f4:	8a 05 36 89 fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
  2e55fa:	0f 10 05 0f 89 fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
  2e5601:	0f 10 0d 18 89 fa ff                            	movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
  2e5608:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e560b:	0f 11 4a 10                                     	movups XMMWORD PTR [rdx+0x10],xmm1
  2e560f:	88 42 20                                        	mov    BYTE PTR [rdx+0x20],al
  2e5612:	48 8b c2                                        	mov    rax,rdx
  2e5615:	c3                                              	ret
