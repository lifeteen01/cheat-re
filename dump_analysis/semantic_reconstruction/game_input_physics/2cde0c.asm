
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cde0c.bin:     file format binary


Disassembly of section .data:

00000000002cde0c <.data>:
  2cde0c:	40 53                                           	rex push rbx
  2cde0e:	48 83 ec 20                                     	sub    rsp,0x20
  2cde12:	48 8b d9                                        	mov    rbx,rcx
  2cde15:	e8 7a 07 00 00                                  	call   0x2ce594
  2cde1a:	84 c0                                           	test   al,al
  2cde1c:	74 0b                                           	je     0x2cde29
  2cde1e:	48 8b d3                                        	mov    rdx,rbx
  2cde21:	48 8b cb                                        	mov    rcx,rbx
  2cde24:	e8 77 fd ff ff                                  	call   0x2cdba0
  2cde29:	48 8b c3                                        	mov    rax,rbx
  2cde2c:	48 83 c4 20                                     	add    rsp,0x20
  2cde30:	5b                                              	pop    rbx
  2cde31:	c3                                              	ret
