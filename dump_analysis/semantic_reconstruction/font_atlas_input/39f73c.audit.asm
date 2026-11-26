
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/39f73c.audit.bin:     file format binary


Disassembly of section .data:

000000000039f73c <.data>:
  39f73c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39f741:	57                                              	push   rdi
  39f742:	48 83 ec 20                                     	sub    rsp,0x20
  39f746:	8b da                                           	mov    ebx,edx
  39f748:	48 8b f9                                        	mov    rdi,rcx
  39f74b:	e8 5c fe ff ff                                  	call   0x39f5ac
  39f750:	f6 c3 01                                        	test   bl,0x1
  39f753:	74 0d                                           	je     0x39f762
  39f755:	ba 78 00 00 00                                  	mov    edx,0x78
  39f75a:	48 8b cf                                        	mov    rcx,rdi
  39f75d:	e8 6a ac fe ff                                  	call   0x38a3cc
  39f762:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39f767:	48 8b c7                                        	mov    rax,rdi
  39f76a:	48 83 c4 20                                     	add    rsp,0x20
  39f76e:	5f                                              	pop    rdi
  39f76f:	c3                                              	ret
