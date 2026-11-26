
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b44c <.data+0x39b44c>:
  39b44c:	48 83 ec 38                                     	sub    rsp,0x38
  39b450:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  39b455:	0f 28 f0                                        	movaps xmm6,xmm0
  39b458:	e8 a3 1d fc ff                                  	call   0x35d200
  39b45d:	f3 0f 10 48 24                                  	movss  xmm1,DWORD PTR [rax+0x24]
  39b462:	f3 0f 5c 88 88 00 00 00                         	subss  xmm1,DWORD PTR [rax+0x88]
  39b46a:	c6 80 41 01 00 00 01                            	mov    BYTE PTR [rax+0x141],0x1
  39b471:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  39b475:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  39b47a:	f3 0f 11 88 04 01 00 00                         	movss  DWORD PTR [rax+0x104],xmm1
  39b482:	48 83 c4 38                                     	add    rsp,0x38
  39b486:	c3                                              	ret
  39b487:	cc                                              	int3
