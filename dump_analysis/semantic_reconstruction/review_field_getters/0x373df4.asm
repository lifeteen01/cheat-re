
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000373df4 <.data+0x373df4>:
  373df4:	48 83 ec 28                                     	sub    rsp,0x28
  373df8:	4c 8b c1                                        	mov    r8,rcx
  373dfb:	e8 08 71 f5 ff                                  	call   0x2caf08
  373e00:	84 c0                                           	test   al,al
  373e02:	75 04                                           	jne    0x373e08
  373e04:	33 c0                                           	xor    eax,eax
  373e06:	eb 10                                           	jmp    0x373e18
  373e08:	ba 20 00 00 00                                  	mov    edx,0x20
  373e0d:	49 8b c8                                        	mov    rcx,r8
  373e10:	e8 27 b0 f6 ff                                  	call   0x2dee3c
  373e15:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  373e18:	48 83 c4 28                                     	add    rsp,0x28
  373e1c:	c3                                              	ret
