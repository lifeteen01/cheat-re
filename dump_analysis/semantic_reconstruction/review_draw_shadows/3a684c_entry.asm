
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a684c <.data+0x3a684c>:
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
  3a68b1:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a68b5:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a68bb:	e9 43 02 00 00                                  	jmp    0x3a6b03
  3a68c0:	48 8b 41 38                                     	mov    rax,QWORD PTR [rcx+0x38]
  3a68c4:	f3 44 0f 10 84 24 f0 00 00 00                   	movss  xmm8,DWORD PTR [rsp+0xf0]
  3a68ce:	f3 0f 10 80 c0 01 00 00                         	movss  xmm0,DWORD PTR [rax+0x1c0]
  3a68d6:	41 0f                                       	comiss xmm0,xmm9
