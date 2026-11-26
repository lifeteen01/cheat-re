
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369738 <.data+0x369738>:
  369738:	48 83 ec 28                                     	sub    rsp,0x28
  36973c:	4c 8b c1                                        	mov    r8,rcx
  36973f:	e8 c4 17 f6 ff                                  	call   0x2caf08
  369744:	84 c0                                           	test   al,al
  369746:	75 04                                           	jne    0x36974c
  369748:	33 c0                                           	xor    eax,eax
  36974a:	eb 10                                           	jmp    0x36975c
  36974c:	ba 78 07 00 00                                  	mov    edx,0x778
  369751:	49 8b c8                                        	mov    rcx,r8
  369754:	e8 e3 56 f7 ff                                  	call   0x2dee3c
  369759:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  36975c:	48 83 c4 28                                     	add    rsp,0x28
  369760:	c3                                              	ret
