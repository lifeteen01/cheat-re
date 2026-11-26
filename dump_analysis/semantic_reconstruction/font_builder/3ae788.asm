
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae788 <.data+0x3ae788>:
  3ae788:	48 8b c4                                        	mov    rax,rsp
  3ae78b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3ae78f:	55                                              	push   rbp
  3ae790:	56                                              	push   rsi
  3ae791:	57                                              	push   rdi
  3ae792:	41 56                                           	push   r14
  3ae794:	41 57                                           	push   r15
  3ae796:	48 8d 68 d1                                     	lea    rbp,[rax-0x2f]
  3ae79a:	48 81 ec c0 00 00 00                            	sub    rsp,0xc0
  3ae7a1:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  3ae7a5:	41 8b f8                                        	mov    edi,r8d
  3ae7a8:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  3ae7ac:	4c 8d 45 3f                                     	lea    r8,[rbp+0x3f]
  3ae7b0:	48 8b da                                        	mov    rbx,rdx
  3ae7b3:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  3ae7b8:	8b 55 7f                                        	mov    edx,DWORD PTR [rbp+0x7f]
  3ae7bb:	41 8b f1                                        	mov    esi,r9d
  3ae7be:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  3ae7c3:	4c 8b f1                                        	mov    r14,rcx
  3ae7c6:	e8 49 fe ff ff                                  	call   0x3ae614
  3ae7cb:	f3 0f 10 75 77                                  	movss  xmm6,DWORD PTR [rbp+0x77]
  3ae7d0:	44 8b f8                                        	mov    r15d,eax
  3ae7d3:	f3 44 0f 10 45 67                               	movss  xmm8,DWORD PTR [rbp+0x67]
  3ae7d9:	48 8d 45 47                                     	lea    rax,[rbp+0x47]
  3ae7dd:	f3 44 0f 10 4d 5f                               	movss  xmm9,DWORD PTR [rbp+0x5f]
  3ae7e3:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3ae7e7:	f3 0f 10 7d 6f                                  	movss  xmm7,DWORD PTR [rbp+0x6f]
  3ae7ec:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3ae7f0:	8b 55 7f                                        	mov    edx,DWORD PTR [rbp+0x7f]
  3ae7f3:	49 8b ce                                        	mov    rcx,r14
  3ae7f6:	48 c7 44 24 48 00 00 00 00                      	mov    QWORD PTR [rsp+0x48],0x0
  3ae7ff:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  3ae808:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  3ae80d:	48 8d 45 4f                                     	lea    rax,[rbp+0x4f]
  3ae811:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3ae816:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  3ae81c:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  3ae822:	e8 e1 fa ff ff                                  	call   0x3ae308
  3ae827:	8b 45 57                                        	mov    eax,DWORD PTR [rbp+0x57]
  3ae82a:	89 45 af                                        	mov    DWORD PTR [rbp-0x51],eax
  3ae82d:	48 89 5d b7                                     	mov    QWORD PTR [rbp-0x49],rbx
  3ae831:	89 7d a7                                        	mov    DWORD PTR [rbp-0x59],edi
  3ae834:	89 75 ab                                        	mov    DWORD PTR [rbp-0x55],esi
  3ae837:	85 ff                                           	test   edi,edi
  3ae839:	74 54                                           	je     0x3ae88f
  3ae83b:	85 f6                                           	test   esi,esi
  3ae83d:	74 50                                           	je     0x3ae88f
  3ae83f:	49 8b 06                                        	mov    rax,QWORD PTR [r14]
  3ae842:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  3ae846:	4c 8b 45 3f                                     	mov    r8,QWORD PTR [rbp+0x3f]
  3ae84a:	45 8b cf                                        	mov    r9d,r15d
  3ae84d:	f3 0f 10 0d 5f 48 ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffee485f]        # 0x2930b4
  3ae855:	48 89 44 24 58                                  	mov    QWORD PTR [rsp+0x58],rax
  3ae85a:	8b 45 47                                        	mov    eax,DWORD PTR [rbp+0x47]
  3ae85d:	c7 44 24 50 01 00 00 00                         	mov    DWORD PTR [rsp+0x50],0x1
  3ae865:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  3ae869:	8b 45 4f                                        	mov    eax,DWORD PTR [rbp+0x4f]
  3ae86c:	89 44 24 40                                     	mov    DWORD PTR [rsp+0x40],eax
  3ae870:	f3 0f 11 74 24 38                               	movss  DWORD PTR [rsp+0x38],xmm6
  3ae876:	f3 0f 11 7c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm7
  3ae87c:	f3 44 0f 11 44 24 28                            	movss  DWORD PTR [rsp+0x28],xmm8
  3ae883:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  3ae88a:	e8 09 06 00 00                                  	call   0x3aee98
  3ae88f:	48 8b 4d 3f                                     	mov    rcx,QWORD PTR [rbp+0x3f]
  3ae893:	4c 8d 9c 24 c0 00 00 00                         	lea    r11,[rsp+0xc0]
  3ae89b:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  3ae89f:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3ae8a4:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3ae8a9:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3ae8ae:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3ae8b3:	49 8b e3                                        	mov    rsp,r11
  3ae8b6:	41 5f                                           	pop    r15
  3ae8b8:	41 5e                                           	pop    r14
  3ae8ba:	5f                                              	pop    rdi
  3ae8bb:	5e                                              	pop    rsi
  3ae8bc:	5d                                              	pop    rbp
  3ae8bd:	e9 ba 68 fe ff                                  	jmp    0x39517c
