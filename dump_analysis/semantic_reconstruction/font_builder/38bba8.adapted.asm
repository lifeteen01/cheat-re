
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bba8 <.data+0x38bba8>:
  38bba8:	48 63 c2                                        	movsxd rax,edx
  38bbab:	48 6b c0 1c                                     	imul   rax,rax,0x1c
  38bbaf:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bbb3:	c3                                              	ret
  38bbb4:	48 63 c2                                        	movsxd rax,edx
  38bbb7:	48 6b c0 70                                     	imul   rax,rax,0x70
  38bbbb:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bbbf:	c3                                              	ret
  38bbc0:	48 63 c2                                        	movsxd rax,edx
  38bbc3:	48 6b c0 58                                     	imul   rax,rax,0x58
  38bbc7:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  38bbcb:	c3                                              	ret
  38bbcc:	48 8d 04 91                                     	lea    rax,[rcx+rdx*4]
  38bbd0:	c3                                              	ret
  38bbd1:	cc                                              	int3
  38bbd2:	cc                                              	int3
  38bbd3:	cc                                              	int3
  38bbd4:	f3 0f 10 04 91                                  	movss  xmm0,DWORD PTR [rcx+rdx*4]
  38bbd9:	c3                                              	ret
  38bbda:	cc                                              	int3
  38bbdb:	cc                                              	int3
  38bbdc:	40 53                                           	rex push rbx
  38bbde:	48 83 ec 20                                     	sub    rsp,0x20
  38bbe2:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  38bbe7:	48                                          	mov    rbx,rcx
