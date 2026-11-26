
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394cb4 <.data+0x394cb4>:
  394cb4:	48 8b 05 6d 0e 07 00                            	mov    rax,QWORD PTR [rip+0x70e6d]        # 0x405b28
  394cbb:	39 88 68 3f 00 00                               	cmp    DWORD PTR [rax+0x3f68],ecx
  394cc1:	75 06                                           	jne    0x394cc9
  394cc3:	89 88 6c 3f 00 00                               	mov    DWORD PTR [rax+0x3f6c],ecx
  394cc9:	39 88 98 3f 00 00                               	cmp    DWORD PTR [rax+0x3f98],ecx
  394ccf:	75 07                                           	jne    0x394cd8
  394cd1:	c6 80 9c 3f 00 00 01                            	mov    BYTE PTR [rax+0x3f9c],0x1
  394cd8:	c3                                              	ret
