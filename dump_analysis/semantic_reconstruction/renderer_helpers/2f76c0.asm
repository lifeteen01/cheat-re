
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f76c0 <.data+0x2f76c0>:
  2f76c0:	40 53                                           	rex push rbx
  2f76c2:	48 83 ec 30                                     	sub    rsp,0x30
  2f76c6:	48 8b da                                        	mov    rbx,rdx
  2f76c9:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2f76ce:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f76d3:	e8 78 aa ff ff                                  	call   0x2f2150
  2f76d8:	48 8b c8                                        	mov    rcx,rax
  2f76db:	e8 74 25 ff ff                                  	call   0x2e9c54
  2f76e0:	48 8b d0                                        	mov    rdx,rax
  2f76e3:	48 8b cb                                        	mov    rcx,rbx
  2f76e6:	e8 4d 78 fd ff                                  	call   0x2cef38
  2f76eb:	48 83 c4 30                                     	add    rsp,0x30
  2f76ef:	5b                                              	pop    rbx
  2f76f0:	c3                                              	ret
