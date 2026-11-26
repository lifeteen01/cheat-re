
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d2094 <.data+0x2d2094>:
  2d2094:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2d2099:	57                                              	push   rdi
  2d209a:	48 83 ec 30                                     	sub    rsp,0x30
  2d209e:	48 8b fa                                        	mov    rdi,rdx
  2d20a1:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2d20a6:	49 8b d0                                        	mov    rdx,r8
  2d20a9:	49 8b d9                                        	mov    rbx,r9
  2d20ac:	e8 b7 a1 ff ff                                  	call   0x2cc268
  2d20b1:	48 8b d3                                        	mov    rdx,rbx
  2d20b4:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  2d20b9:	e8 aa a1 ff ff                                  	call   0x2cc268
  2d20be:	0f b7 44 24 4a                                  	movzx  eax,WORD PTR [rsp+0x4a]
  2d20c3:	48 8b cf                                        	mov    rcx,rdi
  2d20c6:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  2d20cb:	66 89 87 d2 00 00 00                            	mov    WORD PTR [rdi+0xd2],ax
  2d20d2:	48 8d 44 24 38                                  	lea    rax,[rsp+0x38]
  2d20d7:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  2d20db:	f3 0f 7f 87 88 00 00 00                         	movdqu XMMWORD PTR [rdi+0x88],xmm0
  2d20e3:	66 c7 87 d0 00 00 00 00 00                      	mov    WORD PTR [rdi+0xd0],0x0
  2d20ec:	48 c7 87 80 00 00 00 02 00 00 00                	mov    QWORD PTR [rdi+0x80],0x2
  2d20f7:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  2d20fc:	48 83 c4 30                                     	add    rsp,0x30
  2d2100:	5f                                              	pop    rdi
  2d2101:	e9 ce ba 0f 00                                  	jmp    0x3cdbd4
