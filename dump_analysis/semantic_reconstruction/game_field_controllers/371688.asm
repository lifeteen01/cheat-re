
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371688 <.data+0x371688>:
  371688:	40 53                                           	rex push rbx
  37168a:	48 83 ec 20                                     	sub    rsp,0x20
  37168e:	48 8b d9                                        	mov    rbx,rcx
  371691:	e8 72 98 f5 ff                                  	call   0x2caf08
  371696:	84 c0                                           	test   al,al
  371698:	74 3d                                           	je     0x3716d7
  37169a:	48 8b cb                                        	mov    rcx,rbx
  37169d:	e8 aa fe ff ff                                  	call   0x37154c
  3716a2:	48 8b c8                                        	mov    rcx,rax
  3716a5:	48 8b d0                                        	mov    rdx,rax
  3716a8:	e8 5b 98 f5 ff                                  	call   0x2caf08
  3716ad:	84 c0                                           	test   al,al
  3716af:	74 26                                           	je     0x3716d7
  3716b1:	48 8b ca                                        	mov    rcx,rdx
  3716b4:	e8 63 0f 00 00                                  	call   0x37261c
  3716b9:	3d f8 56 66 2f                                  	cmp    eax,0x2f6656f8
  3716be:	74 12                                           	je     0x3716d2
  3716c0:	3d 59 e8 ec b9                                  	cmp    eax,0xb9ece859
  3716c5:	74 0b                                           	je     0x3716d2
  3716c7:	33 c9                                           	xor    ecx,ecx
  3716c9:	3d 8c f7 10 6e                                  	cmp    eax,0x6e10f78c
  3716ce:	48 0f 45 d9                                     	cmovne rbx,rcx
  3716d2:	48 8b c3                                        	mov    rax,rbx
  3716d5:	eb 02                                           	jmp    0x3716d9
  3716d7:	33 c0                                           	xor    eax,eax
  3716d9:	48 83 c4 20                                     	add    rsp,0x20
  3716dd:	5b                                              	pop    rbx
  3716de:	c3                                              	ret
