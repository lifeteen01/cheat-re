
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f610 <.data+0x39f610>:
  39f610:	48 63 c2                                        	movsxd rax,edx
  39f613:	48 69 c0 10 01 00 00                            	imul   rax,rax,0x110
  39f61a:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  39f61e:	c3                                              	ret
