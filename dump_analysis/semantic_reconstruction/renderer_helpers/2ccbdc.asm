
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ccbdc <.data+0x2ccbdc>:
  2ccbdc:	48 83 ec 28                                     	sub    rsp,0x28
  2ccbe0:	e8 3f 76 06 00                                  	call   0x334224
  2ccbe5:	48 85 c0                                        	test   rax,rax
  2ccbe8:	74 19                                           	je     0x2ccc03
  2ccbea:	48 8b c8                                        	mov    rcx,rax
  2ccbed:	e8 02 0c 00 00                                  	call   0x2cd7f4
  2ccbf2:	48 85 c0                                        	test   rax,rax
  2ccbf5:	74 0c                                           	je     0x2ccc03
  2ccbf7:	48 8b c8                                        	mov    rcx,rax
  2ccbfa:	48 83 c4 28                                     	add    rsp,0x28
  2ccbfe:	e9 81 1e 00 00                                  	jmp    0x2cea84
  2ccc03:	33 c0                                           	xor    eax,eax
  2ccc05:	48 83 c4 28                                     	add    rsp,0x28
  2ccc09:	c3                                              	ret
