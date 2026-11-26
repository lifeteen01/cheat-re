
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372bf4 <.data+0x372bf4>:
  372bf4:	40 53                                           	rex push rbx
  372bf6:	48 83 ec 20                                     	sub    rsp,0x20
  372bfa:	8b da                                           	mov    ebx,edx
  372bfc:	4c 8b c1                                        	mov    r8,rcx
  372bff:	e8 04 83 f5 ff                                  	call   0x2caf08
  372c04:	84 c0                                           	test   al,al
  372c06:	74 0d                                           	je     0x372c15
  372c08:	49 8b c8                                        	mov    rcx,r8
  372c0b:	e8 bc ff ff ff                                  	call   0x372bcc
  372c10:	85 c3                                           	test   ebx,eax
  372c12:	0f 95 c0                                        	setne  al
  372c15:	48 83 c4 20                                     	add    rsp,0x20
  372c19:	5b                                              	pop    rbx
  372c1a:	c3                                              	ret
