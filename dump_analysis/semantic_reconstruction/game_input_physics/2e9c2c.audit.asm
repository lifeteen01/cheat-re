
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e9c2c.audit.bin:     file format binary


Disassembly of section .data:

00000000002e9c2c <.data>:
  2e9c2c:	40 53                                           	rex push rbx
  2e9c2e:	48 83 ec 20                                     	sub    rsp,0x20
  2e9c32:	48 8b d9                                        	mov    rbx,rcx
  2e9c35:	e8 d2 00 00 00                                  	call   0x2e9d0c
  2e9c3a:	84 c0                                           	test   al,al
  2e9c3c:	74 0b                                           	je     0x2e9c49
  2e9c3e:	48 8b d3                                        	mov    rdx,rbx
  2e9c41:	48 8b cb                                        	mov    rcx,rbx
  2e9c44:	e8 73 fe ff ff                                  	call   0x2e9abc
  2e9c49:	48 8b c3                                        	mov    rax,rbx
  2e9c4c:	48 83 c4 20                                     	add    rsp,0x20
  2e9c50:	5b                                              	pop    rbx
  2e9c51:	c3                                              	ret
