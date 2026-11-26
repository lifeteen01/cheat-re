  32f408:	48 8b c4             	mov    rax,rsp
  32f40b:	55                   	push   rbp
  32f40c:	53                   	push   rbx
  32f40d:	56                   	push   rsi
  32f40e:	57                   	push   rdi
  32f40f:	41 54                	push   r12
  32f411:	41 55                	push   r13
  32f413:	41 56                	push   r14
  32f415:	41 57                	push   r15
  32f417:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  32f41b:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
  32f422:	8b 1d 18 99 0c 00    	mov    ebx,DWORD PTR [rip+0xc9918]        # 0x3f8d40
  32f428:	48 8b f9             	mov    rdi,rcx
  32f42b:	0f 29 70 a8          	movaps XMMWORD PTR [rax-0x58],xmm6
  32f42f:	f6 c3 01             	test   bl,0x1
  32f432:	75 1e                	jne    0x32f452
  32f434:	83 cb 01             	or     ebx,0x1
  32f437:	48 8d 0d fa 73 0b 00 	lea    rcx,[rip+0xb73fa]        # 0x3e6838
  32f43e:	89 1d fc 98 0c 00    	mov    DWORD PTR [rip+0xc98fc],ebx        # 0x3f8d40
  32f444:	e8 8f f1 f9 ff       	call   0x2ce5d8
  32f449:	48 89 05 e8 98 0c 00 	mov    QWORD PTR [rip+0xc98e8],rax        # 0x3f8d38
  32f450:	eb 07                	jmp    0x32f459
  32f452:	48 8b 05 df 98 0c 00 	mov    rax,QWORD PTR [rip+0xc98df]        # 0x3f8d38
  32f459:	48 8d 35 f0 98 0c 00 	lea    rsi,[rip+0xc98f0]        # 0x3f8d50
  32f460:	f6 c3 02             	test   bl,0x2
  32f463:	75 1e                	jne    0x32f483
  32f465:	48 8b 0d f4 69 0a 00 	mov    rcx,QWORD PTR [rip+0xa69f4]        # 0x3d5e60
  32f46c:	83 cb 02             	or     ebx,0x2
  32f46f:	45 33 c9             	xor    r9d,r9d
  32f472:	89 1d c8 98 0c 00    	mov    DWORD PTR [rip+0xc98c8],ebx        # 0x3f8d40
  32f478:	4c 8b c0             	mov    r8,rax
  32f47b:	48 8b d6             	mov    rdx,rsi
  32f47e:	e8 a1 c8 f9 ff       	call   0x2cbd24
  32f483:	4c 8b 7f 40          	mov    r15,QWORD PTR [rdi+0x40]
  32f487:	49 8b cf             	mov    rcx,r15
  32f48a:	e8 79 ba f9 ff       	call   0x2caf08
  32f48f:	45 33 ed             	xor    r13d,r13d
  32f492:	44 8a e0             	mov    r12b,al
  32f495:	84 c0                	test   al,al
  32f497:	74 2a                	je     0x32f4c3
  32f499:	44 38 2d 98 95 0c 00 	cmp    BYTE PTR [rip+0xc9598],r13b        # 0x3f8a38
  32f4a0:	f3 41 0f 10 4f 10    	movss  xmm1,DWORD PTR [r15+0x10]
  32f4a6:	f3 0f 11 0d 7a 99 0c 	movss  DWORD PTR [rip+0xc997a],xmm1        # 0x3f8e28
  32f4ad:	00 
  32f4ae:	74 1b                	je     0x32f4cb
  32f4b0:	66 0f 6e 05 d0 97 0c 	movd   xmm0,DWORD PTR [rip+0xc97d0]        # 0x3f8c88
  32f4b7:	00 
  32f4b8:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  32f4bb:	f3 41 0f 11 47 10    	movss  DWORD PTR [r15+0x10],xmm0
  32f4c1:	eb 08                	jmp    0x32f4cb
  32f4c3:	f3 0f 10 0d 5d 99 0c 	movss  xmm1,DWORD PTR [rip+0xc995d]        # 0x3f8e28
  32f4ca:	00 
  32f4cb:	8a 15 17 95 0c 00    	mov    dl,BYTE PTR [rip+0xc9517]        # 0x3f89e8
  32f4d1:	f3 0f 11 0d b3 6b 0b 	movss  DWORD PTR [rip+0xb6bb3],xmm1        # 0x3e608c
  32f4d8:	00 
  32f4d9:	84 d2                	test   dl,dl
  32f4db:	74 29                	je     0x32f506
  32f4dd:	4c 8b 47 78          	mov    r8,QWORD PTR [rdi+0x78]
  32f4e1:	49 8b c8             	mov    rcx,r8
  32f4e4:	e8 1f ba f9 ff       	call   0x2caf08
  32f4e9:	84 c0                	test   al,al
  32f4eb:	74 15                	je     0x32f502
  32f4ed:	41 c7 40 14 00 00 7a 	mov    DWORD PTR [r8+0x14],0x437a0000
  32f4f4:	43 
  32f4f5:	8a 15 ed 94 0c 00    	mov    dl,BYTE PTR [rip+0xc94ed]        # 0x3f89e8
  32f4fb:	c6 05 2a 99 0c 00 01 	mov    BYTE PTR [rip+0xc992a],0x1        # 0x3f8e2c
  32f502:	84 d2                	test   dl,dl
  32f504:	75 27                	jne    0x32f52d
  32f506:	44 38 2d 1f 99 0c 00 	cmp    BYTE PTR [rip+0xc991f],r13b        # 0x3f8e2c
  32f50d:	74 1e                	je     0x32f52d
  32f50f:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  32f513:	48 8b ca             	mov    rcx,rdx
  32f516:	e8 ed b9 f9 ff       	call   0x2caf08
  32f51b:	84 c0                	test   al,al
  32f51d:	74 0e                	je     0x32f52d
  32f51f:	c7 42 14 00 00 00 40 	mov    DWORD PTR [rdx+0x14],0x40000000
  32f526:	44 88 2d ff 98 0c 00 	mov    BYTE PTR [rip+0xc98ff],r13b        # 0x3f8e2c
  32f52d:	e8 6a 11 fb ff       	call   0x2e069c
  32f532:	48 8b c8             	mov    rcx,rax
  32f535:	48 8b d8             	mov    rbx,rax
  32f538:	e8 cb b9 f9 ff       	call   0x2caf08
  32f53d:	84 c0                	test   al,al
  32f53f:	74 5d                	je     0x32f59e
  32f541:	f3 0f 10 05 e7 98 0c 	movss  xmm0,DWORD PTR [rip+0xc98e7]        # 0x3f8e30
  32f548:	00 
  32f549:	0f 57 f6             	xorps  xmm6,xmm6
  32f54c:	0f 2f f0             	comiss xmm6,xmm0
  32f54f:	72 10                	jb     0x32f561
  32f551:	48 8b cb             	mov    rcx,rbx
  32f554:	e8 17 d1 03 00       	call   0x36c670
  32f559:	f3 0f 11 05 cf 98 0c 	movss  DWORD PTR [rip+0xc98cf],xmm0        # 0x3f8e30
  32f560:	00 
  32f561:	44 38 2d 70 95 0c 00 	cmp    BYTE PTR [rip+0xc9570],r13b        # 0x3f8ad8
  32f568:	74 20                	je     0x32f58a
  32f56a:	f3 0f 10 0d 76 96 0c 	movss  xmm1,DWORD PTR [rip+0xc9676]        # 0x3f8be8
  32f571:	00 
  32f572:	0f 2e ce             	ucomiss xmm1,xmm6
  32f575:	7a 02                	jp     0x32f579
  32f577:	74 25                	je     0x32f59e
  32f579:	48 8b cb             	mov    rcx,rbx
  32f57c:	e8 27 d5 03 00       	call   0x36caa8
  32f581:	c6 05 ac 98 0c 00 01 	mov    BYTE PTR [rip+0xc98ac],0x1        # 0x3f8e34
  32f588:	eb 14                	jmp    0x32f59e
  32f58a:	44 38 2d a3 98 0c 00 	cmp    BYTE PTR [rip+0xc98a3],r13b        # 0x3f8e34
  32f591:	74 0b                	je     0x32f59e
  32f593:	0f 28 c8             	movaps xmm1,xmm0
  32f596:	48 8b cb             	mov    rcx,rbx
  32f599:	e8 0a d5 03 00       	call   0x36caa8
  32f59e:	8b 05 9c 97 0c 00    	mov    eax,DWORD PTR [rip+0xc979c]        # 0x3f8d40
  32f5a4:	a8 04                	test   al,0x4
  32f5a6:	75 15                	jne    0x32f5bd
  32f5a8:	83 c8 04             	or     eax,0x4
  32f5ab:	48 8d 0d 86 98 0c 00 	lea    rcx,[rip+0xc9886]        # 0x3f8e38
  32f5b2:	89 05 88 97 0c 00    	mov    DWORD PTR [rip+0xc9788],eax        # 0x3f8d40
  32f5b8:	e8 e7 bd f9 ff       	call   0x2cb3a4
  32f5bd:	8a 15 c5 94 0c 00    	mov    dl,BYTE PTR [rip+0xc94c5]        # 0x3f8a88
  32f5c3:	4c 8b 77 58          	mov    r14,QWORD PTR [rdi+0x58]
  32f5c7:	84 d2                	test   dl,dl
  32f5c9:	74 55                	je     0x32f620
  32f5cb:	49 8b ce             	mov    rcx,r14
  32f5ce:	e8 35 b9 f9 ff       	call   0x2caf08
  32f5d3:	84 c0                	test   al,al
  32f5d5:	74 45                	je     0x32f61c
  32f5d7:	4d 8b 46 28          	mov    r8,QWORD PTR [r14+0x28]
  32f5db:	49 8b c8             	mov    rcx,r8
  32f5de:	e8 25 b9 f9 ff       	call   0x2caf08
  32f5e3:	84 c0                	test   al,al
  32f5e5:	74 35                	je     0x32f61c
  32f5e7:	4d 8b 40 10          	mov    r8,QWORD PTR [r8+0x10]
  32f5eb:	49 8b c8             	mov    rcx,r8
  32f5ee:	e8 15 b9 f9 ff       	call   0x2caf08
  32f5f3:	84 c0                	test   al,al
  32f5f5:	74 25                	je     0x32f61c
  32f5f7:	41 0f 10 00          	movups xmm0,XMMWORD PTR [r8]
  32f5fb:	c6 05 46 98 0c 00 01 	mov    BYTE PTR [rip+0xc9846],0x1        # 0x3f8e48
  32f602:	0f 10 0d 7f 95 0c 00 	movups xmm1,XMMWORD PTR [rip+0xc957f]        # 0x3f8b88
  32f609:	f3 0f 7f 05 27 98 0c 	movdqu XMMWORD PTR [rip+0xc9827],xmm0        # 0x3f8e38
  32f610:	00 
  32f611:	f3 41 0f 7f 08       	movdqu XMMWORD PTR [r8],xmm1
  32f616:	8a 15 6c 94 0c 00    	mov    dl,BYTE PTR [rip+0xc946c]        # 0x3f8a88
  32f61c:	84 d2                	test   dl,dl
  32f61e:	75 48                	jne    0x32f668
  32f620:	44 38 2d 21 98 0c 00 	cmp    BYTE PTR [rip+0xc9821],r13b        # 0x3f8e48
  32f627:	74 3f                	je     0x32f668
  32f629:	49 8b ce             	mov    rcx,r14
  32f62c:	e8 d7 b8 f9 ff       	call   0x2caf08
  32f631:	84 c0                	test   al,al
  32f633:	74 33                	je     0x32f668
  32f635:	49 8b 56 28          	mov    rdx,QWORD PTR [r14+0x28]
  32f639:	48 8b ca             	mov    rcx,rdx
  32f63c:	e8 c7 b8 f9 ff       	call   0x2caf08
  32f641:	84 c0                	test   al,al
  32f643:	74 23                	je     0x32f668
  32f645:	4c 8b 42 10          	mov    r8,QWORD PTR [rdx+0x10]
  32f649:	49 8b c8             	mov    rcx,r8
  32f64c:	e8 b7 b8 f9 ff       	call   0x2caf08
  32f651:	84 c0                	test   al,al
  32f653:	74 13                	je     0x32f668
  32f655:	0f 10 05 dc 97 0c 00 	movups xmm0,XMMWORD PTR [rip+0xc97dc]        # 0x3f8e38
  32f65c:	44 88 2d e5 97 0c 00 	mov    BYTE PTR [rip+0xc97e5],r13b        # 0x3f8e48
  32f663:	f3 41 0f 7f 00       	movdqu XMMWORD PTR [r8],xmm0
  32f668:	44 38 2d 29 93 0c 00 	cmp    BYTE PTR [rip+0xc9329],r13b        # 0x3f8998
  32f66f:	74 3e                	je     0x32f6af
  32f671:	81 3d ad 96 0c 00 e7 	cmp    DWORD PTR [rip+0xc96ad],0x3e7        # 0x3f8d28
  32f678:	03 00 00 
  32f67b:	75 0c                	jne    0x32f689
  32f67d:	c6 05 c5 97 0c 00 01 	mov    BYTE PTR [rip+0xc97c5],0x1        # 0x3f8e49
  32f684:	e9 a6 00 00 00       	jmp    0x32f72f
  32f689:	b2 01                	mov    dl,0x1
  32f68b:	48 8d 0d 96 96 0c 00 	lea    rcx,[rip+0xc9696]        # 0x3f8d28
  32f692:	e8 4d 93 fb ff       	call   0x2e89e4
  32f697:	84 c0                	test   al,al
  32f699:	74 0c                	je     0x32f6a7
  32f69b:	44 38 2d a7 97 0c 00 	cmp    BYTE PTR [rip+0xc97a7],r13b        # 0x3f8e49
  32f6a2:	0f 94 c0             	sete   al
  32f6a5:	eb 0b                	jmp    0x32f6b2
  32f6a7:	8a 05 9c 97 0c 00    	mov    al,BYTE PTR [rip+0xc979c]        # 0x3f8e49
  32f6ad:	eb 09                	jmp    0x32f6b8
  32f6af:	41 8a c5             	mov    al,r13b
  32f6b2:	88 05 91 97 0c 00    	mov    BYTE PTR [rip+0xc9791],al        # 0x3f8e49
  32f6b8:	84 c0                	test   al,al
  32f6ba:	75 73                	jne    0x32f72f
  32f6bc:	48 8b 0d 9d 67 0a 00 	mov    rcx,QWORD PTR [rip+0xa679d]        # 0x3d5e60
  32f6c3:	4c 8b c7             	mov    r8,rdi
  32f6c6:	48 8b d6             	mov    rdx,rsi
  32f6c9:	e8 2e c3 f9 ff       	call   0x2cb9fc
  32f6ce:	45 84 e4             	test   r12b,r12b
  32f6d1:	74 0e                	je     0x32f6e1
  32f6d3:	f3 0f 10 05 4d 97 0c 	movss  xmm0,DWORD PTR [rip+0xc974d]        # 0x3f8e28
  32f6da:	00 
  32f6db:	f3 41 0f 11 47 10    	movss  DWORD PTR [r15+0x10],xmm0
  32f6e1:	44 38 2d a0 93 0c 00 	cmp    BYTE PTR [rip+0xc93a0],r13b        # 0x3f8a88
  32f6e8:	74 38                	je     0x32f722
  32f6ea:	49 8b ce             	mov    rcx,r14
  32f6ed:	e8 16 b8 f9 ff       	call   0x2caf08
  32f6f2:	84 c0                	test   al,al
  32f6f4:	74 2c                	je     0x32f722
  32f6f6:	49 8b 56 28          	mov    rdx,QWORD PTR [r14+0x28]
  32f6fa:	48 8b ca             	mov    rcx,rdx
  32f6fd:	e8 06 b8 f9 ff       	call   0x2caf08
  32f702:	84 c0                	test   al,al
  32f704:	74 1c                	je     0x32f722
  32f706:	4c 8b 42 10          	mov    r8,QWORD PTR [rdx+0x10]
  32f70a:	49 8b c8             	mov    rcx,r8
  32f70d:	e8 f6 b7 f9 ff       	call   0x2caf08
  32f712:	84 c0                	test   al,al
  32f714:	74 0c                	je     0x32f722
  32f716:	0f 10 05 1b 97 0c 00 	movups xmm0,XMMWORD PTR [rip+0xc971b]        # 0x3f8e38
  32f71d:	f3 41 0f 7f 00       	movdqu XMMWORD PTR [r8],xmm0
  32f722:	44 38 2d 20 97 0c 00 	cmp    BYTE PTR [rip+0xc9720],r13b        # 0x3f8e49
  32f729:	0f 84 78 03 00 00    	je     0x32faa7
  32f72f:	48 8b 0d 2a 67 0a 00 	mov    rcx,QWORD PTR [rip+0xa672a]        # 0x3d5e60
  32f736:	4c 8b c7             	mov    r8,rdi
  32f739:	48 8b d6             	mov    rdx,rsi
  32f73c:	e8 bb c2 f9 ff       	call   0x2cb9fc
  32f741:	8b 05 f9 95 0c 00    	mov    eax,DWORD PTR [rip+0xc95f9]        # 0x3f8d40
  32f747:	a8 08                	test   al,0x8
  32f749:	0f 85 9a 00 00 00    	jne    0x32f7e9
  32f74f:	83 c8 08             	or     eax,0x8
  32f752:	48 8d 55 67          	lea    rdx,[rbp+0x67]
  32f756:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  32f75a:	89 05 e0 95 0c 00    	mov    DWORD PTR [rip+0xc95e0],eax        # 0x3f8d40
  32f760:	e8 cb cf f9 ff       	call   0x2cc730
  32f765:	48 8b c8             	mov    rcx,rax
  32f768:	e8 37 e5 f9 ff       	call   0x2cdca4
  32f76d:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
  32f771:	48 8b f0             	mov    rsi,rax
  32f774:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  32f778:	e8 93 fa ff ff       	call   0x32f210
  32f77d:	48 8b c8             	mov    rcx,rax
  32f780:	e8 db d9 fa ff       	call   0x2dd160
  32f785:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  32f78a:	48 8b f8             	mov    rdi,rax
  32f78d:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  32f791:	e8 5e fa ff ff       	call   0x32f1f4
  32f796:	48 8b c8             	mov    rcx,rax
  32f799:	e8 96 e6 f9 ff       	call   0x2cde34
  32f79e:	48 8d 55 9b          	lea    rdx,[rbp-0x65]
  32f7a2:	48 8b d8             	mov    rbx,rax
  32f7a5:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  32f7a9:	e8 16 fa ff ff       	call   0x32f1c4
  32f7ae:	48 8b c8             	mov    rcx,rax
  32f7b1:	e8 b6 8e fa ff       	call   0x2d866c
  32f7b6:	48 8b c8             	mov    rcx,rax
  32f7b9:	48 8b d3             	mov    rdx,rbx
  32f7bc:	e8 63 4a 00 00       	call   0x334224
  32f7c1:	83 cb ff             	or     ebx,0xffffffff
  32f7c4:	48 8b c8             	mov    rcx,rax
  32f7c7:	44 8b c3             	mov    r8d,ebx
  32f7ca:	89 5c 24 20          	mov    DWORD PTR [rsp+0x20],ebx
  32f7ce:	4c 8b ce             	mov    r9,rsi
  32f7d1:	48 8b d7             	mov    rdx,rdi
  32f7d4:	e8 d3 51 00 00       	call   0x3349ac
  32f7d9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  32f7dc:	8b 05 5e 95 0c 00    	mov    eax,DWORD PTR [rip+0xc955e]        # 0x3f8d40
  32f7e2:	48 89 0d 67 96 0c 00 	mov    QWORD PTR [rip+0xc9667],rcx        # 0x3f8e50
  32f7e9:	a8 10                	test   al,0x10
  32f7eb:	0f 85 99 00 00 00    	jne    0x32f88a
  32f7f1:	83 c8 10             	or     eax,0x10
  32f7f4:	48 8d 55 6f          	lea    rdx,[rbp+0x6f]
  32f7f8:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  32f7fc:	89 05 3e 95 0c 00    	mov    DWORD PTR [rip+0xc953e],eax        # 0x3f8d40
  32f802:	e8 29 cf f9 ff       	call   0x2cc730
  32f807:	48 8b c8             	mov    rcx,rax
  32f80a:	e8 95 e4 f9 ff       	call   0x2cdca4
  32f80f:	48 8d 55 e9          	lea    rdx,[rbp-0x17]
  32f813:	48 8b f0             	mov    rsi,rax
  32f816:	48 8d 4d 77          	lea    rcx,[rbp+0x77]
  32f81a:	e8 e1 fa ff ff       	call   0x32f300
  32f81f:	48 8b c8             	mov    rcx,rax
  32f822:	e8 95 0c ff ff       	call   0x3204bc
  32f827:	48 8d 55 83          	lea    rdx,[rbp-0x7d]
  32f82b:	48 8b f8             	mov    rdi,rax
  32f82e:	48 8d 4d 77          	lea    rcx,[rbp+0x77]
  32f832:	e8 ad fa ff ff       	call   0x32f2e4
  32f837:	48 8b c8             	mov    rcx,rax
  32f83a:	e8 f5 e5 f9 ff       	call   0x2cde34
  32f83f:	48 8d 55 aa          	lea    rdx,[rbp-0x56]
  32f843:	48 8b d8             	mov    rbx,rax
  32f846:	48 8d 4d 77          	lea    rcx,[rbp+0x77]
  32f84a:	e8 65 fa ff ff       	call   0x32f2b4
  32f84f:	48 8b c8             	mov    rcx,rax
  32f852:	e8 15 8e fa ff       	call   0x2d866c
  32f857:	48 8b c8             	mov    rcx,rax
  32f85a:	48 8b d3             	mov    rdx,rbx
  32f85d:	e8 c2 49 00 00       	call   0x334224
  32f862:	83 cb ff             	or     ebx,0xffffffff
  32f865:	48 8b c8             	mov    rcx,rax
  32f868:	44 8b c3             	mov    r8d,ebx
  32f86b:	89 5c 24 20          	mov    DWORD PTR [rsp+0x20],ebx
  32f86f:	4c 8b ce             	mov    r9,rsi
  32f872:	48 8b d7             	mov    rdx,rdi
  32f875:	e8 32 51 00 00       	call   0x3349ac
  32f87a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  32f87d:	8b 05 bd 94 0c 00    	mov    eax,DWORD PTR [rip+0xc94bd]        # 0x3f8d40
  32f883:	48 89 0d ce 95 0c 00 	mov    QWORD PTR [rip+0xc95ce],rcx        # 0x3f8e58
  32f88a:	a8 20                	test   al,0x20
  32f88c:	0f 85 99 00 00 00    	jne    0x32f92b
  32f892:	83 c8 20             	or     eax,0x20
  32f895:	48 8d 55 77          	lea    rdx,[rbp+0x77]
  32f899:	48 8d 4d 77          	lea    rcx,[rbp+0x77]
  32f89d:	89 05 9d 94 0c 00    	mov    DWORD PTR [rip+0xc949d],eax        # 0x3f8d40
  32f8a3:	e8 88 ce f9 ff       	call   0x2cc730
  32f8a8:	48 8b c8             	mov    rcx,rax
  32f8ab:	e8 f4 e3 f9 ff       	call   0x2cdca4
  32f8b0:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  32f8b4:	48 8b f0             	mov    rsi,rax
  32f8b7:	48 8d 4d 7f          	lea    rcx,[rbp+0x7f]
  32f8bb:	e8 30 fb ff ff       	call   0x32f3f0
  32f8c0:	48 8b c8             	mov    rcx,rax
  32f8c3:	e8 ec a2 fb ff       	call   0x2e9bb4
  32f8c8:	48 8d 55 8f          	lea    rdx,[rbp-0x71]
  32f8cc:	48 8b f8             	mov    rdi,rax
  32f8cf:	48 8d 4d 7f          	lea    rcx,[rbp+0x7f]
  32f8d3:	e8 fc fa ff ff       	call   0x32f3d4
  32f8d8:	48 8b c8             	mov    rcx,rax
  32f8db:	e8 54 e5 f9 ff       	call   0x2cde34
  32f8e0:	48 8d 55 b9          	lea    rdx,[rbp-0x47]
  32f8e4:	48 8b d8             	mov    rbx,rax
  32f8e7:	48 8d 4d 7f          	lea    rcx,[rbp+0x7f]
  32f8eb:	e8 78 fa ff ff       	call   0x32f368
  32f8f0:	48 8b c8             	mov    rcx,rax
  32f8f3:	e8 74 8d fa ff       	call   0x2d866c
  32f8f8:	48 8b c8             	mov    rcx,rax
  32f8fb:	48 8b d3             	mov    rdx,rbx
  32f8fe:	e8 21 49 00 00       	call   0x334224
  32f903:	48 8b c8             	mov    rcx,rax
  32f906:	4c 8b ce             	mov    r9,rsi
  32f909:	83 c8 ff             	or     eax,0xffffffff
  32f90c:	48 8b d7             	mov    rdx,rdi
  32f90f:	44 8b c0             	mov    r8d,eax
  32f912:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  32f916:	e8 91 50 00 00       	call   0x3349ac
  32f91b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  32f91e:	8b 05 1c 94 0c 00    	mov    eax,DWORD PTR [rip+0xc941c]        # 0x3f8d40
  32f924:	48 89 0d 35 95 0c 00 	mov    QWORD PTR [rip+0xc9535],rcx        # 0x3f8e60
  32f92b:	8b 0d a7 93 0c 00    	mov    ecx,DWORD PTR [rip+0xc93a7]        # 0x3f8cd8
  32f931:	85 c9                	test   ecx,ecx
  32f933:	75 39                	jne    0x32f96e
  32f935:	a8 40                	test   al,0x40
  32f937:	75 26                	jne    0x32f95f
  32f939:	4c 8b 05 10 95 0c 00 	mov    r8,QWORD PTR [rip+0xc9510]        # 0x3f8e50
  32f940:	48 8d 15 29 95 0c 00 	lea    rdx,[rip+0xc9529]        # 0x3f8e70
  32f947:	48 8b 0d 12 65 0a 00 	mov    rcx,QWORD PTR [rip+0xa6512]        # 0x3d5e60
  32f94e:	83 c8 40             	or     eax,0x40
  32f951:	45 33 c9             	xor    r9d,r9d
  32f954:	89 05 e6 93 0c 00    	mov    DWORD PTR [rip+0xc93e6],eax        # 0x3f8d40
  32f95a:	e8 c5 c3 f9 ff       	call   0x2cbd24
  32f95f:	41 b8 03 00 00 00    	mov    r8d,0x3
  32f965:	48 8d 15 04 95 0c 00 	lea    rdx,[rip+0xc9504]        # 0x3f8e70
  32f96c:	eb 3d                	jmp    0x32f9ab
  32f96e:	83 f9 01             	cmp    ecx,0x1
  32f971:	75 4a                	jne    0x32f9bd
  32f973:	84 c0                	test   al,al
  32f975:	78 27                	js     0x32f99e
  32f977:	4c 8b 05 d2 94 0c 00 	mov    r8,QWORD PTR [rip+0xc94d2]        # 0x3f8e50
  32f97e:	48 8d 15 cb 95 0c 00 	lea    rdx,[rip+0xc95cb]        # 0x3f8f50
  32f985:	48 8b 0d d4 64 0a 00 	mov    rcx,QWORD PTR [rip+0xa64d4]        # 0x3d5e60
  32f98c:	0f ba e8 07          	bts    eax,0x7
  32f990:	45 33 c9             	xor    r9d,r9d
  32f993:	89 05 a7 93 0c 00    	mov    DWORD PTR [rip+0xc93a7],eax        # 0x3f8d40
  32f999:	e8 86 c3 f9 ff       	call   0x2cbd24
  32f99e:	41 b8 01 00 00 00    	mov    r8d,0x1
  32f9a4:	48 8d 15 a5 95 0c 00 	lea    rdx,[rip+0xc95a5]        # 0x3f8f50
  32f9ab:	48 8b 0d ae 64 0a 00 	mov    rcx,QWORD PTR [rip+0xa64ae]        # 0x3d5e60
  32f9b2:	e8 dd 1f ff ff       	call   0x321994
  32f9b7:	8b 05 83 93 0c 00    	mov    eax,DWORD PTR [rip+0xc9383]        # 0x3f8d40
  32f9bd:	b9 00 01 00 00       	mov    ecx,0x100
  32f9c2:	85 c1                	test   ecx,eax
  32f9c4:	75 25                	jne    0x32f9eb
  32f9c6:	4c 8b 05 8b 94 0c 00 	mov    r8,QWORD PTR [rip+0xc948b]        # 0x3f8e58
  32f9cd:	48 8d 15 5c 96 0c 00 	lea    rdx,[rip+0xc965c]        # 0x3f9030
  32f9d4:	0b c1                	or     eax,ecx
  32f9d6:	45 33 c9             	xor    r9d,r9d
  32f9d9:	48 8b 0d 80 64 0a 00 	mov    rcx,QWORD PTR [rip+0xa6480]        # 0x3d5e60
  32f9e0:	89 05 5a 93 0c 00    	mov    DWORD PTR [rip+0xc935a],eax        # 0x3f8d40
  32f9e6:	e8 39 c3 f9 ff       	call   0x2cbd24
  32f9eb:	f3 0f 10 15 45 92 0c 	movss  xmm2,DWORD PTR [rip+0xc9245]        # 0x3f8c38
  32f9f2:	00 
  32f9f3:	48 8d 15 36 96 0c 00 	lea    rdx,[rip+0xc9636]        # 0x3f9030
  32f9fa:	48 8b 0d 5f 64 0a 00 	mov    rcx,QWORD PTR [rip+0xa645f]        # 0x3d5e60
  32fa01:	e8 12 f7 ff ff       	call   0x32f118
  32fa06:	8b 05 34 93 0c 00    	mov    eax,DWORD PTR [rip+0xc9334]        # 0x3f8d40
  32fa0c:	b9 00 02 00 00       	mov    ecx,0x200
  32fa11:	85 c1                	test   ecx,eax
  32fa13:	75 25                	jne    0x32fa3a
  32fa15:	4c 8b 05 44 94 0c 00 	mov    r8,QWORD PTR [rip+0xc9444]        # 0x3f8e60
  32fa1c:	48 8d 15 ed 96 0c 00 	lea    rdx,[rip+0xc96ed]        # 0x3f9110
  32fa23:	0b c1                	or     eax,ecx
  32fa25:	45 33 c9             	xor    r9d,r9d
  32fa28:	48 8b 0d 31 64 0a 00 	mov    rcx,QWORD PTR [rip+0xa6431]        # 0x3d5e60
  32fa2f:	89 05 0b 93 0c 00    	mov    DWORD PTR [rip+0xc930b],eax        # 0x3f8d40
  32fa35:	e8 ea c2 f9 ff       	call   0x2cbd24
  32fa3a:	48 8b 0d 1f 64 0a 00 	mov    rcx,QWORD PTR [rip+0xa641f]        # 0x3d5e60
  32fa41:	4c 8d 05 e0 90 0c 00 	lea    r8,[rip+0xc90e0]        # 0x3f8b28
  32fa48:	48 8d 15 c1 96 0c 00 	lea    rdx,[rip+0xc96c1]        # 0x3f9110
  32fa4f:	e8 a8 bf f9 ff       	call   0x2cb9fc
  32fa54:	45 84 e4             	test   r12b,r12b
  32fa57:	74 0e                	je     0x32fa67
  32fa59:	f3 0f 10 05 c7 93 0c 	movss  xmm0,DWORD PTR [rip+0xc93c7]        # 0x3f8e28
  32fa60:	00 
  32fa61:	f3 41 0f 11 47 10    	movss  DWORD PTR [r15+0x10],xmm0
  32fa67:	44 38 2d 1a 90 0c 00 	cmp    BYTE PTR [rip+0xc901a],r13b        # 0x3f8a88
  32fa6e:	74 37                	je     0x32faa7
  32fa70:	49 8b ce             	mov    rcx,r14
  32fa73:	e8 90 b4 f9 ff       	call   0x2caf08
  32fa78:	84 c0                	test   al,al
  32fa7a:	74 2b                	je     0x32faa7
  32fa7c:	49 8b 56 28          	mov    rdx,QWORD PTR [r14+0x28]
  32fa80:	48 8b ca             	mov    rcx,rdx
  32fa83:	e8 80 b4 f9 ff       	call   0x2caf08
  32fa88:	84 c0                	test   al,al
  32fa8a:	74 1b                	je     0x32faa7
  32fa8c:	48 8b 52 10          	mov    rdx,QWORD PTR [rdx+0x10]
  32fa90:	48 8b ca             	mov    rcx,rdx
  32fa93:	e8 70 b4 f9 ff       	call   0x2caf08
  32fa98:	84 c0                	test   al,al
  32fa9a:	74 0b                	je     0x32faa7
  32fa9c:	0f 10 05 95 93 0c 00 	movups xmm0,XMMWORD PTR [rip+0xc9395]        # 0x3f8e38
  32faa3:	f3 0f 7f 02          	movdqu XMMWORD PTR [rdx],xmm0
  32faa7:	0f 28 b4 24 c0 00 00 	movaps xmm6,XMMWORD PTR [rsp+0xc0]
  32faae:	00 
  32faaf:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
  32fab6:	41 5f                	pop    r15
  32fab8:	41 5e                	pop    r14
  32faba:	41 5d                	pop    r13
  32fabc:	41 5c                	pop    r12
  32fabe:	5f                   	pop    rdi
  32fabf:	5e                   	pop    rsi
  32fac0:	5b                   	pop    rbx
  32fac1:	5d                   	pop    rbp
  32fac2:	c3                   	ret
  32fac3:	cc                   	int3
  32fac4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
