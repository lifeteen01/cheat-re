
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e53a8.bin:     file format binary


Disassembly of section .data:

00000000002e53a8 <.data>:
  2e53a8:	8a 05 ea 8b fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
  2e53ae:	f2 0f 10 05 da 8b fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
  2e53b6:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e53ba:	88 42 08                                        	mov    BYTE PTR [rdx+0x8],al
  2e53bd:	48 8b c2                                        	mov    rax,rdx
  2e53c0:	c3                                              	ret
