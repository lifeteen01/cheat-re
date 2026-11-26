
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac1a4 <.data+0x3ac1a4>:
  3ac1a4:	40 53                                           	rex push rbx
  3ac1a6:	48 83 ec 20                                     	sub    rsp,0x20
  3ac1aa:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  3ac1ad:	48 85 c0                                        	test   rax,rax
  3ac1b0:	74 13                                           	je     0x3ac1c5
  3ac1b2:	48 8b 18                                        	mov    rbx,QWORD PTR [rax]
  3ac1b5:	48 8b c8                                        	mov    rcx,rax
  3ac1b8:	e8 bf 8f fe ff                                  	call   0x39517c
  3ac1bd:	48 8b c3                                        	mov    rax,rbx
  3ac1c0:	48 85 db                                        	test   rbx,rbx
  3ac1c3:	75 ed                                           	jne    0x3ac1b2
  3ac1c5:	48 83 c4 20                                     	add    rsp,0x20
  3ac1c9:	5b                                              	pop    rbx
  3ac1ca:	c3                                              	ret
  3ac1cb:	cc                                              	int3
