
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372ba4 <.data+0x372ba4>:
  372ba4:	48 83 ec 28                                     	sub    rsp,0x28
  372ba8:	4c 8b c1                                        	mov    r8,rcx
  372bab:	e8 58 83 f5 ff                                  	call   0x2caf08
  372bb0:	84 c0                                           	test   al,al
  372bb2:	75 05                                           	jne    0x372bb9
  372bb4:	48 83 c4 28                                     	add    rsp,0x28
  372bb8:	c3                                              	ret
  372bb9:	ba 00 10 00 00                                  	mov    edx,0x1000
  372bbe:	49 8b c8                                        	mov    rcx,r8
  372bc1:	48 83 c4 28                                     	add    rsp,0x28
  372bc5:	e9 2a 00 00 00                                  	jmp    0x372bf4
