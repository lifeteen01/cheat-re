
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e36dc.audit.bin:     file format binary


Disassembly of section .data:

00000000002e36dc <.data>:
  2e36dc:	40 53                                           	rex push rbx
  2e36de:	48 83 ec 20                                     	sub    rsp,0x20
  2e36e2:	48 8b d9                                        	mov    rbx,rcx
  2e36e5:	e8 5e 04 00 00                                  	call   0x2e3b48
  2e36ea:	84 c0                                           	test   al,al
  2e36ec:	74 0b                                           	je     0x2e36f9
  2e36ee:	48 8b d3                                        	mov    rdx,rbx
  2e36f1:	48 8b cb                                        	mov    rcx,rbx
  2e36f4:	e8 03 fe ff ff                                  	call   0x2e34fc
  2e36f9:	48 8b c3                                        	mov    rax,rbx
  2e36fc:	48 83 c4 20                                     	add    rsp,0x20
  2e3700:	5b                                              	pop    rbx
  2e3701:	c3                                              	ret
