
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003948bc <.data+0x3948bc>:
  3948bc:	48 39 91 78 03 00 00                            	cmp    QWORD PTR [rcx+0x378],rdx
  3948c3:	74 14                                           	je     0x3948d9
  3948c5:	48 3b ca                                        	cmp    rcx,rdx
  3948c8:	74 0f                                           	je     0x3948d9
  3948ca:	48 8b 89 70 03 00 00                            	mov    rcx,QWORD PTR [rcx+0x370]
  3948d1:	48 85 c9                                        	test   rcx,rcx
  3948d4:	75 ef                                           	jne    0x3948c5
  3948d6:	32 c0                                           	xor    al,al
  3948d8:	c3                                              	ret
  3948d9:	b0 01                                           	mov    al,0x1
  3948db:	c3                                              	ret
