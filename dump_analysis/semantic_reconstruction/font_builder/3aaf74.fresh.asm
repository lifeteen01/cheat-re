
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aaf74 <.data+0x3aaf74>:
  3aaf74:	48 8b c1                                        	mov    rax,rcx
  3aaf77:	48 63 49 08                                     	movsxd rcx,DWORD PTR [rcx+0x8]
  3aaf7b:	3b 48 0c                                        	cmp    ecx,DWORD PTR [rax+0xc]
  3aaf7e:	7c 03                                           	jl     0x3aaf83
  3aaf80:	32 c0                                           	xor    al,al
  3aaf82:	c3                                              	ret
  3aaf83:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  3aaf86:	8a 04 01                                        	mov    al,BYTE PTR [rcx+rax*1]
  3aaf89:	c3                                              	ret
