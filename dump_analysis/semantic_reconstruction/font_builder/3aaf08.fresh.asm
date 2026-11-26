
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aaf08 <.data+0x3aaf08>:
  3aaf08:	48 85 c9                                        	test   rcx,rcx
  3aaf0b:	74 0e                                           	je     0x3aaf1b
  3aaf0d:	48 63 c2                                        	movsxd rax,edx
  3aaf10:	f3 0f 11 14 c1                                  	movss  DWORD PTR [rcx+rax*8],xmm2
  3aaf15:	f3 0f 11 5c c1 04                               	movss  DWORD PTR [rcx+rax*8+0x4],xmm3
  3aaf1b:	c3                                              	ret
