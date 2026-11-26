
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002de9d4 <.data+0x2de9d4>:
  2de9d4:	40 53                                           	rex push rbx
  2de9d6:	48 83 ec 40                                     	sub    rsp,0x40
  2de9da:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  2de9df:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2de9e4:	0f 28 ca                                        	movaps xmm1,xmm2
  2de9e7:	0f 28 f3                                        	movaps xmm6,xmm3
  2de9ea:	48 8b da                                        	mov    rbx,rdx
  2de9ed:	e8 06 f2 ff ff                                  	call   0x2ddbf8
  2de9f2:	0f 28 ce                                        	movaps xmm1,xmm6
  2de9f5:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  2de9fa:	e8 f9 f1 ff ff                                  	call   0x2ddbf8
  2de9ff:	0f b7 44 24 5a                                  	movzx  eax,WORD PTR [rsp+0x5a]
  2dea04:	48 8b cb                                        	mov    rcx,rbx
  2dea07:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  2dea0c:	66 89 83 d2 00 00 00                            	mov    WORD PTR [rbx+0xd2],ax
  2dea13:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  2dea18:	48 89 43 78                                     	mov    QWORD PTR [rbx+0x78],rax
  2dea1c:	f3 0f 7f 83 88 00 00 00                         	movdqu XMMWORD PTR [rbx+0x88],xmm0
  2dea24:	66 c7 83 d0 00 00 00 01 01                      	mov    WORD PTR [rbx+0xd0],0x101
  2dea2d:	48 c7 83 80 00 00 00 02 00 00 00                	mov    QWORD PTR [rbx+0x80],0x2
  2dea38:	e8 97 f1 0e 00                                  	call   0x3cdbd4
  2dea3d:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  2dea42:	48 83 c4 40                                     	add    rsp,0x40
  2dea46:	5b                                              	pop    rbx
  2dea47:	e9 64 f1 0e 00                                  	jmp    0x3cdbb0
