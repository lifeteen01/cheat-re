
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f610 <.data+0x39f610>:
  39f610:	48 63 c2                                        	movsxd rax,edx
  39f613:	48 69 c0 10 01 00 00                            	imul   rax,rax,0x110
  39f61a:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  39f61e:	c3                                              	ret
  39f61f:	cc                                              	int3
  39f620:	48 63 c2                                        	movsxd rax,edx
  39f623:	48 69 c0 88 00 00 00                            	imul   rax,rax,0x88
  39f62a:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  39f62e:	c3                                              	ret
  39f62f:	cc                                              	int3
  39f630:	48 63 c2                                        	movsxd rax,edx
  39f633:	48 8d 14 80                                     	lea    rdx,[rax+rax*4]
  39f637:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39f63b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39f63f:	c3                                              	ret
  39f640:	48 63 c2                                        	movsxd rax,edx
  39f643:	48 8d 14 40                                     	lea    rdx,[rax+rax*2]
  39f647:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39f64b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39f64f:	c3                                              	ret
