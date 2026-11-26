
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a992c <.data+0x3a992c>:
  3a992c:	4c 8b dc                                        	mov    r11,rsp
  3a992f:	45 89 4b 20                                     	mov    DWORD PTR [r11+0x20],r9d
  3a9933:	49 89 4b 08                                     	mov    QWORD PTR [r11+0x8],rcx
  3a9937:	53                                              	push   rbx
  3a9938:	55                                              	push   rbp
  3a9939:	56                                              	push   rsi
  3a993a:	57                                              	push   rdi
  3a993b:	41 54                                           	push   r12
  3a993d:	41 55                                           	push   r13
  3a993f:	41 56                                           	push   r14
  3a9941:	41 57                                           	push   r15
  3a9943:	48 83 ec 48                                     	sub    rsp,0x48
  3a9947:	44 8b 52 08                                     	mov    r10d,DWORD PTR [rdx+0x8]
  3a994b:	45 8d 68 ff                                     	lea    r13d,[r8-0x1]
  3a994f:	45 03 ea                                        	add    r13d,r10d
  3a9952:	4c 8b e2                                        	mov    r12,rdx
  3a9955:	41 8b c5                                        	mov    eax,r13d
  3a9958:	48 8b f9                                        	mov    rdi,rcx
  3a995b:	99                                              	cdq
  3a995c:	41 f7 fa                                        	idiv   r10d
  3a995f:	44 2b ea                                        	sub    r13d,edx
  3a9962:	45 3b 2c 24                                     	cmp    r13d,DWORD PTR [r12]
  3a9966:	0f 8f 9d 01 00 00                               	jg     0x3a9b09
  3a996c:	45 3b 4c 24 04                                  	cmp    r9d,DWORD PTR [r12+0x4]
  3a9971:	0f 8f 92 01 00 00                               	jg     0x3a9b09
  3a9977:	49 8b 6c 24 18                                  	mov    rbp,QWORD PTR [r12+0x18]
  3a997c:	49 8d 74 24 18                                  	lea    rsi,[r12+0x18]
  3a9981:	45 33 f6                                        	xor    r14d,r14d
  3a9984:	41 bf 00 00 00 40                               	mov    r15d,0x40000000
  3a998a:	41 8b df                                        	mov    ebx,r15d
  3a998d:	8b 4d 00                                        	mov    ecx,DWORD PTR [rbp+0x0]
  3a9990:	41 03 cd                                        	add    ecx,r13d
  3a9993:	41 3b 0c 24                                     	cmp    ecx,DWORD PTR [r12]
  3a9997:	0f 8f 8a 00 00 00                               	jg     0x3a9a27
  3a999d:	41 8b f9                                        	mov    edi,r9d
  3a99a0:	44 8b 45 00                                     	mov    r8d,DWORD PTR [rbp+0x0]
  3a99a4:	48 8d 84 24 a0 00 00 00                         	lea    rax,[rsp+0xa0]
  3a99ac:	45 8b cd                                        	mov    r9d,r13d
  3a99af:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a99b4:	48 8b d5                                        	mov    rdx,rbp
  3a99b7:	49 8b cc                                        	mov    rcx,r12
  3a99ba:	e8 6d 01 00 00                                  	call   0x3a9b2c
  3a99bf:	45 8b 44 24 10                                  	mov    r8d,DWORD PTR [r12+0x10]
  3a99c4:	8b d0                                           	mov    edx,eax
  3a99c6:	45 85 c0                                        	test   r8d,r8d
  3a99c9:	75 0f                                           	jne    0x3a99da
  3a99cb:	3b c3                                           	cmp    eax,ebx
  3a99cd:	8b cb                                           	mov    ecx,ebx
  3a99cf:	0f 4c d8                                        	cmovl  ebx,eax
  3a99d2:	3b c1                                           	cmp    eax,ecx
  3a99d4:	49 0f 4d f6                                     	cmovge rsi,r14
  3a99d8:	eb 23                                           	jmp    0x3a99fd
  3a99da:	03 c7                                           	add    eax,edi
  3a99dc:	41 3b 44 24 04                                  	cmp    eax,DWORD PTR [r12+0x4]
  3a99e1:	7f 1d                                           	jg     0x3a9a00
  3a99e3:	3b d3                                           	cmp    edx,ebx
  3a99e5:	7c 0c                                           	jl     0x3a99f3
  3a99e7:	75 17                                           	jne    0x3a9a00
  3a99e9:	44 39 bc 24 a0 00 00 00                         	cmp    DWORD PTR [rsp+0xa0],r15d
  3a99f1:	7d 0d                                           	jge    0x3a9a00
  3a99f3:	44 8b bc 24 a0 00 00 00                         	mov    r15d,DWORD PTR [rsp+0xa0]
  3a99fb:	8b da                                           	mov    ebx,edx
  3a99fd:	4c 8b f6                                        	mov    r14,rsi
  3a9a00:	48 8d 75 08                                     	lea    rsi,[rbp+0x8]
  3a9a04:	48 8b 2e                                        	mov    rbp,QWORD PTR [rsi]
  3a9a07:	8b 4d 00                                        	mov    ecx,DWORD PTR [rbp+0x0]
  3a9a0a:	41 03 cd                                        	add    ecx,r13d
  3a9a0d:	41 3b 0c 24                                     	cmp    ecx,DWORD PTR [r12]
  3a9a11:	7e 8d                                           	jle    0x3a99a0
  3a9a13:	48 8b bc 24 90 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x90]
  3a9a1b:	4d 85 f6                                        	test   r14,r14
  3a9a1e:	74 0c                                           	je     0x3a9a2c
  3a9a20:	49 8b 06                                        	mov    rax,QWORD PTR [r14]
  3a9a23:	8b 10                                           	mov    edx,DWORD PTR [rax]
  3a9a25:	eb 07                                           	jmp    0x3a9a2e
  3a9a27:	45 8b 44 24 10                                  	mov    r8d,DWORD PTR [r12+0x10]
  3a9a2c:	33 d2                                           	xor    edx,edx
  3a9a2e:	89 94 24 a0 00 00 00                            	mov    DWORD PTR [rsp+0xa0],edx
  3a9a35:	41 83 f8 01                                     	cmp    r8d,0x1
  3a9a39:	0f 85 bf 00 00 00                               	jne    0x3a9afe
  3a9a3f:	49 8b 74 24 18                                  	mov    rsi,QWORD PTR [r12+0x18]
  3a9a44:	48 8b ce                                        	mov    rcx,rsi
  3a9a47:	48 89 4c 24 30                                  	mov    QWORD PTR [rsp+0x30],rcx
  3a9a4c:	eb 04                                           	jmp    0x3a9a52
  3a9a4e:	48 8b 76 08                                     	mov    rsi,QWORD PTR [rsi+0x8]
  3a9a52:	44 39 2e                                        	cmp    DWORD PTR [rsi],r13d
  3a9a55:	7c f7                                           	jl     0x3a9a4e
  3a9a57:	49 8d 7c 24 18                                  	lea    rdi,[r12+0x18]
  3a9a5c:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a9a60:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
  3a9a62:	41 2b ed                                        	sub    ebp,r13d
  3a9a65:	39 28                                           	cmp    DWORD PTR [rax],ebp
  3a9a67:	7f 14                                           	jg     0x3a9a7d
  3a9a69:	48 8d 79 08                                     	lea    rdi,[rcx+0x8]
  3a9a6d:	48 8b 0f                                        	mov    rcx,QWORD PTR [rdi]
  3a9a70:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a9a74:	39 28                                           	cmp    DWORD PTR [rax],ebp
  3a9a76:	7e f1                                           	jle    0x3a9a69
  3a9a78:	48 89 4c 24 30                                  	mov    QWORD PTR [rsp+0x30],rcx
  3a9a7d:	48 8d 84 24 98 00 00 00                         	lea    rax,[rsp+0x98]
  3a9a85:	48 8b d1                                        	mov    rdx,rcx
  3a9a88:	49 8b cc                                        	mov    rcx,r12
  3a9a8b:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a9a90:	45 8b cd                                        	mov    r9d,r13d
  3a9a93:	44 8b c5                                        	mov    r8d,ebp
  3a9a96:	e8 91 00 00 00                                  	call   0x3a9b2c
  3a9a9b:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xa8]
  3a9aa2:	03 c8                                           	add    ecx,eax
  3a9aa4:	41 3b 4c 24 04                                  	cmp    ecx,DWORD PTR [r12+0x4]
  3a9aa9:	7f 32                                           	jg     0x3a9add
  3a9aab:	3b c3                                           	cmp    eax,ebx
  3a9aad:	7f 2e                                           	jg     0x3a9add
  3a9aaf:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [rsp+0x98]
  3a9ab6:	7c 12                                           	jl     0x3a9aca
  3a9ab8:	41 3b cf                                        	cmp    ecx,r15d
  3a9abb:	7c 0d                                           	jl     0x3a9aca
  3a9abd:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [rsp+0xa0]
  3a9ac4:	75 1e                                           	jne    0x3a9ae4
  3a9ac6:	3b ea                                           	cmp    ebp,edx
  3a9ac8:	7d 1a                                           	jge    0x3a9ae4
  3a9aca:	8b d5                                           	mov    edx,ebp
  3a9acc:	8b d8                                           	mov    ebx,eax
  3a9ace:	89 94 24 a0 00 00 00                            	mov    DWORD PTR [rsp+0xa0],edx
  3a9ad5:	44 8b f9                                        	mov    r15d,ecx
  3a9ad8:	4c 8b f7                                        	mov    r14,rdi
  3a9adb:	eb 07                                           	jmp    0x3a9ae4
  3a9add:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [rsp+0xa0]
  3a9ae4:	48 8b 76 08                                     	mov    rsi,QWORD PTR [rsi+0x8]
  3a9ae8:	48 8b 4c 24 30                                  	mov    rcx,QWORD PTR [rsp+0x30]
  3a9aed:	48 85 f6                                        	test   rsi,rsi
  3a9af0:	0f 85 66 ff ff ff                               	jne    0x3a9a5c
  3a9af6:	48 8b bc 24 90 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x90]
  3a9afe:	4c 89 77 08                                     	mov    QWORD PTR [rdi+0x8],r14
  3a9b02:	89 17                                           	mov    DWORD PTR [rdi],edx
  3a9b04:	89 5f 04                                        	mov    DWORD PTR [rdi+0x4],ebx
  3a9b07:	eb 0f                                           	jmp    0x3a9b18
  3a9b09:	48 c7 41 08 00 00 00 00                         	mov    QWORD PTR [rcx+0x8],0x0
  3a9b11:	48 c7 01 00 00 00 00                            	mov    QWORD PTR [rcx],0x0
  3a9b18:	48 8b c7                                        	mov    rax,rdi
  3a9b1b:	48 83 c4 48                                     	add    rsp,0x48
  3a9b1f:	41 5f                                           	pop    r15
  3a9b21:	41 5e                                           	pop    r14
  3a9b23:	41 5d                                           	pop    r13
  3a9b25:	41 5c                                           	pop    r12
  3a9b27:	5f                                              	pop    rdi
  3a9b28:	5e                                              	pop    rsi
  3a9b29:	5d                                              	pop    rbp
  3a9b2a:	5b                                              	pop    rbx
  3a9b2b:	c3                                              	ret
