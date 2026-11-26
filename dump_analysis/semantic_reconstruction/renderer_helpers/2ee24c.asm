
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ee24c <.data+0x2ee24c>:
  2ee24c:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2ee251:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2ee256:	55                                              	push   rbp
  2ee257:	53                                              	push   rbx
  2ee258:	56                                              	push   rsi
  2ee259:	57                                              	push   rdi
  2ee25a:	48 8b ec                                        	mov    rbp,rsp
  2ee25d:	48 83 ec 28                                     	sub    rsp,0x28
  2ee261:	48 8b f9                                        	mov    rdi,rcx
  2ee264:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee268:	e8 d7 27 fe ff                                  	call   0x2d0a44
  2ee26d:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  2ee271:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  2ee275:	48 8b d8                                        	mov    rbx,rax
  2ee278:	e8 c7 27 fe ff                                  	call   0x2d0a44
  2ee27d:	48 8b f0                                        	mov    rsi,rax
  2ee280:	48 3b d8                                        	cmp    rbx,rax
  2ee283:	74 21                                           	je     0x2ee2a6
  2ee285:	48 8b d3                                        	mov    rdx,rbx
  2ee288:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2ee28c:	e8 87 92 00 00                                  	call   0x2f7518
  2ee291:	84 c0                                           	test   al,al
  2ee293:	75 11                                           	jne    0x2ee2a6
  2ee295:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  2ee299:	48 83 c3 68                                     	add    rbx,0x68
  2ee29d:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  2ee2a1:	48 3b de                                        	cmp    rbx,rsi
  2ee2a4:	75 df                                           	jne    0x2ee285
  2ee2a6:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  2ee2aa:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee2ae:	e8 79 35 fe ff                                  	call   0x2d182c
  2ee2b3:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  2ee2b7:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  2ee2ba:	48 8b c7                                        	mov    rax,rdi
  2ee2bd:	48 83 c4 28                                     	add    rsp,0x28
  2ee2c1:	5f                                              	pop    rdi
  2ee2c2:	5e                                              	pop    rsi
  2ee2c3:	5b                                              	pop    rbx
  2ee2c4:	5d                                              	pop    rbp
  2ee2c5:	c3                                              	ret
