
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bb90 <.data+0x38bb90>:
  38bb90:	48 63 c2                                        	movsxd rax,edx
  38bb93:	48 6b c0 38                                     	imul   rax,rax,0x38
  38bb97:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bb9b:	c3                                              	ret
