
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df2e8 <.data+0x2df2e8>:
  2df2e8:	40 53                                           	rex push rbx
  2df2ea:	48 83 ec 50                                     	sub    rsp,0x50
  2df2ee:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  2df2f3:	48 8b d9                                        	mov    rbx,rcx
  2df2f6:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm7
  2df2fb:	48 83 c1 10                                     	add    rcx,0x10
  2df2ff:	44 0f 29 44 24 20                               	movaps XMMWORD PTR [rsp+0x20],xmm8
  2df305:	0f 28 fb                                        	movaps xmm7,xmm3
  2df308:	44 0f 28 c2                                     	movaps xmm8,xmm2
  2df30c:	0f 28 f1                                        	movaps xmm6,xmm1
  2df30f:	e8 44 54 ff ff                                  	call   0x2d4758
  2df314:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x80]
  2df31d:	48 8b c3                                        	mov    rax,rbx
  2df320:	f3 0f 11 33                                     	movss  DWORD PTR [rbx],xmm6
  2df324:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  2df329:	f3 0f 11 7b 04                                  	movss  DWORD PTR [rbx+0x4],xmm7
  2df32e:	0f 28 7c 24 30                                  	movaps xmm7,XMMWORD PTR [rsp+0x30]
  2df333:	f3 44 0f 11 43 08                               	movss  DWORD PTR [rbx+0x8],xmm8
  2df339:	44 0f 28 44 24 20                               	movaps xmm8,XMMWORD PTR [rsp+0x20]
  2df33f:	f3 0f 11 43 0c                                  	movss  DWORD PTR [rbx+0xc],xmm0
  2df344:	48 83 c4 50                                     	add    rsp,0x50
  2df348:	5b                                              	pop    rbx
  2df349:	c3                                              	ret
