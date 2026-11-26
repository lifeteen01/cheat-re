
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ee154 <.data+0x2ee154>:
  2ee154:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2ee159:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2ee15e:	55                                              	push   rbp
  2ee15f:	53                                              	push   rbx
  2ee160:	56                                              	push   rsi
  2ee161:	57                                              	push   rdi
  2ee162:	48 8b ec                                        	mov    rbp,rsp
  2ee165:	48 83 ec 28                                     	sub    rsp,0x28
  2ee169:	48 8b f9                                        	mov    rdi,rcx
  2ee16c:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee170:	e8 cf 28 fe ff                                  	call   0x2d0a44
  2ee175:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  2ee179:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  2ee17d:	48 8b d8                                        	mov    rbx,rax
  2ee180:	e8 bf 28 fe ff                                  	call   0x2d0a44
  2ee185:	48 8b f0                                        	mov    rsi,rax
  2ee188:	48 3b d8                                        	cmp    rbx,rax
  2ee18b:	74 21                                           	je     0x2ee1ae
  2ee18d:	48 8b d3                                        	mov    rdx,rbx
  2ee190:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2ee194:	e8 97 90 00 00                                  	call   0x2f7230
  2ee199:	84 c0                                           	test   al,al
  2ee19b:	75 11                                           	jne    0x2ee1ae
  2ee19d:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  2ee1a1:	48 83 c3 68                                     	add    rbx,0x68
  2ee1a5:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  2ee1a9:	48 3b de                                        	cmp    rbx,rsi
  2ee1ac:	75 df                                           	jne    0x2ee18d
  2ee1ae:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  2ee1b2:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee1b6:	e8 71 36 fe ff                                  	call   0x2d182c
  2ee1bb:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  2ee1bf:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  2ee1c2:	48 8b c7                                        	mov    rax,rdi
  2ee1c5:	48 83 c4 28                                     	add    rsp,0x28
  2ee1c9:	5f                                              	pop    rdi
  2ee1ca:	5e                                              	pop    rsi
  2ee1cb:	5b                                              	pop    rbx
  2ee1cc:	5d                                              	pop    rbp
  2ee1cd:	c3                                              	ret
