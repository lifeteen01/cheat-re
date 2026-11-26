
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3214f4.audit.bin:     file format binary


Disassembly of section .data:

00000000003214f4 <.data>:
  3214f4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3214f9:	57                                              	push   rdi
  3214fa:	48 83 ec 30                                     	sub    rsp,0x30
  3214fe:	48 8b fa                                        	mov    rdi,rdx
  321501:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  321506:	49 8b d0                                        	mov    rdx,r8
  321509:	41 8a d9                                        	mov    bl,r9b
  32150c:	e8 57 ad fa ff                                  	call   0x2cc268
  321511:	8a d3                                           	mov    dl,bl
  321513:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  321518:	e8 0b 34 fb ff                                  	call   0x2d4928
  32151d:	0f b7 44 24 4a                                  	movzx  eax,WORD PTR [rsp+0x4a]
  321522:	48 8b cf                                        	mov    rcx,rdi
  321525:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  32152a:	66 89 87 d2 00 00 00                            	mov    WORD PTR [rdi+0xd2],ax
  321531:	48 8d 44 24 38                                  	lea    rax,[rsp+0x38]
  321536:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  32153a:	f3 0f 7f 87 88 00 00 00                         	movdqu XMMWORD PTR [rdi+0x88],xmm0
  321542:	66 c7 87 d0 00 00 00 00 00                      	mov    WORD PTR [rdi+0xd0],0x0
  32154b:	48 c7 87 80 00 00 00 02 00 00 00                	mov    QWORD PTR [rdi+0x80],0x2
  321556:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  32155b:	48 83 c4 30                                     	add    rsp,0x30
  32155f:	5f                                              	pop    rdi
  321560:	e9 6f c6 0a 00                                  	jmp    0x3cdbd4
