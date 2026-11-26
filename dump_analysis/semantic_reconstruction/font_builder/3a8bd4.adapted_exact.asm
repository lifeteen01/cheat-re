
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8bd4 <.data+0x3a8bd4>:
  3a8bd4:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a8bd8:	4c 63 c2                                        	movsxd r8,edx
  3a8bdb:	49 c1 f8 05                                     	sar    r8,0x5
  3a8bdf:	42 8b 04 80                                     	mov    eax,DWORD PTR [rax+r8*4]
  3a8be3:	0f a3 d0                                        	bt     eax,edx
  3a8be6:	0f 92 c0                                        	setb   al
  3a8be9:	c3                                              	ret
