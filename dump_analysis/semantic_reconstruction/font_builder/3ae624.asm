
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae624 <.data+0x3ae624>:
  3ae624:	48 83 ec 28                                     	sub    rsp,0x28
  3ae628:	f3 0f 10 25 24 ec ed ff                         	movss  xmm4,DWORD PTR [rip+0xffffffffffedec24]        # 0x28d254
  3ae630:	66 0f 6e c2                                     	movd   xmm0,edx
  3ae634:	0f 28 ec                                        	movaps xmm5,xmm4
  3ae637:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ae63a:	49 63 c1                                        	movsxd rax,r9d
  3ae63d:	4c 8b 4c 24 50                                  	mov    r9,QWORD PTR [rsp+0x50]
  3ae642:	48 6b d0 1c                                     	imul   rdx,rax,0x1c
  3ae646:	f3 0f 5e e8                                     	divss  xmm5,xmm0
  3ae64a:	83 7c 24 68 00                                  	cmp    DWORD PTR [rsp+0x68],0x0
  3ae64f:	66 41 0f 6e c0                                  	movd   xmm0,r8d
  3ae654:	4c 8b 44 24 60                                  	mov    r8,QWORD PTR [rsp+0x60]
  3ae659:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ae65c:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  3ae660:	f3 0f 10 44 0a 08                               	movss  xmm0,DWORD PTR [rdx+rcx*1+0x8]
  3ae666:	f3 41 0f 58 01                                  	addss  xmm0,DWORD PTR [r9]
  3ae66b:	74 6a                                           	je     0x3ae6d7
  3ae66d:	f3 0f 10 15 db eb ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffedebdb]        # 0x28d250
  3ae675:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3ae679:	e8 6a 4a fe ff                                  	call   0x3930e8
  3ae67e:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3ae682:	f3 0f 10 44 0a 0c                               	movss  xmm0,DWORD PTR [rdx+rcx*1+0xc]
  3ae688:	0f 57 db                                        	xorps  xmm3,xmm3
  3ae68b:	f3 0f 2a d8                                     	cvtsi2ss xmm3,eax
  3ae68f:	48 8b 44 24 58                                  	mov    rax,QWORD PTR [rsp+0x58]
  3ae694:	f3 0f 58 00                                     	addss  xmm0,DWORD PTR [rax]
  3ae698:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3ae69c:	e8 47 4a fe ff                                  	call   0x3930e8
  3ae6a1:	f3 41 0f 11 18                                  	movss  DWORD PTR [r8],xmm3
  3ae6a6:	0f 57 d2                                        	xorps  xmm2,xmm2
  3ae6a9:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3ae6ad:	f3 0f 2a d0                                     	cvtsi2ss xmm2,eax
  3ae6b1:	f3 41 0f 11 50 04                               	movss  DWORD PTR [r8+0x4],xmm2
  3ae6b7:	f3 0f 58 5c 0a 14                               	addss  xmm3,DWORD PTR [rdx+rcx*1+0x14]
  3ae6bd:	f3 0f 5c 5c 0a 08                               	subss  xmm3,DWORD PTR [rdx+rcx*1+0x8]
  3ae6c3:	f3 41 0f 11 58 10                               	movss  DWORD PTR [r8+0x10],xmm3
  3ae6c9:	f3 0f 58 54 0a 18                               	addss  xmm2,DWORD PTR [rdx+rcx*1+0x18]
  3ae6cf:	f3 0f 5c 54 0a 0c                               	subss  xmm2,DWORD PTR [rdx+rcx*1+0xc]
  3ae6d5:	eb 35                                           	jmp    0x3ae70c
  3ae6d7:	48 8b 44 24 58                                  	mov    rax,QWORD PTR [rsp+0x58]
  3ae6dc:	f3 41 0f 11 00                                  	movss  DWORD PTR [r8],xmm0
  3ae6e1:	f3 0f 10 44 0a 0c                               	movss  xmm0,DWORD PTR [rdx+rcx*1+0xc]
  3ae6e7:	f3 0f 58 00                                     	addss  xmm0,DWORD PTR [rax]
  3ae6eb:	f3 41 0f 11 40 04                               	movss  DWORD PTR [r8+0x4],xmm0
  3ae6f1:	f3 0f 10 44 0a 14                               	movss  xmm0,DWORD PTR [rdx+rcx*1+0x14]
  3ae6f7:	f3 41 0f 58 01                                  	addss  xmm0,DWORD PTR [r9]
  3ae6fc:	f3 41 0f 11 40 10                               	movss  DWORD PTR [r8+0x10],xmm0
  3ae702:	f3 0f 10 54 0a 18                               	movss  xmm2,DWORD PTR [rdx+rcx*1+0x18]
  3ae708:	f3 0f 58 10                                     	addss  xmm2,DWORD PTR [rax]
  3ae70c:	f3 41 0f 11 50 14                               	movss  DWORD PTR [r8+0x14],xmm2
  3ae712:	0f b7 04 0a                                     	movzx  eax,WORD PTR [rdx+rcx*1]
  3ae716:	66 0f 6e c0                                     	movd   xmm0,eax
  3ae71a:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ae71d:	f3 0f 59 c5                                     	mulss  xmm0,xmm5
  3ae721:	f3 41 0f 11 40 08                               	movss  DWORD PTR [r8+0x8],xmm0
  3ae727:	0f b7 44 0a 02                                  	movzx  eax,WORD PTR [rdx+rcx*1+0x2]
  3ae72c:	66 0f 6e c8                                     	movd   xmm1,eax
  3ae730:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3ae733:	f3 0f 59 cc                                     	mulss  xmm1,xmm4
  3ae737:	f3 41 0f 11 48 0c                               	movss  DWORD PTR [r8+0xc],xmm1
  3ae73d:	0f b7 44 0a 04                                  	movzx  eax,WORD PTR [rdx+rcx*1+0x4]
  3ae742:	66 0f 6e c0                                     	movd   xmm0,eax
  3ae746:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ae749:	f3 0f 59 c5                                     	mulss  xmm0,xmm5
  3ae74d:	f3 41 0f 11 40 18                               	movss  DWORD PTR [r8+0x18],xmm0
  3ae753:	0f b7 44 0a 06                                  	movzx  eax,WORD PTR [rdx+rcx*1+0x6]
  3ae758:	66 0f 6e c8                                     	movd   xmm1,eax
  3ae75c:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3ae75f:	f3 0f 59 cc                                     	mulss  xmm1,xmm4
  3ae763:	f3 41 0f 11 48 1c                               	movss  DWORD PTR [r8+0x1c],xmm1
  3ae769:	f3 0f 10 44 0a 10                               	movss  xmm0,DWORD PTR [rdx+rcx*1+0x10]
  3ae76f:	f3 41 0f 58 01                                  	addss  xmm0,DWORD PTR [r9]
  3ae774:	f3 41 0f 11 01                                  	movss  DWORD PTR [r9],xmm0
  3ae779:	48 83 c4 28                                     	add    rsp,0x28
  3ae77d:	c3                                              	ret
