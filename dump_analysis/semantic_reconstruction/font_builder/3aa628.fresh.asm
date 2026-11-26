
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aa628 <.data+0x3aa628>:
  3aa628:	40 55                                           	rex push rbp
  3aa62a:	53                                              	push   rbx
  3aa62b:	56                                              	push   rsi
  3aa62c:	57                                              	push   rdi
  3aa62d:	48 8d 6c 24 c1                                  	lea    rbp,[rsp-0x3f]
  3aa632:	48 81 ec 98 00 00 00                            	sub    rsp,0x98
  3aa639:	0f 57 c0                                        	xorps  xmm0,xmm0
  3aa63c:	48 c7 45 c7 01 00 00 00                         	mov    QWORD PTR [rbp-0x39],0x1
  3aa644:	0f 57 c9                                        	xorps  xmm1,xmm1
  3aa647:	48 c7 45 ef 00 00 00 00                         	mov    QWORD PTR [rbp-0x11],0x0
  3aa64f:	49 8b d8                                        	mov    rbx,r8
  3aa652:	c7 45 f7 00 00 00 00                            	mov    DWORD PTR [rbp-0x9],0x0
  3aa659:	4c 8d 45 c7                                     	lea    r8,[rbp-0x39]
  3aa65d:	48 c7 45 ff 00 00 00 00                         	mov    QWORD PTR [rbp-0x1],0x0
  3aa665:	0f 11 45 cf                                     	movups XMMWORD PTR [rbp-0x31],xmm0
  3aa669:	8b fa                                           	mov    edi,edx
  3aa66b:	48 8b f1                                        	mov    rsi,rcx
  3aa66e:	f3 0f 7f 4d df                                  	movdqu XMMWORD PTR [rbp-0x21],xmm1
  3aa673:	c7 45 2f 00 00 00 00                            	mov    DWORD PTR [rbp+0x2f],0x0
  3aa67a:	0f 11 45 07                                     	movups XMMWORD PTR [rbp+0x7],xmm0
  3aa67e:	f3 0f 7f 4d 17                                  	movdqu XMMWORD PTR [rbp+0x17],xmm1
  3aa683:	e8 c4 21 00 00                                  	call   0x3ac84c
  3aa688:	85 c0                                           	test   eax,eax
  3aa68a:	74 2b                                           	je     0x3aa6b7
  3aa68c:	48 63 45 f7                                     	movsxd rax,DWORD PTR [rbp-0x9]
  3aa690:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3aa694:	e8 bf aa fe ff                                  	call   0x395158
  3aa699:	4c 8d 45 ff                                     	lea    r8,[rbp-0x1]
  3aa69d:	48 89 03                                        	mov    QWORD PTR [rbx],rax
  3aa6a0:	8b d7                                           	mov    edx,edi
  3aa6a2:	48 89 45 27                                     	mov    QWORD PTR [rbp+0x27],rax
  3aa6a6:	48 8b ce                                        	mov    rcx,rsi
  3aa6a9:	e8 9e 21 00 00                                  	call   0x3ac84c
  3aa6ae:	85 c0                                           	test   eax,eax
  3aa6b0:	74 05                                           	je     0x3aa6b7
  3aa6b2:	8b 45 2f                                        	mov    eax,DWORD PTR [rbp+0x2f]
  3aa6b5:	eb 09                                           	jmp    0x3aa6c0
  3aa6b7:	48 c7 03 00 00 00 00                            	mov    QWORD PTR [rbx],0x0
  3aa6be:	33 c0                                           	xor    eax,eax
  3aa6c0:	48 81 c4 98 00 00 00                            	add    rsp,0x98
  3aa6c7:	5f                                              	pop    rdi
  3aa6c8:	5e                                              	pop    rsi
  3aa6c9:	5b                                              	pop    rbx
  3aa6ca:	5d                                              	pop    rbp
  3aa6cb:	c3                                              	ret
