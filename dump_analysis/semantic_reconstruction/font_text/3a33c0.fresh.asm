
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a33c0 <.data+0x3a33c0>:
  3a33c0:	48 89 5c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbx
  3a33c5:	55                                              	push   rbp
  3a33c6:	56                                              	push   rsi
  3a33c7:	57                                              	push   rdi
  3a33c8:	41 54                                           	push   r12
  3a33ca:	41 55                                           	push   r13
  3a33cc:	41 56                                           	push   r14
  3a33ce:	41 57                                           	push   r15
  3a33d0:	48 83 ec 30                                     	sub    rsp,0x30
  3a33d4:	33 ff                                           	xor    edi,edi
  3a33d6:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  3a33db:	33 db                                           	xor    ebx,ebx
  3a33dd:	4c 8d 71 28                                     	lea    r14,[rcx+0x28]
  3a33e1:	48 8b f1                                        	mov    rsi,rcx
  3a33e4:	44 8d 6f 01                                     	lea    r13d,[rdi+0x1]
  3a33e8:	41 39 1e                                        	cmp    DWORD PTR [r14],ebx
  3a33eb:	74 20                                           	je     0x3a340d
  3a33ed:	8b d3                                           	mov    edx,ebx
  3a33ef:	49 8b ce                                        	mov    rcx,r14
  3a33f2:	e8 39 c2 ff ff                                  	call   0x39f630
  3a33f7:	8b cf                                           	mov    ecx,edi
  3a33f9:	8b 10                                           	mov    edx,DWORD PTR [rax]
  3a33fb:	c1 ea 02                                        	shr    edx,0x2
  3a33fe:	e8 89 be ff ff                                  	call   0x39f28c
  3a3403:	41 03 dd                                        	add    ebx,r13d
  3a3406:	8b f8                                           	mov    edi,eax
  3a3408:	41 3b 1e                                        	cmp    ebx,DWORD PTR [r14]
  3a340b:	75 e0                                           	jne    0x3a33ed
  3a340d:	48 8b ce                                        	mov    rcx,rsi
  3a3410:	e8 63 61 fd ff                                  	call   0x379578
  3a3415:	4c 8d 66 18                                     	lea    r12,[rsi+0x18]
  3a3419:	49 8b cc                                        	mov    rcx,r12
  3a341c:	e8 57 61 fd ff                                  	call   0x379578
  3a3421:	33 c0                                           	xor    eax,eax
  3a3423:	c6 46 60 00                                     	mov    BYTE PTR [rsi+0x60],0x0
  3a3427:	8d 6f 01                                        	lea    ebp,[rdi+0x1]
  3a342a:	66 89 46 74                                     	mov    WORD PTR [rsi+0x74],ax
  3a342e:	8b d5                                           	mov    edx,ebp
  3a3430:	48 8b ce                                        	mov    rcx,rsi
  3a3433:	e8 84 16 00 00                                  	call   0x3a4abc
  3a3438:	41 8b 1e                                        	mov    ebx,DWORD PTR [r14]
  3a343b:	45 33 ff                                        	xor    r15d,r15d
  3a343e:	85 db                                           	test   ebx,ebx
  3a3440:	7e 6a                                           	jle    0x3a34ac
  3a3442:	41 8b d7                                        	mov    edx,r15d
  3a3445:	49 8b ce                                        	mov    rcx,r14
  3a3448:	e8 e3 c1 ff ff                                  	call   0x39f630
  3a344d:	48 8b ce                                        	mov    rcx,rsi
  3a3450:	8b 38                                           	mov    edi,DWORD PTR [rax]
  3a3452:	c1 ef 02                                        	shr    edi,0x2
  3a3455:	8b d7                                           	mov    edx,edi
  3a3457:	e8 1c 87 fe ff                                  	call   0x38bb78
  3a345c:	41 8b d7                                        	mov    edx,r15d
  3a345f:	49 8b ce                                        	mov    rcx,r14
  3a3462:	48 8b d8                                        	mov    rbx,rax
  3a3465:	e8 c6 c1 ff ff                                  	call   0x39f630
  3a346a:	8b d7                                           	mov    edx,edi
  3a346c:	8b 48 04                                        	mov    ecx,DWORD PTR [rax+0x4]
  3a346f:	89 0b                                           	mov    DWORD PTR [rbx],ecx
  3a3471:	49 8b cc                                        	mov    rcx,r12
  3a3474:	e8 8b c1 ff ff                                  	call   0x39f604
  3a3479:	66 44 89 38                                     	mov    WORD PTR [rax],r15w
  3a347d:	8b c7                                           	mov    eax,edi
  3a347f:	99                                              	cdq
  3a3480:	45 03 fd                                        	add    r15d,r13d
  3a3483:	81 e2 ff 0f 00 00                               	and    edx,0xfff
  3a3489:	03 c2                                           	add    eax,edx
  3a348b:	c1 f8 0c                                        	sar    eax,0xc
  3a348e:	48 63 d0                                        	movsxd rdx,eax
  3a3491:	83 e0 07                                        	and    eax,0x7
  3a3494:	48 c1 fa 03                                     	sar    rdx,0x3
  3a3498:	0f b6 4c 16 74                                  	movzx  ecx,BYTE PTR [rsi+rdx*1+0x74]
  3a349d:	0f ab c1                                        	bts    ecx,eax
  3a34a0:	88 4c 16 74                                     	mov    BYTE PTR [rsi+rdx*1+0x74],cl
  3a34a4:	41 8b 1e                                        	mov    ebx,DWORD PTR [r14]
  3a34a7:	44 3b fb                                        	cmp    r15d,ebx
  3a34aa:	7c 96                                           	jl     0x3a3442
  3a34ac:	41 bf 20 00 00 00                               	mov    r15d,0x20
  3a34b2:	48 8b ce                                        	mov    rcx,rsi
  3a34b5:	41 8b d7                                        	mov    edx,r15d
  3a34b8:	e8 63 10 00 00                                  	call   0x3a4520
  3a34bd:	48 85 c0                                        	test   rax,rax
  3a34c0:	0f 84 8e 00 00 00                               	je     0x3a3554
  3a34c6:	49 8b ce                                        	mov    rcx,r14
  3a34c9:	e8 62 5e 00 00                                  	call   0x3a9330
  3a34ce:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3a34d0:	c1 e9 02                                        	shr    ecx,0x2
  3a34d3:	83 f9 09                                        	cmp    ecx,0x9
  3a34d6:	74 0b                                           	je     0x3a34e3
  3a34d8:	8d 53 01                                        	lea    edx,[rbx+0x1]
  3a34db:	49 8b ce                                        	mov    rcx,r14
  3a34de:	e8 b1 78 fd ff                                  	call   0x37ad94
  3a34e3:	49 8b ce                                        	mov    rcx,r14
  3a34e6:	e8 45 5e 00 00                                  	call   0x3a9330
  3a34eb:	41 8b d7                                        	mov    edx,r15d
  3a34ee:	48 8b ce                                        	mov    rcx,rsi
  3a34f1:	48 8b d8                                        	mov    rbx,rax
  3a34f4:	e8 27 10 00 00                                  	call   0x3a4520
  3a34f9:	48 8b ce                                        	mov    rcx,rsi
  3a34fc:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3a34ff:	0f 11 03                                        	movups XMMWORD PTR [rbx],xmm0
  3a3502:	0f 10 48 10                                     	movups xmm1,XMMWORD PTR [rax+0x10]
  3a3506:	0f 11 4b 10                                     	movups XMMWORD PTR [rbx+0x10],xmm1
  3a350a:	f2 0f 10 40 20                                  	movsd  xmm0,QWORD PTR [rax+0x20]
  3a350f:	f2 0f 11 43 20                                  	movsd  QWORD PTR [rbx+0x20],xmm0
  3a3514:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  3a3516:	f3 0f 10 73 04                                  	movss  xmm6,DWORD PTR [rbx+0x4]
  3a351b:	83 e2 03                                        	and    edx,0x3
  3a351e:	f3 0f 59 35 52 fc ee ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffeefc52]        # 0x293178
  3a3526:	83 ca 24                                        	or     edx,0x24
  3a3529:	89 13                                           	mov    DWORD PTR [rbx],edx
  3a352b:	c1 ea 02                                        	shr    edx,0x2
  3a352e:	f3 0f 11 73 04                                  	movss  DWORD PTR [rbx+0x4],xmm6
  3a3533:	e8 40 86 fe ff                                  	call   0x38bb78
  3a3538:	49 8b cc                                        	mov    rcx,r12
  3a353b:	f3 0f 11 30                                     	movss  DWORD PTR [rax],xmm6
  3a353f:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  3a3541:	c1 ea 02                                        	shr    edx,0x2
  3a3544:	e8 bb c0 ff ff                                  	call   0x39f604
  3a3549:	41 0f b7 0e                                     	movzx  ecx,WORD PTR [r14]
  3a354d:	66 41 2b cd                                     	sub    cx,r13w
  3a3551:	66 89 08                                        	mov    WORD PTR [rax],cx
  3a3554:	41 8b d7                                        	mov    edx,r15d
  3a3557:	45 33 c0                                        	xor    r8d,r8d
  3a355a:	48 8b ce                                        	mov    rcx,rsi
  3a355d:	e8 fe 4b 00 00                                  	call   0x3a8160
  3a3562:	ba 09 00 00 00                                  	mov    edx,0x9
  3a3567:	45 33 c0                                        	xor    r8d,r8d
  3a356a:	48 8b ce                                        	mov    rcx,rsi
  3a356d:	e8 ee 4b 00 00                                  	call   0x3a8160
  3a3572:	0f b7 5e 54                                     	movzx  ebx,WORD PTR [rsi+0x54]
  3a3576:	41 bc ff ff 00 00                               	mov    r12d,0xffff
  3a357c:	c7 44 24 70 26 20 85 00                         	mov    DWORD PTR [rsp+0x70],0x852026
  3a3584:	bf 02 00 00 00                                  	mov    edi,0x2
  3a3589:	c7 44 24 78 2e 00 0e ff                         	mov    DWORD PTR [rsp+0x78],0xff0e002e
  3a3591:	66 41 3b dc                                     	cmp    bx,r12w
  3a3595:	75 17                                           	jne    0x3a35ae
  3a3597:	44 8b c7                                        	mov    r8d,edi
  3a359a:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3a359f:	48 8b ce                                        	mov    rcx,rsi
  3a35a2:	e8 2d 0f 00 00                                  	call   0x3a44d4
  3a35a7:	0f b7 d8                                        	movzx  ebx,ax
  3a35aa:	66 89 46 54                                     	mov    WORD PTR [rsi+0x54],ax
  3a35ae:	44 8b c7                                        	mov    r8d,edi
  3a35b1:	48 8d 54 24 78                                  	lea    rdx,[rsp+0x78]
  3a35b6:	48 8b ce                                        	mov    rcx,rsi
  3a35b9:	e8 16 0f 00 00                                  	call   0x3a44d4
  3a35be:	0f b7 f8                                        	movzx  edi,ax
  3a35c1:	66 41 3b dc                                     	cmp    bx,r12w
  3a35c5:	0f 84 c1 00 00 00                               	je     0x3a368c
  3a35cb:	8b 46 5c                                        	mov    eax,DWORD PTR [rsi+0x5c]
  3a35ce:	89 46 58                                        	mov    DWORD PTR [rsi+0x58],eax
  3a35d1:	66 44 89 6e 56                                  	mov    WORD PTR [rsi+0x56],r13w
  3a35d6:	bb 03 00 00 00                                  	mov    ebx,0x3
  3a35db:	0f b7 56 52                                     	movzx  edx,WORD PTR [rsi+0x52]
  3a35df:	48 8b ce                                        	mov    rcx,rsi
  3a35e2:	c7 44 24 70 fd ff 3f 00                         	mov    DWORD PTR [rsp+0x70],0x3ffffd
  3a35ea:	66 44 89 7c 24 74                               	mov    WORD PTR [rsp+0x74],r15w
  3a35f0:	e8 5f 0f 00 00                                  	call   0x3a4554
  3a35f5:	48 89 46 38                                     	mov    QWORD PTR [rsi+0x38],rax
  3a35f9:	48 85 c0                                        	test   rax,rax
  3a35fc:	75 3d                                           	jne    0x3a363b
  3a35fe:	44 8b c3                                        	mov    r8d,ebx
  3a3601:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3a3606:	48 8b ce                                        	mov    rcx,rsi
  3a3609:	e8 c6 0e 00 00                                  	call   0x3a44d4
  3a360e:	0f b7 d0                                        	movzx  edx,ax
  3a3611:	66 89 46 52                                     	mov    WORD PTR [rsi+0x52],ax
  3a3615:	48 8b ce                                        	mov    rcx,rsi
  3a3618:	e8 37 0f 00 00                                  	call   0x3a4554
  3a361d:	48 89 46 38                                     	mov    QWORD PTR [rsi+0x38],rax
  3a3621:	48 85 c0                                        	test   rax,rax
  3a3624:	75 15                                           	jne    0x3a363b
  3a3626:	49 8b ce                                        	mov    rcx,r14
  3a3629:	e8 02 5d 00 00                                  	call   0x3a9330
  3a362e:	48 89 46 38                                     	mov    QWORD PTR [rsi+0x38],rax
  3a3632:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3a3634:	c1 e9 02                                        	shr    ecx,0x2
  3a3637:	66 89 4e 52                                     	mov    WORD PTR [rsi+0x52],cx
  3a363b:	8b 40 04                                        	mov    eax,DWORD PTR [rax+0x4]
  3a363e:	33 db                                           	xor    ebx,ebx
  3a3640:	89 46 10                                        	mov    DWORD PTR [rsi+0x10],eax
  3a3643:	85 ed                                           	test   ebp,ebp
  3a3645:	7e 28                                           	jle    0x3a366f
  3a3647:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a364a:	8b d3                                           	mov    edx,ebx
  3a364c:	48 8b ce                                        	mov    rcx,rsi
  3a364f:	e8 24 85 fe ff                                  	call   0x38bb78
  3a3654:	0f 2f 30                                        	comiss xmm6,DWORD PTR [rax]
  3a3657:	76 0f                                           	jbe    0x3a3668
  3a3659:	8b d3                                           	mov    edx,ebx
  3a365b:	48 8b ce                                        	mov    rcx,rsi
  3a365e:	e8 15 85 fe ff                                  	call   0x38bb78
  3a3663:	8b 4e 10                                        	mov    ecx,DWORD PTR [rsi+0x10]
  3a3666:	89 08                                           	mov    DWORD PTR [rax],ecx
  3a3668:	41 03 dd                                        	add    ebx,r13d
  3a366b:	3b dd                                           	cmp    ebx,ebp
  3a366d:	7c db                                           	jl     0x3a364a
  3a366f:	48 8b 9c 24 80 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x80]
  3a3677:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  3a367c:	48 83 c4 30                                     	add    rsp,0x30
  3a3680:	41 5f                                           	pop    r15
  3a3682:	41 5e                                           	pop    r14
  3a3684:	41 5d                                           	pop    r13
  3a3686:	41 5c                                           	pop    r12
  3a3688:	5f                                              	pop    rdi
  3a3689:	5e                                              	pop    rsi
  3a368a:	5d                                              	pop    rbp
  3a368b:	c3                                              	ret
  3a368c:	66 41 3b fc                                     	cmp    di,r12w
  3a3690:	0f 84 40 ff ff ff                               	je     0x3a35d6
  3a3696:	0f b7 d7                                        	movzx  edx,di
  3a3699:	48 8b ce                                        	mov    rcx,rsi
  3a369c:	e8 7f 0e 00 00                                  	call   0x3a4520
  3a36a1:	f3 0f 10 05 ab 9b ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee9bab]        # 0x28d254
  3a36a9:	bb 03 00 00 00                                  	mov    ebx,0x3
  3a36ae:	66 89 7e 54                                     	mov    WORD PTR [rsi+0x54],di
  3a36b2:	66 89 5e 56                                     	mov    WORD PTR [rsi+0x56],bx
  3a36b6:	f3 0f 10 48 10                                  	movss  xmm1,DWORD PTR [rax+0x10]
  3a36bb:	f3 0f 5c 48 08                                  	subss  xmm1,DWORD PTR [rax+0x8]
  3a36c0:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3a36c4:	f3 0f 11 4e 5c                                  	movss  DWORD PTR [rsi+0x5c],xmm1
  3a36c9:	f3 0f 59 0d 87 fa ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffeefa87]        # 0x293158
  3a36d1:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3a36d5:	f3 0f 11 4e 58                                  	movss  DWORD PTR [rsi+0x58],xmm1
  3a36da:	e9 fc fe ff ff                                  	jmp    0x3a35db
