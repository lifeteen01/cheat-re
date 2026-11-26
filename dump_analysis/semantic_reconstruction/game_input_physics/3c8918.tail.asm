
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3c8918.tail.bin:     file format binary


Disassembly of section .data:

00000000003c8969 <.data>:
  3c8969:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [rsp+0x8]
  3c896f:	c3                                              	ret
  3c8970:	85 c0                                           	test   eax,eax
  3c8972:	74 25                                           	je     0x3c8999
  3c8974:	3b d0                                           	cmp    edx,eax
  3c8976:	74 09                                           	je     0x3c8981
  3c8978:	f3                                              	repz
