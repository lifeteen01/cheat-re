
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a1564 <.data+0x3a1564>:
  3a1564:	48 8b c4                                        	mov    rax,rsp
  3a1567:	44 89 48 20                                     	mov    DWORD PTR [rax+0x20],r9d
  3a156b:	44 89 40 18                                     	mov    DWORD PTR [rax+0x18],r8d
  3a156f:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3a1573:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3a1577:	55                                              	push   rbp
  3a1578:	53                                              	push   rbx
  3a1579:	56                                              	push   rsi
  3a157a:	57                                              	push   rdi
  3a157b:	41 54                                           	push   r12
  3a157d:	41 55                                           	push   r13
  3a157f:	41 56                                           	push   r14
  3a1581:	41 57                                           	push   r15
  3a1583:	48 81 ec 28 02 00 00                            	sub    rsp,0x228
  3a158a:	48 8d 6c 24 20                                  	lea    rbp,[rsp+0x20]
  3a158f:	f3 0f 10 42 0c                                  	movss  xmm0,DWORD PTR [rdx+0xc]
  3a1594:	83 c8 ff                                        	or     eax,0xffffffff
  3a1597:	f3 0f 10 52 14                                  	movss  xmm2,DWORD PTR [rdx+0x14]
  3a159c:	4c 8b f1                                        	mov    r14,rcx
  3a159f:	44 8b bd 80 02 00 00                            	mov    r15d,DWORD PTR [rbp+0x280]
  3a15a6:	b9 01 00 00 00                                  	mov    ecx,0x1
  3a15ab:	f3 0f 10 4a 04                                  	movss  xmm1,DWORD PTR [rdx+0x4]
  3a15b0:	41 81 e7 00 02 00 00                            	and    r15d,0x200
  3a15b7:	0f 29 b5 f0 01 00 00                            	movaps XMMWORD PTR [rbp+0x1f0],xmm6
  3a15be:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3a15c2:	0f 29 bd e0 01 00 00                            	movaps XMMWORD PTR [rbp+0x1e0],xmm7
  3a15c9:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  3a15cd:	f3 0f 5c 52 04                                  	subss  xmm2,DWORD PTR [rdx+0x4]
  3a15d2:	44 0f 29 85 d0 01 00 00                         	movaps XMMWORD PTR [rbp+0x1d0],xmm8
  3a15da:	8b f1                                           	mov    esi,ecx
  3a15dc:	44 0f 29 8d c0 01 00 00                         	movaps XMMWORD PTR [rbp+0x1c0],xmm9
  3a15e4:	4c 8b e2                                        	mov    r12,rdx
  3a15e7:	44 0f 29 95 b0 01 00 00                         	movaps XMMWORD PTR [rbp+0x1b0],xmm10
  3a15ef:	44 0f 29 9d a0 01 00 00                         	movaps XMMWORD PTR [rbp+0x1a0],xmm11
  3a15f7:	44 0f 29 a5 90 01 00 00                         	movaps XMMWORD PTR [rbp+0x190],xmm12
  3a15ff:	44 0f 29 ad 80 01 00 00                         	movaps XMMWORD PTR [rbp+0x180],xmm13
  3a1607:	44 0f 29 b5 70 01 00 00                         	movaps XMMWORD PTR [rbp+0x170],xmm14
  3a160f:	44 0f 29 bd 60 01 00 00                         	movaps XMMWORD PTR [rbp+0x160],xmm15
  3a1617:	45 0f 57 ed                                     	xorps  xmm13,xmm13
  3a161b:	f3 0f 59 52 08                                  	mulss  xmm2,DWORD PTR [rdx+0x8]
  3a1620:	49 63 f8                                        	movsxd rdi,r8d
  3a1623:	f3 0f 59 02                                     	mulss  xmm0,DWORD PTR [rdx]
  3a1627:	44 89 bd 80 02 00 00                            	mov    DWORD PTR [rbp+0x280],r15d
  3a162e:	f3 0f 59 4a 10                                  	mulss  xmm1,DWORD PTR [rdx+0x10]
  3a1633:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a1637:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  3a163b:	44 0f 2f ea                                     	comiss xmm13,xmm2
  3a163f:	0f 47 f0                                        	cmova  esi,eax
  3a1642:	41 f6 46 30 04                                  	test   BYTE PTR [r14+0x30],0x4
  3a1647:	74 08                                           	je     0x3a1651
  3a1649:	88 4d 00                                        	mov    BYTE PTR [rbp+0x0],cl
  3a164c:	45 85 ff                                        	test   r15d,r15d
  3a164f:	75 04                                           	jne    0x3a1655
  3a1651:	c6 45 00 00                                     	mov    BYTE PTR [rbp+0x0],0x0
  3a1655:	49 8b 46 38                                     	mov    rax,QWORD PTR [r14+0x38]
  3a1659:	f3 44 0f 10 0d f2 bb ee ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffeebbf2]        # 0x28d254
  3a1662:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a1666:	48 8b 98 18 02 00 00                            	mov    rbx,QWORD PTR [rax+0x218]
  3a166d:	48 8b 40 08                                     	mov    rax,QWORD PTR [rax+0x8]
  3a1671:	f3 0f 10 b3 9c 00 00 00                         	movss  xmm6,DWORD PTR [rbx+0x9c]
  3a1679:	48 8b 48 40                                     	mov    rcx,QWORD PTR [rax+0x40]
  3a167d:	0f 28 d6                                        	movaps xmm2,xmm6
  3a1680:	f3 0f 10 8b 98 00 00 00                         	movss  xmm1,DWORD PTR [rbx+0x98]
  3a1688:	66 44 0f 6e 41 40                               	movd   xmm8,DWORD PTR [rcx+0x40]
  3a168e:	66 0f 6e 79 44                                  	movd   xmm7,DWORD PTR [rcx+0x44]
  3a1693:	48 8d 4d 28                                     	lea    rcx,[rbp+0x28]
  3a1697:	45 0f 5b c0                                     	cvtdq2ps xmm8,xmm8
  3a169b:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3a169e:	f3 41 0f 5e c0                                  	divss  xmm0,xmm8
  3a16a3:	f3 0f 11 45 50                                  	movss  DWORD PTR [rbp+0x50],xmm0
  3a16a8:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a16ac:	f3 0f 5e c7                                     	divss  xmm0,xmm7
  3a16b0:	f3 0f 11 45 5c                                  	movss  DWORD PTR [rbp+0x5c],xmm0
  3a16b5:	e8 86 ac f2 ff                                  	call   0x2cc340
  3a16ba:	f3 0f 10 8b 90 00 00 00                         	movss  xmm1,DWORD PTR [rbx+0x90]
  3a16c2:	48 8d 4d 78                                     	lea    rcx,[rbp+0x78]
  3a16c6:	0f 28 d6                                        	movaps xmm2,xmm6
  3a16c9:	e8 72 ac f2 ff                                  	call   0x2cc340
  3a16ce:	4c 8d 45 28                                     	lea    r8,[rbp+0x28]
  3a16d2:	48 8d 55 78                                     	lea    rdx,[rbp+0x78]
  3a16d6:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a16da:	e8 05 51 f9 ff                                  	call   0x3367e4
  3a16df:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [rbp+0x8]
  3a16e4:	8d 1c 7f                                        	lea    ebx,[rdi+rdi*2]
  3a16e7:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3a16ec:	c1 e3 02                                        	shl    ebx,0x2
  3a16ef:	48 63 c3                                        	movsxd rax,ebx
  3a16f2:	89 5d 34                                        	mov    DWORD PTR [rbp+0x34],ebx
  3a16f5:	f3 0f 11 45 54                                  	movss  DWORD PTR [rbp+0x54],xmm0
  3a16fa:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [rbp+0xc]
  3a16ff:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3a1703:	48 8d 48 0f                                     	lea    rcx,[rax+0xf]
  3a1707:	f3 0f 11 45 58                                  	movss  DWORD PTR [rbp+0x58],xmm0
  3a170c:	48 3b c8                                        	cmp    rcx,rax
  3a170f:	77 0a                                           	ja     0x3a171b
  3a1711:	48 b9 f0 ff ff ff ff ff ff 0f                   	movabs rcx,0xffffffffffffff0
  3a171b:	48 83 e1 f0                                     	and    rcx,0xfffffffffffffff0
  3a171f:	48 8b c1                                        	mov    rax,rcx
  3a1722:	e8 29 b9 f2 ff                                  	call   0x2cd050
  3a1727:	f3 44 0f 10 3d 90 ca ee ff                      	movss  xmm15,DWORD PTR [rip+0xffffffffffeeca90]        # 0x28e1c0
  3a1730:	48 2b e1                                        	sub    rsp,rcx
  3a1733:	48 8d 0c fd 00 00 00 00                         	lea    rcx,[rdi*8+0x0]
  3a173b:	c7 45 18 00 00 00 00                            	mov    DWORD PTR [rbp+0x18],0x0
  3a1742:	48 8b c7                                        	mov    rax,rdi
  3a1745:	4c 8d 6c 24 20                                  	lea    r13,[rsp+0x20]
  3a174a:	49 03 cd                                        	add    rcx,r13
  3a174d:	48 89 8d 98 00 00 00                            	mov    QWORD PTR [rbp+0x98],rcx
  3a1754:	85 ff                                           	test   edi,edi
  3a1756:	0f 8e b7 00 00 00                               	jle    0x3a1813
  3a175c:	44 8b 75 18                                     	mov    r14d,DWORD PTR [rbp+0x18]
  3a1760:	66 44 0f 6e d6                                  	movd   xmm10,esi
  3a1765:	45 0f 5b d2                                     	cvtdq2ps xmm10,xmm10
  3a1769:	41 8b de                                        	mov    ebx,r14d
  3a176c:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3a1773:	41 ff c6                                        	inc    r14d
  3a1776:	41 8b c6                                        	mov    eax,r14d
  3a1779:	99                                              	cdq
  3a177a:	f7 ff                                           	idiv   edi
  3a177c:	48 63 c2                                        	movsxd rax,edx
  3a177f:	f3 45 0f 10 04 c4                               	movss  xmm8,DWORD PTR [r12+rax*8]
  3a1785:	f3 45 0f 5c 04 dc                               	subss  xmm8,DWORD PTR [r12+rbx*8]
  3a178b:	f3 41 0f 10 7c c4 04                            	movss  xmm7,DWORD PTR [r12+rax*8+0x4]
  3a1792:	f3 41 0f 5c 7c dc 04                            	subss  xmm7,DWORD PTR [r12+rbx*8+0x4]
  3a1799:	44 0f 57 05 ff 1a ef ff                         	xorps  xmm8,XMMWORD PTR [rip+0xffffffffffef1aff]        # 0x2932a0
  3a17a1:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a17a5:	0f 28 cf                                        	movaps xmm1,xmm7
  3a17a8:	e8 93 ab f2 ff                                  	call   0x2cc340
  3a17ad:	48 8b c8                                        	mov    rcx,rax
  3a17b0:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3a17b4:	e8 9b 4d 00 00                                  	call   0x3a6554
  3a17b9:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a17bd:	48 8d 8d 88 00 00 00                            	lea    rcx,[rbp+0x88]
  3a17c4:	0f 28 cf                                        	movaps xmm1,xmm7
  3a17c7:	0f 28 f0                                        	movaps xmm6,xmm0
  3a17ca:	e8 71 ab f2 ff                                  	call   0x2cc340
  3a17cf:	48 8b d0                                        	mov    rdx,rax
  3a17d2:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a17d6:	0f 28 d6                                        	movaps xmm2,xmm6
  3a17d9:	e8 22 b2 fd ff                                  	call   0x37ca00
  3a17de:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a17e2:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a17e6:	48 8d 8d 80 00 00 00                            	lea    rcx,[rbp+0x80]
  3a17ed:	e8 16 a4 fe ff                                  	call   0x38bc08
  3a17f2:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a17f6:	f2 41 0f 11 44 dd 00                            	movsd  QWORD PTR [r13+rbx*8+0x0],xmm0
  3a17fd:	44 3b f7                                        	cmp    r14d,edi
  3a1800:	0f 8c 63 ff ff ff                               	jl     0x3a1769
  3a1806:	4c 8b b5 50 02 00 00                            	mov    r14,QWORD PTR [rbp+0x250]
  3a180d:	48 8b c7                                        	mov    rax,rdi
  3a1810:	8b 5d 34                                        	mov    ebx,DWORD PTR [rbp+0x34]
  3a1813:	f2 41 0f 10 44 c5 f8                            	movsd  xmm0,QWORD PTR [r13+rax*8-0x8]
  3a181a:	33 f6                                           	xor    esi,esi
  3a181c:	f3 44 0f 10 15 2b ba ee ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffeeba2b]        # 0x28d250
  3a1825:	f3 44 0f 10 1d b6 b6 f0 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff0b6b6]        # 0x2acee4
  3a182e:	f2 0f 11 45 08                                  	movsd  QWORD PTR [rbp+0x8],xmm0
  3a1833:	85 ff                                           	test   edi,edi
  3a1835:	7e 74                                           	jle    0x3a18ab
  3a1837:	4c 8b bd 98 00 00 00                            	mov    r15,QWORD PTR [rbp+0x98]
  3a183e:	f2 41 0f 10 7c f5 00                            	movsd  xmm7,QWORD PTR [r13+rsi*8+0x0]
  3a1845:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a1849:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3a184d:	f2 0f 11 7d 48                                  	movsd  QWORD PTR [rbp+0x48],xmm7
  3a1852:	8b c6                                           	mov    eax,esi
  3a1854:	e8 cf 32 00 00                                  	call   0x3a4b28
  3a1859:	0f 28 f0                                        	movaps xmm6,xmm0
  3a185c:	44 0f 2f de                                     	comiss xmm11,xmm6
  3a1860:	76 26                                           	jbe    0x3a1888
  3a1862:	e8 c5 6c 02 00                                  	call   0x3c852c
  3a1867:	44 0f 2f ee                                     	comiss xmm13,xmm6
  3a186b:	72 05                                           	jb     0x3a1872
  3a186d:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3a1872:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3a1877:	e8 20 71 02 00                                  	call   0x3c899c
  3a187c:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3a1880:	8b c6                                           	mov    eax,esi
  3a1882:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3a1886:	eb 04                                           	jmp    0x3a188c
  3a1888:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3a188c:	ff c6                                           	inc    esi
  3a188e:	f3 41 0f 11 0c 87                               	movss  DWORD PTR [r15+rax*4],xmm1
  3a1894:	f2 0f 11 7d 08                                  	movsd  QWORD PTR [rbp+0x8],xmm7
  3a1899:	3b f7                                           	cmp    esi,edi
  3a189b:	7c a1                                           	jl     0x3a183e
  3a189d:	4c 8b a5 58 02 00 00                            	mov    r12,QWORD PTR [rbp+0x258]
  3a18a4:	44 8b bd 80 02 00 00                            	mov    r15d,DWORD PTR [rbp+0x280]
  3a18ab:	41 8b c7                                        	mov    eax,r15d
  3a18ae:	f7 d8                                           	neg    eax
  3a18b0:	1b c9                                           	sbb    ecx,ecx
  3a18b2:	6b c7 0f                                        	imul   eax,edi,0xf
  3a18b5:	83 c1 0b                                        	add    ecx,0xb
  3a18b8:	0f af cf                                        	imul   ecx,edi
  3a18bb:	83 e8 06                                        	sub    eax,0x6
  3a18be:	45 85 ff                                        	test   r15d,r15d
  3a18c1:	89 4d 74                                        	mov    DWORD PTR [rbp+0x74],ecx
  3a18c4:	44 8b c1                                        	mov    r8d,ecx
  3a18c7:	0f 44 d8                                        	cmove  ebx,eax
  3a18ca:	49 8b ce                                        	mov    rcx,r14
  3a18cd:	8b d3                                           	mov    edx,ebx
  3a18cf:	89 5d 34                                        	mov    DWORD PTR [rbp+0x34],ebx
  3a18d2:	e8 c5 58 00 00                                  	call   0x3a719c
  3a18d7:	f2 41 0f 10 44 fd f8                            	movsd  xmm0,QWORD PTR [r13+rdi*8-0x8]
  3a18de:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a18e2:	41 0f b7 5e 34                                  	movzx  ebx,WORD PTR [r14+0x34]
  3a18e7:	49 8b d4                                        	mov    rdx,r12
  3a18ea:	4c 8b 85 78 02 00 00                            	mov    r8,QWORD PTR [rbp+0x278]
  3a18f1:	4d 8b 7e 50                                     	mov    r15,QWORD PTR [r14+0x50]
  3a18f5:	49 8b 76 48                                     	mov    rsi,QWORD PTR [r14+0x48]
  3a18f9:	f2 0f 11 45 20                                  	movsd  QWORD PTR [rbp+0x20],xmm0
  3a18fe:	66 89 5d 04                                     	mov    WORD PTR [rbp+0x4],bx
  3a1902:	e8 d1 e0 f4 ff                                  	call   0x2ef9d8
  3a1907:	80 7d 00 00                                     	cmp    BYTE PTR [rbp+0x0],0x0
  3a190b:	74 66                                           	je     0x3a1973
  3a190d:	4c 8d 45 20                                     	lea    r8,[rbp+0x20]
  3a1911:	49 8b d5                                        	mov    rdx,r13
  3a1914:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3a191b:	e8 b8 e0 f4 ff                                  	call   0x2ef9d8
  3a1920:	48 8b c8                                        	mov    rcx,rax
  3a1923:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3a1927:	e8 28 4c 00 00                                  	call   0x3a6554
  3a192c:	4c 8d 45 20                                     	lea    r8,[rbp+0x20]
  3a1930:	49 8b d5                                        	mov    rdx,r13
  3a1933:	48 8d 8d 88 00 00 00                            	lea    rcx,[rbp+0x88]
  3a193a:	0f 28 f0                                        	movaps xmm6,xmm0
  3a193d:	e8 96 e0 f4 ff                                  	call   0x2ef9d8
  3a1942:	48 8b d0                                        	mov    rdx,rax
  3a1945:	48 8d 8d 80 00 00 00                            	lea    rcx,[rbp+0x80]
  3a194c:	0f 28 d6                                        	movaps xmm2,xmm6
  3a194f:	e8 ac b0 fd ff                                  	call   0x37ca00
  3a1954:	48 8b d0                                        	mov    rdx,rax
  3a1957:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  3a195e:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a1962:	e8 a1 a2 fe ff                                  	call   0x38bc08
  3a1967:	48 8b d0                                        	mov    rdx,rax
  3a196a:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a196e:	e8 f5 b2 fe ff                                  	call   0x38cc68
  3a1973:	f2 44 0f 10 75 28                               	movsd  xmm14,QWORD PTR [rbp+0x28]
  3a1979:	33 c0                                           	xor    eax,eax
  3a197b:	89 45 30                                        	mov    DWORD PTR [rbp+0x30],eax
  3a197e:	85 ff                                           	test   edi,edi
  3a1980:	0f 8e 47 05 00 00                               	jle    0x3a1ecd
  3a1986:	f2 44 0f 10 65 40                               	movsd  xmm12,QWORD PTR [rbp+0x40]
  3a198c:	44 8d 70 02                                     	lea    r14d,[rax+0x2]
  3a1990:	4c 8b 85 78 02 00 00                            	mov    r8,QWORD PTR [rbp+0x278]
  3a1997:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a199b:	ff c0                                           	inc    eax
  3a199d:	89 45 70                                        	mov    DWORD PTR [rbp+0x70],eax
  3a19a0:	99                                              	cdq
  3a19a1:	f7 ff                                           	idiv   edi
  3a19a3:	48 63 c2                                        	movsxd rax,edx
  3a19a6:	48 89 45 68                                     	mov    QWORD PTR [rbp+0x68],rax
  3a19aa:	49 8d 14 c4                                     	lea    rdx,[r12+rax*8]
  3a19ae:	e8 25 e0 f4 ff                                  	call   0x2ef9d8
  3a19b3:	80 7d 00 00                                     	cmp    BYTE PTR [rbp+0x0],0x0
  3a19b7:	8b 45 30                                        	mov    eax,DWORD PTR [rbp+0x30]
  3a19ba:	48 8b 8d 98 00 00 00                            	mov    rcx,QWORD PTR [rbp+0x98]
  3a19c1:	f2 45 0f 10 44 c5 00                            	movsd  xmm8,QWORD PTR [r13+rax*8+0x0]
  3a19c8:	f3 0f 10 3c 81                                  	movss  xmm7,DWORD PTR [rcx+rax*4]
  3a19cd:	48 8b 45 68                                     	mov    rax,QWORD PTR [rbp+0x68]
  3a19d1:	f3 0f 11 7d 18                                  	movss  DWORD PTR [rbp+0x18],xmm7
  3a19d6:	f2 44 0f 11 45 10                               	movsd  QWORD PTR [rbp+0x10],xmm8
  3a19dc:	f3 0f 10 04 81                                  	movss  xmm0,DWORD PTR [rcx+rax*4]
  3a19e1:	f3 0f 11 45 68                                  	movss  DWORD PTR [rbp+0x68],xmm0
  3a19e6:	74 75                                           	je     0x3a1a5d
  3a19e8:	48 8d 1c c5 00 00 00 00                         	lea    rbx,[rax*8+0x0]
  3a19f0:	49 03 dd                                        	add    rbx,r13
  3a19f3:	4c 8d 45 10                                     	lea    r8,[rbp+0x10]
  3a19f7:	48 8b d3                                        	mov    rdx,rbx
  3a19fa:	48 8d 8d c8 00 00 00                            	lea    rcx,[rbp+0xc8]
  3a1a01:	e8 d2 df f4 ff                                  	call   0x2ef9d8
  3a1a06:	48 8b c8                                        	mov    rcx,rax
  3a1a09:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3a1a0d:	e8 42 4b 00 00                                  	call   0x3a6554
  3a1a12:	4c 8d 45 10                                     	lea    r8,[rbp+0x10]
  3a1a16:	48 8b d3                                        	mov    rdx,rbx
  3a1a19:	48 8d 8d d0 00 00 00                            	lea    rcx,[rbp+0xd0]
  3a1a20:	0f 28 f0                                        	movaps xmm6,xmm0
  3a1a23:	e8 b0 df f4 ff                                  	call   0x2ef9d8
  3a1a28:	48 8b d0                                        	mov    rdx,rax
  3a1a2b:	48 8d 8d d8 00 00 00                            	lea    rcx,[rbp+0xd8]
  3a1a32:	0f 28 d6                                        	movaps xmm2,xmm6
  3a1a35:	e8 c6 af fd ff                                  	call   0x37ca00
  3a1a3a:	48 8b d0                                        	mov    rdx,rax
  3a1a3d:	48 8d 8d e0 00 00 00                            	lea    rcx,[rbp+0xe0]
  3a1a44:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a1a48:	e8 bb a1 fe ff                                  	call   0x38bc08
  3a1a4d:	48 8b d0                                        	mov    rdx,rax
  3a1a50:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a1a54:	e8 0f b2 fe ff                                  	call   0x38cc68
  3a1a59:	0f b7 5d 04                                     	movzx  ebx,WORD PTR [rbp+0x4]
  3a1a5d:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3a1a61:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a1a65:	e8 be 30 00 00                                  	call   0x3a4b28
  3a1a6a:	44 0f 2f d8                                     	comiss xmm11,xmm0
  3a1a6e:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3a1a72:	0f 86 7a 02 00 00                               	jbe    0x3a1cf2
  3a1a78:	f3 44 0f 10 55 18                               	movss  xmm10,DWORD PTR [rbp+0x18]
  3a1a7e:	33 c0                                           	xor    eax,eax
  3a1a80:	44 8b 65 30                                     	mov    r12d,DWORD PTR [rbp+0x30]
  3a1a84:	ba 01 00 00 00                                  	mov    edx,0x1
  3a1a89:	8b bd 68 02 00 00                               	mov    edi,DWORD PTR [rbp+0x268]
  3a1a8f:	45 0f 28 da                                     	movaps xmm11,xmm10
  3a1a93:	f3 44 0f 59 9d 70 02 00 00                      	mulss  xmm11,DWORD PTR [rbp+0x270]
  3a1a9c:	44 0f 2f e8                                     	comiss xmm13,xmm0
  3a1aa0:	f3 44 0f 10 6d 50                               	movss  xmm13,DWORD PTR [rbp+0x50]
  3a1aa6:	0f 93 c0                                        	setae  al
  3a1aa9:	03 c2                                           	add    eax,edx
  3a1aab:	33 c9                                           	xor    ecx,ecx
  3a1aad:	89 45 60                                        	mov    DWORD PTR [rbp+0x60],eax
  3a1ab0:	89 4d 04                                        	mov    DWORD PTR [rbp+0x4],ecx
  3a1ab3:	3b c2                                           	cmp    eax,edx
  3a1ab5:	76 72                                           	jbe    0x3a1b29
  3a1ab7:	85 c9                                           	test   ecx,ecx
  3a1ab9:	75 50                                           	jne    0x3a1b0b
  3a1abb:	4c 8d 45 20                                     	lea    r8,[rbp+0x20]
  3a1abf:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a1ac3:	48 8d 8d e8 00 00 00                            	lea    rcx,[rbp+0xe8]
  3a1aca:	e8 09 df f4 ff                                  	call   0x2ef9d8
  3a1acf:	48 8b c8                                        	mov    rcx,rax
  3a1ad2:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3a1ad6:	e8 79 4a 00 00                                  	call   0x3a6554
  3a1adb:	4c 8d 45 20                                     	lea    r8,[rbp+0x20]
  3a1adf:	0f 28 f0                                        	movaps xmm6,xmm0
  3a1ae2:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a1ae6:	48 8d 8d f0 00 00 00                            	lea    rcx,[rbp+0xf0]
  3a1aed:	e8 e6 de f4 ff                                  	call   0x2ef9d8
  3a1af2:	48 8b d0                                        	mov    rdx,rax
  3a1af5:	48 8d 8d f8 00 00 00                            	lea    rcx,[rbp+0xf8]
  3a1afc:	0f 28 d6                                        	movaps xmm2,xmm6
  3a1aff:	e8 fc ae fd ff                                  	call   0x37ca00
  3a1b04:	f2 44 0f 10 00                                  	movsd  xmm8,QWORD PTR [rax]
  3a1b09:	eb 07                                           	jmp    0x3a1b12
  3a1b0b:	f2 47 0f 10 44 e5 00                            	movsd  xmm8,QWORD PTR [r13+r12*8+0x0]
  3a1b12:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3a1b16:	f2 44 0f 11 45 10                               	movsd  QWORD PTR [rbp+0x10],xmm8
  3a1b1c:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a1b20:	e8 03 30 00 00                                  	call   0x3a4b28
  3a1b25:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3a1b29:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a1b2d:	e8 fa 69 02 00                                  	call   0x3c852c
  3a1b32:	e8 35 73 02 00                                  	call   0x3c8e6c
  3a1b37:	0f 28 d8                                        	movaps xmm3,xmm0
  3a1b3a:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  3a1b3e:	f3 0f 10 45 54                                  	movss  xmm0,DWORD PTR [rbp+0x54]
  3a1b43:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3a1b47:	f3 0f 11 45 38                                  	movss  DWORD PTR [rbp+0x38],xmm0
  3a1b4c:	f3 0f 10 45 58                                  	movss  xmm0,DWORD PTR [rbp+0x58]
  3a1b51:	f3 0f 11 45 3c                                  	movss  DWORD PTR [rbp+0x3c],xmm0
  3a1b56:	e8 cd db ff ff                                  	call   0x39f728
  3a1b5b:	f3 0f 10 7d 38                                  	movss  xmm7,DWORD PTR [rbp+0x38]
  3a1b60:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3a1b64:	f3 0f 10 75 3c                                  	movss  xmm6,DWORD PTR [rbp+0x3c]
  3a1b69:	0f 28 d7                                        	movaps xmm2,xmm7
  3a1b6c:	0f 28 ce                                        	movaps xmm1,xmm6
  3a1b6f:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  3a1b73:	f3 41 0f 59 c9                                  	mulss  xmm1,xmm9
  3a1b78:	0f 28 c7                                        	movaps xmm0,xmm7
  3a1b7b:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  3a1b80:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  3a1b84:	0f 28 ce                                        	movaps xmm1,xmm6
  3a1b87:	f3 0f 59 cb                                     	mulss  xmm1,xmm3
  3a1b8b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3a1b8f:	e8 ac a7 f2 ff                                  	call   0x2cc340
  3a1b94:	f3 0f 10 55 5c                                  	movss  xmm2,DWORD PTR [rbp+0x5c]
  3a1b99:	4c 8d 45 38                                     	lea    r8,[rbp+0x38]
  3a1b9d:	f3 0f 10 45 48                                  	movss  xmm0,DWORD PTR [rbp+0x48]
  3a1ba2:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  3a1ba6:	f3 0f 10 4d 4c                                  	movss  xmm1,DWORD PTR [rbp+0x4c]
  3a1bab:	48 8d 8d b0 00 00 00                            	lea    rcx,[rbp+0xb0]
  3a1bb2:	f3 0f 59 f2                                     	mulss  xmm6,xmm2
  3a1bb6:	f3 41 0f 59 c5                                  	mulss  xmm0,xmm13
  3a1bbb:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  3a1bbf:	f3 41 0f 59 fd                                  	mulss  xmm7,xmm13
  3a1bc4:	f3 0f 11 75 3c                                  	movss  DWORD PTR [rbp+0x3c],xmm6
  3a1bc9:	f3 0f 11 45 48                                  	movss  DWORD PTR [rbp+0x48],xmm0
  3a1bce:	f3 0f 11 4d 4c                                  	movss  DWORD PTR [rbp+0x4c],xmm1
  3a1bd3:	f3 0f 11 7d 38                                  	movss  DWORD PTR [rbp+0x38],xmm7
  3a1bd8:	e8 fb dd f4 ff                                  	call   0x2ef9d8
  3a1bdd:	4c 8d 45 48                                     	lea    r8,[rbp+0x48]
  3a1be1:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  3a1be5:	48 8d 8d c0 00 00 00                            	lea    rcx,[rbp+0xc0]
  3a1bec:	e8 e7 dd f4 ff                                  	call   0x2ef9d8
  3a1bf1:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3a1bf5:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3a1bf9:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  3a1c00:	e8 03 a0 fe ff                                  	call   0x38bc08
  3a1c05:	4c 8b c0                                        	mov    r8,rax
  3a1c08:	48 8d 55 40                                     	lea    rdx,[rbp+0x40]
  3a1c0c:	48 8d 8d b8 00 00 00                            	lea    rcx,[rbp+0xb8]
  3a1c13:	e8 c0 dd f4 ff                                  	call   0x2ef9d8
  3a1c18:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3a1c1c:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a1c20:	48 8d 8d 08 01 00 00                            	lea    rcx,[rbp+0x108]
  3a1c27:	e8 dc 9f fe ff                                  	call   0x38bc08
  3a1c2c:	4c 8b c0                                        	mov    r8,rax
  3a1c2f:	48 8d 55 40                                     	lea    rdx,[rbp+0x40]
  3a1c33:	48 8d 8d a8 00 00 00                            	lea    rcx,[rbp+0xa8]
  3a1c3a:	e8 99 dd f4 ff                                  	call   0x2ef9d8
  3a1c3f:	f2 0f 10 85 a8 00 00 00                         	movsd  xmm0,QWORD PTR [rbp+0xa8]
  3a1c47:	ba 01 00 00 00                                  	mov    edx,0x1
  3a1c4c:	f2 0f 10 8d b0 00 00 00                         	movsd  xmm1,QWORD PTR [rbp+0xb0]
  3a1c54:	f2 44 0f 11 26                                  	movsd  QWORD PTR [rsi],xmm12
  3a1c59:	89 7e 10                                        	mov    DWORD PTR [rsi+0x10],edi
  3a1c5c:	f2 44 0f 11 76 08                               	movsd  QWORD PTR [rsi+0x8],xmm14
  3a1c62:	8d 04 1a                                        	lea    eax,[rdx+rbx*1]
  3a1c65:	f2 0f 11 46 14                                  	movsd  QWORD PTR [rsi+0x14],xmm0
  3a1c6a:	f2 0f 10 85 b8 00 00 00                         	movsd  xmm0,QWORD PTR [rbp+0xb8]
  3a1c72:	f2 0f 11 4e 1c                                  	movsd  QWORD PTR [rsi+0x1c],xmm1
  3a1c77:	f2 0f 10 8d c0 00 00 00                         	movsd  xmm1,QWORD PTR [rbp+0xc0]
  3a1c7f:	89 7e 24                                        	mov    DWORD PTR [rsi+0x24],edi
  3a1c82:	f2 0f 11 46 28                                  	movsd  QWORD PTR [rsi+0x28],xmm0
  3a1c87:	f2 0f 11 4e 30                                  	movsd  QWORD PTR [rsi+0x30],xmm1
  3a1c8c:	89 7e 38                                        	mov    DWORD PTR [rsi+0x38],edi
  3a1c8f:	48 83 c6 3c                                     	add    rsi,0x3c
  3a1c93:	66 41 89 1f                                     	mov    WORD PTR [r15],bx
  3a1c97:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a1c9c:	41 8d 04 1e                                     	lea    eax,[r14+rbx*1]
  3a1ca0:	66 41 89 47 04                                  	mov    WORD PTR [r15+0x4],ax
  3a1ca5:	49 83 c7 06                                     	add    r15,0x6
  3a1ca9:	8b 4d 04                                        	mov    ecx,DWORD PTR [rbp+0x4]
  3a1cac:	66 83 c3 03                                     	add    bx,0x3
  3a1cb0:	8b 45 60                                        	mov    eax,DWORD PTR [rbp+0x60]
  3a1cb3:	03 ca                                           	add    ecx,edx
  3a1cb5:	f2 44 0f 11 45 20                               	movsd  QWORD PTR [rbp+0x20],xmm8
  3a1cbb:	89 4d 04                                        	mov    DWORD PTR [rbp+0x4],ecx
  3a1cbe:	3b c8                                           	cmp    ecx,eax
  3a1cc0:	0f 8c ed fd ff ff                               	jl     0x3a1ab3
  3a1cc6:	f3 44 0f 10 15 81 b5 ee ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffeeb581]        # 0x28d250
  3a1ccf:	45 0f 57 ed                                     	xorps  xmm13,xmm13
  3a1cd3:	f3 0f 10 7d 18                                  	movss  xmm7,DWORD PTR [rbp+0x18]
  3a1cd8:	f3 44 0f 10 1d 03 b2 f0 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff0b203]        # 0x2acee4
  3a1ce1:	8b bd 60 02 00 00                               	mov    edi,DWORD PTR [rbp+0x260]
  3a1ce7:	4c 8b a5 58 02 00 00                            	mov    r12,QWORD PTR [rbp+0x258]
  3a1cee:	66 89 5d 04                                     	mov    WORD PTR [rbp+0x4],bx
  3a1cf2:	4c 8d 45 40                                     	lea    r8,[rbp+0x40]
  3a1cf6:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a1cfa:	48 8d 8d 10 01 00 00                            	lea    rcx,[rbp+0x110]
  3a1d01:	e8 de 4a f9 ff                                  	call   0x3367e4
  3a1d06:	48 8b c8                                        	mov    rcx,rax
  3a1d09:	41 0f 28 cd                                     	movaps xmm1,xmm13
  3a1d0d:	e8 42 48 00 00                                  	call   0x3a6554
  3a1d12:	0f 2f 05 b7 bd ee ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffeebdb7]        # 0x28dad0
  3a1d19:	f2 0f 10 75 08                                  	movsd  xmm6,QWORD PTR [rbp+0x8]
  3a1d1e:	0f 86 8b 01 00 00                               	jbe    0x3a1eaf
  3a1d24:	f3 0f 10 95 70 02 00 00                         	movss  xmm2,DWORD PTR [rbp+0x270]
  3a1d2c:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a1d30:	48 8d 8d 18 01 00 00                            	lea    rcx,[rbp+0x118]
  3a1d37:	e8 cc 9e fe ff                                  	call   0x38bc08
  3a1d3c:	48 8b d0                                        	mov    rdx,rax
  3a1d3f:	48 8d 8d 20 01 00 00                            	lea    rcx,[rbp+0x120]
  3a1d46:	0f 28 d7                                        	movaps xmm2,xmm7
  3a1d49:	e8 ba 9e fe ff                                  	call   0x38bc08
  3a1d4e:	4c 8b c0                                        	mov    r8,rax
  3a1d51:	48 8d 55 40                                     	lea    rdx,[rbp+0x40]
  3a1d55:	48 8d 8d 88 00 00 00                            	lea    rcx,[rbp+0x88]
  3a1d5c:	e8 77 dc f4 ff                                  	call   0x2ef9d8
  3a1d61:	f3 0f 10 95 70 02 00 00                         	movss  xmm2,DWORD PTR [rbp+0x270]
  3a1d69:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a1d6d:	48 8d 8d 28 01 00 00                            	lea    rcx,[rbp+0x128]
  3a1d74:	e8 8f 9e fe ff                                  	call   0x38bc08
  3a1d79:	f3 44 0f 10 45 68                               	movss  xmm8,DWORD PTR [rbp+0x68]
  3a1d7f:	48 8d 8d 30 01 00 00                            	lea    rcx,[rbp+0x130]
  3a1d86:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a1d8a:	48 8b d0                                        	mov    rdx,rax
  3a1d8d:	e8 76 9e fe ff                                  	call   0x38bc08
  3a1d92:	4c 8b c0                                        	mov    r8,rax
  3a1d95:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a1d99:	48 8d 8d a0 00 00 00                            	lea    rcx,[rbp+0xa0]
  3a1da0:	e8 33 dc f4 ff                                  	call   0x2ef9d8
  3a1da5:	4c 8d 45 28                                     	lea    r8,[rbp+0x28]
  3a1da9:	48 8d 55 78                                     	lea    rdx,[rbp+0x78]
  3a1dad:	48 8d 8d 38 01 00 00                            	lea    rcx,[rbp+0x138]
  3a1db4:	e8 2b 4a f9 ff                                  	call   0x3367e4
  3a1db9:	48 8b d0                                        	mov    rdx,rax
  3a1dbc:	48 8d 8d 40 01 00 00                            	lea    rcx,[rbp+0x140]
  3a1dc3:	0f 28 d7                                        	movaps xmm2,xmm7
  3a1dc6:	e8 3d 9e fe ff                                  	call   0x38bc08
  3a1dcb:	4c 8b c0                                        	mov    r8,rax
  3a1dce:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  3a1dd2:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3a1dd9:	e8 fa db f4 ff                                  	call   0x2ef9d8
  3a1dde:	4c 8d 45 28                                     	lea    r8,[rbp+0x28]
  3a1de2:	48 8d 55 78                                     	lea    rdx,[rbp+0x78]
  3a1de6:	48 8d 8d 48 01 00 00                            	lea    rcx,[rbp+0x148]
  3a1ded:	e8 f2 49 f9 ff                                  	call   0x3367e4
  3a1df2:	48 8b d0                                        	mov    rdx,rax
  3a1df5:	48 8d 8d 50 01 00 00                            	lea    rcx,[rbp+0x150]
  3a1dfc:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a1e00:	e8 03 9e fe ff                                  	call   0x38bc08
  3a1e05:	4c 8b c0                                        	mov    r8,rax
  3a1e08:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  3a1e0c:	48 8d 8d 80 00 00 00                            	lea    rcx,[rbp+0x80]
  3a1e13:	e8 c0 db f4 ff                                  	call   0x2ef9d8
  3a1e18:	8b 85 68 02 00 00                               	mov    eax,DWORD PTR [rbp+0x268]
  3a1e1e:	f2 0f 10 85 a0 00 00 00                         	movsd  xmm0,QWORD PTR [rbp+0xa0]
  3a1e26:	f2 0f 10 8d 80 00 00 00                         	movsd  xmm1,QWORD PTR [rbp+0x80]
  3a1e2e:	89 46 10                                        	mov    DWORD PTR [rsi+0x10],eax
  3a1e31:	f2 44 0f 11 26                                  	movsd  QWORD PTR [rsi],xmm12
  3a1e36:	f2 44 0f 11 76 08                               	movsd  QWORD PTR [rsi+0x8],xmm14
  3a1e3c:	89 46 24                                        	mov    DWORD PTR [rsi+0x24],eax
  3a1e3f:	f2 0f 11 76 14                                  	movsd  QWORD PTR [rsi+0x14],xmm6
  3a1e44:	f2 44 0f 11 76 1c                               	movsd  QWORD PTR [rsi+0x1c],xmm14
  3a1e4a:	89 46 38                                        	mov    DWORD PTR [rsi+0x38],eax
  3a1e4d:	f2 0f 11 46 28                                  	movsd  QWORD PTR [rsi+0x28],xmm0
  3a1e52:	f2 0f 10 85 88 00 00 00                         	movsd  xmm0,QWORD PTR [rbp+0x88]
  3a1e5a:	f2 0f 11 4e 30                                  	movsd  QWORD PTR [rsi+0x30],xmm1
  3a1e5f:	f2 0f 10 8d 90 00 00 00                         	movsd  xmm1,QWORD PTR [rbp+0x90]
  3a1e67:	89 46 4c                                        	mov    DWORD PTR [rsi+0x4c],eax
  3a1e6a:	b8 01 00 00 00                                  	mov    eax,0x1
  3a1e6f:	f2 0f 11 46 3c                                  	movsd  QWORD PTR [rsi+0x3c],xmm0
  3a1e74:	03 c3                                           	add    eax,ebx
  3a1e76:	f2 0f 11 4e 44                                  	movsd  QWORD PTR [rsi+0x44],xmm1
  3a1e7b:	48 83 c6 50                                     	add    rsi,0x50
  3a1e7f:	66 41 89 1f                                     	mov    WORD PTR [r15],bx
  3a1e83:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a1e88:	41 8d 04 1e                                     	lea    eax,[r14+rbx*1]
  3a1e8c:	66 41 89 47 04                                  	mov    WORD PTR [r15+0x4],ax
  3a1e91:	66 41 89 47 08                                  	mov    WORD PTR [r15+0x8],ax
  3a1e96:	8d 43 03                                        	lea    eax,[rbx+0x3]
  3a1e99:	66 41 89 5f 06                                  	mov    WORD PTR [r15+0x6],bx
  3a1e9e:	66 41 89 47 0a                                  	mov    WORD PTR [r15+0xa],ax
  3a1ea3:	49 83 c7 0c                                     	add    r15,0xc
  3a1ea7:	66 83 c3 04                                     	add    bx,0x4
  3a1eab:	66 89 5d 04                                     	mov    WORD PTR [rbp+0x4],bx
  3a1eaf:	8b 45 70                                        	mov    eax,DWORD PTR [rbp+0x70]
  3a1eb2:	44 0f 28 e6                                     	movaps xmm12,xmm6
  3a1eb6:	f2 0f 11 75 40                                  	movsd  QWORD PTR [rbp+0x40],xmm6
  3a1ebb:	89 45 30                                        	mov    DWORD PTR [rbp+0x30],eax
  3a1ebe:	3b c7                                           	cmp    eax,edi
  3a1ec0:	0f 8c ca fa ff ff                               	jl     0x3a1990
  3a1ec6:	4c 8b b5 50 02 00 00                            	mov    r14,QWORD PTR [rbp+0x250]
  3a1ecd:	83 bd 80 02 00 00 00                            	cmp    DWORD PTR [rbp+0x280],0x0
  3a1ed4:	0f 85 81 00 00 00                               	jne    0x3a1f5b
  3a1eda:	45 33 ed                                        	xor    r13d,r13d
  3a1edd:	85 ff                                           	test   edi,edi
  3a1edf:	7e 47                                           	jle    0x3a1f28
  3a1ee1:	44 8b b5 68 02 00 00                            	mov    r14d,DWORD PTR [rbp+0x268]
  3a1ee8:	4c 8b 85 78 02 00 00                            	mov    r8,QWORD PTR [rbp+0x278]
  3a1eef:	4b 8d 14 ec                                     	lea    rdx,[r12+r13*8]
  3a1ef3:	48 8d 8d 58 02 00 00                            	lea    rcx,[rbp+0x258]
  3a1efa:	e8 d9 da f4 ff                                  	call   0x2ef9d8
  3a1eff:	41 ff c5                                        	inc    r13d
  3a1f02:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a1f06:	f2 0f 11 06                                     	movsd  QWORD PTR [rsi],xmm0
  3a1f0a:	44 89 76 10                                     	mov    DWORD PTR [rsi+0x10],r14d
  3a1f0e:	f2 44 0f 11 76 08                               	movsd  QWORD PTR [rsi+0x8],xmm14
  3a1f14:	48 83 c6 14                                     	add    rsi,0x14
  3a1f18:	44 3b ef                                        	cmp    r13d,edi
  3a1f1b:	7c cb                                           	jl     0x3a1ee8
  3a1f1d:	4c 8b b5 50 02 00 00                            	mov    r14,QWORD PTR [rbp+0x250]
  3a1f24:	0f b7 5d 04                                     	movzx  ebx,WORD PTR [rbp+0x4]
  3a1f28:	ba 02 00 00 00                                  	mov    edx,0x2
  3a1f2d:	3b fa                                           	cmp    edi,edx
  3a1f2f:	7e 27                                           	jle    0x3a1f58
  3a1f31:	44 8d 42 ff                                     	lea    r8d,[rdx-0x1]
  3a1f35:	8d 0c 13                                        	lea    ecx,[rbx+rdx*1]
  3a1f38:	66 41 89 1f                                     	mov    WORD PTR [r15],bx
  3a1f3c:	0f b7 c1                                        	movzx  eax,cx
  3a1f3f:	66 41 89 4f 04                                  	mov    WORD PTR [r15+0x4],cx
  3a1f44:	66 41 2b c0                                     	sub    ax,r8w
  3a1f48:	41 03 d0                                        	add    edx,r8d
  3a1f4b:	66 41 89 47 02                                  	mov    WORD PTR [r15+0x2],ax
  3a1f50:	49 83 c7 06                                     	add    r15,0x6
  3a1f54:	3b d7                                           	cmp    edx,edi
  3a1f56:	7c dd                                           	jl     0x3a1f35
  3a1f58:	66 03 df                                        	add    bx,di
  3a1f5b:	48 8b ce                                        	mov    rcx,rsi
  3a1f5e:	48 b8 67 66 66 66 66 66 66 66                   	movabs rax,0x6666666666666667
  3a1f68:	49 2b 4e 48                                     	sub    rcx,QWORD PTR [r14+0x48]
  3a1f6c:	4d 8b c7                                        	mov    r8,r15
  3a1f6f:	4d 2b 46 50                                     	sub    r8,QWORD PTR [r14+0x50]
  3a1f73:	48 f7 e9                                        	imul   rcx
  3a1f76:	49 d1 f8                                        	sar    r8,1
  3a1f79:	49 8b ce                                        	mov    rcx,r14
  3a1f7c:	48 c1 fa 03                                     	sar    rdx,0x3
  3a1f80:	48 8b c2                                        	mov    rax,rdx
  3a1f83:	4d 89 7e 50                                     	mov    QWORD PTR [r14+0x50],r15
  3a1f87:	48 c1 e8 3f                                     	shr    rax,0x3f
  3a1f8b:	48 03 d0                                        	add    rdx,rax
  3a1f8e:	49 89 76 48                                     	mov    QWORD PTR [r14+0x48],rsi
  3a1f92:	0f b7 c3                                        	movzx  eax,bx
  3a1f95:	41 89 46 34                                     	mov    DWORD PTR [r14+0x34],eax
  3a1f99:	8b 45 74                                        	mov    eax,DWORD PTR [rbp+0x74]
  3a1f9c:	2b c2                                           	sub    eax,edx
  3a1f9e:	8b 55 34                                        	mov    edx,DWORD PTR [rbp+0x34]
  3a1fa1:	41 2b d0                                        	sub    edx,r8d
  3a1fa4:	44 8b c0                                        	mov    r8d,eax
  3a1fa7:	e8 78 52 00 00                                  	call   0x3a7224
  3a1fac:	0f 28 b5 f0 01 00 00                            	movaps xmm6,XMMWORD PTR [rbp+0x1f0]
  3a1fb3:	0f 28 bd e0 01 00 00                            	movaps xmm7,XMMWORD PTR [rbp+0x1e0]
  3a1fba:	44 0f 28 85 d0 01 00 00                         	movaps xmm8,XMMWORD PTR [rbp+0x1d0]
  3a1fc2:	44 0f 28 8d c0 01 00 00                         	movaps xmm9,XMMWORD PTR [rbp+0x1c0]
  3a1fca:	44 0f 28 95 b0 01 00 00                         	movaps xmm10,XMMWORD PTR [rbp+0x1b0]
  3a1fd2:	44 0f 28 9d a0 01 00 00                         	movaps xmm11,XMMWORD PTR [rbp+0x1a0]
  3a1fda:	44 0f 28 a5 90 01 00 00                         	movaps xmm12,XMMWORD PTR [rbp+0x190]
  3a1fe2:	44 0f 28 ad 80 01 00 00                         	movaps xmm13,XMMWORD PTR [rbp+0x180]
  3a1fea:	44 0f 28 b5 70 01 00 00                         	movaps xmm14,XMMWORD PTR [rbp+0x170]
  3a1ff2:	44 0f 28 bd 60 01 00 00                         	movaps xmm15,XMMWORD PTR [rbp+0x160]
  3a1ffa:	48 8d a5 08 02 00 00                            	lea    rsp,[rbp+0x208]
  3a2001:	41 5f                                           	pop    r15
  3a2003:	41 5e                                           	pop    r14
  3a2005:	41 5d                                           	pop    r13
  3a2007:	41 5c                                           	pop    r12
  3a2009:	5f                                              	pop    rdi
  3a200a:	5e                                              	pop    rsi
  3a200b:	5b                                              	pop    rbx
  3a200c:	5d                                              	pop    rbp
  3a200d:	c3                                              	ret
