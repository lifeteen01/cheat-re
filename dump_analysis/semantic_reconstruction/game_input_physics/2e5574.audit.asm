
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5574.audit.bin:     file format binary


Disassembly of section .data:

00000000002e5574 <.data>:
  2e5574:	8b 05 d6 88 fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
  2e557a:	f2 0f 10 05 c6 88 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
  2e5582:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e5586:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e5589:	48 8b c2                                        	mov    rax,rdx
  2e558c:	c3                                              	ret
