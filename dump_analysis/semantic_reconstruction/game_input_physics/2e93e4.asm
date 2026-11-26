
dump_analysis/semantic_reconstruction/game_input_physics/2e93e4.bin:     file format binary


Disassembly of section .data:

00000000002e93e4 <.data>:
  2e93e4:	40 53                                           	rex push rbx
  2e93e6:	48 83 ec 20                                     	sub    rsp,0x20
  2e93ea:	48 8b d9                                        	mov    rbx,rcx
  2e93ed:	48 83 c1 08                                     	add    rcx,0x8
  2e93f1:	e8 2a 09 00 00                                  	call   0x2e9d20
  2e93f6:	48 39 43 10                                     	cmp    QWORD PTR [rbx+0x10],rax
  2e93fa:	74 06                                           	je     0x2e9402
  2e93fc:	48 83 c4 20                                     	add    rsp,0x20
  2e9400:	5b                                              	pop    rbx
  2e9401:	c3                                              	ret
  2e9402:	48 8d 0d 9f 40 fa ff                            	lea    rcx,[rip+0xfffffffffffa409f]        # 0x28d4a8
  2e9409:	e8 42 3c fe ff                                  	call   0x2cd050
  2e940e:	cc                                              	int3
