
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/323b58.bin:     file format binary


Disassembly of section .data:

0000000000323b58 <.data>:
  323b58:	0f 10 05 61 00 f7 ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffff70061]        # 0x293bc0
  323b5f:	48 8b c2                                        	mov    rax,rdx
  323b62:	f2 0f 10 0d 63 00 f7 ff                         	movsd  xmm1,QWORD PTR [rip+0xfffffffffff70063]        # 0x293bcd
  323b6a:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  323b6d:	f2 0f 11 4a 0d                                  	movsd  QWORD PTR [rdx+0xd],xmm1
  323b72:	c3                                              	ret
