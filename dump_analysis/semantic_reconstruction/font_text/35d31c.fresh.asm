
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035d31c <.data+0x35d31c>:
  35d31c:	48 83 ec 28                                     	sub    rsp,0x28
  35d320:	48 8b 05 31 ed 09 00                            	mov    rax,QWORD PTR [rip+0x9ed31]        # 0x3fc058
  35d327:	48 85 c0                                        	test   rax,rax
  35d32a:	75 1c                                           	jne    0x35d348
  35d32c:	8d 48 20                                        	lea    ecx,[rax+0x20]
  35d32f:	e8 90 d0 02 00                                  	call   0x38a3c4
  35d334:	48 85 c0                                        	test   rax,rax
  35d337:	74 08                                           	je     0x35d341
  35d339:	48 8b c8                                        	mov    rcx,rax
  35d33c:	e8 63 e0 f6 ff                                  	call   0x2cb3a4
  35d341:	48 89 05 10 ed 09 00                            	mov    QWORD PTR [rip+0x9ed10],rax        # 0x3fc058
  35d348:	48 83 c4 28                                     	add    rsp,0x28
  35d34c:	c3                                              	ret
