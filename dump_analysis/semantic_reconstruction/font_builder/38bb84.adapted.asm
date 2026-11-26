
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bb84 <.data+0x38bb84>:
  38bb84:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  38bb88:	48 63 d2                                        	movsxd rdx,edx
  38bb8b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  38bb8f:	c3                                              	ret
  38bb90:	48 63 c2                                        	movsxd rax,edx
  38bb93:	48 6b c0 38                                     	imul   rax,rax,0x38
  38bb97:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bb9b:	c3                                              	ret
  38bb9c:	48 63 c2                                        	movsxd rax,edx
  38bb9f:	48 c1 e0 05                                     	shl    rax,0x5
  38bba3:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bba7:	c3                                              	ret
  38bba8:	48 63 c2                                        	movsxd rax,edx
  38bbab:	48 6b c0 1c                                     	imul   rax,rax,0x1c
  38bbaf:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bbb3:	c3                                              	ret
  38bbb4:	48 63 c2                                        	movsxd rax,edx
  38bbb7:	48 6b c0 70                                     	imul   rax,rax,0x70
  38bbbb:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bbbf:	c3                                              	ret
  38bbc0:	48 63 c2                                        	movsxd rax,edx
  38bbc3:	48                                        	imul   rax,rax,0x58
