
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368468 <.data+0x368468>:
  368468:	48 83 ec 28                                     	sub    rsp,0x28
  36846c:	48 8b d1                                        	mov    rdx,rcx
  36846f:	e8 94 2a f6 ff                                  	call   0x2caf08
  368474:	84 c0                                           	test   al,al
  368476:	74 28                                           	je     0x3684a0
  368478:	48 8b ca                                        	mov    rcx,rdx
  36847b:	e8 80 0f 00 00                                  	call   0x369400
  368480:	48 8b c8                                        	mov    rcx,rax
  368483:	4c 8b c0                                        	mov    r8,rax
  368486:	e8 7d 2a f6 ff                                  	call   0x2caf08
  36848b:	84 c0                                           	test   al,al
  36848d:	74 11                                           	je     0x3684a0
  36848f:	ba 01 00 00 00                                  	mov    edx,0x1
  368494:	49 8b c8                                        	mov    rcx,r8
  368497:	48 83 c4 28                                     	add    rsp,0x28
  36849b:	e9 54 a7 00 00                                  	jmp    0x372bf4
  3684a0:	32 c0                                           	xor    al,al
  3684a2:	48 83 c4 28                                     	add    rsp,0x28
  3684a6:	c3                                              	ret
