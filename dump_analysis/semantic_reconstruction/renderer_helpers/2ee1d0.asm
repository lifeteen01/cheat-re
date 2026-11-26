
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ee1d0 <.data+0x2ee1d0>:
  2ee1d0:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2ee1d5:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2ee1da:	55                                              	push   rbp
  2ee1db:	53                                              	push   rbx
  2ee1dc:	56                                              	push   rsi
  2ee1dd:	57                                              	push   rdi
  2ee1de:	48 8b ec                                        	mov    rbp,rsp
  2ee1e1:	48 83 ec 28                                     	sub    rsp,0x28
  2ee1e5:	48 8b f9                                        	mov    rdi,rcx
  2ee1e8:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee1ec:	e8 53 28 fe ff                                  	call   0x2d0a44
  2ee1f1:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  2ee1f5:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  2ee1f9:	48 8b d8                                        	mov    rbx,rax
  2ee1fc:	e8 43 28 fe ff                                  	call   0x2d0a44
  2ee201:	48 8b f0                                        	mov    rsi,rax
  2ee204:	48 3b d8                                        	cmp    rbx,rax
  2ee207:	74 21                                           	je     0x2ee22a
  2ee209:	48 8b d3                                        	mov    rdx,rbx
  2ee20c:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2ee210:	e8 87 91 00 00                                  	call   0x2f739c
  2ee215:	84 c0                                           	test   al,al
  2ee217:	75 11                                           	jne    0x2ee22a
  2ee219:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  2ee21d:	48 83 c3 68                                     	add    rbx,0x68
  2ee221:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  2ee225:	48 3b de                                        	cmp    rbx,rsi
  2ee228:	75 df                                           	jne    0x2ee209
  2ee22a:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  2ee22e:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee232:	e8 f5 35 fe ff                                  	call   0x2d182c
  2ee237:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  2ee23b:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  2ee23e:	48 8b c7                                        	mov    rax,rdi
  2ee241:	48 83 c4 28                                     	add    rsp,0x28
  2ee245:	5f                                              	pop    rdi
  2ee246:	5e                                              	pop    rsi
  2ee247:	5b                                              	pop    rbx
  2ee248:	5d                                              	pop    rbp
  2ee249:	c3                                              	ret
