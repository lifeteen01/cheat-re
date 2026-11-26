
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cf59c <.data+0x2cf59c>:
  2cf59c:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2cf5a1:	53                                              	push   rbx
  2cf5a2:	56                                              	push   rsi
  2cf5a3:	57                                              	push   rdi
  2cf5a4:	48 83 ec 20                                     	sub    rsp,0x20
  2cf5a8:	49 8b f1                                        	mov    rsi,r9
  2cf5ab:	48 c7 41 10 00 00 00 00                         	mov    QWORD PTR [rcx+0x10],0x0
  2cf5b3:	48 8b f9                                        	mov    rdi,rcx
  2cf5b6:	48 c7 41 18 0f 00 00 00                         	mov    QWORD PTR [rcx+0x18],0xf
  2cf5be:	e8 65 f0 ff ff                                  	call   0x2ce628
  2cf5c3:	48 3b f0                                        	cmp    rsi,rax
  2cf5c6:	0f 87 8c 00 00 00                               	ja     0x2cf658
  2cf5cc:	48 83 fe 0f                                     	cmp    rsi,0xf
  2cf5d0:	76 40                                           	jbe    0x2cf612
  2cf5d2:	48 8b d6                                        	mov    rdx,rsi
  2cf5d5:	48 8b cf                                        	mov    rcx,rdi
  2cf5d8:	e8 b7 d9 ff ff                                  	call   0x2ccf94
  2cf5dd:	48 8b cf                                        	mov    rcx,rdi
  2cf5e0:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  2cf5e5:	e8 3a dd ff ff                                  	call   0x2cd324
  2cf5ea:	48 8b c8                                        	mov    rcx,rax
  2cf5ed:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2cf5f2:	e8 a5 ba ff ff                                  	call   0x2cb09c
  2cf5f7:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  2cf5fc:	48 89 44 24 58                                  	mov    QWORD PTR [rsp+0x58],rax
  2cf601:	48 8b cf                                        	mov    rcx,rdi
  2cf604:	e8 eb bc ff ff                                  	call   0x2cb2f4
  2cf609:	48 8b 44 24 40                                  	mov    rax,QWORD PTR [rsp+0x40]
  2cf60e:	48 89 47 18                                     	mov    QWORD PTR [rdi+0x18],rax
  2cf612:	48 8b cf                                        	mov    rcx,rdi
  2cf615:	e8 ca de ff ff                                  	call   0x2cd4e4
  2cf61a:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  2cf61f:	48 8b d8                                        	mov    rbx,rax
  2cf622:	e8 7d bd ff ff                                  	call   0x2cb3a4
  2cf627:	4c 8b c3                                        	mov    r8,rbx
  2cf62a:	48 8b d6                                        	mov    rdx,rsi
  2cf62d:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  2cf630:	e8 af 01 00 00                                  	call   0x2cf7e4
  2cf635:	48 89 77 10                                     	mov    QWORD PTR [rdi+0x10],rsi
  2cf639:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2cf63e:	c6 04 33 00                                     	mov    BYTE PTR [rbx+rsi*1],0x0
  2cf642:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  2cf64b:	e8 b0 53 00 00                                  	call   0x2d4a00
  2cf650:	48 83 c4 20                                     	add    rsp,0x20
  2cf654:	5f                                              	pop    rdi
  2cf655:	5e                                              	pop    rsi
  2cf656:	5b                                              	pop    rbx
  2cf657:	c3                                              	ret
  2cf658:	e8 cf e0 ff ff                                  	call   0x2cd72c
  2cf65d:	cc                                              	int3
