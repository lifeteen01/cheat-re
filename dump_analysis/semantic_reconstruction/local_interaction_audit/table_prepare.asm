
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3a70 <.data+0x2e3a70>:
  2e3a70:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e3a75:	57                                              	push   rdi
  2e3a76:	48 83 ec 20                                     	sub    rsp,0x20
  2e3a7a:	48 8b f9                                        	mov    rdi,rcx
  2e3a7d:	48 83 c1 10                                     	add    rcx,0x10
  2e3a81:	e8 1a 4c ff ff                                  	call   0x2d86a0
  2e3a86:	84 c0                                           	test   al,al
  2e3a88:	74 08                                           	je     0x2e3a92
  2e3a8a:	48 8b cf                                        	mov    rcx,rdi
  2e3a8d:	e8 12 00 00 00                                  	call   0x2e3aa4
  2e3a92:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2e3a97:	48 8d 47 10                                     	lea    rax,[rdi+0x10]
  2e3a9b:	48 83 c4 20                                     	add    rsp,0x20
  2e3a9f:	5f                                              	pop    rdi
  2e3aa0:	c3                                              	ret
