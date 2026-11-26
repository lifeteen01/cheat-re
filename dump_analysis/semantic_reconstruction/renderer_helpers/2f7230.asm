
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f7230 <.data+0x2f7230>:
  2f7230:	40 53                                           	rex push rbx
  2f7232:	48 83 ec 30                                     	sub    rsp,0x30
  2f7236:	48 8b da                                        	mov    rbx,rdx
  2f7239:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2f723e:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2f7243:	e8 b4 ae ff ff                                  	call   0x2f20fc
  2f7248:	48 8b c8                                        	mov    rcx,rax
  2f724b:	e8 e4 6b fd ff                                  	call   0x2cde34
  2f7250:	48 8b d0                                        	mov    rdx,rax
  2f7253:	48 8b cb                                        	mov    rcx,rbx
  2f7256:	e8 dd 7c fd ff                                  	call   0x2cef38
  2f725b:	48 83 c4 30                                     	add    rsp,0x30
  2f725f:	5b                                              	pop    rbx
  2f7260:	c3                                              	ret
