
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003853b0 <.data+0x3853b0>:
  3853b0:	48 8b c4                                        	mov    rax,rsp
  3853b3:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3853b7:	55                                              	push   rbp
  3853b8:	53                                              	push   rbx
  3853b9:	56                                              	push   rsi
  3853ba:	57                                              	push   rdi
  3853bb:	41 54                                           	push   r12
  3853bd:	41 55                                           	push   r13
  3853bf:	41 56                                           	push   r14
  3853c1:	41 57                                           	push   r15
  3853c3:	48 8d 6c 24 88                                  	lea    rbp,[rsp-0x78]
  3853c8:	48 81 ec 78 01 00 00                            	sub    rsp,0x178
  3853cf:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3853d3:	4c 8b f2                                        	mov    r14,rdx
  3853d6:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3853da:	4c 8b f9                                        	mov    r15,rcx
  3853dd:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3853e2:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  3853ea:	e8 11 7e fd ff                                  	call   0x35d200
  3853ef:	f3 0f 10 0d f1 3a ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec3af1]        # 0x248ee8
  3853f7:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  3853fe:	48 8b 3d 23 07 08 00                            	mov    rdi,QWORD PTR [rip+0x80723]        # 0x405b28
  385405:	0f 28 d1                                        	movaps xmm2,xmm1
  385408:	f3 0f 59 15 84 dd f0 ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffff0dd84]        # 0x293194
  385410:	4c 8b e8                                        	mov    r13,rax
  385413:	f3 0f 59 0d 01 87 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff08701]        # 0x28db1c
  38541b:	e8 20 6f f4 ff                                  	call   0x2cc340
  385420:	48 8d 95 c8 00 00 00                            	lea    rdx,[rbp+0xc8]
  385427:	b9 0b 00 00 00                                  	mov    ecx,0xb
  38542c:	e8 2f 38 01 00                                  	call   0x398c60
  385431:	45 33 c0                                        	xor    r8d,r8d
  385434:	49 8b d7                                        	mov    rdx,r15
  385437:	49 8b cd                                        	mov    rcx,r13
  38543a:	e8 d5 d1 00 00                                  	call   0x392614
  38543f:	41 8b 16                                        	mov    edx,DWORD PTR [r14]
  385442:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  385446:	8b f0                                           	mov    esi,eax
  385448:	e8 03 7f fd ff                                  	call   0x35d350
  38544d:	39 b7 68 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f68],esi
  385453:	75 1d                                           	jne    0x385472
  385455:	48 8d 95 c8 00 00 00                            	lea    rdx,[rbp+0xc8]
  38545c:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  385463:	e8 40 da ff ff                                  	call   0x382ea8
  385468:	48 8b c8                                        	mov    rcx,rax
  38546b:	e8 a8 4b ff ff                                  	call   0x37a018
  385470:	eb 09                                           	jmp    0x38547b
  385472:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  385476:	e8 71 83 f4 ff                                  	call   0x2cd7ec
  38547b:	f3 0f 10 15 25 dd f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff0dd25]        # 0x2931a8
  385483:	48 8d 8d d0 00 00 00                            	lea    rcx,[rbp+0xd0]
  38548a:	4c 8b c8                                        	mov    r9,rax
  38548d:	ba 01 00 00 00                                  	mov    edx,0x1
  385492:	e8 1d 49 00 00                                  	call   0x389db4
  385497:	33 d2                                           	xor    edx,edx
  385499:	48 c7 45 90 00 00 00 00                         	mov    QWORD PTR [rbp-0x70],0x0
  3854a1:	48 8d 4d 9c                                     	lea    rcx,[rbp-0x64]
  3854a5:	c7 45 98 00 00 00 00                            	mov    DWORD PTR [rbp-0x68],0x0
  3854ac:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  3854b0:	e8 1f 10 fb ff                                  	call   0x3364d4
  3854b5:	f3 0f 10 4d 94                                  	movss  xmm1,DWORD PTR [rbp-0x6c]
  3854ba:	4c 8d 45 c0                                     	lea    r8,[rbp-0x40]
  3854be:	f3 0f 10 45 90                                  	movss  xmm0,DWORD PTR [rbp-0x70]
  3854c3:	ba 06 00 00 00                                  	mov    edx,0x6
  3854c8:	f3 0f 11 4d c4                                  	movss  DWORD PTR [rbp-0x3c],xmm1
  3854cd:	49 8b cf                                        	mov    rcx,r15
  3854d0:	0f 10 4d 9c                                     	movups xmm1,XMMWORD PTR [rbp-0x64]
  3854d4:	c7 45 dc 00 00 00 00                            	mov    DWORD PTR [rbp-0x24],0x0
  3854db:	f3 0f 11 45 c0                                  	movss  DWORD PTR [rbp-0x40],xmm0
  3854e0:	f3 0f 10 45 98                                  	movss  xmm0,DWORD PTR [rbp-0x68]
  3854e5:	f3 0f 7f 4d cc                                  	movdqu XMMWORD PTR [rbp-0x34],xmm1
  3854ea:	f3 0f 11 45 c8                                  	movss  DWORD PTR [rbp-0x38],xmm0
  3854ef:	e8 50 b6 ff ff                                  	call   0x380b44
  3854f4:	4c 8b e0                                        	mov    r12,rax
  3854f7:	48 89 85 d8 00 00 00                            	mov    QWORD PTR [rbp+0xd8],rax
  3854fe:	e8 a9 d1 00 00                                  	call   0x3926ac
  385503:	f3 0f 10 8d d0 00 00 00                         	movss  xmm1,DWORD PTR [rbp+0xd0]
  38550b:	f3 41 0f 10 44 24 1c                            	movss  xmm0,DWORD PTR [r12+0x1c]
  385512:	f3 0f 10 50 10                                  	movss  xmm2,DWORD PTR [rax+0x10]
  385517:	f3 0f 59 15 a1 dc f0 ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffff0dca1]        # 0x2931c0
  38551f:	e8 38 01 fb ff                                  	call   0x33565c
  385524:	f3 41 0f 11 44 24 1c                            	movss  DWORD PTR [r12+0x1c],xmm0
  38552b:	e8 40 9e 00 00                                  	call   0x38f370
  385530:	f3 0f 10 97 10 38 00 00                         	movss  xmm2,DWORD PTR [rdi+0x3810]
  385538:	48 8d 87 0c 38 00 00                            	lea    rax,[rdi+0x380c]
  38553f:	f3 0f 58 d2                                     	addss  xmm2,xmm2
  385543:	48 89 45 b0                                     	mov    QWORD PTR [rbp-0x50],rax
  385547:	0f 28 c8                                        	movaps xmm1,xmm0
  38554a:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  385551:	49 8d 9d 00 01 00 00                            	lea    rbx,[r13+0x100]
  385558:	f3 0f 58 95 d4 00 00 00                         	addss  xmm2,DWORD PTR [rbp+0xd4]
  385560:	e8 db 6d f4 ff                                  	call   0x2cc340
  385565:	4c 8b c0                                        	mov    r8,rax
  385568:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  38556d:	48 8b d3                                        	mov    rdx,rbx
  385570:	e8 63 a4 f6 ff                                  	call   0x2ef9d8
  385575:	4c 8b c0                                        	mov    r8,rax
  385578:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  38557d:	48 8b d3                                        	mov    rdx,rbx
  385580:	e8 03 5e f5 ff                                  	call   0x2db388
  385585:	f3 0f 10 05 d3 dc f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff0dcd3]        # 0x293260
  38558d:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  385594:	41 b1 01                                        	mov    r9b,0x1
  385597:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  38559d:	45 33 c0                                        	xor    r8d,r8d
  3855a0:	49 8b d7                                        	mov    rdx,r15
  3855a3:	e8 f4 a1 00 00                                  	call   0x38f79c
  3855a8:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3855ac:	41 0f 2f c1                                     	comiss xmm0,xmm9
  3855b0:	76 15                                           	jbe    0x3855c7
  3855b2:	f3 0f 10 87 0c 38 00 00                         	movss  xmm0,DWORD PTR [rdi+0x380c]
  3855ba:	f3 0f 58 c0                                     	addss  xmm0,xmm0
  3855be:	f3 41 0f 58 44 24 1c                            	addss  xmm0,DWORD PTR [r12+0x1c]
  3855c5:	eb 05                                           	jmp    0x3855cc
  3855c7:	e8 a4 9d 00 00                                  	call   0x38f370
  3855cc:	f3 0f 10 97 10 38 00 00                         	movss  xmm2,DWORD PTR [rdi+0x3810]
  3855d4:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3855d9:	f3 0f 58 d2                                     	addss  xmm2,xmm2
  3855dd:	0f 28 c8                                        	movaps xmm1,xmm0
  3855e0:	f3 0f 58 95 d4 00 00 00                         	addss  xmm2,DWORD PTR [rbp+0xd4]
  3855e8:	e8 53 6d f4 ff                                  	call   0x2cc340
  3855ed:	4c 8b c0                                        	mov    r8,rax
  3855f0:	48 8d 54 24 68                                  	lea    rdx,[rsp+0x68]
  3855f5:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3855f9:	e8 e6 11 fb ff                                  	call   0x3367e4
  3855fe:	48 8b d0                                        	mov    rdx,rax
  385601:	4c 8d 44 24 68                                  	lea    r8,[rsp+0x68]
  385606:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  38560b:	e8 78 5d f5 ff                                  	call   0x2db388
  385610:	f3 0f 10 8f 10 38 00 00                         	movss  xmm1,DWORD PTR [rdi+0x3810]
  385618:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  38561d:	e8 5e 74 ff ff                                  	call   0x37ca80
  385622:	45 33 c9                                        	xor    r9d,r9d
  385625:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  38562a:	8b d6                                           	mov    edx,esi
  38562c:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  385631:	e8 a6 f2 00 00                                  	call   0x3948dc
  385636:	8b d6                                           	mov    edx,esi
  385638:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  38563d:	e8 d2 f3 00 00                                  	call   0x394a14
  385642:	48 8d 9f 48 37 00 00                            	lea    rbx,[rdi+0x3748]
  385649:	44 8a f8                                        	mov    r15b,al
  38564c:	84 c0                                           	test   al,al
  38564e:	74 4c                                           	je     0x38569c
  385650:	80 3b 00                                        	cmp    BYTE PTR [rbx],0x0
  385653:	74 47                                           	je     0x38569c
  385655:	39 b7 68 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f68],esi
  38565b:	74 29                                           	je     0x385686
  38565d:	33 c0                                           	xor    eax,eax
  38565f:	48 8d 8f 30 0b 00 00                            	lea    rcx,[rdi+0xb30]
  385666:	89 87 10 0e 00 00                               	mov    DWORD PTR [rdi+0xe10],eax
  38566c:	33 d2                                           	xor    edx,edx
  38566e:	41 b8 8c 02 00 00                               	mov    r8d,0x28c
  385674:	88 87 14 0e 00 00                               	mov    BYTE PTR [rdi+0xe14],al
  38567a:	e8 f1 36 04 00                                  	call   0x3c8d70
  38567f:	41 c7 06 3a 00 00 00                            	mov    DWORD PTR [r14],0x3a
  385686:	49 8b d5                                        	mov    rdx,r13
  385689:	8b ce                                           	mov    ecx,esi
  38568b:	e8 3c 5a 01 00                                  	call   0x39b0cc
  385690:	33 d2                                           	xor    edx,edx
  385692:	49 8b cd                                        	mov    rcx,r13
  385695:	e8 62 c8 00 00                                  	call   0x391efc
  38569a:	eb 1e                                           	jmp    0x3856ba
  38569c:	45 84 ff                                        	test   r15b,r15b
  38569f:	75 19                                           	jne    0x3856ba
  3856a1:	48 8d 9f 48 37 00 00                            	lea    rbx,[rdi+0x3748]
  3856a8:	44 38 3b                                        	cmp    BYTE PTR [rbx],r15b
  3856ab:	74 0d                                           	je     0x3856ba
  3856ad:	39 b7 68 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f68],esi
  3856b3:	75 05                                           	jne    0x3856ba
  3856b5:	e8 be a9 00 00                                  	call   0x390078
  3856ba:	45 32 e4                                        	xor    r12b,r12b
  3856bd:	39 b7 68 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f68],esi
  3856c3:	0f 85 b6 00 00 00                               	jne    0x38577f
  3856c9:	44 38 23                                        	cmp    BYTE PTR [rbx],r12b
  3856cc:	74 14                                           	je     0x3856e2
  3856ce:	39 b7 98 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f98],esi
  3856d4:	75 0c                                           	jne    0x3856e2
  3856d6:	41 c7 06 2b 02 00 00                            	mov    DWORD PTR [r14],0x22b
  3856dd:	41 b4 01                                        	mov    r12b,0x1
  3856e0:	eb 17                                           	jmp    0x3856f9
  3856e2:	b2 01                                           	mov    dl,0x1
  3856e4:	b9 0e 02 00 00                                  	mov    ecx,0x20e
  3856e9:	e8 f2 d9 ff ff                                  	call   0x3830e0
  3856ee:	84 c0                                           	test   al,al
  3856f0:	74 0e                                           	je     0x385700
  3856f2:	41 c7 06 e7 03 00 00                            	mov    DWORD PTR [r14],0x3e7
  3856f9:	e8 7a a9 00 00                                  	call   0x390078
  3856fe:	eb 7f                                           	jmp    0x38577f
  385700:	33 db                                           	xor    ebx,ebx
  385702:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
  385707:	03 c3                                           	add    eax,ebx
  385709:	a9 fc ff ff ff                                  	test   eax,0xfffffffc
  38570e:	75 05                                           	jne    0x385715
  385710:	83 fb 03                                        	cmp    ebx,0x3
  385713:	75 0d                                           	jne    0x385722
  385715:	33 d2                                           	xor    edx,edx
  385717:	8b cb                                           	mov    ecx,ebx
  385719:	e8 2e 07 f6 ff                                  	call   0x2e5e4c
  38571e:	84 c0                                           	test   al,al
  385720:	75 52                                           	jne    0x385774
  385722:	ff c3                                           	inc    ebx
  385724:	81 fb 3f 01 00 00                               	cmp    ebx,0x13f
  38572a:	7e d6                                           	jle    0x385702
  38572c:	bb 2c 02 00 00                                  	mov    ebx,0x22c
  385731:	33 d2                                           	xor    edx,edx
  385733:	8b cb                                           	mov    ecx,ebx
  385735:	e8 12 07 f6 ff                                  	call   0x2e5e4c
  38573a:	84 c0                                           	test   al,al
  38573c:	75 36                                           	jne    0x385774
  38573e:	bb 2d 02 00 00                                  	mov    ebx,0x22d
  385743:	33 d2                                           	xor    edx,edx
  385745:	8b cb                                           	mov    ecx,ebx
  385747:	e8 00 07 f6 ff                                  	call   0x2e5e4c
  38574c:	84 c0                                           	test   al,al
  38574e:	75 24                                           	jne    0x385774
  385750:	bb 2e 02 00 00                                  	mov    ebx,0x22e
  385755:	33 d2                                           	xor    edx,edx
  385757:	8b cb                                           	mov    ecx,ebx
  385759:	e8 ee 06 f6 ff                                  	call   0x2e5e4c
  38575e:	84 c0                                           	test   al,al
  385760:	75 12                                           	jne    0x385774
  385762:	bb 2f 02 00 00                                  	mov    ebx,0x22f
  385767:	33 d2                                           	xor    edx,edx
  385769:	8b cb                                           	mov    ecx,ebx
  38576b:	e8 dc 06 f6 ff                                  	call   0x2e5e4c
  385770:	84 c0                                           	test   al,al
  385772:	74 0b                                           	je     0x38577f
  385774:	41 89 1e                                        	mov    DWORD PTR [r14],ebx
  385777:	e8 fc a8 00 00                                  	call   0x390078
  38577c:	41 b4 01                                        	mov    r12b,0x1
  38577f:	48 8d 95 c8 00 00 00                            	lea    rdx,[rbp+0xc8]
  385786:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  38578d:	e8 9a d7 ff ff                                  	call   0x382f2c
  385792:	48 8b c8                                        	mov    rcx,rax
  385795:	e8 72 08 ff ff                                  	call   0x37600c
  38579a:	48 8b d0                                        	mov    rdx,rax
  38579d:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3857a1:	e8 26 6b f4 ff                                  	call   0x2cc2cc
  3857a6:	41 81 3e e7 03 00 00                            	cmp    DWORD PTR [r14],0x3e7
  3857ad:	8b 87 68 3f 00 00                               	mov    eax,DWORD PTR [rdi+0x3f68]
  3857b3:	74 13                                           	je     0x3857c8
  3857b5:	3b c6                                           	cmp    eax,esi
  3857b7:	74 13                                           	je     0x3857cc
  3857b9:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3857bd:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3857c1:	e8 5e f4 f4 ff                                  	call   0x2d4c24
  3857c6:	eb 2b                                           	jmp    0x3857f3
  3857c8:	3b c6                                           	cmp    eax,esi
  3857ca:	75 27                                           	jne    0x3857f3
  3857cc:	48 8d 95 c8 00 00 00                            	lea    rdx,[rbp+0xc8]
  3857d3:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  3857da:	e8 c9 d6 ff ff                                  	call   0x382ea8
  3857df:	48 8b c8                                        	mov    rcx,rax
  3857e2:	e8 31 48 ff ff                                  	call   0x37a018
  3857e7:	48 8b d0                                        	mov    rdx,rax
  3857ea:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3857ee:	e8 75 f4 f4 ff                                  	call   0x2d4c68
  3857f3:	39 b7 68 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f68],esi
  3857f9:	74 0a                                           	je     0x385805
  3857fb:	45 84 ff                                        	test   r15b,r15b
  3857fe:	75 05                                           	jne    0x385805
  385800:	45 33 c9                                        	xor    r9d,r9d
  385803:	eb 03                                           	jmp    0x385808
  385805:	41 b1 01                                        	mov    r9b,0x1
  385808:	4c 8b b5 d8 00 00 00                            	mov    r14,QWORD PTR [rbp+0xd8]
  38580f:	0f 57 c9                                        	xorps  xmm1,xmm1
  385812:	f3 44 0f 10 05 39 7a f0 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff07a39]        # 0x28d254
  38581b:	f3 0f 10 35 91 d9 f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff0d991]        # 0x2931b4
  385823:	41 0f 28 d0                                     	movaps xmm2,xmm8
  385827:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  38582d:	f3 41 0f 10 06                                  	movss  xmm0,DWORD PTR [r14]
  385832:	e8 11 06 fb ff                                  	call   0x335e48
  385837:	f3 41 0f 11 06                                  	movss  DWORD PTR [r14],xmm0
  38583c:	41 0f 28 d0                                     	movaps xmm2,xmm8
  385840:	39 b7 68 3f 00 00                               	cmp    DWORD PTR [rdi+0x3f68],esi
  385846:	0f 57 c9                                        	xorps  xmm1,xmm1
  385849:	f3 41 0f 10 46 08                               	movss  xmm0,DWORD PTR [r14+0x8]
  38584f:	41 0f 94 c1                                     	sete   r9b
  385853:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  385859:	e8 ea 05 fb ff                                  	call   0x335e48
  38585e:	f3 41 0f 11 46 08                               	movss  DWORD PTR [r14+0x8],xmm0
  385864:	45 8a cf                                        	mov    r9b,r15b
  385867:	f3 41 0f 10 46 04                               	movss  xmm0,DWORD PTR [r14+0x4]
  38586d:	41 0f 28 d0                                     	movaps xmm2,xmm8
  385871:	0f 57 c9                                        	xorps  xmm1,xmm1
  385874:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  38587a:	e8 c9 05 fb ff                                  	call   0x335e48
  38587f:	f3 41 0f 10 36                                  	movss  xmm6,DWORD PTR [r14]
  385884:	41 0f 28 c8                                     	movaps xmm1,xmm8
  385888:	b9 01 00 00 00                                  	mov    ecx,0x1
  38588d:	f3 41 0f 11 46 04                               	movss  DWORD PTR [r14+0x4],xmm0
  385893:	e8 00 ca 00 00                                  	call   0x392298
  385898:	8b d0                                           	mov    edx,eax
  38589a:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  38589e:	e8 31 0c fb ff                                  	call   0x3364d4
  3858a3:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3858a7:	b9 02 00 00 00                                  	mov    ecx,0x2
  3858ac:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3858af:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3858b4:	e8 df c9 00 00                                  	call   0x392298
  3858b9:	8b d0                                           	mov    edx,eax
  3858bb:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3858bf:	e8 10 0c fb ff                                  	call   0x3364d4
  3858c4:	0f 28 de                                        	movaps xmm3,xmm6
  3858c7:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  3858cb:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3858d0:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3858d4:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3858d7:	4d 8d 7e 0c                                     	lea    r15,[r14+0xc]
  3858db:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3858e1:	e8 be 3c ff ff                                  	call   0x3795a4
  3858e6:	0f 57 d2                                        	xorps  xmm2,xmm2
  3858e9:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  3858f0:	0f 57 c9                                        	xorps  xmm1,xmm1
  3858f3:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3858f6:	f3 41 0f 7f 07                                  	movdqu XMMWORD PTR [r15],xmm0
  3858fb:	49 8b 9d 98 02 00 00                            	mov    rbx,QWORD PTR [r13+0x298]
  385902:	e8 39 6a f4 ff                                  	call   0x2cc340
  385907:	f3 0f 10 35 d9 35 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec35d9]        # 0x248ee8
  38590f:	33 c9                                           	xor    ecx,ecx
  385911:	f3 41 0f 10 4e 08                               	movss  xmm1,DWORD PTR [r14+0x8]
  385917:	f3 0f 59 35 09 82 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff08209]        # 0x28db28
  38591f:	e8 74 c9 00 00                                  	call   0x392298
  385924:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  38592b:	4c 8d 44 24 58                                  	lea    r8,[rsp+0x58]
  385930:	44 8b c8                                        	mov    r9d,eax
  385933:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [rsp+0x30],0x0
  38593b:	48 8d 85 c8 00 00 00                            	lea    rax,[rbp+0xc8]
  385942:	48 8b cb                                        	mov    rcx,rbx
  385945:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  38594a:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  38594f:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  385955:	e8 b6 c6 01 00                                  	call   0x3a2010
  38595a:	49 8b 9d 98 02 00 00                            	mov    rbx,QWORD PTR [r13+0x298]
  385961:	41 0f 28 c8                                     	movaps xmm1,xmm8
  385965:	f3 0f 10 bf 14 38 00 00                         	movss  xmm7,DWORD PTR [rdi+0x3814]
  38596d:	33 c9                                           	xor    ecx,ecx
  38596f:	f3 41 0f 10 76 08                               	movss  xmm6,DWORD PTR [r14+0x8]
  385975:	e8 1e c9 00 00                                  	call   0x392298
  38597a:	8b d0                                           	mov    edx,eax
  38597c:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  385980:	e8 4f 0b fb ff                                  	call   0x3364d4
  385985:	41 0f 28 c8                                     	movaps xmm1,xmm8
  385989:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  38598c:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  385991:	b9 06 00 00 00                                  	mov    ecx,0x6
  385996:	e8 fd c8 00 00                                  	call   0x392298
  38599b:	8b d0                                           	mov    edx,eax
  38599d:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3859a1:	e8 2e 0b fb ff                                  	call   0x3364d4
  3859a6:	0f 28 de                                        	movaps xmm3,xmm6
  3859a9:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  3859ad:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3859b2:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3859b6:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3859b9:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3859bf:	e8 e0 3b ff ff                                  	call   0x3795a4
  3859c4:	48 8b c8                                        	mov    rcx,rax
  3859c7:	e8 40 9e f6 ff                                  	call   0x2ef80c
  3859cc:	f3 44 0f 11 44 24 30                            	movss  DWORD PTR [rsp+0x30],xmm8
  3859d3:	4c 8d 44 24 58                                  	lea    r8,[rsp+0x58]
  3859d8:	44 8b c8                                        	mov    r9d,eax
  3859db:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3859e3:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3859e8:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  3859ee:	48 8b cb                                        	mov    rcx,rbx
  3859f1:	e8 52 b7 01 00                                  	call   0x3a1148
  3859f6:	4c 8b b5 c0 00 00 00                            	mov    r14,QWORD PTR [rbp+0xc0]
  3859fd:	33 d2                                           	xor    edx,edx
  3859ff:	49 8b b5 98 02 00 00                            	mov    rsi,QWORD PTR [r13+0x298]
  385a06:	49 8b ce                                        	mov    rcx,r14
  385a09:	e8 42 c2 00 00                                  	call   0x391c50
  385a0e:	41 0f 28 c8                                     	movaps xmm1,xmm8
  385a12:	b9 01 00 00 00                                  	mov    ecx,0x1
  385a17:	48 8b f8                                        	mov    rdi,rax
  385a1a:	e8 79 c8 00 00                                  	call   0x392298
  385a1f:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  385a24:	8b d8                                           	mov    ebx,eax
  385a26:	e8 09 2f ff ff                                  	call   0x378934
  385a2b:	f3 0f 10 0d 1d 78 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0781d]        # 0x28d250
  385a33:	0f 28 d0                                        	movaps xmm2,xmm0
  385a36:	48 8b 0d eb 00 08 00                            	mov    rcx,QWORD PTR [rip+0x800eb]        # 0x405b28
  385a3d:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  385a41:	f3 0f 10 81 30 3c 00 00                         	movss  xmm0,DWORD PTR [rcx+0x3c30]
  385a49:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  385a50:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  385a54:	0f 57 c9                                        	xorps  xmm1,xmm1
  385a57:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  385a5b:	e8 e0 68 f4 ff                                  	call   0x2cc340
  385a60:	4c 8b c0                                        	mov    r8,rax
  385a63:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  385a68:	48 8d 8d d8 00 00 00                            	lea    rcx,[rbp+0xd8]
  385a6f:	e8 64 9f f6 ff                                  	call   0x2ef9d8
  385a74:	48 8b d0                                        	mov    rdx,rax
  385a77:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  385a7c:	4d 8b ce                                        	mov    r9,r14
  385a7f:	44 8b c3                                        	mov    r8d,ebx
  385a82:	48 8b ce                                        	mov    rcx,rsi
  385a85:	e8 32 d7 01 00                                  	call   0x3a31bc
  385a8a:	4d 8b b5 98 02 00 00                            	mov    r14,QWORD PTR [r13+0x298]
  385a91:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  385a95:	e8 52 7d f4 ff                                  	call   0x2cd7ec
  385a9a:	49 8b cf                                        	mov    rcx,r15
  385a9d:	48 8b f0                                        	mov    rsi,rax
  385aa0:	e8 67 9d f6 ff                                  	call   0x2ef80c
  385aa5:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
  385aa9:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  385aae:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  385ab5:	8b f8                                           	mov    edi,eax
  385ab7:	e8 1c 9f f6 ff                                  	call   0x2ef9d8
  385abc:	f3 0f 10 35 24 34 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec3424]        # 0x248ee8
  385ac4:	48 8d 0d 15 66 07 00                            	lea    rcx,[rip+0x76615]        # 0x3fc0e0
  385acb:	f3 0f 59 35 d5 d6 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff0d6d5]        # 0x2931a8
  385ad3:	41 bf 01 00 00 00                               	mov    r15d,0x1
  385ad9:	41 8b d7                                        	mov    edx,r15d
  385adc:	48 8b d8                                        	mov    rbx,rax
  385adf:	e8 d4 0c fb ff                                  	call   0x3367b8
  385ae4:	f3 0f 10 0d bc d6 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0d6bc]        # 0x2931a8
  385aec:	48 8b c8                                        	mov    rcx,rax
  385aef:	e8 f8 ef fd ff                                  	call   0x364aec
  385af4:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  385afd:	48 8b d0                                        	mov    rdx,rax
  385b00:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  385b07:	48 c7 44 24 30 00 00 00 00                      	mov    QWORD PTR [rsp+0x30],0x0
  385b10:	48 89 74 24 28                                  	mov    QWORD PTR [rsp+0x28],rsi
  385b15:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  385b19:	4c 8b cb                                        	mov    r9,rbx
  385b1c:	0f 28 d6                                        	movaps xmm2,xmm6
  385b1f:	49 8b ce                                        	mov    rcx,r14
  385b22:	e8 d1 d6 01 00                                  	call   0x3a31f8
  385b27:	41 8b cf                                        	mov    ecx,r15d
  385b2a:	e8 3d 2e 01 00                                  	call   0x39896c
  385b2f:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  385b33:	e8 bc 69 f4 ff                                  	call   0x2cc4f4
  385b38:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  385b3c:	e8 b3 69 f4 ff                                  	call   0x2cc4f4
  385b41:	4c 8d 9c 24 78 01 00 00                         	lea    r11,[rsp+0x178]
  385b49:	41 8a c4                                        	mov    al,r12b
  385b4c:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  385b51:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  385b56:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  385b5b:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  385b60:	49 8b e3                                        	mov    rsp,r11
  385b63:	41 5f                                           	pop    r15
  385b65:	41 5e                                           	pop    r14
  385b67:	41 5d                                           	pop    r13
  385b69:	41 5c                                           	pop    r12
  385b6b:	5f                                              	pop    rdi
  385b6c:	5e                                              	pop    rsi
  385b6d:	5b                                              	pop    rbx
  385b6e:	5d                                              	pop    rbp
  385b6f:	c3                                              	ret
