
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000336624 <.data+0x336624>:
  336624:	48 83 ec 28                                     	sub    rsp,0x28
  336628:	48 8b 49 08                                     	mov    rcx,QWORD PTR [rcx+0x8]
  33662c:	48 85 c9                                        	test   rcx,rcx
  33662f:	74 05                                           	je     0x336636
  336631:	e8 46 eb 05 00                                  	call   0x39517c
  336636:	48 83 c4 28                                     	add    rsp,0x28
  33663a:	c3                                              	ret
