
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003691c0 <.data+0x3691c0>:
  3691c0:	40 53                                           	rex push rbx
  3691c2:	48 83 ec 20                                     	sub    rsp,0x20
  3691c6:	48 8b da                                        	mov    rbx,rdx
  3691c9:	48 8b d1                                        	mov    rdx,rcx
  3691cc:	e8 37 1d f6 ff                                  	call   0x2caf08
  3691d1:	84 c0                                           	test   al,al
  3691d3:	74 24                                           	je     0x3691f9
  3691d5:	48 8b ca                                        	mov    rcx,rdx
  3691d8:	e8 bb 00 00 00                                  	call   0x369298
  3691dd:	48 8b c8                                        	mov    rcx,rax
  3691e0:	4c 8b c0                                        	mov    r8,rax
  3691e3:	e8 20 1d f6 ff                                  	call   0x2caf08
  3691e8:	84 c0                                           	test   al,al
  3691ea:	74 0d                                           	je     0x3691f9
  3691ec:	48 8b d3                                        	mov    rdx,rbx
  3691ef:	49 8b c8                                        	mov    rcx,r8
  3691f2:	e8 71 a8 00 00                                  	call   0x373a68
  3691f7:	eb 08                                           	jmp    0x369201
  3691f9:	48 8b cb                                        	mov    rcx,rbx
  3691fc:	e8 bb e9 05 00                                  	call   0x3c7bbc
  369201:	48 8b c3                                        	mov    rax,rbx
  369204:	48 83 c4 20                                     	add    rsp,0x20
  369208:	5b                                              	pop    rbx
  369209:	c3                                              	ret
