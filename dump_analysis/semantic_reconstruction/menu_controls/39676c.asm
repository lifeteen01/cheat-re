
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039676c <.data+0x39676c>:
  39676c:	48 8b 05 b5 f3 06 00                            	mov    rax,QWORD PTR [rip+0x6f3b5]        # 0x405b28
  396773:	33 c9                                           	xor    ecx,ecx
  396775:	38 88 41 49 00 00                               	cmp    BYTE PTR [rax+0x4941],cl
  39677b:	75 08                                           	jne    0x396785
  39677d:	38 88 29 49 00 00                               	cmp    BYTE PTR [rax+0x4929],cl
  396783:	74 02                                           	je     0x396787
  396785:	b1 01                                           	mov    cl,0x1
  396787:	88 88 28 49 00 00                               	mov    BYTE PTR [rax+0x4928],cl
  39678d:	c3                                              	ret
