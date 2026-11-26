
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037a758 <.data+0x37a758>:
  37a758:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37a75d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  37a762:	57                                              	push   rdi
  37a763:	48 83 ec 20                                     	sub    rsp,0x20
  37a767:	48 63 fa                                        	movsxd rdi,edx
  37a76a:	48 8b d9                                        	mov    rbx,rcx
  37a76d:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  37a770:	7e 37                                           	jle    0x37a7a9
  37a772:	48 8b cf                                        	mov    rcx,rdi
  37a775:	48 c1 e1 03                                     	shl    rcx,0x3
  37a779:	e8 da a9 01 00                                  	call   0x395158
  37a77e:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  37a782:	48 8b f0                                        	mov    rsi,rax
  37a785:	48 85 d2                                        	test   rdx,rdx
  37a788:	74 18                                           	je     0x37a7a2
  37a78a:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  37a78d:	48 8b c8                                        	mov    rcx,rax
  37a790:	49 c1 e0 03                                     	shl    r8,0x3
  37a794:	e8 b3 e5 04 00                                  	call   0x3c8d4c
  37a799:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37a79d:	e8 da a9 01 00                                  	call   0x39517c
  37a7a2:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  37a7a6:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  37a7a9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37a7ae:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  37a7b3:	48 83 c4 20                                     	add    rsp,0x20
  37a7b7:	5f                                              	pop    rdi
  37a7b8:	c3                                              	ret
