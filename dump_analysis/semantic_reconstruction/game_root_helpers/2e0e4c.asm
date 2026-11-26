
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e0e4c <.data+0x2e0e4c>:
  2e0e4c:	48 83 ec 28                                     	sub    rsp,0x28
  2e0e50:	48 8b 05 a9 60 0f 00                            	mov    rax,QWORD PTR [rip+0xf60a9]        # 0x3d6f00
  2e0e57:	48 8b 90 20 93 06 0f                            	mov    rdx,QWORD PTR [rax+0xf069320]
  2e0e5e:	48 8b ca                                        	mov    rcx,rdx
  2e0e61:	e8 a2 a0 fe ff                                  	call   0x2caf08
  2e0e66:	84 c0                                           	test   al,al
  2e0e68:	74 28                                           	je     0x2e0e92
  2e0e6a:	48 8b 92 b8 00 00 00                            	mov    rdx,QWORD PTR [rdx+0xb8]
  2e0e71:	48 8b ca                                        	mov    rcx,rdx
  2e0e74:	e8 8f a0 fe ff                                  	call   0x2caf08
  2e0e79:	84 c0                                           	test   al,al
  2e0e7b:	74 15                                           	je     0x2e0e92
  2e0e7d:	48 8b 52 20                                     	mov    rdx,QWORD PTR [rdx+0x20]
  2e0e81:	48 8b ca                                        	mov    rcx,rdx
  2e0e84:	e8 7f a0 fe ff                                  	call   0x2caf08
  2e0e89:	84 c0                                           	test   al,al
  2e0e8b:	74 05                                           	je     0x2e0e92
  2e0e8d:	8a 42 20                                        	mov    al,BYTE PTR [rdx+0x20]
  2e0e90:	eb 02                                           	jmp    0x2e0e94
  2e0e92:	32 c0                                           	xor    al,al
  2e0e94:	48 83 c4 28                                     	add    rsp,0x28
  2e0e98:	c3                                              	ret
