
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000387664 <.data+0x387664>:
  387664:	48 8b c4                                        	mov    rax,rsp
  387667:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  38766b:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  38766f:	55                                              	push   rbp
  387670:	57                                              	push   rdi
  387671:	41 54                                           	push   r12
  387673:	41 56                                           	push   r14
  387675:	41 57                                           	push   r15
  387677:	48 8d 68 b8                                     	lea    rbp,[rax-0x48]
  38767b:	48 81 ec 20 01 00 00                            	sub    rsp,0x120
  387682:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  387686:	4c 8b f2                                        	mov    r14,rdx
  387689:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  38768d:	48 8b f9                                        	mov    rdi,rcx
  387690:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  387695:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  38769a:	e8 61 5b fd ff                                  	call   0x35d200
  38769f:	4c 8b f8                                        	mov    r15,rax
  3876a2:	e8 fd b5 00 00                                  	call   0x392ca4
  3876a7:	45 33 c0                                        	xor    r8d,r8d
  3876aa:	48 8b d7                                        	mov    rdx,rdi
  3876ad:	49 8b cf                                        	mov    rcx,r15
  3876b0:	4c 8b e0                                        	mov    r12,rax
  3876b3:	e8 5c af 00 00                                  	call   0x392614
  3876b8:	f3 0f 10 15 f8 ba f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff0baf8]        # 0x2931b8
  3876c0:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3876c5:	0f 28 ca                                        	movaps xmm1,xmm2
  3876c8:	8b d8                                           	mov    ebx,eax
  3876ca:	e8 71 4c f4 ff                                  	call   0x2cc340
  3876cf:	f2 41 0f 10 87 00 01 00 00                      	movsd  xmm0,QWORD PTR [r15+0x100]
  3876d8:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3876dd:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3876e2:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  3876e8:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3876ec:	e8 e7 82 f6 ff                                  	call   0x2ef9d8
  3876f1:	4c 8b c0                                        	mov    r8,rax
  3876f4:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3876f9:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3876fd:	e8 86 3c f5 ff                                  	call   0x2db388
  387702:	f3 0f 10 0d 56 bb f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0bb56]        # 0x293260
  38770a:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  38770e:	e8 6d 53 ff ff                                  	call   0x37ca80
  387713:	45 33 c9                                        	xor    r9d,r9d
  387716:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  38771a:	45 33 c0                                        	xor    r8d,r8d
  38771d:	8b d3                                           	mov    edx,ebx
  38771f:	e8 b8 d1 00 00                                  	call   0x3948dc
  387724:	4c 8d 4d 68                                     	lea    r9,[rbp+0x68]
  387728:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  387730:	4c 8d 45 60                                     	lea    r8,[rbp+0x60]
  387734:	8b d3                                           	mov    edx,ebx
  387736:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  38773a:	e8 a1 50 03 00                                  	call   0x3bc7e0
  38773f:	0f b7 4c 24 59                                  	movzx  ecx,WORD PTR [rsp+0x59]
  387744:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  387749:	66 89 4c 24 59                                  	mov    WORD PTR [rsp+0x59],cx
  38774e:	33 d2                                           	xor    edx,edx
  387750:	8a 4c 24 5b                                     	mov    cl,BYTE PTR [rsp+0x5b]
  387754:	8a d8                                           	mov    bl,al
  387756:	88 4c 24 5b                                     	mov    BYTE PTR [rsp+0x5b],cl
  38775a:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  38775e:	48 8b cf                                        	mov    rcx,rdi
  387761:	48 c7 44 24 50 00 00 00 00                      	mov    QWORD PTR [rsp+0x50],0x0
  38776a:	c6 44 24 58 00                                  	mov    BYTE PTR [rsp+0x58],0x0
  38776f:	e8 3c 96 ff ff                                  	call   0x380db0
  387774:	f3 0f 10 35 38 ba f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff0ba38]        # 0x2931b4
  38777c:	0f 57 c9                                        	xorps  xmm1,xmm1
  38777f:	f3 0f 10 15 cd 5a f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff05acd]        # 0x28d254
  387787:	48 8b f0                                        	mov    rsi,rax
  38778a:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  387790:	44 8a 48 08                                     	mov    r9b,BYTE PTR [rax+0x8]
  387794:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  387798:	e8 ab e6 fa ff                                  	call   0x335e48
  38779d:	80 7e 08 00                                     	cmp    BYTE PTR [rsi+0x8],0x0
  3877a1:	f3 0f 11 06                                     	movss  DWORD PTR [rsi],xmm0
  3877a5:	75 0b                                           	jne    0x3877b2
  3877a7:	80 7d 60 00                                     	cmp    BYTE PTR [rbp+0x60],0x0
  3877ab:	75 05                                           	jne    0x3877b2
  3877ad:	45 33 c9                                        	xor    r9d,r9d
  3877b0:	eb 03                                           	jmp    0x3877b5
  3877b2:	41 b1 01                                        	mov    r9b,0x1
  3877b5:	f3 0f 10 15 97 5a f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff05a97]        # 0x28d254
  3877bd:	0f 57 c9                                        	xorps  xmm1,xmm1
  3877c0:	f3 0f 10 46 04                                  	movss  xmm0,DWORD PTR [rsi+0x4]
  3877c5:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3877cb:	e8 78 e6 fa ff                                  	call   0x335e48
  3877d0:	f3 0f 11 46 04                                  	movss  DWORD PTR [rsi+0x4],xmm0
  3877d5:	49 8b d6                                        	mov    rdx,r14
  3877d8:	84 db                                           	test   bl,bl
  3877da:	0f 84 93 00 00 00                               	je     0x387873
  3877e0:	80 7e 08 00                                     	cmp    BYTE PTR [rsi+0x8],0x0
  3877e4:	75 0e                                           	jne    0x3877f4
  3877e6:	48 8d 0d 9b 81 ef ff                            	lea    rcx,[rip+0xffffffffffef819b]        # 0x27f988
  3877ed:	e8 de aa ff ff                                  	call   0x3822d0
  3877f2:	eb 73                                           	jmp    0x387867
  3877f4:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3877f8:	e8 6b 4a f4 ff                                  	call   0x2cc268
  3877fd:	4c 8d 35 84 81 ef ff                            	lea    r14,[rip+0xffffffffffef8184]        # 0x27f988
  387804:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  387809:	49 8b ce                                        	mov    rcx,r14
  38780c:	48 8b 38                                        	mov    rdi,QWORD PTR [rax]
  38780f:	e8 9c 0f f5 ff                                  	call   0x2d87b0
  387814:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  387819:	49 8b ce                                        	mov    rcx,r14
  38781c:	48 8b 18                                        	mov    rbx,QWORD PTR [rax]
  38781f:	e8 6c 05 f5 ff                                  	call   0x2d7d90
  387824:	4c 8b cf                                        	mov    r9,rdi
  387827:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  38782c:	4c 8b c3                                        	mov    r8,rbx
  38782f:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  387832:	e8 bd aa ff ff                                  	call   0x3822f4
  387837:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  38783c:	49 8b ce                                        	mov    rcx,r14
  38783f:	e8 6c 0f f5 ff                                  	call   0x2d87b0
  387844:	48 8b d0                                        	mov    rdx,rax
  387847:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  38784c:	e8 e3 4c f4 ff                                  	call   0x2cc534
  387851:	84 c0                                           	test   al,al
  387853:	75 12                                           	jne    0x387867
  387855:	4c 8b 44 24 60                                  	mov    r8,QWORD PTR [rsp+0x60]
  38785a:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  38785f:	49 8b ce                                        	mov    rcx,r14
  387862:	e8 0d fa ff ff                                  	call   0x387274
  387867:	80 7e 08 00                                     	cmp    BYTE PTR [rsi+0x8],0x0
  38786b:	0f 94 c0                                        	sete   al
  38786e:	88 46 08                                        	mov    BYTE PTR [rsi+0x8],al
  387871:	eb 6a                                           	jmp    0x3878dd
  387873:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  387878:	e8 eb 49 f4 ff                                  	call   0x2cc268
  38787d:	4c 8d 35 04 81 ef ff                            	lea    r14,[rip+0xffffffffffef8104]        # 0x27f988
  387884:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  387888:	49 8b ce                                        	mov    rcx,r14
  38788b:	48 8b 38                                        	mov    rdi,QWORD PTR [rax]
  38788e:	e8 1d 0f f5 ff                                  	call   0x2d87b0
  387893:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  387898:	49 8b ce                                        	mov    rcx,r14
  38789b:	48 8b 18                                        	mov    rbx,QWORD PTR [rax]
  38789e:	e8 ed 04 f5 ff                                  	call   0x2d7d90
  3878a3:	4c 8b cf                                        	mov    r9,rdi
  3878a6:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3878ab:	4c 8b c3                                        	mov    r8,rbx
  3878ae:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  3878b1:	e8 3e aa ff ff                                  	call   0x3822f4
  3878b6:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3878bb:	49 8b ce                                        	mov    rcx,r14
  3878be:	e8 ed 0e f5 ff                                  	call   0x2d87b0
  3878c3:	48 8b d0                                        	mov    rdx,rax
  3878c6:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3878cb:	e8 64 4c f4 ff                                  	call   0x2cc534
  3878d0:	84 c0                                           	test   al,al
  3878d2:	75 09                                           	jne    0x3878dd
  3878d4:	38 46 08                                        	cmp    BYTE PTR [rsi+0x8],al
  3878d7:	75 04                                           	jne    0x3878dd
  3878d9:	c6 46 08 01                                     	mov    BYTE PTR [rsi+0x8],0x1
  3878dd:	f3 41 0f 10 04 24                               	movss  xmm0,DWORD PTR [r12]
  3878e3:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3878e8:	f3 0f 59 05 f4 5d f0 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff05df4]        # 0x28d6e4
  3878f0:	41 b8 54 00 00 00                               	mov    r8d,0x54
  3878f6:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3878fd:	45 8b c8                                        	mov    r9d,r8d
  387900:	f3 44 0f 10 06                                  	movss  xmm8,DWORD PTR [rsi]
  387905:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  387909:	41 8d 50 52                                     	lea    edx,[r8+0x52]
  38790d:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  387911:	e8 02 3a f5 ff                                  	call   0x2db318
  387916:	f3 0f 10 0d ae b7 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0b7ae]        # 0x2930cc
  38791e:	b9 01 00 00 00                                  	mov    ecx,0x1
  387923:	f3 0f 10 7e 04                                  	movss  xmm7,DWORD PTR [rsi+0x4]
  387928:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  38792c:	e8 67 a9 00 00                                  	call   0x392298
  387931:	8b d0                                           	mov    edx,eax
  387933:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  387937:	e8 98 eb fa ff                                  	call   0x3364d4
  38793c:	f3 0f 10 0d 10 59 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff05910]        # 0x28d254
  387944:	be 02 00 00 00                                  	mov    esi,0x2
  387949:	8b ce                                           	mov    ecx,esi
  38794b:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  38794e:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  387954:	e8 3f a9 00 00                                  	call   0x392298
  387959:	8b d0                                           	mov    edx,eax
  38795b:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  38795f:	e8 70 eb fa ff                                  	call   0x3364d4
  387964:	0f 28 df                                        	movaps xmm3,xmm7
  387967:	66 0f 7f 74 24 70                               	movdqa XMMWORD PTR [rsp+0x70],xmm6
  38796d:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  387972:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  387976:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  387979:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  38797d:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  387982:	e8 1d 1c ff ff                                  	call   0x3795a4
  387987:	41 0f 28 d8                                     	movaps xmm3,xmm8
  38798b:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  387990:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  387995:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  387999:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  38799c:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  3879a2:	e8 fd 1b ff ff                                  	call   0x3795a4
  3879a7:	48 8b c8                                        	mov    rcx,rax
  3879aa:	e8 5d 7e f6 ff                                  	call   0x2ef80c
  3879af:	f3 0f 10 35 31 15 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec1531]        # 0x248ee8
  3879b7:	48 8d 0d 22 47 07 00                            	lea    rcx,[rip+0x74722]        # 0x3fc0e0
  3879be:	f3 0f 59 35 f2 b7 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff0b7f2]        # 0x2931b8
  3879c6:	8b d6                                           	mov    edx,esi
  3879c8:	8b d8                                           	mov    ebx,eax
  3879ca:	e8 e9 ed fa ff                                  	call   0x3367b8
  3879cf:	f3 0f 10 0d e1 b7 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0b7e1]        # 0x2931b8
  3879d7:	48 8b c8                                        	mov    rcx,rax
  3879da:	e8 0d d1 fd ff                                  	call   0x364aec
  3879df:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  3879e8:	4c 8d 4d 90                                     	lea    r9,[rbp-0x70]
  3879ec:	f3 44 0f 11 4c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm9
  3879f3:	48 8b d0                                        	mov    rdx,rax
  3879f6:	48 8d 05 8b 19 f2 ff                            	lea    rax,[rip+0xfffffffffff2198b]        # 0x2a9388
  3879fd:	48 c7 44 24 30 00 00 00 00                      	mov    QWORD PTR [rsp+0x30],0x0
  387a06:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  387a0b:	0f 28 d6                                        	movaps xmm2,xmm6
  387a0e:	48 8b cf                                        	mov    rcx,rdi
  387a11:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  387a15:	e8 de b7 01 00                                  	call   0x3a31f8
  387a1a:	4c 8d 9c 24 20 01 00 00                         	lea    r11,[rsp+0x120]
  387a22:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  387a26:	49 8b 73 38                                     	mov    rsi,QWORD PTR [r11+0x38]
  387a2a:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  387a2f:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  387a34:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  387a39:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  387a3e:	49 8b e3                                        	mov    rsp,r11
  387a41:	41 5f                                           	pop    r15
  387a43:	41 5e                                           	pop    r14
  387a45:	41 5c                                           	pop    r12
  387a47:	5f                                              	pop    rdi
  387a48:	5d                                              	pop    rbp
  387a49:	c3                                              	ret
