
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037aa1c <.data+0x37aa1c>:
  37aa1c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37aa21:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  37aa26:	57                                              	push   rdi
  37aa27:	48 83 ec 20                                     	sub    rsp,0x20
  37aa2b:	48 63 fa                                        	movsxd rdi,edx
  37aa2e:	48 8b d9                                        	mov    rbx,rcx
  37aa31:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  37aa34:	7e 34                                           	jle    0x37aa6a
  37aa36:	48 6b cf 38                                     	imul   rcx,rdi,0x38
  37aa3a:	e8 19 a7 01 00                                  	call   0x395158
  37aa3f:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  37aa43:	48 8b f0                                        	mov    rsi,rax
  37aa46:	48 85 d2                                        	test   rdx,rdx
  37aa49:	74 18                                           	je     0x37aa63
  37aa4b:	48 63 0b                                        	movsxd rcx,DWORD PTR [rbx]
  37aa4e:	4c 6b c1 38                                     	imul   r8,rcx,0x38
  37aa52:	48 8b c8                                        	mov    rcx,rax
  37aa55:	e8 f2 e2 04 00                                  	call   0x3c8d4c
  37aa5a:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37aa5e:	e8 19 a7 01 00                                  	call   0x39517c
  37aa63:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  37aa67:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  37aa6a:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37aa6f:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  37aa74:	48 83 c4 20                                     	add    rsp,0x20
  37aa78:	5f                                              	pop    rdi
  37aa79:	c3                                              	ret
