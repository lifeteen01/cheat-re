
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e091c <.data+0x2e091c>:
  2e091c:	48 8b c4                                        	mov    rax,rsp
  2e091f:	48 81 ec 88 00 00 00                            	sub    rsp,0x88
  2e0926:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  2e092a:	48 8d 48 a8                                     	lea    rcx,[rax-0x58]
  2e092e:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  2e0932:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  2e0937:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  2e093c:	44 0f 28 c8                                     	movaps xmm9,xmm0
  2e0940:	e8 77 72 0e 00                                  	call   0x3c7bbc
  2e0945:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2e094a:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  2e094e:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2e0951:	f2 0f 11 4c 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm1
  2e0957:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  2e095b:	e8 20 f7 ff ff                                  	call   0x2e0080
  2e0960:	44 0f 28 c0                                     	movaps xmm8,xmm0
  2e0964:	e8 b3 fe ff ff                                  	call   0x2e081c
  2e0969:	0f 28 f8                                        	movaps xmm7,xmm0
  2e096c:	e8 7f 02 00 00                                  	call   0x2e0bf0
  2e0971:	0f 28 f0                                        	movaps xmm6,xmm0
  2e0974:	e8 a3 fd ff ff                                  	call   0x2e071c
  2e0979:	0f 28 d7                                        	movaps xmm2,xmm7
  2e097c:	0f 28 ce                                        	movaps xmm1,xmm6
  2e097f:	e8 c8 08 00 00                                  	call   0x2e124c
  2e0984:	f3 0f 10 0d 60 69 0f 00                         	movss  xmm1,DWORD PTR [rip+0xf6960]        # 0x3d72ec
  2e098c:	f3 0f 58 c0                                     	addss  xmm0,xmm0
  2e0990:	f3 0f 58 0d 48 d1 fa ff                         	addss  xmm1,DWORD PTR [rip+0xfffffffffffad148]        # 0x28dae0
  2e0998:	f3 0f 10 15 5c d1 fa ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffffad15c]        # 0x28dafc
  2e09a0:	0f 28 74 24 70                                  	movaps xmm6,XMMWORD PTR [rsp+0x70]
  2e09a5:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [rsp+0x60]
  2e09aa:	f3 44 0f 59 ca                                  	mulss  xmm9,xmm2
  2e09af:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  2e09b3:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e09b6:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  2e09ba:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  2e09bf:	44 0f 28 44 24 50                               	movaps xmm8,XMMWORD PTR [rsp+0x50]
  2e09c5:	f3 0f 5a c8                                     	cvtss2sd xmm1,xmm0
  2e09c9:	0f 57 c0                                        	xorps  xmm0,xmm0
  2e09cc:	f2 0f 58 0d 1c d1 fa ff                         	addsd  xmm1,QWORD PTR [rip+0xfffffffffffad11c]        # 0x28daf0
  2e09d4:	f3 41 0f 5a c1                                  	cvtss2sd xmm0,xmm9
  2e09d9:	44 0f 28 4c 24 40                               	movaps xmm9,XMMWORD PTR [rsp+0x40]
  2e09df:	f2 0f 58 c8                                     	addsd  xmm1,xmm0
  2e09e3:	66 0f 5a c1                                     	cvtpd2ps xmm0,xmm1
  2e09e7:	48 81 c4 88 00 00 00                            	add    rsp,0x88
  2e09ee:	c3                                              	ret
