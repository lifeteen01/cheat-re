
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036a1e4 <.data+0x36a1e4>:
  36a1e4:	48 83 ec 28                                     	sub    rsp,0x28
  36a1e8:	4c 8b c1                                        	mov    r8,rcx
  36a1eb:	e8 18 0d f6 ff                                  	call   0x2caf08
  36a1f0:	84 c0                                           	test   al,al
  36a1f2:	75 05                                           	jne    0x36a1f9
  36a1f4:	48 83 c4 28                                     	add    rsp,0x28
  36a1f8:	c3                                              	ret
  36a1f9:	ba 00 00 00 10                                  	mov    edx,0x10000000
  36a1fe:	49 8b c8                                        	mov    rcx,r8
  36a201:	48 83 c4 28                                     	add    rsp,0x28
  36a205:	e9 ea fb ff ff                                  	jmp    0x369df4
