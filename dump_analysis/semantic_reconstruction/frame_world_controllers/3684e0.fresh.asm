
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3684e0.bin:     file format binary


Disassembly of section .data:

00000000003684e0 <.data>:
  3684e0:	48 8b c4             	mov    rax,rsp
  3684e3:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  3684e7:	55                   	push   rbp
  3684e8:	53                   	push   rbx
  3684e9:	56                   	push   rsi
  3684ea:	57                   	push   rdi
  3684eb:	41 54                	push   r12
  3684ed:	41 55                	push   r13
  3684ef:	41 56                	push   r14
  3684f1:	41 57                	push   r15
  3684f3:	48 8d a8 e8 fe ff ff 	lea    rbp,[rax-0x118]
  3684fa:	48 81 ec d8 01 00 00 	sub    rsp,0x1d8
  368501:	0f 29 70 a8          	movaps XMMWORD PTR [rax-0x58],xmm6
  368505:	45 33 f6             	xor    r14d,r14d
  368508:	44 89 b5 28 01 00 00 	mov    DWORD PTR [rbp+0x128],r14d
  36850f:	4c 8b f9             	mov    r15,rcx
  368512:	0f 29 78 98          	movaps XMMWORD PTR [rax-0x68],xmm7
  368516:	e8 ed 29 f6 ff       	call   0x2caf08
  36851b:	84 c0                	test   al,al
  36851d:	0f 84 3e 05 00 00    	je     0x368a61
  368523:	e8 74 81 f7 ff       	call   0x2e069c
  368528:	48 8b c8             	mov    rcx,rax
  36852b:	48 89 85 30 01 00 00 	mov    QWORD PTR [rbp+0x130],rax
  368532:	4c 8b e0             	mov    r12,rax
  368535:	e8 ce 29 f6 ff       	call   0x2caf08
  36853a:	84 c0                	test   al,al
  36853c:	0f 84 1f 05 00 00    	je     0x368a61
  368542:	48 8d 95 98 00 00 00 	lea    rdx,[rbp+0x98]
  368549:	48 8d 0d 80 02 eb ff 	lea    rcx,[rip+0xffffffffffeb0280]        # 0x2187d0
  368550:	e8 a7 b5 f7 ff       	call   0x2e3afc
  368555:	48 8b c8             	mov    rcx,rax
  368558:	48 8b d8             	mov    rbx,rax
  36855b:	e8 18 94 f6 ff       	call   0x2d1978
  368560:	48 8b cb             	mov    rcx,rbx
  368563:	48 8b f0             	mov    rsi,rax
  368566:	e8 55 f4 f6 ff       	call   0x2d79c0
  36856b:	48 89 85 38 01 00 00 	mov    QWORD PTR [rbp+0x138],rax
  368572:	48 3b f0             	cmp    rsi,rax
  368575:	0f 84 da 04 00 00    	je     0x368a55
  36857b:	0f 57 ff             	xorps  xmm7,xmm7
  36857e:	48 8b 1e             	mov    rbx,QWORD PTR [rsi]
  368581:	48 8b cb             	mov    rcx,rbx
  368584:	48 89 9d 28 01 00 00 	mov    QWORD PTR [rbp+0x128],rbx
  36858b:	e8 78 29 f6 ff       	call   0x2caf08
  368590:	84 c0                	test   al,al
  368592:	0f 84 ac 04 00 00    	je     0x368a44
  368598:	48 8b cb             	mov    rcx,rbx
  36859b:	e8 fc 88 f7 ff       	call   0x2e0e9c
  3685a0:	84 c0                	test   al,al
  3685a2:	0f 84 9c 04 00 00    	je     0x368a44
  3685a8:	40 8a 7e 08          	mov    dil,BYTE PTR [rsi+0x8]
  3685ac:	48 8b cb             	mov    rcx,rbx
  3685af:	40 8a d7             	mov    dl,dil
  3685b2:	e8 0d 29 00 00       	call   0x36aec4
  3685b7:	84 c0                	test   al,al
  3685b9:	0f 84 85 04 00 00    	je     0x368a44
  3685bf:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  3685c6:	e8 ad 1b 00 00       	call   0x36a178
  3685cb:	40 0a c7             	or     al,dil
  3685ce:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3685d3:	49 8b cc             	mov    rcx,r12
  3685d6:	41 0f 95 c5          	setne  r13b
  3685da:	e8 55 44 00 00       	call   0x36ca34
  3685df:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  3685e6:	40 8a d7             	mov    dl,dil
  3685e9:	e8 3e 4d f6 ff       	call   0x2cd32c
  3685ee:	48 8b d8             	mov    rbx,rax
  3685f1:	48 85 c0             	test   rax,rax
  3685f4:	74 14                	je     0x36860a
  3685f6:	40 8a d7             	mov    dl,dil
  3685f9:	49 8b cf             	mov    rcx,r15
  3685fc:	e8 2b 4d f6 ff       	call   0x2cd32c
  368601:	48 3b d8             	cmp    rbx,rax
  368604:	75 04                	jne    0x36860a
  368606:	b3 01                	mov    bl,0x1
  368608:	eb 02                	jmp    0x36860c
  36860a:	32 db                	xor    bl,bl
  36860c:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  368613:	48 8d 55 00          	lea    rdx,[rbp+0x0]
  368617:	44 8a c7             	mov    r8b,dil
  36861a:	41 83 ce 01          	or     r14d,0x1
  36861e:	e8 4d 18 00 00       	call   0x369e70
  368623:	48 8b d0             	mov    rdx,rax
  368626:	48 8d 0d 33 ec 06 00 	lea    rcx,[rip+0x6ec33]        # 0x3d7260
  36862d:	e8 d6 6f f7 ff       	call   0x2df608
  368632:	83 78 24 01          	cmp    DWORD PTR [rax+0x24],0x1
  368636:	74 09                	je     0x368641
  368638:	84 db                	test   bl,bl
  36863a:	75 05                	jne    0x368641
  36863c:	45 32 ff             	xor    r15b,r15b
  36863f:	eb 03                	jmp    0x368644
  368641:	41 b7 01             	mov    r15b,0x1
  368644:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  368648:	41 83 e6 fe          	and    r14d,0xfffffffe
  36864c:	e8 a3 3e f6 ff       	call   0x2cc4f4
  368651:	45 84 ff             	test   r15b,r15b
  368654:	74 0d                	je     0x368663
  368656:	80 3d 2b 15 08 00 00 	cmp    BYTE PTR [rip+0x8152b],0x0        # 0x3e9b88
  36865d:	0f 84 da 03 00 00    	je     0x368a3d
  368663:	48 8d 95 28 01 00 00 	lea    rdx,[rbp+0x128]
  36866a:	48 8d 0d bf da 07 00 	lea    rcx,[rip+0x7dabf]        # 0x3e6130
  368671:	e8 fe 70 f8 ff       	call   0x2ef774
  368676:	c6 00 00             	mov    BYTE PTR [rax],0x0
  368679:	80 3d c8 0e 08 00 00 	cmp    BYTE PTR [rip+0x80ec8],0x0        # 0x3e9548
  368680:	0f 84 d0 01 00 00    	je     0x368856
  368686:	45 84 ed             	test   r13b,r13b
  368689:	0f 85 c7 01 00 00    	jne    0x368856
  36868f:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  368693:	e8 24 f5 05 00       	call   0x3c7bbc
  368698:	48 8d 4d cc          	lea    rcx,[rbp-0x34]
  36869c:	e8 1b f5 05 00       	call   0x3c7bbc
  3686a1:	33 c0                	xor    eax,eax
  3686a3:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  3686a7:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  3686ab:	e8 f4 2c f6 ff       	call   0x2cb3a4
  3686b0:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  3686b7:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  3686bb:	33 c0                	xor    eax,eax
  3686bd:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  3686c0:	e8 9f 0a 00 00       	call   0x369164
  3686c5:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  3686cc:	48 8d 55 44          	lea    rdx,[rbp+0x44]
  3686d0:	f2 0f 10 30          	movsd  xmm6,QWORD PTR [rax]
  3686d4:	8b 58 08             	mov    ebx,DWORD PTR [rax+0x8]
  3686d7:	e8 24 fa ff ff       	call   0x368100
  3686dc:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  3686e1:	f2 0f 11 74 24 40    	movsd  QWORD PTR [rsp+0x40],xmm6
  3686e7:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3686ec:	89 5c 24 48          	mov    DWORD PTR [rsp+0x48],ebx
  3686f0:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  3686f4:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3686f8:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3686fb:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  368701:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  368705:	e8 92 6b f7 ff       	call   0x2df29c
  36870a:	f2 0f 10 4d 30       	movsd  xmm1,QWORD PTR [rbp+0x30]
  36870f:	4c 8d 45 c0          	lea    r8,[rbp-0x40]
  368713:	0f 10 45 20          	movups xmm0,XMMWORD PTR [rbp+0x20]
  368717:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  36871b:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
  368722:	00 
  368723:	f3 0f 10 1d 35 fb f3 	movss  xmm3,DWORD PTR [rip+0xfffffffffff3fb35]        # 0x2a8260
  36872a:	ff 
  36872b:	f2 0f 11 4d 10       	movsd  QWORD PTR [rbp+0x10],xmm1
  368730:	f3 0f 10 0d d0 4f 08 	movss  xmm1,DWORD PTR [rip+0x84fd0]        # 0x3ed708
  368737:	00 
  368738:	0f 29 45 00          	movaps XMMWORD PTR [rbp+0x0],xmm0
  36873c:	c7 44 24 20 00 00 02 	mov    DWORD PTR [rsp+0x20],0x20000
  368743:	00 
  368744:	e8 7f 29 00 00       	call   0x36b0c8
  368749:	48 8b 9d 28 01 00 00 	mov    rbx,QWORD PTR [rbp+0x128]
  368750:	33 d2                	xor    edx,edx
  368752:	48 8b cb             	mov    rcx,rbx
  368755:	44 8a e0             	mov    r12b,al
  368758:	e8 af 1a 00 00       	call   0x36a20c
  36875d:	84 c0                	test   al,al
  36875f:	0f 85 f8 00 00 00    	jne    0x36885d
  368765:	48 8b cb             	mov    rcx,rbx
  368768:	e8 1b 2b 00 00       	call   0x36b288
  36876d:	84 c0                	test   al,al
  36876f:	0f 85 e8 00 00 00    	jne    0x36885d
  368775:	48 8b cb             	mov    rcx,rbx
  368778:	e8 33 0c 00 00       	call   0x3693b0
  36877d:	41 0a c7             	or     al,r15b
  368780:	0f 85 d7 00 00 00    	jne    0x36885d
  368786:	45 84 e4             	test   r12b,r12b
  368789:	0f 84 ce 00 00 00    	je     0x36885d
  36878f:	f3 0f 10 45 dc       	movss  xmm0,DWORD PTR [rbp-0x24]
  368794:	0f 2e c7             	ucomiss xmm0,xmm7
  368797:	7a 06                	jp     0x36879f
  368799:	0f 84 be 00 00 00    	je     0x36885d
  36879f:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3687a3:	e8 78 11 fc ff       	call   0x329920
  3687a8:	48 8b c8             	mov    rcx,rax
  3687ab:	48 8b d8             	mov    rbx,rax
  3687ae:	e8 55 27 f6 ff       	call   0x2caf08
  3687b3:	84 c0                	test   al,al
  3687b5:	0f 84 9b 00 00 00    	je     0x368856
  3687bb:	8b 15 5f 67 09 00    	mov    edx,DWORD PTR [rip+0x9675f]        # 0x3fef20
  3687c1:	f6 c2 01             	test   dl,0x1
  3687c4:	75 20                	jne    0x3687e6
  3687c6:	4c 8b 05 33 e7 06 00 	mov    r8,QWORD PTR [rip+0x6e733]        # 0x3d6f00
  3687cd:	83 ca 01             	or     edx,0x1
  3687d0:	49 81 c0 b0 e7 97 05 	add    r8,0x597e7b0
  3687d7:	89 15 43 67 09 00    	mov    DWORD PTR [rip+0x96743],edx        # 0x3fef20
  3687dd:	4c 89 05 34 67 09 00 	mov    QWORD PTR [rip+0x96734],r8        # 0x3fef18
  3687e4:	eb 07                	jmp    0x3687ed
  3687e6:	4c 8b 05 2b 67 09 00 	mov    r8,QWORD PTR [rip+0x9672b]        # 0x3fef18
  3687ed:	f6 c2 02             	test   dl,0x2
  3687f0:	75 1f                	jne    0x368811
  3687f2:	48 8b 0d 67 d6 06 00 	mov    rcx,QWORD PTR [rip+0x6d667]        # 0x3d5e60
  3687f9:	83 ca 02             	or     edx,0x2
  3687fc:	89 15 1e 67 09 00    	mov    DWORD PTR [rip+0x9671e],edx        # 0x3fef20
  368802:	45 33 c9             	xor    r9d,r9d
  368805:	48 8d 15 24 67 09 00 	lea    rdx,[rip+0x96724]        # 0x3fef30
  36880c:	e8 13 35 f6 ff       	call   0x2cbd24
  368811:	48 8b 0d 48 d6 06 00 	mov    rcx,QWORD PTR [rip+0x6d648]        # 0x3d5e60
  368818:	48 8d 15 11 67 09 00 	lea    rdx,[rip+0x96711]        # 0x3fef30
  36881f:	4c 8b c3             	mov    r8,rbx
  368822:	e8 d5 31 f6 ff       	call   0x2cb9fc
  368827:	48 8b c8             	mov    rcx,rax
  36882a:	48 8b d8             	mov    rbx,rax
  36882d:	e8 d6 26 f6 ff       	call   0x2caf08
  368832:	84 c0                	test   al,al
  368834:	74 20                	je     0x368856
  368836:	e8 61 52 f7 ff       	call   0x2dda9c
  36883b:	48 3b d8             	cmp    rbx,rax
  36883e:	75 16                	jne    0x368856
  368840:	48 8d 95 28 01 00 00 	lea    rdx,[rbp+0x128]
  368847:	48 8d 0d e2 d8 07 00 	lea    rcx,[rip+0x7d8e2]        # 0x3e6130
  36884e:	e8 21 6f f8 ff       	call   0x2ef774
  368853:	c6 00 01             	mov    BYTE PTR [rax],0x1
  368856:	48 8b 9d 28 01 00 00 	mov    rbx,QWORD PTR [rbp+0x128]
  36885d:	45 33 ff             	xor    r15d,r15d
  368860:	44 38 3d e1 16 08 00 	cmp    BYTE PTR [rip+0x816e1],r15b        # 0x3e9f48
  368867:	75 16                	jne    0x36887f
  368869:	44 38 3d b8 f5 06 00 	cmp    BYTE PTR [rip+0x6f5b8],r15b        # 0x3d7e28
  368870:	75 0d                	jne    0x36887f
  368872:	44 38 3d 0f f5 06 00 	cmp    BYTE PTR [rip+0x6f50f],r15b        # 0x3d7d88
  368879:	0f 84 ec 00 00 00    	je     0x36896b
  36887f:	40 8a c7             	mov    al,dil
  368882:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  368887:	f6 d8                	neg    al
  368889:	48 8b cb             	mov    rcx,rbx
  36888c:	45 1b c0             	sbb    r8d,r8d
  36888f:	41 83 e0 d4          	and    r8d,0xffffffd4
  368893:	41 83 c0 37          	add    r8d,0x37
  368897:	e8 4c 03 00 00       	call   0x368be8
  36889c:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  3688a3:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  3688a7:	40 f6 df             	neg    dil
  3688aa:	45 1b c0             	sbb    r8d,r8d
  3688ad:	41 83 e0 d9          	and    r8d,0xffffffd9
  3688b1:	41 83 c0 36          	add    r8d,0x36
  3688b5:	e8 2e 03 00 00       	call   0x368be8
  3688ba:	f3 0f 10 5c 24 58    	movss  xmm3,DWORD PTR [rsp+0x58]
  3688c0:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  3688c4:	f3 0f 10 55 f4       	movss  xmm2,DWORD PTR [rbp-0xc]
  3688c9:	f3 0f 10 4c 24 50    	movss  xmm1,DWORD PTR [rsp+0x50]
  3688cf:	e8 d4 f2 05 00       	call   0x3c7ba8
  3688d4:	f3 0f 10 15 bc a7 f2 	movss  xmm2,DWORD PTR [rip+0xfffffffffff2a7bc]        # 0x293098
  3688db:	ff 
  3688dc:	48 8d 4d 5c          	lea    rcx,[rbp+0x5c]
  3688e0:	0f 57 db             	xorps  xmm3,xmm3
  3688e3:	0f 57 c9             	xorps  xmm1,xmm1
  3688e6:	48 8b d8             	mov    rbx,rax
  3688e9:	e8 ba f2 05 00       	call   0x3c7ba8
  3688ee:	4c 8b c0             	mov    r8,rax
  3688f1:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  3688f6:	48 8b cb             	mov    rcx,rbx
  3688f9:	e8 0a 6e f7 ff       	call   0x2df708
  3688fe:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  368904:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  368908:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  36890d:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  368913:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  368916:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  36891a:	f2 0f 11 45 90       	movsd  QWORD PTR [rbp-0x70],xmm0
  36891f:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
  368922:	e8 45 e1 f7 ff       	call   0x2e6a6c
  368927:	44 8b c0             	mov    r8d,eax
  36892a:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  368930:	0f 57 db             	xorps  xmm3,xmm3
  368933:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  368937:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  36893b:	e8 e0 99 f7 ff       	call   0x2e2320
  368940:	48 8d 95 28 01 00 00 	lea    rdx,[rbp+0x128]
  368947:	48 8d 0d 62 d7 07 00 	lea    rcx,[rip+0x7d762]        # 0x3e60b0
  36894e:	84 c0                	test   al,al
  368950:	74 0a                	je     0x36895c
  368952:	e8 1d 6e f8 ff       	call   0x2ef774
  368957:	c6 00 01             	mov    BYTE PTR [rax],0x1
  36895a:	eb 08                	jmp    0x368964
  36895c:	e8 13 6e f8 ff       	call   0x2ef774
  368961:	44 88 38             	mov    BYTE PTR [rax],r15b
  368964:	48 8b 9d 28 01 00 00 	mov    rbx,QWORD PTR [rbp+0x128]
  36896b:	44 38 3d 26 e9 07 00 	cmp    BYTE PTR [rip+0x7e926],r15b        # 0x3e7298
  368972:	0f 84 be 00 00 00    	je     0x368a36
  368978:	45 84 ed             	test   r13b,r13b
  36897b:	0f 85 b5 00 00 00    	jne    0x368a36
  368981:	41 bd 35 00 00 00    	mov    r13d,0x35
  368987:	48 8d 55 68          	lea    rdx,[rbp+0x68]
  36898b:	45 8b c5             	mov    r8d,r13d
  36898e:	48 8b cb             	mov    rcx,rbx
  368991:	e8 52 02 00 00       	call   0x368be8
  368996:	48 8b 8d 28 01 00 00 	mov    rcx,QWORD PTR [rbp+0x128]
  36899d:	48 8d 55 74          	lea    rdx,[rbp+0x74]
  3689a1:	45 8b c5             	mov    r8d,r13d
  3689a4:	f2 0f 10 30          	movsd  xmm6,QWORD PTR [rax]
  3689a8:	8b 58 08             	mov    ebx,DWORD PTR [rax+0x8]
  3689ab:	e8 38 02 00 00       	call   0x368be8
  3689b0:	f3 0f 10 15 8c 51 f2 	movss  xmm2,DWORD PTR [rip+0xfffffffffff2518c]        # 0x28db44
  3689b7:	ff 
  3689b8:	48 8d 8d 80 00 00 00 	lea    rcx,[rbp+0x80]
  3689bf:	0f 57 db             	xorps  xmm3,xmm3
  3689c2:	f2 0f 11 75 a0       	movsd  QWORD PTR [rbp-0x60],xmm6
  3689c7:	0f 57 c9             	xorps  xmm1,xmm1
  3689ca:	89 5d a8             	mov    DWORD PTR [rbp-0x58],ebx
  3689cd:	48 8b f8             	mov    rdi,rax
  3689d0:	e8 d3 f1 05 00       	call   0x3c7ba8
  3689d5:	4c 8b c0             	mov    r8,rax
  3689d8:	48 8d 95 8c 00 00 00 	lea    rdx,[rbp+0x8c]
  3689df:	48 8b cf             	mov    rcx,rdi
  3689e2:	e8 21 6d f7 ff       	call   0x2df708
  3689e7:	0f 57 db             	xorps  xmm3,xmm3
  3689ea:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  3689f0:	41 b8 00 00 20 00    	mov    r8d,0x200000
  3689f6:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  3689fa:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  3689fe:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  368a02:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  368a05:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
  368a0a:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
  368a0d:	e8 0e 99 f7 ff       	call   0x2e2320
  368a12:	48 8d 95 28 01 00 00 	lea    rdx,[rbp+0x128]
  368a19:	48 8d 0d d0 d6 07 00 	lea    rcx,[rip+0x7d6d0]        # 0x3e60f0
  368a20:	84 c0                	test   al,al
  368a22:	74 0a                	je     0x368a2e
  368a24:	e8 4b 6d f8 ff       	call   0x2ef774
  368a29:	c6 00 01             	mov    BYTE PTR [rax],0x1
  368a2c:	eb 08                	jmp    0x368a36
  368a2e:	e8 41 6d f8 ff       	call   0x2ef774
  368a33:	44 88 38             	mov    BYTE PTR [rax],r15b
  368a36:	4c 8b a5 30 01 00 00 	mov    r12,QWORD PTR [rbp+0x130]
  368a3d:	4c 8b bd 20 01 00 00 	mov    r15,QWORD PTR [rbp+0x120]
  368a44:	48 83 c6 10          	add    rsi,0x10
  368a48:	48 3b b5 38 01 00 00 	cmp    rsi,QWORD PTR [rbp+0x138]
  368a4f:	0f 85 29 fb ff ff    	jne    0x36857e
  368a55:	48 8d 8d 98 00 00 00 	lea    rcx,[rbp+0x98]
  368a5c:	e8 1f 6a f7 ff       	call   0x2df480
  368a61:	4c 8d 9c 24 d8 01 00 	lea    r11,[rsp+0x1d8]
  368a68:	00 
  368a69:	41 0f 28 73 e8       	movaps xmm6,XMMWORD PTR [r11-0x18]
  368a6e:	41 0f 28 7b d8       	movaps xmm7,XMMWORD PTR [r11-0x28]
  368a73:	49 8b e3             	mov    rsp,r11
  368a76:	41 5f                	pop    r15
  368a78:	41 5e                	pop    r14
  368a7a:	41 5d                	pop    r13
  368a7c:	41 5c                	pop    r12
  368a7e:	5f                   	pop    rdi
  368a7f:	5e                   	pop    rsi
  368a80:	5b                   	pop    rbx
  368a81:	5d                   	pop    rbp
  368a82:	c3                   	ret
