
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e53f8.bin:     file format binary


Disassembly of section .data:

00000000002e53f8 <.data>:
  2e53f8:	8b 05 42 8a fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
  2e53fe:	89 02                                           	mov    DWORD PTR [rdx],eax
  2e5400:	0f b7 05 3d 8a fa ff                            	movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
  2e5407:	66 89 42 04                                     	mov    WORD PTR [rdx+0x4],ax
  2e540b:	8a 05 35 8a fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
  2e5411:	88 42 06                                        	mov    BYTE PTR [rdx+0x6],al
  2e5414:	48 8b c2                                        	mov    rax,rdx
  2e5417:	c3                                              	ret
