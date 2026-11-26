
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bb78 <.data+0x38bb78>:
  38bb78:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  38bb7c:	48 63 d2                                        	movsxd rdx,edx
  38bb7f:	48 8d 04 90                                     	lea    rax,[rax+rdx*4]
  38bb83:	c3                                              	ret
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
  38bbb7:	48                                        	imul   rax,rax,0x70
