
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003721b4 <.data+0x3721b4>:
  3721b4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3721b9:	57                                              	push   rdi
  3721ba:	48 83 ec 20                                     	sub    rsp,0x20
  3721be:	48 8b f9                                        	mov    rdi,rcx
  3721c1:	e8 42 8d f5 ff                                  	call   0x2caf08
  3721c6:	84 c0                                           	test   al,al
  3721c8:	74 48                                           	je     0x372212
  3721ca:	48 8b cf                                        	mov    rcx,rdi
  3721cd:	e8 7a f3 ff ff                                  	call   0x37154c
  3721d2:	48 8b c8                                        	mov    rcx,rax
  3721d5:	48 8b d8                                        	mov    rbx,rax
  3721d8:	e8 2b 8d f5 ff                                  	call   0x2caf08
  3721dd:	84 c0                                           	test   al,al
  3721df:	74 31                                           	je     0x372212
  3721e1:	48 8b cb                                        	mov    rcx,rbx
  3721e4:	e8 33 04 00 00                                  	call   0x37261c
  3721e9:	8b c8                                           	mov    ecx,eax
  3721eb:	e8 38 f6 ff ff                                  	call   0x371828
  3721f0:	84 c0                                           	test   al,al
  3721f2:	74 1e                                           	je     0x372212
  3721f4:	48 8b cb                                        	mov    rcx,rbx
  3721f7:	e8 70 01 00 00                                  	call   0x37236c
  3721fc:	85 c0                                           	test   eax,eax
  3721fe:	74 0d                                           	je     0x37220d
  372200:	48 8b cb                                        	mov    rcx,rbx
  372203:	e8 64 01 00 00                                  	call   0x37236c
  372208:	83 f8 05                                        	cmp    eax,0x5
  37220b:	75 05                                           	jne    0x372212
  37220d:	48 8b c7                                        	mov    rax,rdi
  372210:	eb 02                                           	jmp    0x372214
  372212:	33 c0                                           	xor    eax,eax
  372214:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  372219:	48 83 c4 20                                     	add    rsp,0x20
  37221d:	5f                                              	pop    rdi
  37221e:	c3                                              	ret
