
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039fd18 <.data+0x39fd18>:
  39fd18:	40 53                                           	rex push rbx
  39fd1a:	48 83 ec 60                                     	sub    rsp,0x60
  39fd1e:	48 8b d9                                        	mov    rbx,rcx
  39fd21:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39fd26:	e8 69 f5 ff ff                                  	call   0x39f294
  39fd2b:	48 8b 83 98 00 00 00                            	mov    rax,QWORD PTR [rbx+0x98]
  39fd32:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  39fd37:	0f 10 83 88 00 00 00                            	movups xmm0,XMMWORD PTR [rbx+0x88]
  39fd3e:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  39fd43:	48 8b cb                                        	mov    rcx,rbx
  39fd46:	8b 83 a0 00 00 00                               	mov    eax,DWORD PTR [rbx+0xa0]
  39fd4c:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  39fd50:	8b 43 10                                        	mov    eax,DWORD PTR [rbx+0x10]
  39fd53:	89 44 24 3c                                     	mov    DWORD PTR [rsp+0x3c],eax
  39fd57:	f3 0f 7f 44 24 20                               	movdqu XMMWORD PTR [rsp+0x20],xmm0
  39fd5d:	e8 ca f1 ff ff                                  	call   0x39ef2c
  39fd62:	48 83 c4 60                                     	add    rsp,0x60
  39fd66:	5b                                              	pop    rbx
  39fd67:	c3                                              	ret
