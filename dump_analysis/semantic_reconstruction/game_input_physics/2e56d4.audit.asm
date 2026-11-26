
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e56d4.audit.bin:     file format binary


Disassembly of section .data:

00000000002e56d4 <.data>:
  2e56d4:	8a 05 e6 88 fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
  2e56da:	f2 0f 10 05 d6 88 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
  2e56e2:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e56e6:	88 42 08                                        	mov    BYTE PTR [rdx+0x8],al
  2e56e9:	48 8b c2                                        	mov    rax,rdx
  2e56ec:	c3                                              	ret
