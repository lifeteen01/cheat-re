
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/32a8fc.bin:     file format binary


Disassembly of section .data:

000000000032a8fc <.data>:
  32a8fc:	40 53                                           	rex push rbx
  32a8fe:	48 83 ec 20                                     	sub    rsp,0x20
  32a902:	48 8b d9                                        	mov    rbx,rcx
  32a905:	e8 1a 00 00 00                                  	call   0x32a924
  32a90a:	84 c0                                           	test   al,al
  32a90c:	74 0b                                           	je     0x32a919
  32a90e:	48 8b d3                                        	mov    rdx,rbx
  32a911:	48 8b cb                                        	mov    rcx,rbx
  32a914:	e8 8b ff ff ff                                  	call   0x32a8a4
  32a919:	48 8b c3                                        	mov    rax,rbx
  32a91c:	48 83 c4 20                                     	add    rsp,0x20
  32a920:	5b                                              	pop    rbx
  32a921:	c3                                              	ret
