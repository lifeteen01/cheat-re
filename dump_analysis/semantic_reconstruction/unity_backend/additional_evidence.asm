  2c3794:	48 8b c4             	mov    rax,rsp
  2c3797:	55                   	push   rbp
  2c3798:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  2c379c:	48 81 ec f0 00 00 00 	sub    rsp,0xf0
  2c37a3:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  2c37a7:	48 8d 4d d7          	lea    rcx,[rbp-0x29]
  2c37ab:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  2c37af:	0f 57 db             	xorps  xmm3,xmm3
  2c37b2:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  2c37b7:	0f 57 d2             	xorps  xmm2,xmm2
  2c37ba:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  2c37bf:	0f 57 c9             	xorps  xmm1,xmm1
  2c37c2:	f3 44 0f 10 0d 89 9a 	movss  xmm9,DWORD PTR [rip+0xfffffffffffc9a89]        # 0x28d254
  2c37c9:	fc ff 
  2c37cb:	45 0f 57 c0          	xorps  xmm8,xmm8
  2c37cf:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  2c37d6:	e8 75 8b 00 00       	call   0x2cc350
  2c37db:	41 0f 28 d9          	movaps xmm3,xmm9
  2c37df:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  2c37e6:	0f 57 d2             	xorps  xmm2,xmm2
  2c37e9:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  2c37ed:	0f 57 c9             	xorps  xmm1,xmm1
  2c37f0:	f3 0f 6f 38          	movdqu xmm7,XMMWORD PTR [rax]
  2c37f4:	e8 57 8b 00 00       	call   0x2cc350
  2c37f9:	0f 57 db             	xorps  xmm3,xmm3
  2c37fc:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  2c3803:	41 0f 28 d1          	movaps xmm2,xmm9
  2c3807:	48 8d 4d f7          	lea    rcx,[rbp-0x9]
  2c380b:	0f 57 c9             	xorps  xmm1,xmm1
  2c380e:	f3 0f 6f 30          	movdqu xmm6,XMMWORD PTR [rax]
  2c3812:	e8 39 8b 00 00       	call   0x2cc350
  2c3817:	0f 57 db             	xorps  xmm3,xmm3
  2c381a:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  2c3821:	0f 57 d2             	xorps  xmm2,xmm2
  2c3824:	66 0f 7f 7d 97       	movdqa XMMWORD PTR [rbp-0x69],xmm7
  2c3829:	41 0f 28 c9          	movaps xmm1,xmm9
  2c382d:	66 0f 7f 75 a7       	movdqa XMMWORD PTR [rbp-0x59],xmm6
  2c3832:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  2c3835:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  2c3839:	f3 0f 7f 45 b7       	movdqu XMMWORD PTR [rbp-0x49],xmm0
  2c383e:	e8 0d 8b 00 00       	call   0x2cc350
  2c3843:	4c 8d 4d a7          	lea    r9,[rbp-0x59]
  2c3847:	4c 8d 45 b7          	lea    r8,[rbp-0x49]
  2c384b:	48 8d 55 c7          	lea    rdx,[rbp-0x39]
  2c384f:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  2c3852:	48 8d 45 97          	lea    rax,[rbp-0x69]
  2c3856:	48 8d 0d 83 98 14 00 	lea    rcx,[rip+0x149883]        # 0x40d0e0
  2c385d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  2c3862:	f3 0f 7f 45 c7       	movdqu XMMWORD PTR [rbp-0x39],xmm0
  2c3867:	e8 3c d1 0e 00       	call   0x3b09a8
  2c386c:	4c 8d 9c 24 f0 00 00 	lea    r11,[rsp+0xf0]
  2c3873:	00 
  2c3874:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  2c3879:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  2c387e:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  2c3883:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  2c3888:	49 8b e3             	mov    rsp,r11
  2c388b:	5d                   	pop    rbp
  2c388c:	c3                   	ret
  2cb3a4:	48 8b c1             	mov    rax,rcx
  2cb3a7:	c3                   	ret
  31aa90:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  31aa95:	57                   	push   rdi
  31aa96:	48 83 ec 20          	sub    rsp,0x20
  31aa9a:	48 83 79 10 00       	cmp    QWORD PTR [rcx+0x10],0x0
  31aa9f:	48 8b d9             	mov    rbx,rcx
  31aaa2:	74 49                	je     0x31aaed
  31aaa4:	e8 67 d3 fb ff       	call   0x2d7e10
  31aaa9:	48 c1 e8 03          	shr    rax,0x3
  31aaad:	48 3b 43 10          	cmp    rax,QWORD PTR [rbx+0x10]
  31aab1:	76 14                	jbe    0x31aac7
  31aab3:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
  31aab7:	48 8b cb             	mov    rcx,rbx
  31aaba:	4c 8b c2             	mov    r8,rdx
  31aabd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
  31aac0:	e8 ef f9 ff ff       	call   0x31a4b4
  31aac5:	eb 26                	jmp    0x31aaed
  31aac7:	48 8d 4b 08          	lea    rcx,[rbx+0x8]
  31aacb:	e8 f8 00 00 00       	call   0x31abc8
  31aad0:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31aad5:	48 8b cb             	mov    rcx,rbx
  31aad8:	e8 8f ce fb ff       	call   0x2d796c
  31aadd:	48 8b 53 20          	mov    rdx,QWORD PTR [rbx+0x20]
  31aae1:	4c 8b c0             	mov    r8,rax
  31aae4:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  31aae8:	e8 b7 7f fb ff       	call   0x2d2aa4
  31aaed:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  31aaf2:	48 83 c4 20          	add    rsp,0x20
  31aaf6:	5f                   	pop    rdi
  31aaf7:	c3                   	ret
  31aaf8:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  31aafd:	57                   	push   rdi
  31aafe:	48 83 ec 20          	sub    rsp,0x20
  31ab02:	48 83 79 10 00       	cmp    QWORD PTR [rcx+0x10],0x0
  31ab07:	48 8b d9             	mov    rbx,rcx
  31ab0a:	74 49                	je     0x31ab55
  31ab0c:	e8 ff d2 fb ff       	call   0x2d7e10
  31ab11:	48 c1 e8 03          	shr    rax,0x3
  31ab15:	48 3b 43 10          	cmp    rax,QWORD PTR [rbx+0x10]
  31ab19:	76 14                	jbe    0x31ab2f
  31ab1b:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
  31ab1f:	48 8b cb             	mov    rcx,rbx
  31ab22:	4c 8b c2             	mov    r8,rdx
  31ab25:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
  31ab28:	e8 b3 fa ff ff       	call   0x31a5e0
  31ab2d:	eb 26                	jmp    0x31ab55
  31ab2f:	48 8d 4b 08          	lea    rcx,[rbx+0x8]
  31ab33:	e8 c4 00 00 00       	call   0x31abfc
  31ab38:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31ab3d:	48 8b cb             	mov    rcx,rbx
  31ab40:	e8 27 ce fb ff       	call   0x2d796c
  31ab45:	48 8b 53 20          	mov    rdx,QWORD PTR [rbx+0x20]
  31ab49:	4c 8b c0             	mov    r8,rax
  31ab4c:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  31ab50:	e8 4f 7f fb ff       	call   0x2d2aa4
  31ab55:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  31ab5a:	48 83 c4 20          	add    rsp,0x20
  31ab5e:	5f                   	pop    rdi
  31ab5f:	c3                   	ret
  31ab60:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  31ab65:	57                   	push   rdi
  31ab66:	48 83 ec 20          	sub    rsp,0x20
  31ab6a:	48 83 79 10 00       	cmp    QWORD PTR [rcx+0x10],0x0
  31ab6f:	48 8b d9             	mov    rbx,rcx
  31ab72:	74 49                	je     0x31abbd
  31ab74:	e8 97 d2 fb ff       	call   0x2d7e10
  31ab79:	48 c1 e8 03          	shr    rax,0x3
  31ab7d:	48 3b 43 10          	cmp    rax,QWORD PTR [rbx+0x10]
  31ab81:	76 14                	jbe    0x31ab97
  31ab83:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
  31ab87:	48 8b cb             	mov    rcx,rbx
  31ab8a:	4c 8b c2             	mov    r8,rdx
  31ab8d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
  31ab90:	e8 77 fb ff ff       	call   0x31a70c
  31ab95:	eb 26                	jmp    0x31abbd
  31ab97:	48 8d 4b 08          	lea    rcx,[rbx+0x8]
  31ab9b:	e8 90 00 00 00       	call   0x31ac30
  31aba0:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31aba5:	48 8b cb             	mov    rcx,rbx
  31aba8:	e8 bf cd fb ff       	call   0x2d796c
  31abad:	48 8b 53 20          	mov    rdx,QWORD PTR [rbx+0x20]
  31abb1:	4c 8b c0             	mov    r8,rax
  31abb4:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  31abb8:	e8 e7 7e fb ff       	call   0x2d2aa4
  31abbd:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  31abc2:	48 83 c4 20          	add    rsp,0x20
  31abc6:	5f                   	pop    rdi
  31abc7:	c3                   	ret
  31abc8:	40 53                	rex push rbx
  31abca:	48 83 ec 20          	sub    rsp,0x20
  31abce:	48 8b d9             	mov    rbx,rcx
  31abd1:	e8 4e 27 fb ff       	call   0x2cd324
  31abd6:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  31abd9:	48 8b c8             	mov    rcx,rax
  31abdc:	e8 b3 12 fd ff       	call   0x2ebe94
  31abe1:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31abe4:	48 89 00             	mov    QWORD PTR [rax],rax
  31abe7:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31abea:	48 89 40 08          	mov    QWORD PTR [rax+0x8],rax
  31abee:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
  31abf5:	00 
  31abf6:	48 83 c4 20          	add    rsp,0x20
  31abfa:	5b                   	pop    rbx
  31abfb:	c3                   	ret
  31abfc:	40 53                	rex push rbx
  31abfe:	48 83 ec 20          	sub    rsp,0x20
  31ac02:	48 8b d9             	mov    rbx,rcx
  31ac05:	e8 1a 27 fb ff       	call   0x2cd324
  31ac0a:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  31ac0d:	48 8b c8             	mov    rcx,rax
  31ac10:	e8 c3 12 fd ff       	call   0x2ebed8
  31ac15:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31ac18:	48 89 00             	mov    QWORD PTR [rax],rax
  31ac1b:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31ac1e:	48 89 40 08          	mov    QWORD PTR [rax+0x8],rax
  31ac22:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
  31ac29:	00 
  31ac2a:	48 83 c4 20          	add    rsp,0x20
  31ac2e:	5b                   	pop    rbx
  31ac2f:	c3                   	ret
  31ac30:	40 53                	rex push rbx
  31ac32:	48 83 ec 20          	sub    rsp,0x20
  31ac36:	48 8b d9             	mov    rbx,rcx
  31ac39:	e8 e6 26 fb ff       	call   0x2cd324
  31ac3e:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  31ac41:	48 8b c8             	mov    rcx,rax
  31ac44:	e8 d3 12 fd ff       	call   0x2ebf1c
  31ac49:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31ac4c:	48 89 00             	mov    QWORD PTR [rax],rax
  31ac4f:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31ac52:	48 89 40 08          	mov    QWORD PTR [rax+0x8],rax
  31ac56:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
  31ac5d:	00 
  31ac5e:	48 83 c4 20          	add    rsp,0x20
  31ac62:	5b                   	pop    rbx
  31ac63:	c3                   	ret
  31ac64:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  31ac67:	48 3b 41 08          	cmp    rax,QWORD PTR [rcx+0x8]
  31ac6b:	74 04                	je     0x31ac71
  31ac6d:	48 89 41 08          	mov    QWORD PTR [rcx+0x8],rax
  31ac71:	c3                   	ret
  31ac72:	cc                   	int3
  31ac73:	cc                   	int3
  31ac74:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  31ac79:	57                   	push   rdi
  31ac7a:	48 83 ec 20          	sub    rsp,0x20
  31ac7e:	48 8b 39             	mov    rdi,QWORD PTR [rcx]
  31ac81:	48 8b d9             	mov    rbx,rcx
  31ac84:	48 3b 79 08          	cmp    rdi,QWORD PTR [rcx+0x8]
  31ac88:	74 1b                	je     0x31aca5
  31ac8a:	e8 95 26 fb ff       	call   0x2cd324
  31ac8f:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
  31ac93:	4c 8b c0             	mov    r8,rax
  31ac96:	48 8b cf             	mov    rcx,rdi
  31ac99:	e8 ba 33 fc ff       	call   0x2de058
  31ac9e:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  31aca1:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  31aca5:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  31acaa:	48 83 c4 20          	add    rsp,0x20
  31acae:	5f                   	pop    rdi
  31acaf:	c3                   	ret
  31acb0:	40 53                	rex push rbx
  31acb2:	48 83 ec 20          	sub    rsp,0x20
  31acb6:	48 8b d9             	mov    rbx,rcx
  31acb9:	48 83 c1 18          	add    rcx,0x18
  31acbd:	e8 a2 ff ff ff       	call   0x31ac64
  31acc2:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
  31acc6:	48 83 c4 20          	add    rsp,0x20
  31acca:	5b                   	pop    rbx
  31accb:	e9 a4 ff ff ff       	jmp    0x31ac74
; 27fa54 initial command count bytes=01 00 00 00
; 27f9a8 runtime-type sentinel bytes=02 24 40 00 00 00 00 00
