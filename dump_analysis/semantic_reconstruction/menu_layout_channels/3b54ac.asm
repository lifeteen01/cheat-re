
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b54ac <.data+0x3b54ac>:
  3b54ac:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3b54b1:	57                                              	push   rdi
  3b54b2:	48 83 ec 20                                     	sub    rsp,0x20
  3b54b6:	e8 0d cf fd ff                                  	call   0x3923c8
  3b54bb:	48 8b f8                                        	mov    rdi,rax
  3b54be:	48 8b 98 a8 01 00 00                            	mov    rbx,QWORD PTR [rax+0x1a8]
  3b54c5:	83 7b 10 01                                     	cmp    DWORD PTR [rbx+0x10],0x1
  3b54c9:	74 23                                           	je     0x3b54ee
  3b54cb:	48 8d 53 3c                                     	lea    rdx,[rbx+0x3c]
  3b54cf:	48 8b c8                                        	mov    rcx,rax
  3b54d2:	e8 65 01 00 00                                  	call   0x3b563c
  3b54d7:	44 8b 43 0c                                     	mov    r8d,DWORD PTR [rbx+0xc]
  3b54db:	48 8d 4b 70                                     	lea    rcx,[rbx+0x70]
  3b54df:	48 8b 97 98 02 00 00                            	mov    rdx,QWORD PTR [rdi+0x298]
  3b54e6:	41 ff c0                                        	inc    r8d
  3b54e9:	e8 a6 2b ff ff                                  	call   0x3a8094
  3b54ee:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3b54f3:	48 83 c4 20                                     	add    rsp,0x20
  3b54f7:	5f                                              	pop    rdi
  3b54f8:	c3                                              	ret
