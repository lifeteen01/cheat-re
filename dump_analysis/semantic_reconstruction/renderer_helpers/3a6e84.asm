
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a6e84 <.data+0x3a6e84>:
  3a6e84:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a6e89:	57                                              	push   rdi
  3a6e8a:	48 83 ec 20                                     	sub    rsp,0x20
  3a6e8e:	48 8d 59 68                                     	lea    rbx,[rcx+0x68]
  3a6e92:	48 8b f9                                        	mov    rdi,rcx
  3a6e95:	48 8b cb                                        	mov    rcx,rbx
  3a6e98:	e8 03 80 ff ff                                  	call   0x39eea0
  3a6e9d:	33 c0                                           	xor    eax,eax
  3a6e9f:	39 03                                           	cmp    DWORD PTR [rbx],eax
  3a6ea1:	74 0c                                           	je     0x3a6eaf
  3a6ea3:	48 63 0b                                        	movsxd rcx,DWORD PTR [rbx]
  3a6ea6:	48 8b 47 70                                     	mov    rax,QWORD PTR [rdi+0x70]
  3a6eaa:	48 8b 44 c8 f8                                  	mov    rax,QWORD PTR [rax+rcx*8-0x8]
  3a6eaf:	48 8b cf                                        	mov    rcx,rdi
  3a6eb2:	48 89 87 98 00 00 00                            	mov    QWORD PTR [rdi+0x98],rax
  3a6eb9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a6ebe:	48 83 c4 20                                     	add    rsp,0x20
  3a6ec2:	5f                                              	pop    rdi
  3a6ec3:	e9 60 1f 00 00                                  	jmp    0x3a8e28
