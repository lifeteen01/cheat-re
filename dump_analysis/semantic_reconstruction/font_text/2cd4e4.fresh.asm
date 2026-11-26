
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cd4e4 <.data+0x2cd4e4>:
  2cd4e4:	40 53                                           	rex push rbx
  2cd4e6:	48 83 ec 20                                     	sub    rsp,0x20
  2cd4ea:	48 8b d9                                        	mov    rbx,rcx
  2cd4ed:	e8 72 ff ff ff                                  	call   0x2cd464
  2cd4f2:	84 c0                                           	test   al,al
  2cd4f4:	74 0b                                           	je     0x2cd501
  2cd4f6:	48 8b 0b                                        	mov    rcx,QWORD PTR [rbx]
  2cd4f9:	e8 a6 de ff ff                                  	call   0x2cb3a4
  2cd4fe:	48 8b d8                                        	mov    rbx,rax
  2cd501:	48 8b c3                                        	mov    rax,rbx
  2cd504:	48 83 c4 20                                     	add    rsp,0x20
  2cd508:	5b                                              	pop    rbx
  2cd509:	c3                                              	ret
