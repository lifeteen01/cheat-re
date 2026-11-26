
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039408c <.data+0x39408c>:
  39408c:	48 8b 05 95 1a 07 00                            	mov    rax,QWORD PTR [rip+0x71a95]        # 0x405b28
  394093:	8b 88 f0 48 00 00                               	mov    ecx,DWORD PTR [rax+0x48f0]
  394099:	3b 88 a4 47 00 00                               	cmp    ecx,DWORD PTR [rax+0x47a4]
  39409f:	75 06                                           	jne    0x3940a7
  3940a1:	85 c9                                           	test   ecx,ecx
  3940a3:	0f 95 c0                                        	setne  al
  3940a6:	c3                                              	ret
  3940a7:	32 c0                                           	xor    al,al
  3940a9:	c3                                              	ret
