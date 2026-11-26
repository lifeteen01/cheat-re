
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a44d4 <.data+0x3a44d4>:
  3a44d4:	40 53                                           	rex push rbx
  3a44d6:	55                                              	push   rbp
  3a44d7:	56                                              	push   rsi
  3a44d8:	57                                              	push   rdi
  3a44d9:	41 56                                           	push   r14
  3a44db:	48 83 ec 20                                     	sub    rsp,0x20
  3a44df:	33 db                                           	xor    ebx,ebx
  3a44e1:	41 8b f0                                        	mov    esi,r8d
  3a44e4:	4c 8b f2                                        	mov    r14,rdx
  3a44e7:	48 8b e9                                        	mov    rbp,rcx
  3a44ea:	45 85 c0                                        	test   r8d,r8d
  3a44ed:	7e 1b                                           	jle    0x3a450a
  3a44ef:	41 0f b7 3c 5e                                  	movzx  edi,WORD PTR [r14+rbx*2]
  3a44f4:	48 8b cd                                        	mov    rcx,rbp
  3a44f7:	0f b7 d7                                        	movzx  edx,di
  3a44fa:	e8 55 00 00 00                                  	call   0x3a4554
  3a44ff:	48 85 c0                                        	test   rax,rax
  3a4502:	75 16                                           	jne    0x3a451a
  3a4504:	ff c3                                           	inc    ebx
  3a4506:	3b de                                           	cmp    ebx,esi
  3a4508:	7c e5                                           	jl     0x3a44ef
  3a450a:	b8 ff ff 00 00                                  	mov    eax,0xffff
  3a450f:	48 83 c4 20                                     	add    rsp,0x20
  3a4513:	41 5e                                           	pop    r14
  3a4515:	5f                                              	pop    rdi
  3a4516:	5e                                              	pop    rsi
  3a4517:	5d                                              	pop    rbp
  3a4518:	5b                                              	pop    rbx
  3a4519:	c3                                              	ret
  3a451a:	0f b7 c7                                        	movzx  eax,di
  3a451d:	eb f0                                           	jmp    0x3a450f
  3a451f:	cc                                              	int3
