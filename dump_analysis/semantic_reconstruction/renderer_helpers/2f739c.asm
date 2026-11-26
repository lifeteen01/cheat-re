
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f739c <.data+0x2f739c>:
  2f739c:	40 53                                           	rex push rbx
  2f739e:	48 83 ec 30                                     	sub    rsp,0x30
  2f73a2:	48 8b da                                        	mov    rbx,rdx
  2f73a5:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2f73aa:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f73af:	e8 64 ad ff ff                                  	call   0x2f2118
  2f73b4:	48 8b c8                                        	mov    rcx,rax
  2f73b7:	e8 98 28 ff ff                                  	call   0x2e9c54
  2f73bc:	48 8b d0                                        	mov    rdx,rax
  2f73bf:	48 8b cb                                        	mov    rcx,rbx
  2f73c2:	e8 71 7b fd ff                                  	call   0x2cef38
  2f73c7:	48 83 c4 30                                     	add    rsp,0x30
  2f73cb:	5b                                              	pop    rbx
  2f73cc:	c3                                              	ret
