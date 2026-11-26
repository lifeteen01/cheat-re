
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2de874.audit.bin:     file format binary


Disassembly of section .data:

00000000002de874 <.data>:
  2de874:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2de879:	48 89 7c 24 18                                  	mov    QWORD PTR [rsp+0x18],rdi
  2de87e:	55                                              	push   rbp
  2de87f:	48 8b ec                                        	mov    rbp,rsp
  2de882:	48 83 ec 60                                     	sub    rsp,0x60
  2de886:	48 8b fa                                        	mov    rdi,rdx
  2de889:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  2de88d:	49 8b d0                                        	mov    rdx,r8
  2de890:	49 8b d9                                        	mov    rbx,r9
  2de893:	e8 d0 d9 fe ff                                  	call   0x2cc268
  2de898:	48 8b d3                                        	mov    rdx,rbx
  2de89b:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  2de89f:	e8 c4 d9 fe ff                                  	call   0x2cc268
  2de8a4:	8b 55 30                                        	mov    edx,DWORD PTR [rbp+0x30]
  2de8a7:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  2de8ab:	e8 c0 0a 00 00                                  	call   0x2df370
  2de8b0:	f3 0f 10 4d 38                                  	movss  xmm1,DWORD PTR [rbp+0x38]
  2de8b5:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  2de8b9:	e8 3a f3 ff ff                                  	call   0x2ddbf8
  2de8be:	f3 0f 10 4d 40                                  	movss  xmm1,DWORD PTR [rbp+0x40]
  2de8c3:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  2de8c7:	e8 2c f3 ff ff                                  	call   0x2ddbf8
  2de8cc:	f3 0f 10 4d 48                                  	movss  xmm1,DWORD PTR [rbp+0x48]
  2de8d1:	48 8d 4d e8                                     	lea    rcx,[rbp-0x18]
  2de8d5:	e8 1e f3 ff ff                                  	call   0x2ddbf8
  2de8da:	8b 55 50                                        	mov    edx,DWORD PTR [rbp+0x50]
  2de8dd:	48 8d 4d f0                                     	lea    rcx,[rbp-0x10]
  2de8e1:	e8 8a 0a 00 00                                  	call   0x2df370
  2de8e6:	0f 10 45 c0                                     	movups xmm0,XMMWORD PTR [rbp-0x40]
  2de8ea:	c7 45 18 00 00 00 01                            	mov    DWORD PTR [rbp+0x18],0x1000000
  2de8f1:	48 8b cf                                        	mov    rcx,rdi
  2de8f4:	0f 10 4d d0                                     	movups xmm1,XMMWORD PTR [rbp-0x30]
  2de8f8:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
  2de8fb:	0f 11 87 88 00 00 00                            	movups XMMWORD PTR [rdi+0x88],xmm0
  2de902:	89 87 d0 00 00 00                               	mov    DWORD PTR [rdi+0xd0],eax
  2de908:	48 8d 45 08                                     	lea    rax,[rbp+0x8]
  2de90c:	0f 10 45 e0                                     	movups xmm0,XMMWORD PTR [rbp-0x20]
  2de910:	48 c7 87 80 00 00 00 07 00 00 00                	mov    QWORD PTR [rdi+0x80],0x7
  2de91b:	0f 11 8f 98 00 00 00                            	movups XMMWORD PTR [rdi+0x98],xmm1
  2de922:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  2de926:	f2 0f 10 4d f0                                  	movsd  xmm1,QWORD PTR [rbp-0x10]
  2de92b:	0f 11 87 a8 00 00 00                            	movups XMMWORD PTR [rdi+0xa8],xmm0
  2de932:	f2 0f 11 8f b8 00 00 00                         	movsd  QWORD PTR [rdi+0xb8],xmm1
  2de93a:	4c 8d 5c 24 60                                  	lea    r11,[rsp+0x60]
  2de93f:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  2de943:	49 8b 7b 20                                     	mov    rdi,QWORD PTR [r11+0x20]
  2de947:	49 8b e3                                        	mov    rsp,r11
  2de94a:	5d                                              	pop    rbp
  2de94b:	e9 84 f2 0e 00                                  	jmp    0x3cdbd4
