
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003715d8 <.data+0x3715d8>:
  3715d8:	48 83 ec 28                                     	sub    rsp,0x28
  3715dc:	4c 8b c1                                        	mov    r8,rcx
  3715df:	e8 24 99 f5 ff                                  	call   0x2caf08
  3715e4:	84 c0                                           	test   al,al
  3715e6:	75 04                                           	jne    0x3715ec
  3715e8:	33 c0                                           	xor    eax,eax
  3715ea:	eb 10                                           	jmp    0x3715fc
  3715ec:	ba 10 00 00 00                                  	mov    edx,0x10
  3715f1:	49 8b c8                                        	mov    rcx,r8
  3715f4:	e8 43 d8 f6 ff                                  	call   0x2dee3c
  3715f9:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  3715fc:	48 83 c4 28                                     	add    rsp,0x28
  371600:	c3                                              	ret
