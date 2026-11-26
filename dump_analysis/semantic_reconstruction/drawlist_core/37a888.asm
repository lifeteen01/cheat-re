
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037a888 <.data+0x37a888>:
  37a888:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37a88d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  37a892:	57                                              	push   rdi
  37a893:	48 83 ec 20                                     	sub    rsp,0x20
  37a897:	48 63 fa                                        	movsxd rdi,edx
  37a89a:	48 8b d9                                        	mov    rbx,rcx
  37a89d:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  37a8a0:	7e 3c                                           	jle    0x37a8de
  37a8a2:	48 8d 0c bf                                     	lea    rcx,[rdi+rdi*4]
  37a8a6:	48 c1 e1 02                                     	shl    rcx,0x2
  37a8aa:	e8 a9 a8 01 00                                  	call   0x395158
  37a8af:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  37a8b3:	48 8b f0                                        	mov    rsi,rax
  37a8b6:	48 85 d2                                        	test   rdx,rdx
  37a8b9:	74 1c                                           	je     0x37a8d7
  37a8bb:	48 63 0b                                        	movsxd rcx,DWORD PTR [rbx]
  37a8be:	4c 8d 04 89                                     	lea    r8,[rcx+rcx*4]
  37a8c2:	48 8b c8                                        	mov    rcx,rax
  37a8c5:	49 c1 e0 02                                     	shl    r8,0x2
  37a8c9:	e8 7e e4 04 00                                  	call   0x3c8d4c
  37a8ce:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37a8d2:	e8 a5 a8 01 00                                  	call   0x39517c
  37a8d7:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  37a8db:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  37a8de:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37a8e3:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  37a8e8:	48 83 c4 20                                     	add    rsp,0x20
  37a8ec:	5f                                              	pop    rdi
  37a8ed:	c3                                              	ret
