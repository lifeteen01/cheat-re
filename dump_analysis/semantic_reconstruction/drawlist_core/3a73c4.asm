
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a73c4 <.data+0x3a73c4>:
  3a73c4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a73c9:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  3a73ce:	57                                              	push   rdi
  3a73cf:	48 83 ec 20                                     	sub    rsp,0x20
  3a73d3:	48 8b fa                                        	mov    rdi,rdx
  3a73d6:	48 8b d9                                        	mov    rbx,rcx
  3a73d9:	48 83 c1 68                                     	add    rcx,0x68
  3a73dd:	48 8d 54 24 38                                  	lea    rdx,[rsp+0x38]
  3a73e2:	e8 71 32 fd ff                                  	call   0x37a658
  3a73e7:	48 8b cb                                        	mov    rcx,rbx
  3a73ea:	48 89 bb 98 00 00 00                            	mov    QWORD PTR [rbx+0x98],rdi
  3a73f1:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a73f6:	48 83 c4 20                                     	add    rsp,0x20
  3a73fa:	5f                                              	pop    rdi
  3a73fb:	e9 28 1a 00 00                                  	jmp    0x3a8e28
