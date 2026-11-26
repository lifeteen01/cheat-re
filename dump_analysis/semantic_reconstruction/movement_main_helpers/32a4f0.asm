
dump_analysis/semantic_reconstruction/movement_main_helpers/32a4f0.bin:     file format binary


Disassembly of section .data:

000000000032a4f0 <.data>:
  32a4f0:	48 8b c4                                        	mov    rax,rsp
  32a4f3:	55                                              	push   rbp
  32a4f4:	53                                              	push   rbx
  32a4f5:	56                                              	push   rsi
  32a4f6:	57                                              	push   rdi
  32a4f7:	41 56                                           	push   r14
  32a4f9:	48 8d a8 28 ff ff ff                            	lea    rbp,[rax-0xd8]
  32a500:	48 81 ec b0 01 00 00                            	sub    rsp,0x1b0
  32a507:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  32a50b:	48 8b d9                                        	mov    rbx,rcx
  32a50e:	44 0f 29 40 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm8
  32a513:	49 8b c8                                        	mov    rcx,r8
  32a516:	44 0f 29 48 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm9
  32a51b:	49 8b f9                                        	mov    rdi,r9
  32a51e:	44 0f 29 50 98                                  	movaps XMMWORD PTR [rax-0x68],xmm10
  32a523:	49 8b f0                                        	mov    rsi,r8
  32a526:	44 0f 29 58 88                                  	movaps XMMWORD PTR [rax-0x78],xmm11
  32a52b:	e8 28 96 fb ff                                  	call   0x2e3b58
  32a530:	84 c0                                           	test   al,al
  32a532:	0f 85 06 02 00 00                               	jne    0x32a73e
  32a538:	f3 0f 10 17                                     	movss  xmm2,DWORD PTR [rdi]
  32a53c:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  32a541:	f2 44 0f 10 0b                                  	movsd  xmm9,QWORD PTR [rbx]
  32a546:	48 8b ce                                        	mov    rcx,rsi
  32a549:	44 8b 73 08                                     	mov    r14d,DWORD PTR [rbx+0x8]
  32a54d:	e8 1a 51 fb ff                                  	call   0x2df66c
  32a552:	f3 0f 10 57 08                                  	movss  xmm2,DWORD PTR [rdi+0x8]
  32a557:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  32a55b:	f3 0f 59 15 89 3c f6 ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffff63c89]        # 0x28e1ec
  32a563:	0f 57 db                                        	xorps  xmm3,xmm3
  32a566:	0f 57 c9                                        	xorps  xmm1,xmm1
  32a569:	0f 57 f6                                        	xorps  xmm6,xmm6
  32a56c:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  32a570:	e8 33 d6 09 00                                  	call   0x3c7ba8
  32a575:	f3 44 0f 10 57 04                               	movss  xmm10,DWORD PTR [rdi+0x4]
  32a57b:	48 8b bd 00 01 00 00                            	mov    rdi,QWORD PTR [rbp+0x100]
  32a582:	f3 44 0f 10 1d 55 3c f6 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff63c55]        # 0x28e1e0
  32a58b:	f3 0f 10 15 49 35 f6 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff63549]        # 0x28dadc
  32a593:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  32a597:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  32a59c:	e8 cb 50 fb ff                                  	call   0x2df66c
  32a5a1:	4c 8b c0                                        	mov    r8,rax
  32a5a4:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  32a5a9:	48 8b cb                                        	mov    rcx,rbx
  32a5ac:	e8 57 51 fb ff                                  	call   0x2df708
  32a5b1:	0f 57 c0                                        	xorps  xmm0,xmm0
  32a5b4:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  32a5b8:	0f 11 45 f0                                     	movups XMMWORD PTR [rbp-0x10],xmm0
  32a5bc:	0f 11 45 fc                                     	movups XMMWORD PTR [rbp-0x4],xmm0
  32a5c0:	0f 11 45 e0                                     	movups XMMWORD PTR [rbp-0x20],xmm0
  32a5c4:	e8 3b a9 fb ff                                  	call   0x2e4f04
  32a5c9:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  32a5cf:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  32a5d4:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  32a5d8:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  32a5dd:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  32a5e3:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32a5e7:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  32a5eb:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  32a5ef:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  32a5f2:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  32a5f8:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  32a5fc:	e8 9b 4c fb ff                                  	call   0x2df29c
  32a601:	f2 0f 10 07                                     	movsd  xmm0,QWORD PTR [rdi]
  32a605:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  32a609:	8b 47 08                                        	mov    eax,DWORD PTR [rdi+0x8]
  32a60c:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  32a611:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32a615:	f2 0f 11 45 80                                  	movsd  QWORD PTR [rbp-0x80],xmm0
  32a61a:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
  32a61d:	e8 5e b4 fb ff                                  	call   0x2e5a80
  32a622:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  32a627:	48 8b cf                                        	mov    rcx,rdi
  32a62a:	e8 01 59 fb ff                                  	call   0x2dff30
  32a62f:	f3 0f 10 0d a1 97 0c 00                         	movss  xmm1,DWORD PTR [rip+0xc97a1]        # 0x3f3dd8
  32a637:	0f 2f c8                                        	comiss xmm1,xmm0
  32a63a:	0f 82 85 00 00 00                               	jb     0x32a6c5
  32a640:	f2 0f 10 07                                     	movsd  xmm0,QWORD PTR [rdi]
  32a644:	8b 47 08                                        	mov    eax,DWORD PTR [rdi+0x8]
  32a647:	f2 0f 11 45 90                                  	movsd  QWORD PTR [rbp-0x70],xmm0
  32a64c:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  32a652:	89 45 98                                        	mov    DWORD PTR [rbp-0x68],eax
  32a655:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  32a659:	f2 0f 11 45 a0                                  	movsd  QWORD PTR [rbp-0x60],xmm0
  32a65e:	89 45 a8                                        	mov    DWORD PTR [rbp-0x58],eax
  32a661:	e8 06 c4 fb ff                                  	call   0x2e6a6c
  32a666:	44 8b c0                                        	mov    r8d,eax
  32a669:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  32a66f:	0f 57 db                                        	xorps  xmm3,xmm3
  32a672:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  32a676:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  32a67a:	e8 a1 7c fb ff                                  	call   0x2e2320
  32a67f:	84 c0                                           	test   al,al
  32a681:	74 42                                           	je     0x32a6c5
  32a683:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  32a689:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  32a68d:	f2 0f 11 45 b0                                  	movsd  QWORD PTR [rbp-0x50],xmm0
  32a692:	89 45 b8                                        	mov    DWORD PTR [rbp-0x48],eax
  32a695:	f2 44 0f 11 4d c0                               	movsd  QWORD PTR [rbp-0x40],xmm9
  32a69b:	44 89 75 c8                                     	mov    DWORD PTR [rbp-0x38],r14d
  32a69f:	e8 c8 c3 fb ff                                  	call   0x2e6a6c
  32a6a4:	44 8b c0                                        	mov    r8d,eax
  32a6a7:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  32a6ad:	0f 57 db                                        	xorps  xmm3,xmm3
  32a6b0:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  32a6b4:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  32a6b8:	e8 63 7c fb ff                                  	call   0x2e2320
  32a6bd:	84 c0                                           	test   al,al
  32a6bf:	0f 85 a6 00 00 00                               	jne    0x32a76b
  32a6c5:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  32a6cb:	48 8d 55 1c                                     	lea    rdx,[rbp+0x1c]
  32a6cf:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  32a6d3:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  32a6d7:	f3 0f 10 15 fd 33 f6 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff633fd]        # 0x28dadc
  32a6df:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  32a6e3:	89 43 08                                        	mov    DWORD PTR [rbx+0x8],eax
  32a6e6:	e8 81 4f fb ff                                  	call   0x2df66c
  32a6eb:	48 8b d0                                        	mov    rdx,rax
  32a6ee:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  32a6f3:	e8 d0 d4 09 00                                  	call   0x3c7bc8
  32a6f8:	41 0f 28 d2                                     	movaps xmm2,xmm10
  32a6fc:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  32a700:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  32a705:	e8 62 4f fb ff                                  	call   0x2df66c
  32a70a:	f3 0f 10 15 ca 33 f6 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff633ca]        # 0x28dadc
  32a712:	48 8d 55 34                                     	lea    rdx,[rbp+0x34]
  32a716:	48 8b c8                                        	mov    rcx,rax
  32a719:	e8 4e 4f fb ff                                  	call   0x2df66c
  32a71e:	48 8b d0                                        	mov    rdx,rax
  32a721:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  32a726:	e8 cd d4 09 00                                  	call   0x3c7bf8
  32a72b:	f3 44 0f 58 05 a8 33 f6 ff                      	addss  xmm8,DWORD PTR [rip+0xfffffffffff633a8]        # 0x28dadc
  32a734:	45 0f 2f d8                                     	comiss xmm11,xmm8
  32a738:	0f 87 4d fe ff ff                               	ja     0x32a58b
  32a73e:	32 c0                                           	xor    al,al
  32a740:	4c 8d 9c 24 b0 01 00 00                         	lea    r11,[rsp+0x1b0]
  32a748:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  32a74d:	45 0f 28 43 e0                                  	movaps xmm8,XMMWORD PTR [r11-0x20]
  32a752:	45 0f 28 4b d0                                  	movaps xmm9,XMMWORD PTR [r11-0x30]
  32a757:	45 0f 28 53 c0                                  	movaps xmm10,XMMWORD PTR [r11-0x40]
  32a75c:	45 0f 28 5b b0                                  	movaps xmm11,XMMWORD PTR [r11-0x50]
  32a761:	49 8b e3                                        	mov    rsp,r11
  32a764:	41 5e                                           	pop    r14
  32a766:	5f                                              	pop    rdi
  32a767:	5e                                              	pop    rsi
  32a768:	5b                                              	pop    rbx
  32a769:	5d                                              	pop    rbp
  32a76a:	c3                                              	ret
  32a76b:	b0 01                                           	mov    al,0x1
  32a76d:	eb d1                                           	jmp    0x32a740
