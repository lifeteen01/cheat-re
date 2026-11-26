
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003680d4 <.data+0x3680d4>:
  3680d4:	48 83 ec 28                                     	sub    rsp,0x28
  3680d8:	4c 8b c1                                        	mov    r8,rcx
  3680db:	e8 28 2e f6 ff                                  	call   0x2caf08
  3680e0:	84 c0                                           	test   al,al
  3680e2:	75 04                                           	jne    0x3680e8
  3680e4:	33 c0                                           	xor    eax,eax
  3680e6:	eb 10                                           	jmp    0x3680f8
  3680e8:	ba 20 03 00 00                                  	mov    edx,0x320
  3680ed:	49 8b c8                                        	mov    rcx,r8
  3680f0:	e8 47 6d f7 ff                                  	call   0x2dee3c
  3680f5:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  3680f8:	48 83 c4 28                                     	add    rsp,0x28
  3680fc:	c3                                              	ret
