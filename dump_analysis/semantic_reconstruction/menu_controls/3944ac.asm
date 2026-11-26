
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003944ac <.data+0x3944ac>:
  3944ac:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3944b1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3944b6:	57                                              	push   rdi
  3944b7:	48 83 ec 40                                     	sub    rsp,0x40
  3944bb:	48 8b 35 66 16 07 00                            	mov    rsi,QWORD PTR [rip+0x71666]        # 0x405b28
  3944c2:	41 8a d8                                        	mov    bl,r8b
  3944c5:	4c 8b c2                                        	mov    r8,rdx
  3944c8:	48 8b d1                                        	mov    rdx,rcx
  3944cb:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3944d0:	e8 b3 6e f4 ff                                  	call   0x2db388
  3944d5:	84 db                                           	test   bl,bl
  3944d7:	74 18                                           	je     0x3944f1
  3944d9:	48 8b 96 08 3f 00 00                            	mov    rdx,QWORD PTR [rsi+0x3f08]
  3944e0:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3944e5:	48 81 c2 38 02 00 00                            	add    rdx,0x238
  3944ec:	e8 c7 bc ff ff                                  	call   0x3901b8
  3944f1:	48 8d 9e 34 38 00 00                            	lea    rbx,[rsi+0x3834]
  3944f8:	4c 8b c3                                        	mov    r8,rbx
  3944fb:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  394500:	48 8d 4c 24 68                                  	lea    rcx,[rsp+0x68]
  394505:	e8 ce b4 f5 ff                                  	call   0x2ef9d8
  39450a:	4c 8b c3                                        	mov    r8,rbx
  39450d:	48 8d 54 24 28                                  	lea    rdx,[rsp+0x28]
  394512:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  394517:	48 8b f8                                        	mov    rdi,rax
  39451a:	e8 c5 22 fa ff                                  	call   0x3367e4
  39451f:	48 8b d0                                        	mov    rdx,rax
  394522:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  394527:	4c 8b c7                                        	mov    r8,rdi
  39452a:	e8 59 6e f4 ff                                  	call   0x2db388
  39452f:	48 8d 96 08 0e 00 00                            	lea    rdx,[rsi+0xe08]
  394536:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  39453b:	e8 80 c2 ff ff                                  	call   0x3907c0
  394540:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  394545:	48 8b 74 24 58                                  	mov    rsi,QWORD PTR [rsp+0x58]
  39454a:	48 83 c4 40                                     	add    rsp,0x40
  39454e:	5f                                              	pop    rdi
  39454f:	c3                                              	ret
