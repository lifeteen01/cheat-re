
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000374300 <.data+0x374300>:
  374300:	48 83 ec 28                                     	sub    rsp,0x28
  374304:	4c 8b c1                                        	mov    r8,rcx
  374307:	e8 fc 6b f5 ff                                  	call   0x2caf08
  37430c:	84 c0                                           	test   al,al
  37430e:	75 05                                           	jne    0x374315
  374310:	0f 57 c0                                        	xorps  xmm0,xmm0
  374313:	eb 11                                           	jmp    0x374326
  374315:	ba 88 01 00 00                                  	mov    edx,0x188
  37431a:	49 8b c8                                        	mov    rcx,r8
  37431d:	e8 1a ab f6 ff                                  	call   0x2dee3c
  374322:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  374326:	48 83 c4 28                                     	add    rsp,0x28
  37432a:	c3                                              	ret
