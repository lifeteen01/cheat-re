
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f640 <.data+0x39f640>:
  39f640:	48 63 c2                                        	movsxd rax,edx
  39f643:	48 8d 14 40                                     	lea    rdx,[rax+rax*2]
  39f647:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39f64b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39f64f:	c3                                              	ret
