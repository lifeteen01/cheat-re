
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395cf8 <.data+0x395cf8>:
  395cf8:	48 8b 81 98 03 00 00                            	mov    rax,QWORD PTR [rcx+0x398]
  395cff:	48 85 c0                                        	test   rax,rax
  395d02:	74 0b                                           	je     0x395d0f
  395d04:	80 b8 b7 00 00 00 00                            	cmp    BYTE PTR [rax+0xb7],0x0
  395d0b:	48 0f 45 c8                                     	cmovne rcx,rax
  395d0f:	48 8b c1                                        	mov    rax,rcx
  395d12:	c3                                              	ret
