
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cc8ac <.data+0x2cc8ac>:
  2cc8ac:	48 83 ec 28                                     	sub    rsp,0x28
  2cc8b0:	48 8b 0d b1 98 10 00                            	mov    rcx,QWORD PTR [rip+0x1098b1]        # 0x3d6168
  2cc8b7:	48 85 c9                                        	test   rcx,rcx
  2cc8ba:	74 0d                                           	je     0x2cc8c9
  2cc8bc:	e8 4b 03 00 00                                  	call   0x2ccc0c
  2cc8c1:	84 c0                                           	test   al,al
  2cc8c3:	74 04                                           	je     0x2cc8c9
  2cc8c5:	b0 01                                           	mov    al,0x1
  2cc8c7:	eb 02                                           	jmp    0x2cc8cb
  2cc8c9:	32 c0                                           	xor    al,al
  2cc8cb:	48 83 c4 28                                     	add    rsp,0x28
  2cc8cf:	c3                                              	ret
