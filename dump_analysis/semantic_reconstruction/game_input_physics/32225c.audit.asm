
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/32225c.audit.bin:     file format binary


Disassembly of section .data:

000000000032225c <.data>:
  32225c:	40 53                                           	rex push rbx
  32225e:	48 83 ec 40                                     	sub    rsp,0x40
  322262:	48 8b da                                        	mov    rbx,rdx
  322265:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  32226a:	49 8b d0                                        	mov    rdx,r8
  32226d:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  322272:	0f 28 f3                                        	movaps xmm6,xmm3
  322275:	e8 ee 9f fa ff                                  	call   0x2cc268
  32227a:	0f 28 ce                                        	movaps xmm1,xmm6
  32227d:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  322282:	e8 71 b9 fb ff                                  	call   0x2ddbf8
  322287:	0f b7 44 24 5a                                  	movzx  eax,WORD PTR [rsp+0x5a]
  32228c:	48 8b cb                                        	mov    rcx,rbx
  32228f:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  322294:	66 89 83 d2 00 00 00                            	mov    WORD PTR [rbx+0xd2],ax
  32229b:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  3222a0:	48 89 43 78                                     	mov    QWORD PTR [rbx+0x78],rax
  3222a4:	f3 0f 7f 83 88 00 00 00                         	movdqu XMMWORD PTR [rbx+0x88],xmm0
  3222ac:	66 c7 83 d0 00 00 00 00 01                      	mov    WORD PTR [rbx+0xd0],0x100
  3222b5:	48 c7 83 80 00 00 00 02 00 00 00                	mov    QWORD PTR [rbx+0x80],0x2
  3222c0:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3222c5:	48 83 c4 40                                     	add    rsp,0x40
  3222c9:	5b                                              	pop    rbx
  3222ca:	e9 05 b9 0a 00                                  	jmp    0x3cdbd4
