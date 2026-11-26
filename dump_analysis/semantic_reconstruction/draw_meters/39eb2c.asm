
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039eb2c <.data+0x39eb2c>:
  39eb2c:	40 53                                           	rex push rbx
  39eb2e:	48 83 ec 20                                     	sub    rsp,0x20
  39eb32:	48 8b d9                                        	mov    rbx,rcx
  39eb35:	e8 62 fa f2 ff                                  	call   0x2ce59c
  39eb3a:	84 c0                                           	test   al,al
  39eb3c:	74 0b                                           	je     0x39eb49
  39eb3e:	48 8b d3                                        	mov    rdx,rbx
  39eb41:	48 8b cb                                        	mov    rcx,rbx
  39eb44:	e8 33 fc ff ff                                  	call   0x39e77c
  39eb49:	48 8b c3                                        	mov    rax,rbx
  39eb4c:	48 83 c4 20                                     	add    rsp,0x20
  39eb50:	5b                                              	pop    rbx
  39eb51:	c3                                              	ret
