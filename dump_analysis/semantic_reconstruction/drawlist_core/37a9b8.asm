
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037a9b8 <.data+0x37a9b8>:
  37a9b8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37a9bd:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  37a9c2:	57                                              	push   rdi
  37a9c3:	48 83 ec 20                                     	sub    rsp,0x20
  37a9c7:	48 63 fa                                        	movsxd rdi,edx
  37a9ca:	48 8b d9                                        	mov    rbx,rcx
  37a9cd:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  37a9d0:	7e 37                                           	jle    0x37aa09
  37a9d2:	48 8b cf                                        	mov    rcx,rdi
  37a9d5:	48 c1 e1 04                                     	shl    rcx,0x4
  37a9d9:	e8 7a a7 01 00                                  	call   0x395158
  37a9de:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  37a9e2:	48 8b f0                                        	mov    rsi,rax
  37a9e5:	48 85 d2                                        	test   rdx,rdx
  37a9e8:	74 18                                           	je     0x37aa02
  37a9ea:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  37a9ed:	48 8b c8                                        	mov    rcx,rax
  37a9f0:	49 c1 e0 04                                     	shl    r8,0x4
  37a9f4:	e8 53 e3 04 00                                  	call   0x3c8d4c
  37a9f9:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37a9fd:	e8 7a a7 01 00                                  	call   0x39517c
  37aa02:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  37aa06:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  37aa09:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37aa0e:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  37aa13:	48 83 c4 20                                     	add    rsp,0x20
  37aa17:	5f                                              	pop    rdi
  37aa18:	c3                                              	ret
