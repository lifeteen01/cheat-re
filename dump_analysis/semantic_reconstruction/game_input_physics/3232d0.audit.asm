
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3232d0.audit.bin:     file format binary


Disassembly of section .data:

00000000003232d0 <.data>:
  3232d0:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3232d5:	57                                              	push   rdi
  3232d6:	48 83 ec 40                                     	sub    rsp,0x40
  3232da:	48 8b fa                                        	mov    rdi,rdx
  3232dd:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3232e2:	41 8b d0                                        	mov    edx,r8d
  3232e5:	41 8b d9                                        	mov    ebx,r9d
  3232e8:	e8 83 c0 fb ff                                  	call   0x2df370
  3232ed:	8b d3                                           	mov    edx,ebx
  3232ef:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3232f4:	e8 77 c0 fb ff                                  	call   0x2df370
  3232f9:	8a 54 24 70                                     	mov    dl,BYTE PTR [rsp+0x70]
  3232fd:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  323302:	e8 21 16 fb ff                                  	call   0x2d4928
  323307:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  32330c:	33 c0                                           	xor    eax,eax
  32330e:	48 8b cf                                        	mov    rcx,rdi
  323311:	f2 0f 10 4c 24 30                               	movsd  xmm1,QWORD PTR [rsp+0x30]
  323317:	66 89 87 d0 00 00 00                            	mov    WORD PTR [rdi+0xd0],ax
  32331e:	88 87 d2 00 00 00                               	mov    BYTE PTR [rdi+0xd2],al
  323324:	8a 44 24 5b                                     	mov    al,BYTE PTR [rsp+0x5b]
  323328:	88 87 d3 00 00 00                               	mov    BYTE PTR [rdi+0xd3],al
  32332e:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  323333:	0f 11 87 88 00 00 00                            	movups XMMWORD PTR [rdi+0x88],xmm0
  32333a:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  32333e:	f2 0f 11 8f 98 00 00 00                         	movsd  QWORD PTR [rdi+0x98],xmm1
  323346:	48 c7 87 80 00 00 00 03 00 00 00                	mov    QWORD PTR [rdi+0x80],0x3
  323351:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  323356:	48 83 c4 40                                     	add    rsp,0x40
  32335a:	5f                                              	pop    rdi
  32335b:	e9 74 a8 0a 00                                  	jmp    0x3cdbd4
