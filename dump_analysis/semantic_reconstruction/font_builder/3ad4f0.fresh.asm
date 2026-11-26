
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ad4f0 <.data+0x3ad4f0>:
  3ad4f0:	48 8b c4                                        	mov    rax,rsp
  3ad4f3:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3ad4f7:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  3ad4fb:	f3 0f 11 58 20                                  	movss  DWORD PTR [rax+0x20],xmm3
  3ad500:	f3 0f 11 50 18                                  	movss  DWORD PTR [rax+0x18],xmm2
  3ad505:	57                                              	push   rdi
  3ad506:	48 81 ec e0 00 00 00                            	sub    rsp,0xe0
  3ad50d:	f3 0f 10 ac 24 20 01 00 00                      	movss  xmm5,DWORD PTR [rsp+0x120]
  3ad516:	48 8b da                                        	mov    rbx,rdx
  3ad519:	f3 0f 10 84 24 10 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x110]
  3ad522:	0f 28 cd                                        	movaps xmm1,xmm5
  3ad525:	f3 0f 10 a4 24 18 01 00 00                      	movss  xmm4,DWORD PTR [rsp+0x118]
  3ad52e:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3ad532:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3ad536:	48 8b f9                                        	mov    rdi,rcx
  3ad539:	f3 0f 10 b4 24 38 01 00 00                      	movss  xmm6,DWORD PTR [rsp+0x138]
  3ad542:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3ad546:	f3 0f 10 bc 24 30 01 00 00                      	movss  xmm7,DWORD PTR [rsp+0x130]
  3ad54f:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3ad554:	f3 0f 5c fd                                     	subss  xmm7,xmm5
  3ad558:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3ad55d:	44 0f 28 c4                                     	movaps xmm8,xmm4
  3ad561:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3ad566:	f3 44 0f 5c c3                                  	subss  xmm8,xmm3
  3ad56b:	f3 44 0f 10 94 24 30 01 00 00                   	movss  xmm10,DWORD PTR [rsp+0x130]
  3ad575:	44 0f 28 ca                                     	movaps xmm9,xmm2
  3ad579:	f3 0f 10 94 24 28 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x128]
  3ad582:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  3ad587:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3ad58c:	44 0f 29 7c 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm15
  3ad592:	f3 45 0f 5c d1                                  	subss  xmm10,xmm9
  3ad597:	f3 0f 59 c9                                     	mulss  xmm1,xmm1
  3ad59b:	f3 0f 5c f2                                     	subss  xmm6,xmm2
  3ad59f:	44 0f 28 d8                                     	movaps xmm11,xmm0
  3ad5a3:	0f 28 c2                                        	movaps xmm0,xmm2
  3ad5a6:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  3ad5aa:	f3 45 0f 5c d9                                  	subss  xmm11,xmm9
  3ad5af:	f3 44 0f 10 8c 24 38 01 00 00                   	movss  xmm9,DWORD PTR [rsp+0x138]
  3ad5b9:	f3 44 0f 5c cb                                  	subss  xmm9,xmm3
  3ad5be:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  3ad5c2:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3ad5c6:	e8 69 b9 01 00                                  	call   0x3c8f34
  3ad5cb:	f3 45 0f 59 c0                                  	mulss  xmm8,xmm8
  3ad5d0:	44 0f 28 e0                                     	movaps xmm12,xmm0
  3ad5d4:	f3 45 0f 59 db                                  	mulss  xmm11,xmm11
  3ad5d9:	f3 45 0f 58 c3                                  	addss  xmm8,xmm11
  3ad5de:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3ad5e2:	e8 4d b9 01 00                                  	call   0x3c8f34
  3ad5e7:	f3 0f 59 f6                                     	mulss  xmm6,xmm6
  3ad5eb:	f3 44 0f 58 e0                                  	addss  xmm12,xmm0
  3ad5f0:	f3 0f 59 ff                                     	mulss  xmm7,xmm7
  3ad5f4:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3ad5f8:	0f 28 c6                                        	movaps xmm0,xmm6
  3ad5fb:	e8 34 b9 01 00                                  	call   0x3c8f34
  3ad600:	f3 45 0f 59 c9                                  	mulss  xmm9,xmm9
  3ad605:	f3 44 0f 58 e0                                  	addss  xmm12,xmm0
  3ad60a:	f3 45 0f 59 d2                                  	mulss  xmm10,xmm10
  3ad60f:	f3 45 0f 58 ca                                  	addss  xmm9,xmm10
  3ad614:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3ad618:	e8 17 b9 01 00                                  	call   0x3c8f34
  3ad61d:	8b b4 24 48 01 00 00                            	mov    esi,DWORD PTR [rsp+0x148]
  3ad624:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  3ad628:	f3 45 0f 59 e4                                  	mulss  xmm12,xmm12
  3ad62d:	f3 44 0f 5c e0                                  	subss  xmm12,xmm0
  3ad632:	83 fe 10                                        	cmp    esi,0x10
  3ad635:	0f 8f 7f 02 00 00                               	jg     0x3ad8ba
  3ad63b:	f3 44 0f 10 bc 24 40 01 00 00                   	movss  xmm15,DWORD PTR [rsp+0x140]
  3ad645:	f3 44 0f 10 15 02 fc ed ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffedfc02]        # 0x28d250
  3ad64e:	45 0f 2f e7                                     	comiss xmm12,xmm15
  3ad652:	0f 86 44 02 00 00                               	jbe    0x3ad89c
  3ad658:	f3 0f 10 84 24 10 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x110]
  3ad661:	ff c6                                           	inc    esi
  3ad663:	f3 0f 10 8c 24 18 01 00 00                      	movss  xmm1,DWORD PTR [rsp+0x118]
  3ad66c:	48 8b d3                                        	mov    rdx,rbx
  3ad66f:	f3 0f 10 bc 24 28 01 00 00                      	movss  xmm7,DWORD PTR [rsp+0x128]
  3ad678:	48 8b cf                                        	mov    rcx,rdi
  3ad67b:	f3 44 0f 10 9c 24 20 01 00 00                   	movss  xmm11,DWORD PTR [rsp+0x120]
  3ad685:	f3 44 0f 10 8c 24 08 01 00 00                   	movss  xmm9,DWORD PTR [rsp+0x108]
  3ad68f:	f3 0f 10 ac 24 00 01 00 00                      	movss  xmm5,DWORD PTR [rsp+0x100]
  3ad698:	41 0f 28 e1                                     	movaps xmm4,xmm9
  3ad69c:	89 74 24 58                                     	mov    DWORD PTR [rsp+0x58],esi
  3ad6a0:	f3 0f 58 e8                                     	addss  xmm5,xmm0
  3ad6a4:	f3 41 0f 58 c3                                  	addss  xmm0,xmm11
  3ad6a9:	f3 44 0f 11 7c 24 50                            	movss  DWORD PTR [rsp+0x50],xmm15
  3ad6b0:	f3 44 0f 58 9c 24 30 01 00 00                   	addss  xmm11,DWORD PTR [rsp+0x130]
  3ad6ba:	f3 0f 58 e1                                     	addss  xmm4,xmm1
  3ad6be:	f3 0f 58 cf                                     	addss  xmm1,xmm7
  3ad6c2:	f3 0f 58 bc 24 38 01 00 00                      	addss  xmm7,DWORD PTR [rsp+0x138]
  3ad6cb:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3ad6d0:	f3 45 0f 59 da                                  	mulss  xmm11,xmm10
  3ad6d5:	f3 41 0f 59 fa                                  	mulss  xmm7,xmm10
  3ad6da:	0f 28 d8                                        	movaps xmm3,xmm0
  3ad6dd:	f3 41 0f 59 ca                                  	mulss  xmm1,xmm10
  3ad6e2:	41 0f 28 f3                                     	movaps xmm6,xmm11
  3ad6e6:	f3 41 0f 59 e2                                  	mulss  xmm4,xmm10
  3ad6eb:	f3 0f 58 f0                                     	addss  xmm6,xmm0
  3ad6ef:	f3 0f 10 05 59 fb ed ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffedfb59]        # 0x28d250
  3ad6f7:	44 0f 28 c7                                     	movaps xmm8,xmm7
  3ad6fb:	f3 41 0f 59 ea                                  	mulss  xmm5,xmm10
  3ad700:	f3 44 0f 58 c1                                  	addss  xmm8,xmm1
  3ad705:	0f 28 d1                                        	movaps xmm2,xmm1
  3ad708:	f3 44 0f 11 9c 24 20 01 00 00                   	movss  DWORD PTR [rsp+0x120],xmm11
  3ad712:	f3 41 0f 59 f2                                  	mulss  xmm6,xmm10
  3ad717:	f3 0f 58 d4                                     	addss  xmm2,xmm4
  3ad71b:	f3 0f 58 dd                                     	addss  xmm3,xmm5
  3ad71f:	f3 0f 11 bc 24 28 01 00 00                      	movss  DWORD PTR [rsp+0x128],xmm7
  3ad728:	f3 45 0f 59 c2                                  	mulss  xmm8,xmm10
  3ad72d:	f3 41 0f 59 d2                                  	mulss  xmm2,xmm10
  3ad732:	f3 41 0f 59 da                                  	mulss  xmm3,xmm10
  3ad737:	45 0f 28 e0                                     	movaps xmm12,xmm8
  3ad73b:	44 0f 28 d6                                     	movaps xmm10,xmm6
  3ad73f:	f3 0f 11 b4 24 10 01 00 00                      	movss  DWORD PTR [rsp+0x110],xmm6
  3ad748:	f3 44 0f 58 e2                                  	addss  xmm12,xmm2
  3ad74d:	f3 44 0f 11 84 24 18 01 00 00                   	movss  DWORD PTR [rsp+0x118],xmm8
  3ad757:	f3 44 0f 58 d3                                  	addss  xmm10,xmm3
  3ad75c:	f3 44 0f 59 e0                                  	mulss  xmm12,xmm0
  3ad761:	f3 44 0f 59 d0                                  	mulss  xmm10,xmm0
  3ad766:	f3 44 0f 11 64 24 48                            	movss  DWORD PTR [rsp+0x48],xmm12
  3ad76d:	f3 44 0f 11 54 24 40                            	movss  DWORD PTR [rsp+0x40],xmm10
  3ad774:	f3 0f 11 54 24 38                               	movss  DWORD PTR [rsp+0x38],xmm2
  3ad77a:	f3 0f 10 94 24 00 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x100]
  3ad783:	f3 0f 11 5c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm3
  3ad789:	41 0f 28 d9                                     	movaps xmm3,xmm9
  3ad78d:	f3 0f 11 64 24 28                               	movss  DWORD PTR [rsp+0x28],xmm4
  3ad793:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm5
  3ad799:	e8 52 fd ff ff                                  	call   0x3ad4f0
  3ad79e:	f3 0f 10 94 24 28 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x128]
  3ad7a7:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3ad7ab:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  3ad7af:	f3 44 0f 11 94 24 00 01 00 00                   	movss  DWORD PTR [rsp+0x100],xmm10
  3ad7b9:	41 0f 28 f8                                     	movaps xmm7,xmm8
  3ad7bd:	f3 44 0f 11 a4 24 08 01 00 00                   	movss  DWORD PTR [rsp+0x108],xmm12
  3ad7c7:	44 0f 28 ce                                     	movaps xmm9,xmm6
  3ad7cb:	f3 41 0f 5c fc                                  	subss  xmm7,xmm12
  3ad7d0:	f3 0f 10 b4 24 38 01 00 00                      	movss  xmm6,DWORD PTR [rsp+0x138]
  3ad7d9:	f3 45 0f 5c ca                                  	subss  xmm9,xmm10
  3ad7de:	0f 28 c2                                        	movaps xmm0,xmm2
  3ad7e1:	f3 0f 5c f2                                     	subss  xmm6,xmm2
  3ad7e5:	f3 41 0f 5c c0                                  	subss  xmm0,xmm8
  3ad7ea:	f3 0f 59 c9                                     	mulss  xmm1,xmm1
  3ad7ee:	f3 44 0f 10 84 24 30 01 00 00                   	movss  xmm8,DWORD PTR [rsp+0x130]
  3ad7f8:	f3 45 0f 5c c3                                  	subss  xmm8,xmm11
  3ad7fd:	f3 44 0f 10 9c 24 30 01 00 00                   	movss  xmm11,DWORD PTR [rsp+0x130]
  3ad807:	f3 45 0f 5c da                                  	subss  xmm11,xmm10
  3ad80c:	f3 44 0f 10 94 24 38 01 00 00                   	movss  xmm10,DWORD PTR [rsp+0x138]
  3ad816:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  3ad81a:	f3 45 0f 5c d4                                  	subss  xmm10,xmm12
  3ad81f:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3ad823:	e8 0c b7 01 00                                  	call   0x3c8f34
  3ad828:	44 0f 28 e0                                     	movaps xmm12,xmm0
  3ad82c:	f3 0f 59 ff                                     	mulss  xmm7,xmm7
  3ad830:	f3 45 0f 59 c9                                  	mulss  xmm9,xmm9
  3ad835:	f3 41 0f 58 f9                                  	addss  xmm7,xmm9
  3ad83a:	0f 28 c7                                        	movaps xmm0,xmm7
  3ad83d:	e8 f2 b6 01 00                                  	call   0x3c8f34
  3ad842:	f3 0f 59 f6                                     	mulss  xmm6,xmm6
  3ad846:	f3 44 0f 58 e0                                  	addss  xmm12,xmm0
  3ad84b:	f3 45 0f 59 c0                                  	mulss  xmm8,xmm8
  3ad850:	f3 41 0f 58 f0                                  	addss  xmm6,xmm8
  3ad855:	0f 28 c6                                        	movaps xmm0,xmm6
  3ad858:	e8 d7 b6 01 00                                  	call   0x3c8f34
  3ad85d:	f3 45 0f 59 d2                                  	mulss  xmm10,xmm10
  3ad862:	f3 44 0f 58 e0                                  	addss  xmm12,xmm0
  3ad867:	f3 45 0f 59 db                                  	mulss  xmm11,xmm11
  3ad86c:	f3 45 0f 58 d3                                  	addss  xmm10,xmm11
  3ad871:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3ad875:	e8 ba b6 01 00                                  	call   0x3c8f34
  3ad87a:	f3 44 0f 10 15 cd f9 ed ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffedf9cd]        # 0x28d250
  3ad883:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  3ad887:	f3 45 0f 59 e4                                  	mulss  xmm12,xmm12
  3ad88c:	f3 44 0f 5c e0                                  	subss  xmm12,xmm0
  3ad891:	83 fe 10                                        	cmp    esi,0x10
  3ad894:	0f 8e b4 fd ff ff                               	jle    0x3ad64e
  3ad89a:	eb 1e                                           	jmp    0x3ad8ba
  3ad89c:	f3 0f 10 9c 24 38 01 00 00                      	movss  xmm3,DWORD PTR [rsp+0x138]
  3ad8a5:	48 8b cf                                        	mov    rcx,rdi
  3ad8a8:	f3 0f 10 94 24 30 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x130]
  3ad8b1:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  3ad8b3:	e8 50 d6 ff ff                                  	call   0x3aaf08
  3ad8b8:	ff 03                                           	inc    DWORD PTR [rbx]
  3ad8ba:	4c 8d 9c 24 e0 00 00 00                         	lea    r11,[rsp+0xe0]
  3ad8c2:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  3ad8c6:	49 8b 73 18                                     	mov    rsi,QWORD PTR [r11+0x18]
  3ad8ca:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3ad8cf:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3ad8d4:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3ad8d9:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3ad8de:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3ad8e3:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3ad8e8:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3ad8ed:	45 0f 28 7b 80                                  	movaps xmm15,XMMWORD PTR [r11-0x80]
  3ad8f2:	49 8b e3                                        	mov    rsp,r11
  3ad8f5:	5f                                              	pop    rdi
  3ad8f6:	c3                                              	ret
  3ad8f7:	cc                                              	int3
