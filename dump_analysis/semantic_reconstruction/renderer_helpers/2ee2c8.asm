
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ee2c8 <.data+0x2ee2c8>:
  2ee2c8:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2ee2cd:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2ee2d2:	55                                              	push   rbp
  2ee2d3:	53                                              	push   rbx
  2ee2d4:	56                                              	push   rsi
  2ee2d5:	57                                              	push   rdi
  2ee2d6:	48 8b ec                                        	mov    rbp,rsp
  2ee2d9:	48 83 ec 28                                     	sub    rsp,0x28
  2ee2dd:	48 8b f9                                        	mov    rdi,rcx
  2ee2e0:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee2e4:	e8 5b 27 fe ff                                  	call   0x2d0a44
  2ee2e9:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  2ee2ed:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  2ee2f1:	48 8b d8                                        	mov    rbx,rax
  2ee2f4:	e8 4b 27 fe ff                                  	call   0x2d0a44
  2ee2f9:	48 8b f0                                        	mov    rsi,rax
  2ee2fc:	48 3b d8                                        	cmp    rbx,rax
  2ee2ff:	74 21                                           	je     0x2ee322
  2ee301:	48 8b d3                                        	mov    rdx,rbx
  2ee304:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2ee308:	e8 b3 93 00 00                                  	call   0x2f76c0
  2ee30d:	84 c0                                           	test   al,al
  2ee30f:	75 11                                           	jne    0x2ee322
  2ee311:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  2ee315:	48 83 c3 68                                     	add    rbx,0x68
  2ee319:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  2ee31d:	48 3b de                                        	cmp    rbx,rsi
  2ee320:	75 df                                           	jne    0x2ee301
  2ee322:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  2ee326:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee32a:	e8 fd 34 fe ff                                  	call   0x2d182c
  2ee32f:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  2ee333:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  2ee336:	48 8b c7                                        	mov    rax,rdi
  2ee339:	48 83 c4 28                                     	add    rsp,0x28
  2ee33d:	5f                                              	pop    rdi
  2ee33e:	5e                                              	pop    rsi
  2ee33f:	5b                                              	pop    rbx
  2ee340:	5d                                              	pop    rbp
  2ee341:	c3                                              	ret
