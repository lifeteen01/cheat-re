
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003930ac <.data+0x3930ac>:
  3930ac:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3930b0:	66 0f 6e c0                                     	movd   xmm0,eax
  3930b4:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3930b7:	c3                                              	ret
  3930b8:	40 53                                           	rex push rbx
  3930ba:	48 83 ec 20                                     	sub    rsp,0x20
  3930be:	f3 0f 10 42 04                                  	movss  xmm0,DWORD PTR [rdx+0x4]
  3930c3:	48 8b d9                                        	mov    rbx,rcx
  3930c6:	e8 1d 00 00 00                                  	call   0x3930e8
  3930cb:	0f 28 d0                                        	movaps xmm2,xmm0
  3930ce:	f3 0f 10 02                                     	movss  xmm0,DWORD PTR [rdx]
  3930d2:	e8 11 00 00 00                                  	call   0x3930e8
  3930d7:	0f 28 c8                                        	movaps xmm1,xmm0
  3930da:	e8 61 92 f3 ff                                  	call   0x2cc340
  3930df:	48 8b c3                                        	mov    rax,rbx
  3930e2:	48 83 c4 20                                     	add    rsp,0x20
  3930e6:	5b                                              	pop    rbx
  3930e7:	c3                                              	ret
