
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a1084 <.data+0x3a1084>:
  3a1084:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a1089:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a108e:	57                                              	push   rdi
  3a108f:	48 83 ec 20                                     	sub    rsp,0x20
  3a1093:	f7 44 24 58 00 00 00 ff                         	test   DWORD PTR [rsp+0x58],0xff000000
  3a109b:	49 8b f9                                        	mov    rdi,r9
  3a109e:	49 8b f0                                        	mov    rsi,r8
  3a10a1:	48 8b d9                                        	mov    rbx,rcx
  3a10a4:	74 34                                           	je     0x3a10da
  3a10a6:	e8 95 79 fd ff                                  	call   0x378a40
  3a10ab:	48 8b d6                                        	mov    rdx,rsi
  3a10ae:	48 8b cb                                        	mov    rcx,rbx
  3a10b1:	e8 8a 79 fd ff                                  	call   0x378a40
  3a10b6:	48 8b d7                                        	mov    rdx,rdi
  3a10b9:	48 8b cb                                        	mov    rcx,rbx
  3a10bc:	e8 7f 79 fd ff                                  	call   0x378a40
  3a10c1:	48 8b 54 24 50                                  	mov    rdx,QWORD PTR [rsp+0x50]
  3a10c6:	48 8b cb                                        	mov    rcx,rbx
  3a10c9:	e8 72 79 fd ff                                  	call   0x378a40
  3a10ce:	8b 54 24 58                                     	mov    edx,DWORD PTR [rsp+0x58]
  3a10d2:	48 8b cb                                        	mov    rcx,rbx
  3a10d5:	e8 3a 79 fd ff                                  	call   0x378a14
  3a10da:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a10df:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3a10e4:	48 83 c4 20                                     	add    rsp,0x20
  3a10e8:	5f                                              	pop    rdi
  3a10e9:	c3                                              	ret
