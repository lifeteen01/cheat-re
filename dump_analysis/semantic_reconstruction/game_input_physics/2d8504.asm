
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d8504.bin:     file format binary


Disassembly of section .data:

00000000002d8504 <.data>:
  2d8504:	40 53                                           	rex push rbx
  2d8506:	48 83 ec 20                                     	sub    rsp,0x20
  2d850a:	48 8b d9                                        	mov    rbx,rcx
  2d850d:	e8 7e 05 00 00                                  	call   0x2d8a90
  2d8512:	84 c0                                           	test   al,al
  2d8514:	74 0b                                           	je     0x2d8521
  2d8516:	48 8b d3                                        	mov    rdx,rbx
  2d8519:	48 8b cb                                        	mov    rcx,rbx
  2d851c:	e8 5f fc ff ff                                  	call   0x2d8180
  2d8521:	48 8b c3                                        	mov    rax,rbx
  2d8524:	48 83 c4 20                                     	add    rsp,0x20
  2d8528:	5b                                              	pop    rbx
  2d8529:	c3                                              	ret
