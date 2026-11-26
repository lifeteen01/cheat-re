
dump_analysis/semantic_reconstruction/game_input_physics/2e480c.bin:     file format binary


Disassembly of section .data:

00000000002e480c <.data>:
  2e480c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e4811:	57                                              	push   rdi
  2e4812:	48 83 ec 50                                     	sub    rsp,0x50
  2e4816:	48 8b fa                                        	mov    rdi,rdx
  2e4819:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2e481e:	49 8b d0                                        	mov    rdx,r8
  2e4821:	41 8b d9                                        	mov    ebx,r9d
  2e4824:	e8 3f 7a fe ff                                  	call   0x2cc268
  2e4829:	8b d3                                           	mov    edx,ebx
  2e482b:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  2e4830:	e8 3b ab ff ff                                  	call   0x2df370
  2e4835:	8b 94 24 80 00 00 00                            	mov    edx,DWORD PTR [rsp+0x80]
  2e483c:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2e4841:	e8 2a ab ff ff                                  	call   0x2df370
  2e4846:	48 8b 94 24 88 00 00 00                         	mov    rdx,QWORD PTR [rsp+0x88]
  2e484e:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  2e4853:	e8 10 7a fe ff                                  	call   0x2cc268
  2e4858:	8b 94 24 90 00 00 00                            	mov    edx,DWORD PTR [rsp+0x90]
  2e485f:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e4864:	e8 07 ab ff ff                                  	call   0x2df370
  2e4869:	8b 94 24 98 00 00 00                            	mov    edx,DWORD PTR [rsp+0x98]
  2e4870:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  2e4875:	e8 f6 aa ff ff                                  	call   0x2df370
  2e487a:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  2e487f:	33 c0                                           	xor    eax,eax
  2e4881:	48 8b cf                                        	mov    rcx,rdi
  2e4884:	0f 10 4c 24 30                                  	movups xmm1,XMMWORD PTR [rsp+0x30]
  2e4889:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2e488d:	0f 11 87 88 00 00 00                            	movups XMMWORD PTR [rdi+0x88],xmm0
  2e4894:	89 87 d0 00 00 00                               	mov    DWORD PTR [rdi+0xd0],eax
  2e489a:	48 8d 44 24 58                                  	lea    rax,[rsp+0x58]
  2e489f:	0f 10 44 24 40                                  	movups xmm0,XMMWORD PTR [rsp+0x40]
  2e48a4:	48 c7 87 80 00 00 00 06 00 00 00                	mov    QWORD PTR [rdi+0x80],0x6
  2e48af:	0f 11 8f 98 00 00 00                            	movups XMMWORD PTR [rdi+0x98],xmm1
  2e48b6:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  2e48ba:	0f 11 87 a8 00 00 00                            	movups XMMWORD PTR [rdi+0xa8],xmm0
  2e48c1:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  2e48c6:	48 83 c4 50                                     	add    rsp,0x50
  2e48ca:	5f                                              	pop    rdi
  2e48cb:	e9 04 93 0e 00                                  	jmp    0x3cdbd4
