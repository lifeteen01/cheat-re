
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f268 <.data+0x39f268>:
  39f268:	48 85 c9                                        	test   rcx,rcx
  39f26b:	74 1c                                           	je     0x39f289
  39f26d:	53                                              	push   rbx
  39f26e:	48 83 ec 20                                     	sub    rsp,0x20
  39f272:	33 d2                                           	xor    edx,edx
  39f274:	48 8b d9                                        	mov    rbx,rcx
  39f277:	e8 c0 04 00 00                                  	call   0x39f73c
  39f27c:	48 8b cb                                        	mov    rcx,rbx
  39f27f:	e8 f8 5e ff ff                                  	call   0x39517c
  39f284:	48 83 c4 20                                     	add    rsp,0x20
  39f288:	5b                                              	pop    rbx
  39f289:	c3                                              	ret
