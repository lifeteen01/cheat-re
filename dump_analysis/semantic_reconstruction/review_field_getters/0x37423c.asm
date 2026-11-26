
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037423c <.data+0x37423c>:
  37423c:	48 83 ec 28                                     	sub    rsp,0x28
  374240:	4c 8b c1                                        	mov    r8,rcx
  374243:	e8 c0 6c f5 ff                                  	call   0x2caf08
  374248:	84 c0                                           	test   al,al
  37424a:	75 05                                           	jne    0x374251
  37424c:	0f 57 c0                                        	xorps  xmm0,xmm0
  37424f:	eb 11                                           	jmp    0x374262
  374251:	ba 44 01 00 00                                  	mov    edx,0x144
  374256:	49 8b c8                                        	mov    rcx,r8
  374259:	e8 de ab f6 ff                                  	call   0x2dee3c
  37425e:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  374262:	48 83 c4 28                                     	add    rsp,0x28
  374266:	c3                                              	ret
