
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d93d4 <.data+0x2d93d4>:
  2d93d4:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  2d93d8:	c3                                              	ret
  2d93d9:	cc                                              	int3
  2d93da:	cc                                              	int3
  2d93db:	cc                                              	int3
  2d93dc:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  2d93e0:	48 2b 01                                        	sub    rax,QWORD PTR [rcx]
  2d93e3:	48 c1 f8 06                                     	sar    rax,0x6
  2d93e7:	c3                                              	ret
  2d93e8:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  2d93ec:	48 2b 01                                        	sub    rax,QWORD PTR [rcx]
  2d93ef:	48 c1 f8 05                                     	sar    rax,0x5
  2d93f3:	c3                                              	ret
  2d93f4:	48 8b 41 18                                     	mov    rax,QWORD PTR [rcx+0x18]
  2d93f8:	c3                                              	ret
  2d93f9:	cc                                              	int3
  2d93fa:	cc                                              	int3
  2d93fb:	cc                                              	int3
  2d93fc:	40 53                                           	rex push rbx
  2d93fe:	55                                              	push   rbp
  2d93ff:	56                                              	push   rsi
  2d9400:	57                                              	push   rdi
  2d9401:	48 83 ec 38                                     	sub    rsp,0x38
  2d9405:	49 8b f0                                        	mov    rsi,r8
  2d9408:	48 8b fa                                        	mov    rdi,rdx
  2d940b:	48 8b d9                                        	mov    rbx,rcx
  2d940e:	e8 45 b3 ff ff                                  	call   0x2d4758
  2d9413:	48                                          	mov    rcx,rsi
