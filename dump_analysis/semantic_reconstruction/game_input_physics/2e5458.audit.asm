
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5458.audit.bin:     file format binary


Disassembly of section .data:

00000000002e5458 <.data>:
  2e5458:	8b 05 5a 8a fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
  2e545e:	f2 0f 10 05 4a 8a fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
  2e5466:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2e546a:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  2e546d:	0f b7 05 48 8a fa ff                            	movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
  2e5474:	66 89 42 0c                                     	mov    WORD PTR [rdx+0xc],ax
  2e5478:	48 8b c2                                        	mov    rax,rdx
  2e547b:	c3                                              	ret
