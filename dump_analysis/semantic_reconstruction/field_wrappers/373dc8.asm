
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000373dc8 <.data+0x373dc8>:
  373dc8:	48 83 ec 28                                     	sub    rsp,0x28
  373dcc:	4c 8b c1                                        	mov    r8,rcx
  373dcf:	e8 34 71 f5 ff                                  	call   0x2caf08
  373dd4:	84 c0                                           	test   al,al
  373dd6:	75 04                                           	jne    0x373ddc
  373dd8:	33 c0                                           	xor    eax,eax
  373dda:	eb 10                                           	jmp    0x373dec
  373ddc:	ba 28 00 00 00                                  	mov    edx,0x28
  373de1:	49 8b c8                                        	mov    rcx,r8
  373de4:	e8 53 b0 f6 ff                                  	call   0x2dee3c
  373de9:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  373dec:	48 83 c4 28                                     	add    rsp,0x28
  373df0:	c3                                              	ret
