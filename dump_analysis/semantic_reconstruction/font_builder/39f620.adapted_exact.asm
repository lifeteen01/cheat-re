
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f620 <.data+0x39f620>:
  39f620:	48 63 c2                                        	movsxd rax,edx
  39f623:	48 69 c0 88 00 00 00                            	imul   rax,rax,0x88
  39f62a:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  39f62e:	c3                                              	ret
