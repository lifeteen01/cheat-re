
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cdca4.audit.bin:     file format binary


Disassembly of section .data:

00000000002cdca4 <.data>:
  2cdca4:	40 53                                           	rex push rbx
  2cdca6:	48 83 ec 20                                     	sub    rsp,0x20
  2cdcaa:	48 8b d9                                        	mov    rbx,rcx
  2cdcad:	e8 aa 08 00 00                                  	call   0x2ce55c
  2cdcb2:	84 c0                                           	test   al,al
  2cdcb4:	74 0b                                           	je     0x2cdcc1
  2cdcb6:	48 8b d3                                        	mov    rdx,rbx
  2cdcb9:	48 8b cb                                        	mov    rcx,rbx
  2cdcbc:	e8 1b fd ff ff                                  	call   0x2cd9dc
  2cdcc1:	48 8b c3                                        	mov    rax,rbx
  2cdcc4:	48 83 c4 20                                     	add    rsp,0x20
  2cdcc8:	5b                                              	pop    rbx
  2cdcc9:	c3                                              	ret
