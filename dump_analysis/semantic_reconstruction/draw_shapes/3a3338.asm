
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3338 <.data+0x3a3338>:
  3a3338:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a333d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a3342:	57                                              	push   rdi
  3a3343:	48 83 ec 20                                     	sub    rsp,0x20
  3a3347:	f7 44 24 50 00 00 00 ff                         	test   DWORD PTR [rsp+0x50],0xff000000
  3a334f:	49 8b f9                                        	mov    rdi,r9
  3a3352:	49 8b f0                                        	mov    rsi,r8
  3a3355:	48 8b d9                                        	mov    rbx,rcx
  3a3358:	74 27                                           	je     0x3a3381
  3a335a:	e8 e1 56 fd ff                                  	call   0x378a40
  3a335f:	48 8b d6                                        	mov    rdx,rsi
  3a3362:	48 8b cb                                        	mov    rcx,rbx
  3a3365:	e8 d6 56 fd ff                                  	call   0x378a40
  3a336a:	48 8b d7                                        	mov    rdx,rdi
  3a336d:	48 8b cb                                        	mov    rcx,rbx
  3a3370:	e8 cb 56 fd ff                                  	call   0x378a40
  3a3375:	8b 54 24 50                                     	mov    edx,DWORD PTR [rsp+0x50]
  3a3379:	48 8b cb                                        	mov    rcx,rbx
  3a337c:	e8 93 56 fd ff                                  	call   0x378a14
  3a3381:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a3386:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3a338b:	48 83 c4 20                                     	add    rsp,0x20
  3a338f:	5f                                              	pop    rdi
  3a3390:	c3                                              	ret
