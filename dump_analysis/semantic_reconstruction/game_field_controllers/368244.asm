
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368244 <.data+0x368244>:
  368244:	48 83 ec 28                                     	sub    rsp,0x28
  368248:	48 8b d1                                        	mov    rdx,rcx
  36824b:	e8 b8 2c f6 ff                                  	call   0x2caf08
  368250:	84 c0                                           	test   al,al
  368252:	74 23                                           	je     0x368277
  368254:	48 8b ca                                        	mov    rcx,rdx
  368257:	e8 a4 11 00 00                                  	call   0x369400
  36825c:	48 8b c8                                        	mov    rcx,rax
  36825f:	48 8b d0                                        	mov    rdx,rax
  368262:	e8 a1 2c f6 ff                                  	call   0x2caf08
  368267:	84 c0                                           	test   al,al
  368269:	74 0c                                           	je     0x368277
  36826b:	48 8b ca                                        	mov    rcx,rdx
  36826e:	48 83 c4 28                                     	add    rsp,0x28
  368272:	e9 2d a9 00 00                                  	jmp    0x372ba4
  368277:	32 c0                                           	xor    al,al
  368279:	48 83 c4 28                                     	add    rsp,0x28
  36827d:	c3                                              	ret
