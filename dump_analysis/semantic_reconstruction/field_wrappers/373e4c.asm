
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000373e4c <.data+0x373e4c>:
  373e4c:	48 83 ec 28                                     	sub    rsp,0x28
  373e50:	4c 8b c1                                        	mov    r8,rcx
  373e53:	e8 b0 70 f5 ff                                  	call   0x2caf08
  373e58:	84 c0                                           	test   al,al
  373e5a:	75 04                                           	jne    0x373e60
  373e5c:	33 c0                                           	xor    eax,eax
  373e5e:	eb 10                                           	jmp    0x373e70
  373e60:	ba 50 00 00 00                                  	mov    edx,0x50
  373e65:	49 8b c8                                        	mov    rcx,r8
  373e68:	e8 cf af f6 ff                                  	call   0x2dee3c
  373e6d:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  373e70:	48 83 c4 28                                     	add    rsp,0x28
  373e74:	c3                                              	ret
