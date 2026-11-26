
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac32c <.data+0x3ac32c>:
  3ac32c:	85 c9                                           	test   ecx,ecx
  3ac32e:	75 04                                           	jne    0x3ac334
  3ac330:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ac333:	c3                                              	ret
  3ac334:	b8 01 00 00 00                                  	mov    eax,0x1
  3ac339:	66 0f 6e c9                                     	movd   xmm1,ecx
  3ac33d:	2b c1                                           	sub    eax,ecx
  3ac33f:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3ac342:	66 0f 6e c0                                     	movd   xmm0,eax
  3ac346:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ac349:	f3 0f 58 c9                                     	addss  xmm1,xmm1
  3ac34d:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  3ac351:	c3                                              	ret
