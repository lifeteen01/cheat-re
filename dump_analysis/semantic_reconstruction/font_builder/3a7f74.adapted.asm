
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a7f74 <.data+0x3a7f74>:
  3a7f74:	48 8b 49 08                                     	mov    rcx,QWORD PTR [rcx+0x8]
  3a7f78:	e9 83 b0 fe ff                                  	jmp    0x393000
  3a7f7d:	cc                                              	int3
  3a7f7e:	cc                                              	int3
  3a7f7f:	cc                                              	int3
  3a7f80:	40 53                                           	rex push rbx
  3a7f82:	48 83 ec 20                                     	sub    rsp,0x20
  3a7f86:	48 8b da                                        	mov    rbx,rdx
  3a7f89:	48 c1 ea 05                                     	shr    rdx,0x5
  3a7f8d:	e8 e6 3b fe ff                                  	call   0x38bb78
  3a7f92:	83 e3 1f                                        	and    ebx,0x1f
  3a7f95:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3a7f97:	0f ab d9                                        	bts    ecx,ebx
  3a7f9a:	89 08                                           	mov    DWORD PTR [rax],ecx
  3a7f9c:	48 83 c4 20                                     	add    rsp,0x20
  3a7fa0:	5b                                              	pop    rbx
  3a7fa1:	c3                                              	ret
  3a7fa2:	cc                                              	int3
  3a7fa3:	cc                                              	int3
  3a7fa4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a7fa9:	57                                              	push   rdi
  3a7faa:	48 83 ec 40                                     	sub    rsp,0x40
  3a7fae:	f3 0f 10 41 18                                  	movss  xmm0,DWORD PTR [rcx+0x18]
  3a7fb3:	48                                          	mov    rbx,rcx
