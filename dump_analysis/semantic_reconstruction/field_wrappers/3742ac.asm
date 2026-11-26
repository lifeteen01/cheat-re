
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003742ac <.data+0x3742ac>:
  3742ac:	48 83 ec 28                                     	sub    rsp,0x28
  3742b0:	4c 8b c1                                        	mov    r8,rcx
  3742b3:	e8 50 6c f5 ff                                  	call   0x2caf08
  3742b8:	84 c0                                           	test   al,al
  3742ba:	75 04                                           	jne    0x3742c0
  3742bc:	33 c0                                           	xor    eax,eax
  3742be:	eb 0f                                           	jmp    0x3742cf
  3742c0:	ba 38 01 00 00                                  	mov    edx,0x138
  3742c5:	49 8b c8                                        	mov    rcx,r8
  3742c8:	e8 6f ab f6 ff                                  	call   0x2dee3c
  3742cd:	8b 00                                           	mov    eax,DWORD PTR [rax]
  3742cf:	48 83 c4 28                                     	add    rsp,0x28
  3742d3:	c3                                              	ret
