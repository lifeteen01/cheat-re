
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000378a14 <.data+0x378a14>:
  378a14:	40 53                                           	rex push rbx
  378a16:	48 83 ec 20                                     	sub    rsp,0x20
  378a1a:	44 8b 41 78                                     	mov    r8d,DWORD PTR [rcx+0x78]
  378a1e:	44 8b ca                                        	mov    r9d,edx
  378a21:	48 8b 91 80 00 00 00                            	mov    rdx,QWORD PTR [rcx+0x80]
  378a28:	48 8b d9                                        	mov    rbx,rcx
  378a2b:	e8 f8 6e 02 00                                  	call   0x39f928
  378a30:	c7 43 78 00 00 00 00                            	mov    DWORD PTR [rbx+0x78],0x0
  378a37:	48 83 c4 20                                     	add    rsp,0x20
  378a3b:	5b                                              	pop    rbx
  378a3c:	c3                                              	ret
