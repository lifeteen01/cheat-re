
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035a804 <.data+0x35a804>:
  35a804:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  35a809:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  35a80e:	57                                              	push   rdi
  35a80f:	48 83 ec 50                                     	sub    rsp,0x50
  35a813:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  35a818:	48 8b f2                                        	mov    rsi,rdx
  35a81b:	0f 28 f2                                        	movaps xmm6,xmm2
  35a81e:	41 8b d9                                        	mov    ebx,r9d
  35a821:	e8 da 29 00 00                                  	call   0x35d200
  35a826:	f3 0f 10 05 b6 2e f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff32eb6]        # 0x28d6e4
  35a82e:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35a833:	0f 57 e4                                        	xorps  xmm4,xmm4
  35a836:	0f 57 db                                        	xorps  xmm3,xmm3
  35a839:	0f 57 d2                                        	xorps  xmm2,xmm2
  35a83c:	0f 57 c9                                        	xorps  xmm1,xmm1
  35a83f:	48 8b b8 98 02 00 00                            	mov    rdi,QWORD PTR [rax+0x298]
  35a846:	8b c3                                           	mov    eax,ebx
  35a848:	c1 e8 18                                        	shr    eax,0x18
  35a84b:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  35a850:	8b c3                                           	mov    eax,ebx
  35a852:	c1 e8 10                                        	shr    eax,0x10
  35a855:	0f b6 c0                                        	movzx  eax,al
  35a858:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35a85d:	8b c3                                           	mov    eax,ebx
  35a85f:	c1 e8 08                                        	shr    eax,0x8
  35a862:	0f b6 c0                                        	movzx  eax,al
  35a865:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  35a869:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35a86e:	0f b6 c3                                        	movzx  eax,bl
  35a871:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35a876:	f3 0f 5e d8                                     	divss  xmm3,xmm0
  35a87a:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  35a87e:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  35a882:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35a888:	e8 c3 1a f7 ff                                  	call   0x2cc350
  35a88d:	48 8b c8                                        	mov    rcx,rax
  35a890:	e8 cb 79 03 00                                  	call   0x392260
  35a895:	f3 44 0f 2c c6                                  	cvttss2si r8d,xmm6
  35a89a:	44 8b c8                                        	mov    r9d,eax
  35a89d:	48 8b d6                                        	mov    rdx,rsi
  35a8a0:	48 8b cf                                        	mov    rcx,rdi
  35a8a3:	e8 80 50 04 00                                  	call   0x39f928
  35a8a8:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  35a8ad:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  35a8b2:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  35a8b7:	48 83 c4 50                                     	add    rsp,0x50
  35a8bb:	5f                                              	pop    rdi
  35a8bc:	c3                                              	ret
