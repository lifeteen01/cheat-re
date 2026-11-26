
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b563c <.data+0x3b563c>:
  3b563c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3b5641:	57                                              	push   rdi
  3b5642:	48 83 ec 30                                     	sub    rsp,0x30
  3b5646:	48 8b da                                        	mov    rbx,rdx
  3b5649:	48 8b f9                                        	mov    rdi,rcx
  3b564c:	48 8b cb                                        	mov    rcx,rbx
  3b564f:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3b5654:	e8 b7 69 fe ff                                  	call   0x39c010
  3b5659:	0f 10 03                                        	movups xmm0,XMMWORD PTR [rbx]
  3b565c:	48 8b 87 98 02 00 00                            	mov    rax,QWORD PTR [rdi+0x298]
  3b5663:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3b5668:	f3 0f 7f 87 38 02 00 00                         	movdqu XMMWORD PTR [rdi+0x238],xmm0
  3b5670:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  3b5675:	f3 0f 7f 80 88 00 00 00                         	movdqu XMMWORD PTR [rax+0x88],xmm0
  3b567d:	48 8b 87 98 02 00 00                            	mov    rax,QWORD PTR [rdi+0x298]
  3b5684:	48 63 48 58                                     	movsxd rcx,DWORD PTR [rax+0x58]
  3b5688:	48 8b 40 60                                     	mov    rax,QWORD PTR [rax+0x60]
  3b568c:	48 ff c9                                        	dec    rcx
  3b568f:	48 03 c9                                        	add    rcx,rcx
  3b5692:	f3 0f 7f 04 c8                                  	movdqu XMMWORD PTR [rax+rcx*8],xmm0
  3b5697:	48 83 c4 30                                     	add    rsp,0x30
  3b569b:	5f                                              	pop    rdi
  3b569c:	c3                                              	ret
