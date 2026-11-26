
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5730.bin:     file format binary


Disassembly of section .data:

00000000002e5730 <.data>:
  2e5730:	8b 05 2a 87 fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
  2e5736:	f2 0f 10 05 1a 87 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
  2e573e:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e5742:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e5745:	48 8b c2                                        	mov    rax,rdx
  2e5748:	c3                                              	ret
