
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037a69c <.data+0x37a69c>:
  37a69c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37a6a1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  37a6a6:	57                                              	push   rdi
  37a6a7:	48 83 ec 20                                     	sub    rsp,0x20
  37a6ab:	48 63 fa                                        	movsxd rdi,edx
  37a6ae:	48 8b d9                                        	mov    rbx,rcx
  37a6b1:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  37a6b4:	7e 2f                                           	jle    0x37a6e5
  37a6b6:	48 8b cf                                        	mov    rcx,rdi
  37a6b9:	e8 9a aa 01 00                                  	call   0x395158
  37a6be:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  37a6c2:	48 8b f0                                        	mov    rsi,rax
  37a6c5:	48 85 d2                                        	test   rdx,rdx
  37a6c8:	74 14                                           	je     0x37a6de
  37a6ca:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  37a6cd:	48 8b c8                                        	mov    rcx,rax
  37a6d0:	e8 77 e6 04 00                                  	call   0x3c8d4c
  37a6d5:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37a6d9:	e8 9e aa 01 00                                  	call   0x39517c
  37a6de:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  37a6e2:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  37a6e5:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37a6ea:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  37a6ef:	48 83 c4 20                                     	add    rsp,0x20
  37a6f3:	5f                                              	pop    rdi
  37a6f4:	c3                                              	ret
