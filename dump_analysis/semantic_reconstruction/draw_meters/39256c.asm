
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039256c <.data+0x39256c>:
  39256c:	40 53                                           	rex push rbx
  39256e:	48 83 ec 30                                     	sub    rsp,0x30
  392572:	48 8b d9                                        	mov    rbx,rcx
  392575:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  39257a:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  39257f:	e8 6c a1 ff ff                                  	call   0x38c6f0
  392584:	48 8b c8                                        	mov    rcx,rax
  392587:	e8 a0 c5 00 00                                  	call   0x39eb2c
  39258c:	4c 8b c0                                        	mov    r8,rax
  39258f:	ba 01 00 00 00                                  	mov    edx,0x1
  392594:	48 8b cb                                        	mov    rcx,rbx
  392597:	e8 30 08 00 00                                  	call   0x392dcc
  39259c:	48 83 c4 30                                     	add    rsp,0x30
  3925a0:	5b                                              	pop    rbx
  3925a1:	c3                                              	ret
