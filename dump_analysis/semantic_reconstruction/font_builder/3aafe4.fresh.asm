
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aafe4 <.data+0x3aafe4>:
  3aafe4:	3b 51 0c                                        	cmp    edx,DWORD PTR [rcx+0xc]
  3aafe7:	7f 04                                           	jg     0x3aafed
  3aafe9:	85 d2                                           	test   edx,edx
  3aafeb:	79 03                                           	jns    0x3aaff0
  3aafed:	8b 51 0c                                        	mov    edx,DWORD PTR [rcx+0xc]
  3aaff0:	89 51 08                                        	mov    DWORD PTR [rcx+0x8],edx
  3aaff3:	c3                                              	ret
