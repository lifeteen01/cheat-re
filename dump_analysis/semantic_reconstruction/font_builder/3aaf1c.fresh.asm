
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aaf1c <.data+0x3aaf1c>:
  3aaf1c:	4c 63 41 08                                     	movsxd r8,DWORD PTR [rcx+0x8]
  3aaf20:	48 8b d1                                        	mov    rdx,rcx
  3aaf23:	44 3b 41 0c                                     	cmp    r8d,DWORD PTR [rcx+0xc]
  3aaf27:	7c 03                                           	jl     0x3aaf2c
  3aaf29:	32 c0                                           	xor    al,al
  3aaf2b:	c3                                              	ret
  3aaf2c:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  3aaf2f:	41 8d 48 01                                     	lea    ecx,[r8+0x1]
  3aaf33:	41 8a 04 00                                     	mov    al,BYTE PTR [r8+rax*1]
  3aaf37:	89 4a 08                                        	mov    DWORD PTR [rdx+0x8],ecx
  3aaf3a:	c3                                              	ret
