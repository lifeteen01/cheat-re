
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a95bc <.data+0x3a95bc>:
  3a95bc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a95c1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a95c6:	57                                              	push   rdi
  3a95c7:	48 83 ec 20                                     	sub    rsp,0x20
  3a95cb:	48 63 fa                                        	movsxd rdi,edx
  3a95ce:	48 8b d9                                        	mov    rbx,rcx
  3a95d1:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  3a95d4:	7e 3a                                           	jle    0x3a9610
  3a95d6:	48 69 cf 88 00 00 00                            	imul   rcx,rdi,0x88
  3a95dd:	e8 76 bb fe ff                                  	call   0x395158
  3a95e2:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  3a95e6:	48 8b f0                                        	mov    rsi,rax
  3a95e9:	48 85 d2                                        	test   rdx,rdx
  3a95ec:	74 1b                                           	je     0x3a9609
  3a95ee:	48 63 0b                                        	movsxd rcx,DWORD PTR [rbx]
  3a95f1:	4c 69 c1 88 00 00 00                            	imul   r8,rcx,0x88
  3a95f8:	48 8b c8                                        	mov    rcx,rax
  3a95fb:	e8 4c f7 01 00                                  	call   0x3c8d4c
  3a9600:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  3a9604:	e8 73 bb fe ff                                  	call   0x39517c
  3a9609:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  3a960d:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  3a9610:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a9615:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3a961a:	48 83 c4 20                                     	add    rsp,0x20
  3a961e:	5f                                              	pop    rdi
  3a961f:	c3                                              	ret
