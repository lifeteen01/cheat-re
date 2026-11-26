
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e538c.bin:     file format binary


Disassembly of section .data:

00000000002e538c <.data>:
  2e538c:	8a 05 ce 8b fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
  2e5392:	f2 0f 10 05 be 8b fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
  2e539a:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e539e:	88 42 08                                        	mov    BYTE PTR [rdx+0x8],al
  2e53a1:	48 8b c2                                        	mov    rax,rdx
  2e53a4:	c3                                              	ret
