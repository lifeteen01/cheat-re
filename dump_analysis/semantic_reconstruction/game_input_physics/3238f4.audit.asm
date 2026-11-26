
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3238f4.audit.bin:     file format binary


Disassembly of section .data:

00000000003238f4 <.data>:
  3238f4:	0f 10 05 dd 02 f7 ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffff702dd]        # 0x293bd8
  3238fb:	48 8b c2                                        	mov    rax,rdx
  3238fe:	0f 10 0d e3 02 f7 ff                            	movups xmm1,XMMWORD PTR [rip+0xfffffffffff702e3]        # 0x293be8
  323905:	0f 11 02                                        	movups XMMWORD PTR [rdx],xmm0
  323908:	0f 10 05 e5 02 f7 ff                            	movups xmm0,XMMWORD PTR [rip+0xfffffffffff702e5]        # 0x293bf4
  32390f:	0f 11 4a 10                                     	movups XMMWORD PTR [rdx+0x10],xmm1
  323913:	0f 11 42 1c                                     	movups XMMWORD PTR [rdx+0x1c],xmm0
  323917:	c3                                              	ret
