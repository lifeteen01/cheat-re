
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b558 <.data+0x39b558>:
  39b558:	48 8b 05 c9 a5 06 00                            	mov    rax,QWORD PTR [rip+0x6a5c9]        # 0x405b28
  39b55f:	8b 88 a4 47 00 00                               	mov    ecx,DWORD PTR [rax+0x47a4]
  39b565:	39 88 54 3f 00 00                               	cmp    DWORD PTR [rax+0x3f54],ecx
  39b56b:	75 07                                           	jne    0x39b574
  39b56d:	c6 80 5c 3f 00 00 01                            	mov    BYTE PTR [rax+0x3f5c],0x1
  39b574:	39 88 68 3f 00 00                               	cmp    DWORD PTR [rax+0x3f68],ecx
  39b57a:	75 07                                           	jne    0x39b583
  39b57c:	c6 80 75 3f 00 00 01                            	mov    BYTE PTR [rax+0x3f75],0x1
  39b583:	c3                                              	ret
