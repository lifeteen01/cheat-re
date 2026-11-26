
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003714c4 <.data+0x3714c4>:
  3714c4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3714c9:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3714ce:	57                                              	push   rdi
  3714cf:	48 83 ec 20                                     	sub    rsp,0x20
  3714d3:	48 8b d9                                        	mov    rbx,rcx
  3714d6:	e8 2d 9a f5 ff                                  	call   0x2caf08
  3714db:	84 c0                                           	test   al,al
  3714dd:	74 59                                           	je     0x371538
  3714df:	48 8b cb                                        	mov    rcx,rbx
  3714e2:	e8 65 00 00 00                                  	call   0x37154c
  3714e7:	48 8b c8                                        	mov    rcx,rax
  3714ea:	48 8b f8                                        	mov    rdi,rax
  3714ed:	e8 16 9a f5 ff                                  	call   0x2caf08
  3714f2:	84 c0                                           	test   al,al
  3714f4:	74 42                                           	je     0x371538
  3714f6:	48 8b cf                                        	mov    rcx,rdi
  3714f9:	e8 1e 11 00 00                                  	call   0x37261c
  3714fe:	8b c8                                           	mov    ecx,eax
  371500:	8b f0                                           	mov    esi,eax
  371502:	e8 e1 04 00 00                                  	call   0x3719e8
  371507:	84 c0                                           	test   al,al
  371509:	75 0b                                           	jne    0x371516
  37150b:	8b ce                                           	mov    ecx,esi
  37150d:	e8 16 03 00 00                                  	call   0x371828
  371512:	84 c0                                           	test   al,al
  371514:	74 22                                           	je     0x371538
  371516:	48 8b cf                                        	mov    rcx,rdi
  371519:	e8 4e 0e 00 00                                  	call   0x37236c
  37151e:	85 c0                                           	test   eax,eax
  371520:	74 11                                           	je     0x371533
  371522:	48 8b cf                                        	mov    rcx,rdi
  371525:	e8 42 0e 00 00                                  	call   0x37236c
  37152a:	33 c9                                           	xor    ecx,ecx
  37152c:	83 f8 05                                        	cmp    eax,0x5
  37152f:	48 0f 45 d9                                     	cmovne rbx,rcx
  371533:	48 8b c3                                        	mov    rax,rbx
  371536:	eb 02                                           	jmp    0x37153a
  371538:	33 c0                                           	xor    eax,eax
  37153a:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37153f:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  371544:	48 83 c4 20                                     	add    rsp,0x20
  371548:	5f                                              	pop    rdi
  371549:	c3                                              	ret
