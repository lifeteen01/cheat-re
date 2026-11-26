
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a93c0 <.data+0x3a93c0>:
  3a93c0:	48 63 11                                        	movsxd rdx,DWORD PTR [rcx]
  3a93c3:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a93c7:	48 8d 04 90                                     	lea    rax,[rax+rdx*4]
  3a93cb:	c3                                              	ret
