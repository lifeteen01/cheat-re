
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036be9c <.data+0x36be9c>:
  36be9c:	48 83 ec 28                                     	sub    rsp,0x28
  36bea0:	48 8b d1                                        	mov    rdx,rcx
  36bea3:	e8 60 f0 f5 ff                                  	call   0x2caf08
  36bea8:	84 c0                                           	test   al,al
  36beaa:	74 0b                                           	je     0x36beb7
  36beac:	48 c7 82 18 04 00 00 00 00 00 00                	mov    QWORD PTR [rdx+0x418],0x0
  36beb7:	48 83 c4 28                                     	add    rsp,0x28
  36bebb:	c3                                              	ret
