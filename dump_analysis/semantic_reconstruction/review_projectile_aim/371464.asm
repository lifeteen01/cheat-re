
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371464 <.data+0x371464>:
  371464:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  371469:	57                                              	push   rdi
  37146a:	48 83 ec 20                                     	sub    rsp,0x20
  37146e:	48 8b d9                                        	mov    rbx,rcx
  371471:	e8 92 9a f5 ff                                  	call   0x2caf08
  371476:	84 c0                                           	test   al,al
  371478:	74 3b                                           	je     0x3714b5
  37147a:	48 8b cb                                        	mov    rcx,rbx
  37147d:	e8 ca 00 00 00                                  	call   0x37154c
  371482:	48 8b c8                                        	mov    rcx,rax
  371485:	48 8b f8                                        	mov    rdi,rax
  371488:	e8 7b 9a f5 ff                                  	call   0x2caf08
  37148d:	84 c0                                           	test   al,al
  37148f:	74 24                                           	je     0x3714b5
  371491:	48 8b cf                                        	mov    rcx,rdi
  371494:	e8 83 11 00 00                                  	call   0x37261c
  371499:	8b c8                                           	mov    ecx,eax
  37149b:	e8 48 05 00 00                                  	call   0x3719e8
  3714a0:	84 c0                                           	test   al,al
  3714a2:	74 11                                           	je     0x3714b5
  3714a4:	48 8b cf                                        	mov    rcx,rdi
  3714a7:	e8 c0 0e 00 00                                  	call   0x37236c
  3714ac:	85 c0                                           	test   eax,eax
  3714ae:	75 05                                           	jne    0x3714b5
  3714b0:	48 8b c3                                        	mov    rax,rbx
  3714b3:	eb 02                                           	jmp    0x3714b7
  3714b5:	33 c0                                           	xor    eax,eax
  3714b7:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3714bc:	48 83 c4 20                                     	add    rsp,0x20
  3714c0:	5f                                              	pop    rdi
  3714c1:	c3                                              	ret
