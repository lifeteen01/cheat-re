
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002db470 <.data+0x2db470>:
  2db470:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2db475:	57                                              	push   rdi
  2db476:	48 83 ec 20                                     	sub    rsp,0x20
  2db47a:	48 8b da                                        	mov    rbx,rdx
  2db47d:	48 8b f9                                        	mov    rdi,rcx
  2db480:	e8 67 ff ff ff                                  	call   0x2db3ec
  2db485:	48 8d 53 30                                     	lea    rdx,[rbx+0x30]
  2db489:	48 8d 4f 30                                     	lea    rcx,[rdi+0x30]
  2db48d:	e8 02 8d ff ff                                  	call   0x2d4194
  2db492:	0f 10 43 50                                     	movups xmm0,XMMWORD PTR [rbx+0x50]
  2db496:	f3 0f 7f 47 50                                  	movdqu XMMWORD PTR [rdi+0x50],xmm0
  2db49b:	8a 43 60                                        	mov    al,BYTE PTR [rbx+0x60]
  2db49e:	88 47 60                                        	mov    BYTE PTR [rdi+0x60],al
  2db4a1:	8b 43 64                                        	mov    eax,DWORD PTR [rbx+0x64]
  2db4a4:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2db4a9:	89 47 64                                        	mov    DWORD PTR [rdi+0x64],eax
  2db4ac:	48 8b c7                                        	mov    rax,rdi
  2db4af:	48 83 c4 20                                     	add    rsp,0x20
  2db4b3:	5f                                              	pop    rdi
  2db4b4:	c3                                              	ret
