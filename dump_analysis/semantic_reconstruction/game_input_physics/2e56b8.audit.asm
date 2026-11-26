
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e56b8.audit.bin:     file format binary


Disassembly of section .data:

00000000002e56b8 <.data>:
  2e56b8:	8b 05 ca 88 fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
  2e56be:	f2 0f 10 05 ba 88 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
  2e56c6:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e56ca:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e56cd:	48 8b c2                                        	mov    rax,rdx
  2e56d0:	c3                                              	ret
