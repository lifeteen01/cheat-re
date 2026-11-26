
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372bcc <.data+0x372bcc>:
  372bcc:	48 83 ec 28                                     	sub    rsp,0x28
  372bd0:	4c 8b c1                                        	mov    r8,rcx
  372bd3:	e8 30 83 f5 ff                                  	call   0x2caf08
  372bd8:	84 c0                                           	test   al,al
  372bda:	75 04                                           	jne    0x372be0
  372bdc:	33 c0                                           	xor    eax,eax
  372bde:	eb 0f                                           	jmp    0x372bef
  372be0:	ba 24 00 00 00                                  	mov    edx,0x24
  372be5:	49 8b c8                                        	mov    rcx,r8
  372be8:	e8 4f c2 f6 ff                                  	call   0x2dee3c
  372bed:	8b 00                                           	mov    eax,DWORD PTR [rax]
  372bef:	48 83 c4 28                                     	add    rsp,0x28
  372bf3:	c3                                              	ret
