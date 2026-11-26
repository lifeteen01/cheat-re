
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a67b4 <.data+0x3a67b4>:
  3a67b4:	c3                                              	ret
  3a67b5:	e8 92 25 02 00                                  	call   0x3c8d4c
  3a67ba:	4c 03 fb                                        	add    r15,rbx
  3a67bd:	41 ff c6                                        	inc    r14d
  3a67c0:	44 3b 75 04                                     	cmp    r14d,DWORD PTR [rbp+0x4]
  3a67c4:	7c aa                                           	jl     0x3a6770
  3a67c6:	33 db                                           	xor    ebx,ebx
  3a67c8:	4c 89 7f 50                                     	mov    QWORD PTR [rdi+0x50],r15
  3a67cc:	39 1f                                           	cmp    DWORD PTR [rdi],ebx
  3a67ce:	74 0e                                           	je     0x3a67de
  3a67d0:	48 8b cf                                        	mov    rcx,rdi
  3a67d3:	e8 4c 7b ff ff                                  	call   0x39e324
  3a67d8:	48 39 58 28                                     	cmp    QWORD PTR [rax+0x28],rbx
  3a67dc:	74 08                                           	je     0x3a67e6
  3a67de:	48 8b cf                                        	mov    rcx,rdi
  3a67e1:	e8 32 95 ff ff                                  	call   0x39fd18
  3a67e6:	48 63 07                                        	movsxd rax,DWORD PTR [rdi]
  3a67e9:	48 8d 97 88 00 00 00                            	lea    rdx,[rdi+0x88]
  3a67f0:	48 6b c8 38                                     	imul   rcx,rax,0x38
  3a67f4:	48 8b 47 08                                     	mov    rax,QWORD PTR [rdi+0x8]
  3a67f8:	4c 8d 0c 01                                     	lea    r9,[rcx+rax*1]
  3a67fc:	39 5c 01 e8                                     	cmp    DWORD PTR [rcx+rax*1-0x18],ebx
  3a6800:	75 13                                           	jne    0x3a6815
  3a6802:	0f 10 02                                        	movups xmm0,XMMWORD PTR [rdx]
  3a6805:	41 0f 11 41 c8                                  	movups XMMWORD PTR [r9-0x38],xmm0
  3a680a:	0f 10 4a 0c                                     	movups xmm1,XMMWORD PTR [rdx+0xc]
  3a680e:	41 0f 11 49 d4                                  	movups XMMWORD PTR [r9-0x2c],xmm1
  3a6813:	eb 1b                                           	jmp    0x3a6830
  3a6815:	41 b8 1c 00 00 00                               	mov    r8d,0x1c
  3a681b:	49 8d 49 c8                                     	lea    rcx,[r9-0x38]
  3a681f:	e8 f0 24 02 00                                  	call   0x3c8d14
  3a6824:	85 c0                                           	test   eax,eax
  3a6826:	74 08                                           	je     0x3a6830
  3a6828:	48 8b cf                                        	mov    rcx,rdi
  3a682b:	e8 e8 94 ff ff                                  	call   0x39fd18
  3a6830:	c7 45 04 01 00 00 00                            	mov    DWORD PTR [rbp+0x4],0x1
  3a6837:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  3a683c:	48 83 c4 20                                     	add    rsp,0x20
  3a6840:	41 5f                                           	pop    r15
  3a6842:	41 5e                                           	pop    r14
  3a6844:	41 5d                                           	pop    r13
  3a6846:	41 5c                                           	pop    r12
  3a6848:	5f                                              	pop    rdi
  3a6849:	5e                                              	pop    rsi
  3a684a:	5d                                              	pop    rbp
  3a684b:	c3                                              	ret
  3a684c:	48 8b c4                                        	mov    rax,rsp
  3a684f:	53                                              	push   rbx
  3a6850:	55                                              	push   rbp
  3a6851:	56                                              	push   rsi
  3a6852:	57                                              	push   rdi
  3a6853:	41 54                                           	push   r12
  3a6855:	41 56                                           	push   r14
  3a6857:	41 57                                           	push   r15
  3a6859:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  3a6860:	f3 0f 10 05 e8 69 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee69e8]        # 0x28d250
  3a6868:	48 8b fa                                        	mov    rdi,rdx
  3a686b:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3a686f:	48 8b f1                                        	mov    rsi,rcx
  3a6872:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3a6876:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3a687b:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3a6880:	44 0f 28 ca                                     	movaps xmm9,xmm2
  3a6884:	41 0f 2f c1                                     	comiss xmm0,xmm9
  3a6888:	44 0f 29 54 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm10
  3a688e:	44 0f 28 d3                                     	movaps xmm10,xmm3
  3a6892:	76 09                                           	jbe    0x3a689d
  3a6894:	48 83 c1 78                                     	add    rcx,0x78
  3a6898:	e9 f7 01 00 00                                  	jmp    0x3a6a94
  3a689d:	8b 84 24 f8 00 00 00                            	mov    eax,DWORD PTR [rsp+0xf8]
  3a68a4:	85 c0                                           	test   eax,eax
  3a68a6:	7e 18                                           	jle    0x3a68c0
  3a68a8:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xf0]
  3a68b1:	89 44 24                                      	mov    DWORD PTR [rsp+0x28],eax
