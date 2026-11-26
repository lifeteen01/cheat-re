
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000386438 <.data+0x386438>:
  386438:	48 8b c4                                        	mov    rax,rsp
  38643b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  38643f:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  386443:	55                                              	push   rbp
  386444:	56                                              	push   rsi
  386445:	57                                              	push   rdi
  386446:	41 54                                           	push   r12
  386448:	41 55                                           	push   r13
  38644a:	41 56                                           	push   r14
  38644c:	41 57                                           	push   r15
  38644e:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  386452:	48 81 ec e0 00 00 00                            	sub    rsp,0xe0
  386459:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  38645d:	48 8b fa                                        	mov    rdi,rdx
  386460:	44 0f 29 48 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm9
  386465:	4c 8b f9                                        	mov    r15,rcx
  386468:	44 0f 29 50 98                                  	movaps XMMWORD PTR [rax-0x68],xmm10
  38646d:	44 0f 29 58 88                                  	movaps XMMWORD PTR [rax-0x78],xmm11
  386472:	66 4d 0f 6e d8                                  	movq   xmm11,r8
  386477:	f2 44 0f 11 5d 97                               	movsd  QWORD PTR [rbp-0x69],xmm11
  38647d:	44 0f 29 a0 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm12
  386485:	e8 76 6d fd ff                                  	call   0x35d200
  38648a:	4c 8b e8                                        	mov    r13,rax
  38648d:	e8 12 c8 00 00                                  	call   0x392ca4
  386492:	45 33 c0                                        	xor    r8d,r8d
  386495:	48 89 45 9f                                     	mov    QWORD PTR [rbp-0x61],rax
  386499:	49 8b d7                                        	mov    rdx,r15
  38649c:	49 8b cd                                        	mov    rcx,r13
  38649f:	48 8b f0                                        	mov    rsi,rax
  3864a2:	e8 6d c1 00 00                                  	call   0x392614
  3864a7:	f2 41 0f 10 85 00 01 00 00                      	movsd  xmm0,QWORD PTR [r13+0x100]
  3864b0:	4c 8d 45 97                                     	lea    r8,[rbp-0x69]
  3864b4:	48 8d 55 8f                                     	lea    rdx,[rbp-0x71]
  3864b8:	f2 0f 11 45 8f                                  	movsd  QWORD PTR [rbp-0x71],xmm0
  3864bd:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  3864c1:	8b d8                                           	mov    ebx,eax
  3864c3:	e8 10 95 f6 ff                                  	call   0x2ef9d8
  3864c8:	4c 8b c0                                        	mov    r8,rax
  3864cb:	48 8d 55 8f                                     	lea    rdx,[rbp-0x71]
  3864cf:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3864d4:	e8 af 4e f5 ff                                  	call   0x2db388
  3864d9:	f3 0f 10 0d 7f cd f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0cd7f]        # 0x293260
  3864e1:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3864e6:	e8 95 65 ff ff                                  	call   0x37ca80
  3864eb:	45 33 c9                                        	xor    r9d,r9d
  3864ee:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3864f3:	45 33 c0                                        	xor    r8d,r8d
  3864f6:	8b d3                                           	mov    edx,ebx
  3864f8:	e8 df e3 00 00                                  	call   0x3948dc
  3864fd:	4c 8d 4d 87                                     	lea    r9,[rbp-0x79]
  386501:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  386509:	4c 8d 45 7f                                     	lea    r8,[rbp+0x7f]
  38650d:	8b d3                                           	mov    edx,ebx
  38650f:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  386514:	e8 c7 62 03 00                                  	call   0x3bc7e0
  386519:	45 32 e4                                        	xor    r12b,r12b
  38651c:	c7 45 8f 00 00 00 00                            	mov    DWORD PTR [rbp-0x71],0x0
  386523:	44 88 65 93                                     	mov    BYTE PTR [rbp-0x6d],r12b
  386527:	ba 6e 00 00 00                                  	mov    edx,0x6e
  38652c:	4c 8b 45 8f                                     	mov    r8,QWORD PTR [rbp-0x71]
  386530:	49 8b cf                                        	mov    rcx,r15
  386533:	8a d8                                           	mov    bl,al
  386535:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  386539:	e8 a6 a7 ff ff                                  	call   0x380ce4
  38653e:	4c 8b f0                                        	mov    r14,rax
  386541:	84 db                                           	test   bl,bl
  386543:	74 0d                                           	je     0x386552
  386545:	44 38 60 04                                     	cmp    BYTE PTR [rax+0x4],r12b
  386549:	41 b4 01                                        	mov    r12b,0x1
  38654c:	0f 94 c1                                        	sete   cl
  38654f:	88 48 04                                        	mov    BYTE PTR [rax+0x4],cl
  386552:	f3 0f 10 05 5a cc f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff0cc5a]        # 0x2931b4
  38655a:	0f 57 c9                                        	xorps  xmm1,xmm1
  38655d:	f3 44 0f 10 15 ee 6c f0 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff06cee]        # 0x28d254
  386566:	44 8a 48 04                                     	mov    r9b,BYTE PTR [rax+0x4]
  38656a:	41 0f 28 d2                                     	movaps xmm2,xmm10
  38656e:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  386574:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  386578:	e8 cb f8 fa ff                                  	call   0x335e48
  38657d:	f3 41 0f 11 06                                  	movss  DWORD PTR [r14],xmm0
  386582:	48 8d 4d af                                     	lea    rcx,[rbp-0x51]
  386586:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [rsi]
  38658a:	f3 0f 10 5f 08                                  	movss  xmm3,DWORD PTR [rdi+0x8]
  38658f:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  386594:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  386598:	49 8b 9d 98 02 00 00                            	mov    rbx,QWORD PTR [r13+0x298]
  38659f:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3865a5:	e8 a2 e2 f4 ff                                  	call   0x2d484c
  3865aa:	48 8b c8                                        	mov    rcx,rax
  3865ad:	e8 5a 92 f6 ff                                  	call   0x2ef80c
  3865b2:	f3 44 0f 10 0d 79 cb f0 ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffff0cb79]        # 0x293134
  3865bb:	4c 8d 44 24 38                                  	lea    r8,[rsp+0x38]
  3865c0:	44 8b c8                                        	mov    r9d,eax
  3865c3:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3865cb:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  3865d0:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  3865d7:	48 8b cb                                        	mov    rcx,rbx
  3865da:	e8 65 ac 01 00                                  	call   0x3a1244
  3865df:	48 8b 05 42 f5 07 00                            	mov    rax,QWORD PTR [rip+0x7f542]        # 0x405b28
  3865e6:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  3865ea:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  3865f1:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3865f5:	f3 0f 5c 47 0c                                  	subss  xmm0,DWORD PTR [rdi+0xc]
  3865fa:	41 0f 28 da                                     	movaps xmm3,xmm10
  3865fe:	41 0f 28 d2                                     	movaps xmm2,xmm10
  386602:	41 0f 28 ca                                     	movaps xmm1,xmm10
  386606:	f3 0f 59 80 d0 37 00 00                         	mulss  xmm0,DWORD PTR [rax+0x37d0]
  38660e:	f3 0f 59 05 9a db f0 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff0db9a]        # 0x2941b0
  386616:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  38661c:	e8 2b e2 f4 ff                                  	call   0x2d484c
  386621:	48 8b c8                                        	mov    rcx,rax
  386624:	e8 e3 91 f6 ff                                  	call   0x2ef80c
  386629:	48 8d 55 a7                                     	lea    rdx,[rbp-0x59]
  38662d:	8b f8                                           	mov    edi,eax
  38662f:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  386634:	e8 bb 22 ff ff                                  	call   0x3788f4
  386639:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  38663e:	48 8b d8                                        	mov    rbx,rax
  386641:	e8 2a 23 ff ff                                  	call   0x378970
  386646:	0f 28 f0                                        	movaps xmm6,xmm0
  386649:	48 8d 55 cf                                     	lea    rdx,[rbp-0x31]
  38664d:	f3 0f 5e 35 33 cb f0 ff                         	divss  xmm6,DWORD PTR [rip+0xfffffffffff0cb33]        # 0x293188
  386655:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  38665a:	f3 0f 58 33                                     	addss  xmm6,DWORD PTR [rbx]
  38665e:	e8 91 22 ff ff                                  	call   0x3788f4
  386663:	0f 28 ce                                        	movaps xmm1,xmm6
  386666:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  38666a:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  38666f:	e8 cc 5c f4 ff                                  	call   0x2cc340
  386674:	48 8d 55 af                                     	lea    rdx,[rbp-0x51]
  386678:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  38667d:	e8 72 22 ff ff                                  	call   0x3788f4
  386682:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  386687:	48 8b d8                                        	mov    rbx,rax
  38668a:	e8 e1 22 ff ff                                  	call   0x378970
  38668f:	f3 0f 5e 05 f1 ca f0 ff                         	divss  xmm0,DWORD PTR [rip+0xfffffffffff0caf1]        # 0x293188
  386697:	48 8d 4d 8f                                     	lea    rcx,[rbp-0x71]
  38669b:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  38669f:	f3 0f 10 54 24 34                               	movss  xmm2,DWORD PTR [rsp+0x34]
  3866a5:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3866a9:	e8 92 5c f4 ff                                  	call   0x2cc340
  3866ae:	44 8b cf                                        	mov    r9d,edi
  3866b1:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3866b9:	4c 8d 45 97                                     	lea    r8,[rbp-0x69]
  3866bd:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  3866c4:	48 8d 55 8f                                     	lea    rdx,[rbp-0x71]
  3866c8:	48 8b ce                                        	mov    rcx,rsi
  3866cb:	e8 74 ab 01 00                                  	call   0x3a1244
  3866d0:	48 8b 75 6f                                     	mov    rsi,QWORD PTR [rbp+0x6f]
  3866d4:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3866d8:	49 8b bd 98 02 00 00                            	mov    rdi,QWORD PTR [r13+0x298]
  3866df:	f3 0f 5c 46 0c                                  	subss  xmm0,DWORD PTR [rsi+0xc]
  3866e4:	48 8b 05 3d f4 07 00                            	mov    rax,QWORD PTR [rip+0x7f43d]        # 0x405b28
  3866eb:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  3866ef:	41 0f 28 da                                     	movaps xmm3,xmm10
  3866f3:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3866f7:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3866fb:	f3 0f 59 80 d0 37 00 00                         	mulss  xmm0,DWORD PTR [rax+0x37d0]
  386703:	f3 0f 59 05 a5 da f0 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff0daa5]        # 0x2941b0
  38670b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  386711:	e8 36 e1 f4 ff                                  	call   0x2d484c
  386716:	48 8b c8                                        	mov    rcx,rax
  386719:	e8 ee 90 f6 ff                                  	call   0x2ef80c
  38671e:	f3 44 0f 5e 1d 31 ca f0 ff                      	divss  xmm11,DWORD PTR [rip+0xfffffffffff0ca31]        # 0x293158
  386727:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  38672b:	8b d8                                           	mov    ebx,eax
  38672d:	f3 0f 10 55 83                                  	movss  xmm2,DWORD PTR [rbp-0x7d]
  386732:	41 0f 28 cb                                     	movaps xmm1,xmm11
  386736:	f3 0f 58 4c 24 30                               	addss  xmm1,DWORD PTR [rsp+0x30]
  38673c:	e8 ff 5b f4 ff                                  	call   0x2cc340
  386741:	48 8d 55 af                                     	lea    rdx,[rbp-0x51]
  386745:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  38674a:	e8 a5 21 ff ff                                  	call   0x3788f4
  38674f:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [rsp+0x30]
  386755:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  386759:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  38675e:	e8 dd 5b f4 ff                                  	call   0x2cc340
  386763:	44 8b cb                                        	mov    r9d,ebx
  386766:	c7 44 24 28 40 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x40
  38676e:	4c 8d 45 6f                                     	lea    r8,[rbp+0x6f]
  386772:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  386779:	48 8d 55 97                                     	lea    rdx,[rbp-0x69]
  38677d:	48 8b cf                                        	mov    rcx,rdi
  386780:	e8 bf aa 01 00                                  	call   0x3a1244
  386785:	48 8b 05 9c f3 07 00                            	mov    rax,QWORD PTR [rip+0x7f39c]        # 0x405b28
  38678c:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  386790:	49 8b bd 98 02 00 00                            	mov    rdi,QWORD PTR [r13+0x298]
  386797:	41 0f 28 c2                                     	movaps xmm0,xmm10
  38679b:	f3 0f 5c 46 0c                                  	subss  xmm0,DWORD PTR [rsi+0xc]
  3867a0:	41 0f 28 da                                     	movaps xmm3,xmm10
  3867a4:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3867a8:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3867ac:	f3 0f 59 80 d0 37 00 00                         	mulss  xmm0,DWORD PTR [rax+0x37d0]
  3867b4:	f3 0f 59 05 f4 d9 f0 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff0d9f4]        # 0x2941b0
  3867bc:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3867c2:	e8 85 e0 f4 ff                                  	call   0x2d484c
  3867c7:	48 8b c8                                        	mov    rcx,rax
  3867ca:	e8 3d 90 f6 ff                                  	call   0x2ef80c
  3867cf:	48 8d 55 af                                     	lea    rdx,[rbp-0x51]
  3867d3:	8b d8                                           	mov    ebx,eax
  3867d5:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3867da:	e8 15 21 ff ff                                  	call   0x3788f4
  3867df:	f3 0f 10 4c 24 38                               	movss  xmm1,DWORD PTR [rsp+0x38]
  3867e5:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  3867e9:	f3 41 0f 5c cb                                  	subss  xmm1,xmm11
  3867ee:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3867f3:	e8 48 5b f4 ff                                  	call   0x2cc340
  3867f8:	44 8b cb                                        	mov    r9d,ebx
  3867fb:	c7 44 24 28 80 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x80
  386803:	4c 8d 44 24 38                                  	lea    r8,[rsp+0x38]
  386808:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  38680f:	48 8d 55 6f                                     	lea    rdx,[rbp+0x6f]
  386813:	48 8b cf                                        	mov    rcx,rdi
  386816:	e8 29 aa 01 00                                  	call   0x3a1244
  38681b:	f3 41 0f 10 06                                  	movss  xmm0,DWORD PTR [r14]
  386820:	0f 2f 05 65 c8 f0 ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffff0c865]        # 0x29308c
  386827:	0f 86 4d 01 00 00                               	jbe    0x38697a
  38682d:	41 0f 28 ca                                     	movaps xmm1,xmm10
  386831:	b9 08 00 00 00                                  	mov    ecx,0x8
  386836:	e8 5d ba 00 00                                  	call   0x392298
  38683b:	bb 03 00 00 00                                  	mov    ebx,0x3
  386840:	8b d0                                           	mov    edx,eax
  386842:	8b cb                                           	mov    ecx,ebx
  386844:	e8 a3 23 01 00                                  	call   0x398bec
  386849:	f3 41 0f 10 0e                                  	movss  xmm1,DWORD PTR [r14]
  38684e:	33 c9                                           	xor    ecx,ecx
  386850:	e8 73 24 01 00                                  	call   0x398cc8
  386855:	48 8b 45 9f                                     	mov    rax,QWORD PTR [rbp-0x61]
  386859:	8b cb                                           	mov    ecx,ebx
  38685b:	f3 0f 10 48 44                                  	movss  xmm1,DWORD PTR [rax+0x44]
  386860:	e8 63 24 01 00                                  	call   0x398cc8
  386865:	f3 0f 10 0d 7b 26 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec267b]        # 0x248ee8
  38686d:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  386871:	f3 0f 10 35 a3 72 f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff072a3]        # 0x28db1c
  386879:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  38687d:	0f 28 d1                                        	movaps xmm2,xmm1
  386880:	e8 bb 5a f4 ff                                  	call   0x2cc340
  386885:	48 8d 55 6f                                     	lea    rdx,[rbp+0x6f]
  386889:	8d 4b 0b                                        	lea    ecx,[rbx+0xb]
  38688c:	e8 cf 23 01 00                                  	call   0x398c60
  386891:	f3 0f 10 0d 4f 26 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec264f]        # 0x248ee8
  386899:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  38689d:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3868a1:	0f 28 d1                                        	movaps xmm2,xmm1
  3868a4:	e8 97 5a f4 ff                                  	call   0x2cc340
  3868a9:	48 8d 55 6f                                     	lea    rdx,[rbp+0x6f]
  3868ad:	8d 4b ff                                        	lea    ecx,[rbx-0x1]
  3868b0:	e8 ab 23 01 00                                  	call   0x398c60
  3868b5:	33 d2                                           	xor    edx,edx
  3868b7:	44 8d 43 6c                                     	lea    r8d,[rbx+0x6c]
  3868bb:	49 8b cf                                        	mov    rcx,r15
  3868be:	e8 e1 66 00 00                                  	call   0x38cfa4
  3868c3:	f3 0f 10 1d 1d 26 ec ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffec261d]        # 0x248ee8
  3868cb:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  3868cf:	f3 45 0f 5c 16                                  	subss  xmm10,DWORD PTR [r14]
  3868d4:	f3 0f 10 4c 24 38                               	movss  xmm1,DWORD PTR [rsp+0x38]
  3868da:	0f 28 c3                                        	movaps xmm0,xmm3
  3868dd:	0f 28 d3                                        	movaps xmm2,xmm3
  3868e0:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3868e4:	f3 0f 59 15 34 72 f0 ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffff07234]        # 0x28db20
  3868ec:	f3 0f 58 45 83                                  	addss  xmm0,DWORD PTR [rbp-0x7d]
  3868f1:	f3 0f 59 1d 3f c9 f0 ff                         	mulss  xmm3,DWORD PTR [rip+0xfffffffffff0c93f]        # 0x293238
  3868f9:	f3 41 0f 59 d2                                  	mulss  xmm2,xmm10
  3868fe:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  386902:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  386906:	e8 35 5a f4 ff                                  	call   0x2cc340
  38690b:	33 d2                                           	xor    edx,edx
  38690d:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  386911:	e8 0a 52 01 00                                  	call   0x39bb20
  386916:	e8 e5 68 fd ff                                  	call   0x35d200
  38691b:	48 8b c8                                        	mov    rcx,rax
  38691e:	e8 3d 88 00 00                                  	call   0x38f160
  386923:	e8 d8 68 fd ff                                  	call   0x35d200
  386928:	48 8b c8                                        	mov    rcx,rax
  38692b:	e8 8c 87 00 00                                  	call   0x38f0bc
  386930:	33 c9                                           	xor    ecx,ecx
  386932:	e8 b5 de 00 00                                  	call   0x3947ec
  386937:	84 c0                                           	test   al,al
  386939:	75 18                                           	jne    0x386953
  38693b:	33 d2                                           	xor    edx,edx
  38693d:	33 c9                                           	xor    ecx,ecx
  38693f:	e8 a0 da 00 00                                  	call   0x3943e4
  386944:	84 c0                                           	test   al,al
  386946:	74 0b                                           	je     0x386953
  386948:	80 7d 7f 00                                     	cmp    BYTE PTR [rbp+0x7f],0x0
  38694c:	75 05                                           	jne    0x386953
  38694e:	41 c6 46 04 00                                  	mov    BYTE PTR [r14+0x4],0x0
  386953:	48 8b d6                                        	mov    rdx,rsi
  386956:	49 8b cf                                        	mov    rcx,r15
  386959:	e8 22 2d ff ff                                  	call   0x379680
  38695e:	44 8a e0                                        	mov    r12b,al
  386961:	e8 2e a0 00 00                                  	call   0x390994
  386966:	b9 04 00 00 00                                  	mov    ecx,0x4
  38696b:	e8 fc 1f 01 00                                  	call   0x39896c
  386970:	b9 01 00 00 00                                  	mov    ecx,0x1
  386975:	e8 92 1f 01 00                                  	call   0x39890c
  38697a:	4c 8d 9c 24 e0 00 00 00                         	lea    r11,[rsp+0xe0]
  386982:	41 8a c4                                        	mov    al,r12b
  386985:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  386989:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  38698e:	45 0f 28 4b e0                                  	movaps xmm9,XMMWORD PTR [r11-0x20]
  386993:	45 0f 28 53 d0                                  	movaps xmm10,XMMWORD PTR [r11-0x30]
  386998:	45 0f 28 5b c0                                  	movaps xmm11,XMMWORD PTR [r11-0x40]
  38699d:	45 0f 28 63 b0                                  	movaps xmm12,XMMWORD PTR [r11-0x50]
  3869a2:	49 8b e3                                        	mov    rsp,r11
  3869a5:	41 5f                                           	pop    r15
  3869a7:	41 5e                                           	pop    r14
  3869a9:	41 5d                                           	pop    r13
  3869ab:	41 5c                                           	pop    r12
  3869ad:	5f                                              	pop    rdi
  3869ae:	5e                                              	pop    rsi
  3869af:	5d                                              	pop    rbp
  3869b0:	c3                                              	ret
