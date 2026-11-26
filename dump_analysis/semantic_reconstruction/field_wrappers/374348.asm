
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000374348 <.data+0x374348>:
  374348:	48 83 ec 28                                     	sub    rsp,0x28
  37434c:	4c 8b c1                                        	mov    r8,rcx
  37434f:	e8 b4 6b f5 ff                                  	call   0x2caf08
  374354:	84 c0                                           	test   al,al
  374356:	75 04                                           	jne    0x37435c
  374358:	33 c0                                           	xor    eax,eax
  37435a:	eb 0f                                           	jmp    0x37436b
  37435c:	ba 40 00 00 00                                  	mov    edx,0x40
  374361:	49 8b c8                                        	mov    rcx,r8
  374364:	e8 d3 aa f6 ff                                  	call   0x2dee3c
  374369:	8b 00                                           	mov    eax,DWORD PTR [rax]
  37436b:	48 83 c4 28                                     	add    rsp,0x28
  37436f:	c3                                              	ret
