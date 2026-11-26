
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000332d24 <.data+0x332d24>:
  332d24:	40 53                                           	rex push rbx
  332d26:	48 83 ec 20                                     	sub    rsp,0x20
  332d2a:	e8 41 17 00 00                                  	call   0x334470
  332d2f:	48 8b d8                                        	mov    rbx,rax
  332d32:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  332d35:	48 85 c0                                        	test   rax,rax
  332d38:	75 08                                           	jne    0x332d42
  332d3a:	e8 bd 06 00 00                                  	call   0x3333fc
  332d3f:	48 89 03                                        	mov    QWORD PTR [rbx],rax
  332d42:	48 83 c4 20                                     	add    rsp,0x20
  332d46:	5b                                              	pop    rbx
  332d47:	c3                                              	ret
