
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f78fc <.data+0x2f78fc>:
  2f78fc:	40 53                                           	rex push rbx
  2f78fe:	48 83 ec 30                                     	sub    rsp,0x30
  2f7902:	48 8b da                                        	mov    rbx,rdx
  2f7905:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2f790a:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f790f:	e8 58 a8 ff ff                                  	call   0x2f216c
  2f7914:	48 8b c8                                        	mov    rcx,rax
  2f7917:	e8 38 23 ff ff                                  	call   0x2e9c54
  2f791c:	48 8b d0                                        	mov    rdx,rax
  2f791f:	48 8b cb                                        	mov    rcx,rbx
  2f7922:	e8 11 76 fd ff                                  	call   0x2cef38
  2f7927:	48 83 c4 30                                     	add    rsp,0x30
  2f792b:	5b                                              	pop    rbx
  2f792c:	c3                                              	ret
