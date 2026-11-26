
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a7224 <.data+0x3a7224>:
  3a7224:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a7229:	57                                              	push   rdi
  3a722a:	48 83 ec 20                                     	sub    rsp,0x20
  3a722e:	48 63 01                                        	movsxd rax,DWORD PTR [rcx]
  3a7231:	8b fa                                           	mov    edi,edx
  3a7233:	4c 6b c8 38                                     	imul   r9,rax,0x38
  3a7237:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a723b:	48 8b d9                                        	mov    rbx,rcx
  3a723e:	48 83 c1 20                                     	add    rcx,0x20
  3a7242:	41 29 54 01 e8                                  	sub    DWORD PTR [r9+rax*1-0x18],edx
  3a7247:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  3a7249:	41 2b d0                                        	sub    edx,r8d
  3a724c:	e8 b7 26 00 00                                  	call   0x3a9908
  3a7251:	48 8d 4b 10                                     	lea    rcx,[rbx+0x10]
  3a7255:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  3a7257:	2b d7                                           	sub    edx,edi
  3a7259:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a725e:	48 83 c4 20                                     	add    rsp,0x20
  3a7262:	5f                                              	pop    rdi
  3a7263:	e9 a0 26 00 00                                  	jmp    0x3a9908
