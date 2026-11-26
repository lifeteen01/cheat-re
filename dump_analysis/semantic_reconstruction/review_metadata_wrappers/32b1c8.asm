
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032b1c8 <.data+0x32b1c8>:
  32b1c8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  32b1cd:	57                                              	push   rdi
  32b1ce:	48 83 ec 30                                     	sub    rsp,0x30
  32b1d2:	48 8b fa                                        	mov    rdi,rdx
  32b1d5:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  32b1da:	49 8b d0                                        	mov    rdx,r8
  32b1dd:	41 8b d9                                        	mov    ebx,r9d
  32b1e0:	e8 83 10 fa ff                                  	call   0x2cc268
  32b1e5:	8b d3                                           	mov    edx,ebx
  32b1e7:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  32b1ec:	e8 7f 41 fb ff                                  	call   0x2df370
  32b1f1:	0f b7 44 24 4a                                  	movzx  eax,WORD PTR [rsp+0x4a]
  32b1f6:	48 8b cf                                        	mov    rcx,rdi
  32b1f9:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  32b1fe:	66 89 87 d2 00 00 00                            	mov    WORD PTR [rdi+0xd2],ax
  32b205:	48 8d 44 24 38                                  	lea    rax,[rsp+0x38]
  32b20a:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  32b20e:	f3 0f 7f 87 88 00 00 00                         	movdqu XMMWORD PTR [rdi+0x88],xmm0
  32b216:	66 c7 87 d0 00 00 00 00 00                      	mov    WORD PTR [rdi+0xd0],0x0
  32b21f:	48 c7 87 80 00 00 00 02 00 00 00                	mov    QWORD PTR [rdi+0x80],0x2
  32b22a:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  32b22f:	48 83 c4 30                                     	add    rsp,0x30
  32b233:	5f                                              	pop    rdi
  32b234:	e9 9b 29 0a 00                                  	jmp    0x3cdbd4
