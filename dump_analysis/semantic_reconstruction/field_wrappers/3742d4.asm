
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003742d4 <.data+0x3742d4>:
  3742d4:	48 83 ec 28                                     	sub    rsp,0x28
  3742d8:	4c 8b c1                                        	mov    r8,rcx
  3742db:	e8 28 6c f5 ff                                  	call   0x2caf08
  3742e0:	84 c0                                           	test   al,al
  3742e2:	75 04                                           	jne    0x3742e8
  3742e4:	33 c0                                           	xor    eax,eax
  3742e6:	eb 10                                           	jmp    0x3742f8
  3742e8:	ba 20 01 00 00                                  	mov    edx,0x120
  3742ed:	49 8b c8                                        	mov    rcx,r8
  3742f0:	e8 47 ab f6 ff                                  	call   0x2dee3c
  3742f5:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  3742f8:	48 83 c4 28                                     	add    rsp,0x28
  3742fc:	c3                                              	ret
