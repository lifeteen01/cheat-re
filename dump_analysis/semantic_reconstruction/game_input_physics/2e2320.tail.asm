
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e2320.tail.bin:     file format binary


Disassembly of section .data:

00000000002e2372 <.data>:
  2e2372:	cc                                              	int3
  2e2373:	cc                                              	int3
  2e2374:	48 8b c4                                        	mov    rax,rsp
  2e2377:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  2e237b:	55                                              	push   rbp
  2e237c:	48                                              	rex.W
  2e237d:	8d                                              	.byte 0x8d
  2e237e:	a8 68                                           	test   al,0x68
  2e2380:	f6 ff                                           	idiv   bh
