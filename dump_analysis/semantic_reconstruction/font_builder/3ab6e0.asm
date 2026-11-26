
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab6e0 <.data+0x3ab6e0>:
  3ab6e0:	4d 85 c9             	test   r9,r9
  3ab6e3:	0f 84 f5 04 00 00    	je     0x3abbde
  3ab6e9:	48 8b c4             	mov    rax,rsp
  3ab6ec:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  3ab6f0:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  3ab6f4:	57                   	push   rdi
  3ab6f5:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  3ab6fc:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  3ab700:	41 8b d8             	mov    ebx,r8d
  3ab703:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  3ab707:	48 8b fa             	mov    rdi,rdx
  3ab70a:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  3ab70f:	4c 8b d1             	mov    r10,rcx
  3ab712:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  3ab717:	f3 44 0f 10 8c 24 10 	movss  xmm9,DWORD PTR [rsp+0x110]
  3ab71e:	01 00 00 
  3ab721:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  3ab726:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  3ab72b:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  3ab730:	45 0f 28 e1          	movaps xmm12,xmm9
  3ab734:	f3 44 0f 58 25 17 1b 	addss  xmm12,DWORD PTR [rip+0xffffffffffee1b17]        # 0x28d254
  3ab73b:	ee ff 
  3ab73d:	44 0f 29 6c 24 60    	movaps XMMWORD PTR [rsp+0x60],xmm13
  3ab743:	44 0f 29 74 24 50    	movaps XMMWORD PTR [rsp+0x50],xmm14
  3ab749:	44 0f 29 7c 24 40    	movaps XMMWORD PTR [rsp+0x40],xmm15
  3ab74f:	45 0f 57 ff          	xorps  xmm15,xmm15
  3ab753:	f3 45 0f 10 71 0c    	movss  xmm14,DWORD PTR [r9+0xc]
  3ab759:	45 0f 2e f7          	ucomiss xmm14,xmm15
  3ab75d:	f3 41 0f 10 71 08    	movss  xmm6,DWORD PTR [r9+0x8]
  3ab763:	7a 69                	jp     0x3ab7ce
  3ab765:	75 67                	jne    0x3ab7ce
  3ab767:	66 0f 6e c3          	movd   xmm0,ebx
  3ab76b:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3ab76e:	0f 2f c6             	comiss xmm0,xmm6
  3ab771:	0f 86 13 04 00 00    	jbe    0x3abb8a
  3ab777:	41 0f 2f f7          	comiss xmm6,xmm15
  3ab77b:	4d 8b c1             	mov    r8,r9
  3ab77e:	f3 44 0f 11 64 24 30 	movss  DWORD PTR [rsp+0x30],xmm12
  3ab785:	0f 28 de             	movaps xmm3,xmm6
  3ab788:	f3 0f 11 74 24 28    	movss  DWORD PTR [rsp+0x28],xmm6
  3ab78e:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3ab795:	72 27                	jb     0x3ab7be
  3ab797:	f3 0f 2c d6          	cvttss2si edx,xmm6
  3ab79b:	49 8b ca             	mov    rcx,r10
  3ab79e:	e8 31 08 00 00       	call   0x3abfd4
  3ab7a3:	f3 44 0f 11 64 24 30 	movss  DWORD PTR [rsp+0x30],xmm12
  3ab7aa:	ff c2                	inc    edx
  3ab7ac:	f3 0f 11 74 24 28    	movss  DWORD PTR [rsp+0x28],xmm6
  3ab7b2:	0f 28 de             	movaps xmm3,xmm6
  3ab7b5:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3ab7bc:	eb 02                	jmp    0x3ab7c0
  3ab7be:	33 d2                	xor    edx,edx
  3ab7c0:	48 8d 4f fc          	lea    rcx,[rdi-0x4]
  3ab7c4:	e8 0b 08 00 00       	call   0x3abfd4
  3ab7c9:	e9 bc 03 00 00       	jmp    0x3abb8a
  3ab7ce:	f3 41 0f 10 79 18    	movss  xmm7,DWORD PTR [r9+0x18]
  3ab7d4:	45 0f 28 ee          	movaps xmm13,xmm14
  3ab7d8:	41 0f 2f f9          	comiss xmm7,xmm9
  3ab7dc:	f3 44 0f 58 ee       	addss  xmm13,xmm6
  3ab7e1:	76 13                	jbe    0x3ab7f6
  3ab7e3:	0f 28 e7             	movaps xmm4,xmm7
  3ab7e6:	f3 41 0f 5c e1       	subss  xmm4,xmm9
  3ab7eb:	f3 41 0f 59 e6       	mulss  xmm4,xmm14
  3ab7f0:	f3 0f 58 e6          	addss  xmm4,xmm6
  3ab7f4:	eb 07                	jmp    0x3ab7fd
  3ab7f6:	0f 28 e6             	movaps xmm4,xmm6
  3ab7f9:	41 0f 28 f9          	movaps xmm7,xmm9
  3ab7fd:	f3 41 0f 10 69 1c    	movss  xmm5,DWORD PTR [r9+0x1c]
  3ab803:	44 0f 2f e5          	comiss xmm12,xmm5
  3ab807:	76 0f                	jbe    0x3ab818
  3ab809:	0f 28 c5             	movaps xmm0,xmm5
  3ab80c:	f3 41 0f 5c c1       	subss  xmm0,xmm9
  3ab811:	f3 41 0f 59 c6       	mulss  xmm0,xmm14
  3ab816:	eb 08                	jmp    0x3ab820
  3ab818:	41 0f 28 ec          	movaps xmm5,xmm12
  3ab81c:	41 0f 28 c6          	movaps xmm0,xmm14
  3ab820:	41 0f 2f e7          	comiss xmm4,xmm15
  3ab824:	0f 82 d3 01 00 00    	jb     0x3ab9fd
  3ab82a:	0f 28 de             	movaps xmm3,xmm6
  3ab82d:	f3 0f 58 d8          	addss  xmm3,xmm0
  3ab831:	41 0f 2f df          	comiss xmm3,xmm15
  3ab835:	0f 82 c2 01 00 00    	jb     0x3ab9fd
  3ab83b:	66 0f 6e c3          	movd   xmm0,ebx
  3ab83f:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3ab842:	0f 2f c4             	comiss xmm0,xmm4
  3ab845:	0f 86 b2 01 00 00    	jbe    0x3ab9fd
  3ab84b:	0f 2f c3             	comiss xmm0,xmm3
  3ab84e:	0f 86 a9 01 00 00    	jbe    0x3ab9fd
  3ab854:	f3 0f 2c cc          	cvttss2si ecx,xmm4
  3ab858:	f3 0f 2c c3          	cvttss2si eax,xmm3
  3ab85c:	3b c8                	cmp    ecx,eax
  3ab85e:	75 32                	jne    0x3ab892
  3ab860:	66 0f 6e d1          	movd   xmm2,ecx
  3ab864:	f3 0f 5c ef          	subss  xmm5,xmm7
  3ab868:	0f 5b d2             	cvtdq2ps xmm2,xmm2
  3ab86b:	48 63 c1             	movsxd rax,ecx
  3ab86e:	f3 41 0f 59 69 14    	mulss  xmm5,DWORD PTR [r9+0x14]
  3ab874:	0f 28 cc             	movaps xmm1,xmm4
  3ab877:	f3 0f 58 15 d5 19 ee 	addss  xmm2,DWORD PTR [rip+0xffffffffffee19d5]        # 0x28d254
  3ab87e:	ff 
  3ab87f:	0f 28 c5             	movaps xmm0,xmm5
  3ab882:	f3 0f 11 54 24 20    	movss  DWORD PTR [rsp+0x20],xmm2
  3ab888:	e8 c7 0a 00 00       	call   0x3ac354
  3ab88d:	e9 50 01 00 00       	jmp    0x3ab9e2
  3ab892:	0f 2f e3             	comiss xmm4,xmm3
  3ab895:	f3 41 0f 10 51 10    	movss  xmm2,DWORD PTR [r9+0x10]
  3ab89b:	76 31                	jbe    0x3ab8ce
  3ab89d:	0f 57 15 fc 79 ee ff 	xorps  xmm2,XMMWORD PTR [rip+0xffffffffffee79fc]        # 0x2932a0
  3ab8a4:	f3 41 0f 5c f9       	subss  xmm7,xmm9
  3ab8a9:	41 0f 28 c4          	movaps xmm0,xmm12
  3ab8ad:	f3 41 0f 5c e9       	subss  xmm5,xmm9
  3ab8b2:	44 0f 28 c4          	movaps xmm8,xmm4
  3ab8b6:	41 0f 28 f5          	movaps xmm6,xmm13
  3ab8ba:	0f 28 e3             	movaps xmm4,xmm3
  3ab8bd:	f3 0f 5c c7          	subss  xmm0,xmm7
  3ab8c1:	41 0f 28 fc          	movaps xmm7,xmm12
  3ab8c5:	f3 0f 5c fd          	subss  xmm7,xmm5
  3ab8c9:	0f 28 e8             	movaps xmm5,xmm0
  3ab8cc:	eb 04                	jmp    0x3ab8d2
  3ab8ce:	44 0f 28 c3          	movaps xmm8,xmm3
  3ab8d2:	f3 45 0f 10 59 14    	movss  xmm11,DWORD PTR [r9+0x14]
  3ab8d8:	0f 57 c9             	xorps  xmm1,xmm1
  3ab8db:	f3 44 0f 2c c4       	cvttss2si r8d,xmm4
  3ab8e0:	45 0f 57 ed          	xorps  xmm13,xmm13
  3ab8e4:	45 0f 28 d4          	movaps xmm10,xmm12
  3ab8e8:	f3 41 0f 2c d0       	cvttss2si edx,xmm8
  3ab8ed:	49 63 c0             	movsxd rax,r8d
  3ab8f0:	41 8d 48 01          	lea    ecx,[r8+0x1]
  3ab8f4:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  3ab8f8:	f3 44 0f 2a ea       	cvtsi2ss xmm13,edx
  3ab8fd:	0f 28 c1             	movaps xmm0,xmm1
  3ab900:	f3 0f 5c cc          	subss  xmm1,xmm4
  3ab904:	f3 0f 5c c6          	subss  xmm0,xmm6
  3ab908:	41 0f 28 dd          	movaps xmm3,xmm13
  3ab90c:	f3 0f 5c de          	subss  xmm3,xmm6
  3ab910:	f3 0f 59 c2          	mulss  xmm0,xmm2
  3ab914:	f3 0f 59 da          	mulss  xmm3,xmm2
  3ab918:	f3 41 0f 58 c1       	addss  xmm0,xmm9
  3ab91d:	f3 41 0f 58 d9       	addss  xmm3,xmm9
  3ab922:	f3 44 0f 5d d0       	minss  xmm10,xmm0
  3ab927:	41 0f 28 f2          	movaps xmm6,xmm10
  3ab92b:	f3 0f 5c f7          	subss  xmm6,xmm7
  3ab92f:	f3 41 0f 59 f3       	mulss  xmm6,xmm11
  3ab934:	0f 28 c6             	movaps xmm0,xmm6
  3ab937:	e8 84 19 00 00       	call   0x3ad2c0
  3ab93c:	41 0f 2f dc          	comiss xmm3,xmm12
  3ab940:	f3 41 0f 58 04 82    	addss  xmm0,DWORD PTR [r10+rax*4]
  3ab946:	f3 41 0f 11 04 82    	movss  DWORD PTR [r10+rax*4],xmm0
  3ab94c:	76 22                	jbe    0x3ab970
  3ab94e:	8b c2                	mov    eax,edx
  3ab950:	41 0f 28 dc          	movaps xmm3,xmm12
  3ab954:	41 2b c0             	sub    eax,r8d
  3ab957:	83 e8 01             	sub    eax,0x1
  3ab95a:	74 14                	je     0x3ab970
  3ab95c:	66 0f 6e c0          	movd   xmm0,eax
  3ab960:	41 0f 28 d4          	movaps xmm2,xmm12
  3ab964:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3ab967:	f3 41 0f 5c d2       	subss  xmm2,xmm10
  3ab96c:	f3 0f 5e d0          	divss  xmm2,xmm0
  3ab970:	41 0f 28 cb          	movaps xmm1,xmm11
  3ab974:	f3 0f 59 ca          	mulss  xmm1,xmm2
  3ab978:	3b ca                	cmp    ecx,edx
  3ab97a:	7d 2b                	jge    0x3ab9a7
  3ab97c:	0f 28 d1             	movaps xmm2,xmm1
  3ab97f:	f3 0f 59 15 c9 18 ee 	mulss  xmm2,DWORD PTR [rip+0xffffffffffee18c9]        # 0x28d250
  3ab986:	ff 
  3ab987:	48 63 c1             	movsxd rax,ecx
  3ab98a:	0f 28 c2             	movaps xmm0,xmm2
  3ab98d:	f3 0f 58 c6          	addss  xmm0,xmm6
  3ab991:	ff c1                	inc    ecx
  3ab993:	f3 0f 58 f1          	addss  xmm6,xmm1
  3ab997:	f3 41 0f 58 04 82    	addss  xmm0,DWORD PTR [r10+rax*4]
  3ab99d:	f3 41 0f 11 04 82    	movss  DWORD PTR [r10+rax*4],xmm0
  3ab9a3:	3b ca                	cmp    ecx,edx
  3ab9a5:	7c e0                	jl     0x3ab987
  3ab9a7:	41 0f 28 d5          	movaps xmm2,xmm13
  3ab9ab:	48 63 c2             	movsxd rax,edx
  3ab9ae:	f3 0f 58 15 9e 18 ee 	addss  xmm2,DWORD PTR [rip+0xffffffffffee189e]        # 0x28d254
  3ab9b5:	ff 
  3ab9b6:	0f 28 c5             	movaps xmm0,xmm5
  3ab9b9:	41 0f 28 cd          	movaps xmm1,xmm13
  3ab9bd:	f3 0f 5c c3          	subss  xmm0,xmm3
  3ab9c1:	41 0f 28 d8          	movaps xmm3,xmm8
  3ab9c5:	f3 0f 11 54 24 20    	movss  DWORD PTR [rsp+0x20],xmm2
  3ab9cb:	e8 84 09 00 00       	call   0x3ac354
  3ab9d0:	f3 0f 5c ef          	subss  xmm5,xmm7
  3ab9d4:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
  3ab9d9:	f3 0f 58 c6          	addss  xmm0,xmm6
  3ab9dd:	f3 41 0f 59 eb       	mulss  xmm5,xmm11
  3ab9e2:	f3 41 0f 58 04 82    	addss  xmm0,DWORD PTR [r10+rax*4]
  3ab9e8:	f3 41 0f 11 04 82    	movss  DWORD PTR [r10+rax*4],xmm0
  3ab9ee:	f3 0f 58 2c 87       	addss  xmm5,DWORD PTR [rdi+rax*4]
  3ab9f3:	f3 0f 11 2c 87       	movss  DWORD PTR [rdi+rax*4],xmm5
  3ab9f8:	e9 8d 01 00 00       	jmp    0x3abb8a
  3ab9fd:	33 d2                	xor    edx,edx
  3ab9ff:	85 db                	test   ebx,ebx
  3aba01:	0f 8e 83 01 00 00    	jle    0x3abb8a
  3aba07:	45 0f 57 d2          	xorps  xmm10,xmm10
  3aba0b:	44 8d 5a 01          	lea    r11d,[rdx+0x1]
  3aba0f:	0f 57 ff             	xorps  xmm7,xmm7
  3aba12:	f3 44 0f 2a d2       	cvtsi2ss xmm10,edx
  3aba17:	f3 41 0f 2a fb       	cvtsi2ss xmm7,r11d
  3aba1c:	44 0f 2f d6          	comiss xmm10,xmm6
  3aba20:	45 0f 28 da          	movaps xmm11,xmm10
  3aba24:	44 0f 28 c7          	movaps xmm8,xmm7
  3aba28:	f3 44 0f 5c de       	subss  xmm11,xmm6
  3aba2d:	f3 44 0f 5c c6       	subss  xmm8,xmm6
  3aba32:	f3 45 0f 5e de       	divss  xmm11,xmm14
  3aba37:	f3 45 0f 5e c6       	divss  xmm8,xmm14
  3aba3c:	f3 45 0f 58 d9       	addss  xmm11,xmm9
  3aba41:	f3 45 0f 58 c1       	addss  xmm8,xmm9
  3aba46:	76 46                	jbe    0x3aba8e
  3aba48:	44 0f 2f ef          	comiss xmm13,xmm7
  3aba4c:	76 40                	jbe    0x3aba8e
  3aba4e:	f3 44 0f 11 5c 24 30 	movss  DWORD PTR [rsp+0x30],xmm11
  3aba55:	0f 28 de             	movaps xmm3,xmm6
  3aba58:	f3 44 0f 11 54 24 28 	movss  DWORD PTR [rsp+0x28],xmm10
  3aba5f:	4d 8b c1             	mov    r8,r9
  3aba62:	49 8b ca             	mov    rcx,r10
  3aba65:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3aba6c:	e8 63 05 00 00       	call   0x3abfd4
  3aba71:	f3 44 0f 11 44 24 30 	movss  DWORD PTR [rsp+0x30],xmm8
  3aba78:	41 0f 28 da          	movaps xmm3,xmm10
  3aba7c:	f3 0f 11 7c 24 28    	movss  DWORD PTR [rsp+0x28],xmm7
  3aba82:	f3 44 0f 11 5c 24 20 	movss  DWORD PTR [rsp+0x20],xmm11
  3aba89:	e9 bf 00 00 00       	jmp    0x3abb4d
  3aba8e:	45 0f 2f d5          	comiss xmm10,xmm13
  3aba92:	76 41                	jbe    0x3abad5
  3aba94:	0f 2f f7             	comiss xmm6,xmm7
  3aba97:	76 3c                	jbe    0x3abad5
  3aba99:	f3 44 0f 11 44 24 30 	movss  DWORD PTR [rsp+0x30],xmm8
  3abaa0:	0f 28 de             	movaps xmm3,xmm6
  3abaa3:	f3 0f 11 7c 24 28    	movss  DWORD PTR [rsp+0x28],xmm7
  3abaa9:	4d 8b c1             	mov    r8,r9
  3abaac:	49 8b ca             	mov    rcx,r10
  3abaaf:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3abab6:	e8 19 05 00 00       	call   0x3abfd4
  3ababb:	f3 44 0f 11 5c 24 30 	movss  DWORD PTR [rsp+0x30],xmm11
  3abac2:	0f 28 df             	movaps xmm3,xmm7
  3abac5:	f3 44 0f 11 54 24 28 	movss  DWORD PTR [rsp+0x28],xmm10
  3abacc:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  3abad3:	eb 36                	jmp    0x3abb0b
  3abad5:	44 0f 2f d6          	comiss xmm10,xmm6
  3abad9:	76 06                	jbe    0x3abae1
  3abadb:	45 0f 2f ea          	comiss xmm13,xmm10
  3abadf:	77 0c                	ja     0x3abaed
  3abae1:	45 0f 2f d5          	comiss xmm10,xmm13
  3abae5:	76 33                	jbe    0x3abb1a
  3abae7:	41 0f 2f f2          	comiss xmm6,xmm10
  3abaeb:	76 2d                	jbe    0x3abb1a
  3abaed:	f3 44 0f 11 5c 24 30 	movss  DWORD PTR [rsp+0x30],xmm11
  3abaf4:	0f 28 de             	movaps xmm3,xmm6
  3abaf7:	f3 44 0f 11 54 24 28 	movss  DWORD PTR [rsp+0x28],xmm10
  3abafe:	4d 8b c1             	mov    r8,r9
  3abb01:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3abb08:	49 8b ca             	mov    rcx,r10
  3abb0b:	e8 c4 04 00 00       	call   0x3abfd4
  3abb10:	41 0f 28 fa          	movaps xmm7,xmm10
  3abb14:	45 0f 28 c3          	movaps xmm8,xmm11
  3abb18:	eb 41                	jmp    0x3abb5b
  3abb1a:	0f 2f fe             	comiss xmm7,xmm6
  3abb1d:	76 06                	jbe    0x3abb25
  3abb1f:	44 0f 2f ef          	comiss xmm13,xmm7
  3abb23:	77 0b                	ja     0x3abb30
  3abb25:	41 0f 2f fd          	comiss xmm7,xmm13
  3abb29:	76 29                	jbe    0x3abb54
  3abb2b:	0f 2f f7             	comiss xmm6,xmm7
  3abb2e:	76 24                	jbe    0x3abb54
  3abb30:	f3 44 0f 11 44 24 30 	movss  DWORD PTR [rsp+0x30],xmm8
  3abb37:	0f 28 de             	movaps xmm3,xmm6
  3abb3a:	f3 0f 11 7c 24 28    	movss  DWORD PTR [rsp+0x28],xmm7
  3abb40:	4d 8b c1             	mov    r8,r9
  3abb43:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3abb4a:	49 8b ca             	mov    rcx,r10
  3abb4d:	e8 82 04 00 00       	call   0x3abfd4
  3abb52:	eb 07                	jmp    0x3abb5b
  3abb54:	0f 28 fe             	movaps xmm7,xmm6
  3abb57:	45 0f 28 c1          	movaps xmm8,xmm9
  3abb5b:	f3 44 0f 11 64 24 30 	movss  DWORD PTR [rsp+0x30],xmm12
  3abb62:	0f 28 df             	movaps xmm3,xmm7
  3abb65:	f3 44 0f 11 6c 24 28 	movss  DWORD PTR [rsp+0x28],xmm13
  3abb6c:	4d 8b c1             	mov    r8,r9
  3abb6f:	49 8b ca             	mov    rcx,r10
  3abb72:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  3abb79:	e8 56 04 00 00       	call   0x3abfd4
  3abb7e:	41 8b d3             	mov    edx,r11d
  3abb81:	44 3b db             	cmp    r11d,ebx
  3abb84:	0f 8c 7d fe ff ff    	jl     0x3aba07
  3abb8a:	4d 8b 09             	mov    r9,QWORD PTR [r9]
  3abb8d:	4d 85 c9             	test   r9,r9
  3abb90:	0f 85 bd fb ff ff    	jne    0x3ab753
  3abb96:	44 0f 28 74 24 50    	movaps xmm14,XMMWORD PTR [rsp+0x50]
  3abb9c:	4c 8d 9c 24 e0 00 00 	lea    r11,[rsp+0xe0]
  3abba3:	00 
  3abba4:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3abba8:	49 8b 73 18          	mov    rsi,QWORD PTR [r11+0x18]
  3abbac:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3abbb1:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3abbb6:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3abbbb:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3abbc0:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  3abbc5:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  3abbca:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  3abbcf:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  3abbd4:	44 0f 28 7c 24 40    	movaps xmm15,XMMWORD PTR [rsp+0x40]
  3abbda:	49 8b e3             	mov    rsp,r11
  3abbdd:	5f                   	pop    rdi
  3abbde:	c3                   	ret
