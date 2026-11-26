
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b54fc <.data+0x3b54fc>:
  3b54fc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3b5501:	57                                              	push   rdi
  3b5502:	48 83 ec 20                                     	sub    rsp,0x20
  3b5506:	e8 bd ce fd ff                                  	call   0x3923c8
  3b550b:	48 8b d8                                        	mov    rbx,rax
  3b550e:	48 8b b8 a8 01 00 00                            	mov    rdi,QWORD PTR [rax+0x1a8]
  3b5515:	83 7f 10 01                                     	cmp    DWORD PTR [rdi+0x10],0x1
  3b5519:	74 2b                                           	je     0x3b5546
  3b551b:	0f 10 80 38 02 00 00                            	movups xmm0,XMMWORD PTR [rax+0x238]
  3b5522:	48 8d 57 2c                                     	lea    rdx,[rdi+0x2c]
  3b5526:	48 8b c8                                        	mov    rcx,rax
  3b5529:	f3 0f 7f 47 3c                                  	movdqu XMMWORD PTR [rdi+0x3c],xmm0
  3b552e:	e8 09 01 00 00                                  	call   0x3b563c
  3b5533:	48 8b 93 98 02 00 00                            	mov    rdx,QWORD PTR [rbx+0x298]
  3b553a:	48 8d 4f 70                                     	lea    rcx,[rdi+0x70]
  3b553e:	45 33 c0                                        	xor    r8d,r8d
  3b5541:	e8 4e 2b ff ff                                  	call   0x3a8094
  3b5546:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3b554b:	48 83 c4 20                                     	add    rsp,0x20
  3b554f:	5f                                              	pop    rdi
  3b5550:	c3                                              	ret
