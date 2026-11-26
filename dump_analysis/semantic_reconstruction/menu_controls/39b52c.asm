
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b52c <.data+0x39b52c>:
  39b52c:	48 8b 05 f5 a5 06 00                            	mov    rax,QWORD PTR [rip+0x6a5f5]        # 0x405b28
  39b533:	33 d2                                           	xor    edx,edx
  39b535:	89 88 54 3f 00 00                               	mov    DWORD PTR [rax+0x3f54],ecx
  39b53b:	88 90 5c 3f 00 00                               	mov    BYTE PTR [rax+0x3f5c],dl
  39b541:	85 c9                                           	test   ecx,ecx
  39b543:	74 0f                                           	je     0x39b554
  39b545:	39 88 58 3f 00 00                               	cmp    DWORD PTR [rax+0x3f58],ecx
  39b54b:	74 07                                           	je     0x39b554
  39b54d:	48 89 90 60 3f 00 00                            	mov    QWORD PTR [rax+0x3f60],rdx
  39b554:	c3                                              	ret
