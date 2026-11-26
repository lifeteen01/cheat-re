
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae8c4 <.data+0x3ae8c4>:
  3ae8c4:	40 53                                           	rex push rbx
  3ae8c6:	55                                              	push   rbp
  3ae8c7:	56                                              	push   rsi
  3ae8c8:	57                                              	push   rdi
  3ae8c9:	41 54                                           	push   r12
  3ae8cb:	41 56                                           	push   r14
  3ae8cd:	41 57                                           	push   r15
  3ae8cf:	48 83 ec 30                                     	sub    rsp,0x30
  3ae8d3:	48 8b f9                                        	mov    rdi,rcx
  3ae8d6:	41 8b e9                                        	mov    ebp,r9d
  3ae8d9:	b9 48 00 00 00                                  	mov    ecx,0x48
  3ae8de:	41 8b d8                                        	mov    ebx,r8d
  3ae8e1:	4c 8b f2                                        	mov    r14,rdx
  3ae8e4:	e8 6f 68 fe ff                                  	call   0x395158
  3ae8e9:	44 8b a4 24 98 00 00 00                         	mov    r12d,DWORD PTR [rsp+0x98]
  3ae8f1:	44 8b fb                                        	mov    r15d,ebx
  3ae8f4:	45 2b fc                                        	sub    r15d,r12d
  3ae8f7:	48 8b f0                                        	mov    rsi,rax
  3ae8fa:	49 63 cf                                        	movsxd rcx,r15d
  3ae8fd:	48 c1 e1 04                                     	shl    rcx,0x4
  3ae901:	e8 52 68 fe ff                                  	call   0x395158
  3ae906:	4c 8b c8                                        	mov    r9,rax
  3ae909:	48 85 f6                                        	test   rsi,rsi
  3ae90c:	0f 84 83 00 00 00                               	je     0x3ae995
  3ae912:	48 85 c0                                        	test   rax,rax
  3ae915:	74 79                                           	je     0x3ae990
  3ae917:	48 8b 8c 24 a0 00 00 00                         	mov    rcx,QWORD PTR [rsp+0xa0]
  3ae91f:	44 8b c5                                        	mov    r8d,ebp
  3ae922:	48 89 0f                                        	mov    QWORD PTR [rdi],rcx
  3ae925:	41 8b d7                                        	mov    edx,r15d
  3ae928:	48 89 47 38                                     	mov    QWORD PTR [rdi+0x38],rax
  3ae92c:	8b cb                                           	mov    ecx,ebx
  3ae92e:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [rsp+0x90]
  3ae935:	85 c0                                           	test   eax,eax
  3ae937:	89 5f 10                                        	mov    DWORD PTR [rdi+0x10],ebx
  3ae93a:	0f 45 c8                                        	cmovne ecx,eax
  3ae93d:	89 6f 14                                        	mov    DWORD PTR [rdi+0x14],ebp
  3ae940:	89 4f 18                                        	mov    DWORD PTR [rdi+0x18],ecx
  3ae943:	45 2b c4                                        	sub    r8d,r12d
  3ae946:	48 8b ce                                        	mov    rcx,rsi
  3ae949:	4c 89 77 30                                     	mov    QWORD PTR [rdi+0x30],r14
  3ae94d:	48 89 77 08                                     	mov    QWORD PTR [rdi+0x8],rsi
  3ae951:	44 89 67 1c                                     	mov    DWORD PTR [rdi+0x1c],r12d
  3ae955:	c7 47 24 01 00 00 00                            	mov    DWORD PTR [rdi+0x24],0x1
  3ae95c:	c7 47 28 01 00 00 00                            	mov    DWORD PTR [rdi+0x28],0x1
  3ae963:	c7 47 20 00 00 00 00                            	mov    DWORD PTR [rdi+0x20],0x0
  3ae96a:	44 89 7c 24 20                                  	mov    DWORD PTR [rsp+0x20],r15d
  3ae96f:	e8 30 f4 ff ff                                  	call   0x3adda4
  3ae974:	4d 85 f6                                        	test   r14,r14
  3ae977:	74 10                                           	je     0x3ae989
  3ae979:	0f af dd                                        	imul   ebx,ebp
  3ae97c:	33 d2                                           	xor    edx,edx
  3ae97e:	49 8b ce                                        	mov    rcx,r14
  3ae981:	4c 63 c3                                        	movsxd r8,ebx
  3ae984:	e8 e7 a3 01 00                                  	call   0x3c8d70
  3ae989:	b8 01 00 00 00                                  	mov    eax,0x1
  3ae98e:	eb 14                                           	jmp    0x3ae9a4
  3ae990:	48 8b ce                                        	mov    rcx,rsi
  3ae993:	eb 08                                           	jmp    0x3ae99d
  3ae995:	4d 85 c9                                        	test   r9,r9
  3ae998:	74 08                                           	je     0x3ae9a2
  3ae99a:	49 8b c9                                        	mov    rcx,r9
  3ae99d:	e8 da 67 fe ff                                  	call   0x39517c
  3ae9a2:	33 c0                                           	xor    eax,eax
  3ae9a4:	48 83 c4 30                                     	add    rsp,0x30
  3ae9a8:	41 5f                                           	pop    r15
  3ae9aa:	41 5e                                           	pop    r14
  3ae9ac:	41 5c                                           	pop    r12
  3ae9ae:	5f                                              	pop    rdi
  3ae9af:	5e                                              	pop    rsi
  3ae9b0:	5d                                              	pop    rbp
  3ae9b1:	5b                                              	pop    rbx
  3ae9b2:	c3                                              	ret
