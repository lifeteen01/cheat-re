
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e574c.audit.bin:     file format binary


Disassembly of section .data:

00000000002e574c <.data>:
  2e574c:	8b 05 56 87 fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
  2e5752:	f2 0f 10 05 46 87 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
  2e575a:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e575e:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e5761:	0f b7 05 44 87 fa ff                            	movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
  2e5768:	66 89 42 0c                                     	mov    WORD PTR [rdx+0xc],ax
  2e576c:	48 8b c2                                        	mov    rax,rdx
  2e576f:	c3                                              	ret
