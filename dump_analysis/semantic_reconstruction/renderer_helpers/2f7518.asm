
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f7518 <.data+0x2f7518>:
  2f7518:	40 53                                           	rex push rbx
  2f751a:	48 83 ec 30                                     	sub    rsp,0x30
  2f751e:	48 8b da                                        	mov    rbx,rdx
  2f7521:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2f7526:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f752b:	e8 04 ac ff ff                                  	call   0x2f2134
  2f7530:	48 8b c8                                        	mov    rcx,rax
  2f7533:	e8 0c 68 fd ff                                  	call   0x2cdd44
  2f7538:	48 8b d0                                        	mov    rdx,rax
  2f753b:	48 8b cb                                        	mov    rcx,rbx
  2f753e:	e8 f5 79 fd ff                                  	call   0x2cef38
  2f7543:	48 83 c4 30                                     	add    rsp,0x30
  2f7547:	5b                                              	pop    rbx
  2f7548:	c3                                              	ret
