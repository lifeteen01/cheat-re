
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002db3ec <.data+0x2db3ec>:
  2db3ec:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2db3f1:	57                                              	push   rdi
  2db3f2:	48 83 ec 20                                     	sub    rsp,0x20
  2db3f6:	48 8b da                                        	mov    rbx,rdx
  2db3f9:	48 8b f9                                        	mov    rdi,rcx
  2db3fc:	e8 93 8d ff ff                                  	call   0x2d4194
  2db401:	8b 43 20                                        	mov    eax,DWORD PTR [rbx+0x20]
  2db404:	89 47 20                                        	mov    DWORD PTR [rdi+0x20],eax
  2db407:	f2 0f 10 43 24                                  	movsd  xmm0,QWORD PTR [rbx+0x24]
  2db40c:	f2 0f 11 47 24                                  	movsd  QWORD PTR [rdi+0x24],xmm0
  2db411:	8a 43 2c                                        	mov    al,BYTE PTR [rbx+0x2c]
  2db414:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2db419:	88 47 2c                                        	mov    BYTE PTR [rdi+0x2c],al
  2db41c:	48 8b c7                                        	mov    rax,rdi
  2db41f:	48 83 c4 20                                     	add    rsp,0x20
  2db423:	5f                                              	pop    rdi
  2db424:	c3                                              	ret
