
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ee344 <.data+0x2ee344>:
  2ee344:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2ee349:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2ee34e:	55                                              	push   rbp
  2ee34f:	53                                              	push   rbx
  2ee350:	56                                              	push   rsi
  2ee351:	57                                              	push   rdi
  2ee352:	48 8b ec                                        	mov    rbp,rsp
  2ee355:	48 83 ec 28                                     	sub    rsp,0x28
  2ee359:	48 8b f9                                        	mov    rdi,rcx
  2ee35c:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee360:	e8 df 26 fe ff                                  	call   0x2d0a44
  2ee365:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  2ee369:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  2ee36d:	48 8b d8                                        	mov    rbx,rax
  2ee370:	e8 cf 26 fe ff                                  	call   0x2d0a44
  2ee375:	48 8b f0                                        	mov    rsi,rax
  2ee378:	48 3b d8                                        	cmp    rbx,rax
  2ee37b:	74 21                                           	je     0x2ee39e
  2ee37d:	48 8b d3                                        	mov    rdx,rbx
  2ee380:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2ee384:	e8 73 95 00 00                                  	call   0x2f78fc
  2ee389:	84 c0                                           	test   al,al
  2ee38b:	75 11                                           	jne    0x2ee39e
  2ee38d:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  2ee391:	48 83 c3 68                                     	add    rbx,0x68
  2ee395:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  2ee399:	48 3b de                                        	cmp    rbx,rsi
  2ee39c:	75 df                                           	jne    0x2ee37d
  2ee39e:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  2ee3a2:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee3a6:	e8 81 34 fe ff                                  	call   0x2d182c
  2ee3ab:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  2ee3af:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  2ee3b2:	48 8b c7                                        	mov    rax,rdi
  2ee3b5:	48 83 c4 28                                     	add    rsp,0x28
  2ee3b9:	5f                                              	pop    rdi
  2ee3ba:	5e                                              	pop    rsi
  2ee3bb:	5b                                              	pop    rbx
  2ee3bc:	5d                                              	pop    rbp
  2ee3bd:	c3                                              	ret
