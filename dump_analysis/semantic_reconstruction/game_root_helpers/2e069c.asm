
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e069c <.data+0x2e069c>:
  2e069c:	40 53                                           	rex push rbx
  2e069e:	48 83 ec 30                                     	sub    rsp,0x30
  2e06a2:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e06a7:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e06ac:	e8 7f c0 fe ff                                  	call   0x2cc730
  2e06b1:	48 8b c8                                        	mov    rcx,rax
  2e06b4:	e8 eb d5 fe ff                                  	call   0x2cdca4
  2e06b9:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2e06be:	48 8b d8                                        	mov    rbx,rax
  2e06c1:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  2e06c6:	e8 b1 f1 ff ff                                  	call   0x2df87c
  2e06cb:	48 8b c8                                        	mov    rcx,rax
  2e06ce:	e8 f9 7e ff ff                                  	call   0x2d85cc
  2e06d3:	48 8b c8                                        	mov    rcx,rax
  2e06d6:	48 8b d3                                        	mov    rdx,rbx
  2e06d9:	e8 46 3b 05 00                                  	call   0x334224
  2e06de:	48 8b c8                                        	mov    rcx,rax
  2e06e1:	48 8b d0                                        	mov    rdx,rax
  2e06e4:	e8 1f a8 fe ff                                  	call   0x2caf08
  2e06e9:	84 c0                                           	test   al,al
  2e06eb:	74 27                                           	je     0x2e0714
  2e06ed:	48 8b 92 b8 00 00 00                            	mov    rdx,QWORD PTR [rdx+0xb8]
  2e06f4:	48 8b ca                                        	mov    rcx,rdx
  2e06f7:	e8 0c a8 fe ff                                  	call   0x2caf08
  2e06fc:	84 c0                                           	test   al,al
  2e06fe:	74 14                                           	je     0x2e0714
  2e0700:	48 8b 4a 38                                     	mov    rcx,QWORD PTR [rdx+0x38]
  2e0704:	e8 ff a7 fe ff                                  	call   0x2caf08
  2e0709:	f6 d8                                           	neg    al
  2e070b:	48 1b c0                                        	sbb    rax,rax
  2e070e:	48 23 42 38                                     	and    rax,QWORD PTR [rdx+0x38]
  2e0712:	eb 02                                           	jmp    0x2e0716
  2e0714:	33 c0                                           	xor    eax,eax
  2e0716:	48 83 c4 30                                     	add    rsp,0x30
  2e071a:	5b                                              	pop    rbx
  2e071b:	c3                                              	ret
