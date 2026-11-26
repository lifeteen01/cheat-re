
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5490.bin:     file format binary


Disassembly of section .data:

00000000002e5490 <.data>:
  2e5490:	8b 05 72 8a fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
  2e5496:	f2 0f 10 05 62 8a fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
  2e549e:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e54a2:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e54a5:	0f b7 05 60 8a fa ff                            	movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
  2e54ac:	66 89 42 0c                                     	mov    WORD PTR [rdx+0xc],ax
  2e54b0:	48 8b c2                                        	mov    rax,rdx
  2e54b3:	c3                                              	ret
