
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b410 <.data+0x39b410>:
  39b410:	48 83 ec 38                                     	sub    rsp,0x38
  39b414:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  39b419:	0f 28 f0                                        	movaps xmm6,xmm0
  39b41c:	e8 df 1d fc ff                                  	call   0x35d200
  39b421:	f3 0f 10 48 20                                  	movss  xmm1,DWORD PTR [rax+0x20]
  39b426:	f3 0f 5c 88 84 00 00 00                         	subss  xmm1,DWORD PTR [rax+0x84]
  39b42e:	c6 80 41 01 00 00 01                            	mov    BYTE PTR [rax+0x141],0x1
  39b435:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  39b439:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  39b43e:	f3 0f 11 88 00 01 00 00                         	movss  DWORD PTR [rax+0x100],xmm1
  39b446:	48 83 c4 38                                     	add    rsp,0x38
  39b44a:	c3                                              	ret
  39b44b:	cc                                              	int3
