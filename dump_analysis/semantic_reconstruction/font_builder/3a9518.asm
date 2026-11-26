
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9518 <.data+0x3a9518>:
  3a9518:	8b 41 08                                        	mov    eax,DWORD PTR [rcx+0x8]
  3a951b:	3b 42 08                                        	cmp    eax,DWORD PTR [rdx+0x8]
  3a951e:	7f 10                                           	jg     0x3a9530
  3a9520:	7d 06                                           	jge    0x3a9528
  3a9522:	b8 01 00 00 00                                  	mov    eax,0x1
  3a9527:	c3                                              	ret
  3a9528:	8b 49 04                                        	mov    ecx,DWORD PTR [rcx+0x4]
  3a952b:	3b 4a 04                                        	cmp    ecx,DWORD PTR [rdx+0x4]
  3a952e:	7e 04                                           	jle    0x3a9534
  3a9530:	83 c8 ff                                        	or     eax,0xffffffff
  3a9533:	c3                                              	ret
  3a9534:	33 c0                                           	xor    eax,eax
  3a9536:	3b 4a 04                                        	cmp    ecx,DWORD PTR [rdx+0x4]
  3a9539:	0f 9c c0                                        	setl   al
  3a953c:	c3                                              	ret
  3a953d:	cc                                              	int3
  3a953e:	cc                                              	int3
  3a953f:	cc                                              	int3
  3a9540:	44 8b 41 14                                     	mov    r8d,DWORD PTR [rcx+0x14]
  3a9544:	44 3b 42 14                                     	cmp    r8d,DWORD PTR [rdx+0x14]
  3a9548:	7d 04                                           	jge    0x3a954e
  3a954a:	83 c8 ff                                        	or     eax,0xffffffff
  3a954d:	c3                                              	ret
  3a954e:	33 c0                                           	xor    eax,eax
  3a9550:	44 3b 42 14                                     	cmp    r8d,DWORD PTR [rdx+0x14]
  3a9554:	0f 9f c0                                        	setg   al
  3a9557:	c3                                              	ret
