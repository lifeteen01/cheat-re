
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5434.bin:     file format binary


Disassembly of section .data:

00000000002e5434 <.data>:
  2e5434:	8b 05 36 8a fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
  2e543a:	f2 0f 10 05 26 8a fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
  2e5442:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e5446:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e5449:	0f b7 05 24 8a fa ff                            	movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
  2e5450:	66 89 42 0c                                     	mov    WORD PTR [rdx+0xc],ax
  2e5454:	48 8b c2                                        	mov    rax,rdx
  2e5457:	c3                                              	ret
