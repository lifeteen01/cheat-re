
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c85e8 <.data+0x3c85e8>:
  3c85e8:	48 83 ec 48                                     	sub    rsp,0x48
  3c85ec:	33 c0                                           	xor    eax,eax
  3c85ee:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  3c85f3:	0f 29 7c 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm7
  3c85f8:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c85fb:	0f 2f c8                                        	comiss xmm1,xmm0
  3c85fe:	0f 57 ff                                        	xorps  xmm7,xmm7
  3c8601:	0f 97 c0                                        	seta   al
  3c8604:	f3 0f 2a f8                                     	cvtsi2ss xmm7,eax
  3c8608:	e8 1f b1 f1 ff                                  	call   0x2e372c
  3c860d:	f2 0f 10 15 7b 53 ee ff                         	movsd  xmm2,QWORD PTR [rip+0xffffffffffee537b]        # 0x2ad990
  3c8615:	0f 28 f0                                        	movaps xmm6,xmm0
  3c8618:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c861b:	f3 0f 5a ce                                     	cvtss2sd xmm1,xmm6
  3c861f:	f2 0f 5c d1                                     	subsd  xmm2,xmm1
  3c8623:	66 0f 5a c2                                     	cvtpd2ps xmm0,xmm2
  3c8627:	e8 08 09 00 00                                  	call   0x3c8f34
  3c862c:	0f 57 d2                                        	xorps  xmm2,xmm2
  3c862f:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  3c8633:	0f 28 ce                                        	movaps xmm1,xmm6
  3c8636:	0f 28 e0                                        	movaps xmm4,xmm0
  3c8639:	f3 0f 59 0d 8f 55 ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffee558f]        # 0x2adbd0
  3c8641:	f3 0f 5a d1                                     	cvtss2sd xmm2,xmm1
  3c8645:	f2 0f 58 15 23 55 ee ff                         	addsd  xmm2,QWORD PTR [rip+0xffffffffffee5523]        # 0x2adb70
  3c864d:	66 0f 5a ca                                     	cvtpd2ps xmm1,xmm2
  3c8651:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3c8655:	0f 5a d9                                        	cvtps2pd xmm3,xmm1
  3c8658:	f2 0f 5c 1d 28 55 ee ff                         	subsd  xmm3,QWORD PTR [rip+0xffffffffffee5528]        # 0x2adb88
  3c8660:	66 0f 5a cb                                     	cvtpd2ps xmm1,xmm3
  3c8664:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3c8668:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3c866d:	0f 5a d1                                        	cvtps2pd xmm2,xmm1
  3c8670:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c8673:	f2 0f 58 15 2d 55 ee ff                         	addsd  xmm2,QWORD PTR [rip+0xffffffffffee552d]        # 0x2adba8
  3c867b:	66 0f 5a c2                                     	cvtpd2ps xmm0,xmm2
  3c867f:	f2 0f 10 15 29 55 ee ff                         	movsd  xmm2,QWORD PTR [rip+0xffffffffffee5529]        # 0x2adbb0
  3c8687:	f3 0f 59 e0                                     	mulss  xmm4,xmm0
  3c868b:	f3 0f 5a cc                                     	cvtss2sd xmm1,xmm4
  3c868f:	f2 0f 5c d1                                     	subsd  xmm2,xmm1
  3c8693:	66 0f 5a c2                                     	cvtpd2ps xmm0,xmm2
  3c8697:	f3 0f 59 f8                                     	mulss  xmm7,xmm0
  3c869b:	f3 0f 5c c7                                     	subss  xmm0,xmm7
  3c869f:	0f 28 7c 24 20                                  	movaps xmm7,XMMWORD PTR [rsp+0x20]
  3c86a4:	48 83 c4 48                                     	add    rsp,0x48
  3c86a8:	c3                                              	ret
