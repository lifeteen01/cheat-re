
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e55b4.audit.bin:     file format binary


Disassembly of section .data:

00000000002e55b4 <.data>:
  2e55b4:	8a 05 26 89 fa ff                               	mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
  2e55ba:	0f 10 05 ff 88 fa ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
  2e55c1:	0f 10 0d 08 89 fa ff                            	movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
  2e55c8:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  2e55cb:	0f 11 4a 10                                     	movups XMMWORD PTR [rdx+0x10],xmm1
  2e55cf:	88 42 20                                        	mov    BYTE PTR [rdx+0x20],al
  2e55d2:	48 8b c2                                        	mov    rax,rdx
  2e55d5:	c3                                              	ret
