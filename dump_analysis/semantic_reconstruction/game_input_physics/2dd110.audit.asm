
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2dd110.audit.bin:     file format binary


Disassembly of section .data:

00000000002dd110 <.data>:
  2dd110:	40 53                                           	rex push rbx
  2dd112:	48 83 ec 20                                     	sub    rsp,0x20
  2dd116:	48 8b d9                                        	mov    rbx,rcx
  2dd119:	e8 4e 14 ff ff                                  	call   0x2ce56c
  2dd11e:	84 c0                                           	test   al,al
  2dd120:	74 0b                                           	je     0x2dd12d
  2dd122:	48 8b d3                                        	mov    rdx,rbx
  2dd125:	48 8b cb                                        	mov    rcx,rbx
  2dd128:	e8 d7 fe ff ff                                  	call   0x2dd004
  2dd12d:	48 8b c3                                        	mov    rax,rbx
  2dd130:	48 83 c4 20                                     	add    rsp,0x20
  2dd134:	5b                                              	pop    rbx
  2dd135:	c3                                              	ret
