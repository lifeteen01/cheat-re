
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f61e0 <.data+0x2f61e0>:
  2f61e0:	40 53                                           	rex push rbx
  2f61e2:	48 83 ec 30                                     	sub    rsp,0x30
  2f61e6:	48 8b da                                        	mov    rbx,rdx
  2f61e9:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2f61ee:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f61f3:	e8 e8 be ff ff                                  	call   0x2f20e0
  2f61f8:	48 8b c8                                        	mov    rcx,rax
  2f61fb:	e8 54 3a ff ff                                  	call   0x2e9c54
  2f6200:	48 8b d0                                        	mov    rdx,rax
  2f6203:	48 8b cb                                        	mov    rcx,rbx
  2f6206:	e8 2d 8d fd ff                                  	call   0x2cef38
  2f620b:	48 83 c4 30                                     	add    rsp,0x30
  2f620f:	5b                                              	pop    rbx
  2f6210:	c3                                              	ret
