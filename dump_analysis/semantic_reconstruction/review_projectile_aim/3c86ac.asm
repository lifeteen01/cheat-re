
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c86ac <.data+0x3c86ac>:
  3c86ac:	48 8b c4                                        	mov    rax,rsp
  3c86af:	53                                              	push   rbx
  3c86b0:	48 81 ec 80 00 00 00                            	sub    rsp,0x80
  3c86b7:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3c86bb:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3c86bf:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3c86c4:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3c86c8:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3c86cd:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3c86d1:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3c86d6:	44 0f 28 d1                                     	movaps xmm10,xmm1
  3c86da:	45 0f 2e d0                                     	ucomiss xmm10,xmm8
  3c86de:	7a 12                                           	jp     0x3c86f2
  3c86e0:	75 10                                           	jne    0x3c86f2
  3c86e2:	45 0f 2e c8                                     	ucomiss xmm9,xmm8
  3c86e6:	7a 0a                                           	jp     0x3c86f2
  3c86e8:	75 08                                           	jne    0x3c86f2
  3c86ea:	0f 57 c0                                        	xorps  xmm0,xmm0
  3c86ed:	e9 d8 00 00 00                                  	jmp    0x3c87ca
  3c86f2:	e8 35 b0 f1 ff                                  	call   0x2e372c
  3c86f7:	0f 28 f8                                        	movaps xmm7,xmm0
  3c86fa:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3c86fe:	f3 0f 11 bc 24 98 00 00 00                      	movss  DWORD PTR [rsp+0x98],xmm7
  3c8707:	e8 20 b0 f1 ff                                  	call   0x2e372c
  3c870c:	0f 28 f0                                        	movaps xmm6,xmm0
  3c870f:	f3 0f 11 bc 24 a8 00 00 00                      	movss  DWORD PTR [rsp+0xa8],xmm7
  3c8718:	48 8d 94 24 98 00 00 00                         	lea    rdx,[rsp+0x98]
  3c8720:	f3 0f 11 b4 24 a0 00 00 00                      	movss  DWORD PTR [rsp+0xa0],xmm6
  3c8729:	48 8d 8c 24 a0 00 00 00                         	lea    rcx,[rsp+0xa0]
  3c8731:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3c8737:	e8 c0 f6 ff ff                                  	call   0x3c7dfc
  3c873c:	48 8d 94 24 a8 00 00 00                         	lea    rdx,[rsp+0xa8]
  3c8744:	48 8b d8                                        	mov    rbx,rax
  3c8747:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3c874c:	e8 9b f6 ff ff                                  	call   0x3c7dec
  3c8751:	0f 2f fe                                        	comiss xmm7,xmm6
  3c8754:	f3 0f 10 13                                     	movss  xmm2,DWORD PTR [rbx]
  3c8758:	f3 0f 5e 10                                     	divss  xmm2,DWORD PTR [rax]
  3c875c:	f3 0f 10 1d fc 53 ee ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffee53fc]        # 0x2adb60
  3c8764:	0f 28 ca                                        	movaps xmm1,xmm2
  3c8767:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  3c876b:	0f 28 c1                                        	movaps xmm0,xmm1
  3c876e:	f3 0f 59 05 da 53 ee ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffee53da]        # 0x2adb50
  3c8776:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  3c877a:	f3 0f 59 d9                                     	mulss  xmm3,xmm1
  3c877e:	f3 0f 5c 1d e2 53 ee ff                         	subss  xmm3,DWORD PTR [rip+0xffffffffffee53e2]        # 0x2adb68
  3c8786:	f3 0f 59 d9                                     	mulss  xmm3,xmm1
  3c878a:	f3 0f 59 da                                     	mulss  xmm3,xmm2
  3c878e:	f3 0f 58 da                                     	addss  xmm3,xmm2
  3c8792:	76 0e                                           	jbe    0x3c87a2
  3c8794:	f3 0f 10 0d 88 0c ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffee0c88]        # 0x2a9424
  3c879c:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  3c87a0:	eb 03                                           	jmp    0x3c87a5
  3c87a2:	0f 28 cb                                        	movaps xmm1,xmm3
  3c87a5:	45 0f 2f c2                                     	comiss xmm8,xmm10
  3c87a9:	76 0f                                           	jbe    0x3c87ba
  3c87ab:	f3 0f 10 05 a9 a9 ec ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffeca9a9]        # 0x29315c
  3c87b3:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  3c87b7:	0f 28 c8                                        	movaps xmm1,xmm0
  3c87ba:	45 0f 2f c1                                     	comiss xmm8,xmm9
  3c87be:	76 07                                           	jbe    0x3c87c7
  3c87c0:	0f 57 0d d9 aa ec ff                            	xorps  xmm1,XMMWORD PTR [rip+0xffffffffffecaad9]        # 0x2932a0
  3c87c7:	0f 28 c1                                        	movaps xmm0,xmm1
  3c87ca:	0f 28 74 24 70                                  	movaps xmm6,XMMWORD PTR [rsp+0x70]
  3c87cf:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [rsp+0x60]
  3c87d4:	44 0f 28 44 24 50                               	movaps xmm8,XMMWORD PTR [rsp+0x50]
  3c87da:	44 0f 28 4c 24 40                               	movaps xmm9,XMMWORD PTR [rsp+0x40]
  3c87e0:	44 0f 28 54 24 30                               	movaps xmm10,XMMWORD PTR [rsp+0x30]
  3c87e6:	48 81 c4 80 00 00 00                            	add    rsp,0x80
  3c87ed:	5b                                              	pop    rbx
  3c87ee:	c3                                              	ret
