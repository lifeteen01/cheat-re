
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4ebc <.data+0x3a4ebc>:
  3a4ebc:	40 53                                           	rex push rbx
  3a4ebe:	55                                              	push   rbp
  3a4ebf:	56                                              	push   rsi
  3a4ec0:	57                                              	push   rdi
  3a4ec1:	48 83 ec 28                                     	sub    rsp,0x28
  3a4ec5:	83 b9 9c 04 00 00 00                            	cmp    DWORD PTR [rcx+0x49c],0x0
  3a4ecc:	48 8b e9                                        	mov    rbp,rcx
  3a4ecf:	7d 5e                                           	jge    0x3a4f2f
  3a4ed1:	48 8d b1 44 05 00 00                            	lea    rsi,[rcx+0x544]
  3a4ed8:	48 8b ce                                        	mov    rcx,rsi
  3a4edb:	e8 78 e9 ff ff                                  	call   0x3a3858
  3a4ee0:	48 8b ce                                        	mov    rcx,rsi
  3a4ee3:	8b d8                                           	mov    ebx,eax
  3a4ee5:	e8 a2 fa ff ff                                  	call   0x3a498c
  3a4eea:	48 8b cd                                        	mov    rcx,rbp
  3a4eed:	8d 14 03                                        	lea    edx,[rbx+rax*1]
  3a4ef0:	44 8b c2                                        	mov    r8d,edx
  3a4ef3:	e8 d0 ad ff ff                                  	call   0x39fcc8
  3a4ef8:	48 8b ce                                        	mov    rcx,rsi
  3a4efb:	89 85 9c 04 00 00                               	mov    DWORD PTR [rbp+0x49c],eax
  3a4f01:	e8 2e f8 ff ff                                  	call   0x3a4734
  3a4f06:	48 8b ce                                        	mov    rcx,rsi
  3a4f09:	8b f8                                           	mov    edi,eax
  3a4f0b:	e8 60 e8 ff ff                                  	call   0x3a3770
  3a4f10:	48 8b ce                                        	mov    rcx,rsi
  3a4f13:	8d 1c 07                                        	lea    ebx,[rdi+rax*1]
  3a4f16:	e8 5d e8 ff ff                                  	call   0x3a3778
  3a4f1b:	44 8b c3                                        	mov    r8d,ebx
  3a4f1e:	48 8b cd                                        	mov    rcx,rbp
  3a4f21:	8d 14 07                                        	lea    edx,[rdi+rax*1]
  3a4f24:	e8 9f ad ff ff                                  	call   0x39fcc8
  3a4f29:	89 85 a0 04 00 00                               	mov    DWORD PTR [rbp+0x4a0],eax
  3a4f2f:	48 83 c4 28                                     	add    rsp,0x28
  3a4f33:	5f                                              	pop    rdi
  3a4f34:	5e                                              	pop    rsi
  3a4f35:	5d                                              	pop    rbp
  3a4f36:	5b                                              	pop    rbx
  3a4f37:	c3                                              	ret
