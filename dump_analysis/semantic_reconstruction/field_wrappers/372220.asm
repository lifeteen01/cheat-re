
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372220 <.data+0x372220>:
  372220:	48 83 ec 28                                     	sub    rsp,0x28
  372224:	4c 8b c1                                        	mov    r8,rcx
  372227:	e8 dc 8c f5 ff                                  	call   0x2caf08
  37222c:	84 c0                                           	test   al,al
  37222e:	75 05                                           	jne    0x372235
  372230:	83 c8 ff                                        	or     eax,0xffffffff
  372233:	eb 0f                                           	jmp    0x372244
  372235:	ba f8 02 00 00                                  	mov    edx,0x2f8
  37223a:	49 8b c8                                        	mov    rcx,r8
  37223d:	e8 fa cb f6 ff                                  	call   0x2dee3c
  372242:	8b 00                                           	mov    eax,DWORD PTR [rax]
  372244:	48 83 c4 28                                     	add    rsp,0x28
  372248:	c3                                              	ret
