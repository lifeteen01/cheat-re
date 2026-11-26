
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035b03c <.data+0x35b03c>:
  35b03c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  35b041:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  35b046:	57                                              	push   rdi
  35b047:	48 83 ec 50                                     	sub    rsp,0x50
  35b04b:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  35b050:	48 8b f2                                        	mov    rsi,rdx
  35b053:	0f 28 f2                                        	movaps xmm6,xmm2
  35b056:	41 8b d9                                        	mov    ebx,r9d
  35b059:	e8 a2 21 00 00                                  	call   0x35d200
  35b05e:	f3 0f 10 05 7e 26 f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff3267e]        # 0x28d6e4
  35b066:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35b06b:	0f 57 e4                                        	xorps  xmm4,xmm4
  35b06e:	0f 57 db                                        	xorps  xmm3,xmm3
  35b071:	0f 57 d2                                        	xorps  xmm2,xmm2
  35b074:	0f 57 c9                                        	xorps  xmm1,xmm1
  35b077:	48 8b b8 98 02 00 00                            	mov    rdi,QWORD PTR [rax+0x298]
  35b07e:	8b c3                                           	mov    eax,ebx
  35b080:	c1 e8 18                                        	shr    eax,0x18
  35b083:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  35b088:	8b c3                                           	mov    eax,ebx
  35b08a:	c1 e8 10                                        	shr    eax,0x10
  35b08d:	0f b6 c0                                        	movzx  eax,al
  35b090:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35b095:	8b c3                                           	mov    eax,ebx
  35b097:	c1 e8 08                                        	shr    eax,0x8
  35b09a:	0f b6 c0                                        	movzx  eax,al
  35b09d:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  35b0a1:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35b0a6:	0f b6 c3                                        	movzx  eax,bl
  35b0a9:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35b0ae:	f3 0f 5e d8                                     	divss  xmm3,xmm0
  35b0b2:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  35b0b6:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  35b0ba:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35b0c0:	e8 8b 12 f7 ff                                  	call   0x2cc350
  35b0c5:	48 8b c8                                        	mov    rcx,rax
  35b0c8:	e8 93 71 03 00                                  	call   0x392260
  35b0cd:	44 8b c8                                        	mov    r9d,eax
  35b0d0:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  35b0d8:	0f 28 d6                                        	movaps xmm2,xmm6
  35b0db:	48 8b d6                                        	mov    rdx,rsi
  35b0de:	48 8b cf                                        	mov    rcx,rdi
  35b0e1:	e8 8e 47 04 00                                  	call   0x39f874
  35b0e6:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  35b0eb:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  35b0f0:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  35b0f5:	48 83 c4 50                                     	add    rsp,0x50
  35b0f9:	5f                                              	pop    rdi
  35b0fa:	c3                                              	ret
