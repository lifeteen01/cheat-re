
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000373e20 <.data+0x373e20>:
  373e20:	48 83 ec 28                                     	sub    rsp,0x28
  373e24:	4c 8b c1                                        	mov    r8,rcx
  373e27:	e8 dc 70 f5 ff                                  	call   0x2caf08
  373e2c:	84 c0                                           	test   al,al
  373e2e:	75 04                                           	jne    0x373e34
  373e30:	33 c0                                           	xor    eax,eax
  373e32:	eb 10                                           	jmp    0x373e44
  373e34:	ba 30 00 00 00                                  	mov    edx,0x30
  373e39:	49 8b c8                                        	mov    rcx,r8
  373e3c:	e8 fb af f6 ff                                  	call   0x2dee3c
  373e41:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  373e44:	48 83 c4 28                                     	add    rsp,0x28
  373e48:	c3                                              	ret
