
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037a6f8 <.data+0x37a6f8>:
  37a6f8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37a6fd:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  37a702:	57                                              	push   rdi
  37a703:	48 83 ec 20                                     	sub    rsp,0x20
  37a707:	48 63 fa                                        	movsxd rdi,edx
  37a70a:	48 8b d9                                        	mov    rbx,rcx
  37a70d:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  37a710:	7e 35                                           	jle    0x37a747
  37a712:	48 8b cf                                        	mov    rcx,rdi
  37a715:	48 03 c9                                        	add    rcx,rcx
  37a718:	e8 3b aa 01 00                                  	call   0x395158
  37a71d:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  37a721:	48 8b f0                                        	mov    rsi,rax
  37a724:	48 85 d2                                        	test   rdx,rdx
  37a727:	74 17                                           	je     0x37a740
  37a729:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  37a72c:	48 8b c8                                        	mov    rcx,rax
  37a72f:	4d 03 c0                                        	add    r8,r8
  37a732:	e8 15 e6 04 00                                  	call   0x3c8d4c
  37a737:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37a73b:	e8 3c aa 01 00                                  	call   0x39517c
  37a740:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  37a744:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  37a747:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37a74c:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  37a751:	48 83 c4 20                                     	add    rsp,0x20
  37a755:	5f                                              	pop    rdi
  37a756:	c3                                              	ret
