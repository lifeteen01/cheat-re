
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bb78 <.data+0x38bb78>:
  38bb78:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  38bb7c:	48 63 d2                                        	movsxd rdx,edx
  38bb7f:	48 8d 04 90                                     	lea    rax,[rax+rdx*4]
  38bb83:	c3                                              	ret
