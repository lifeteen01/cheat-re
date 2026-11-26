
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032b838 <.data+0x32b838>:
  32b838:	44 89 4c 24 20                                  	mov    DWORD PTR [rsp+0x20],r9d
  32b83d:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  32b842:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  32b847:	55                                              	push   rbp
  32b848:	53                                              	push   rbx
  32b849:	56                                              	push   rsi
  32b84a:	57                                              	push   rdi
  32b84b:	48 8b ec                                        	mov    rbp,rsp
  32b84e:	48 83 ec 28                                     	sub    rsp,0x28
  32b852:	48 8b f9                                        	mov    rdi,rcx
  32b855:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  32b859:	e8 e6 51 fa ff                                  	call   0x2d0a44
  32b85e:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  32b862:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  32b866:	48 8b d8                                        	mov    rbx,rax
  32b869:	e8 d6 51 fa ff                                  	call   0x2d0a44
  32b86e:	48 8b f0                                        	mov    rsi,rax
  32b871:	48 3b d8                                        	cmp    rbx,rax
  32b874:	74 21                                           	je     0x32b897
  32b876:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
  32b879:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32b87d:	e8 ea 01 00 00                                  	call   0x32ba6c
  32b882:	84 c0                                           	test   al,al
  32b884:	75 11                                           	jne    0x32b897
  32b886:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  32b88a:	48 83 c3 08                                     	add    rbx,0x8
  32b88e:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  32b892:	48 3b de                                        	cmp    rbx,rsi
  32b895:	75 df                                           	jne    0x32b876
  32b897:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  32b89b:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  32b89f:	e8 88 5f fa ff                                  	call   0x2d182c
  32b8a4:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  32b8a8:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  32b8ab:	48 8b c7                                        	mov    rax,rdi
  32b8ae:	48 83 c4 28                                     	add    rsp,0x28
  32b8b2:	5f                                              	pop    rdi
  32b8b3:	5e                                              	pop    rsi
  32b8b4:	5b                                              	pop    rbx
  32b8b5:	5d                                              	pop    rbp
  32b8b6:	c3                                              	ret
