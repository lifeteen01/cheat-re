
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038f160 <.data+0x38f160>:
  38f160:	40 53                                           	rex push rbx
  38f162:	55                                              	push   rbp
  38f163:	56                                              	push   rsi
  38f164:	57                                              	push   rdi
  38f165:	41 56                                           	push   r14
  38f167:	41 57                                           	push   r15
  38f169:	48 83 ec 28                                     	sub    rsp,0x28
  38f16d:	4c 8b 35 b4 69 07 00                            	mov    r14,QWORD PTR [rip+0x769b4]        # 0x405b28
  38f174:	48 8b e9                                        	mov    rbp,rcx
  38f177:	49 81 c6 b8 3e 00 00                            	add    r14,0x3eb8
  38f17e:	49 8b ce                                        	mov    rcx,r14
  38f181:	e8 8e f1 00 00                                  	call   0x39e314
  38f186:	48 39 28                                        	cmp    QWORD PTR [rax],rbp
  38f189:	74 64                                           	je     0x38f1ef
  38f18b:	41 8b 36                                        	mov    esi,DWORD PTR [r14]
  38f18e:	44 0f bf bd ca 00 00 00                         	movsx  r15d,WORD PTR [rbp+0xca]
  38f196:	ff ce                                           	dec    esi
  38f198:	44 3b fe                                        	cmp    r15d,esi
  38f19b:	7d 3e                                           	jge    0x38f1db
  38f19d:	41 8d 7f 01                                     	lea    edi,[r15+0x1]
  38f1a1:	49 8b ce                                        	mov    rcx,r14
  38f1a4:	8b d7                                           	mov    edx,edi
  38f1a6:	e8 d9 c9 ff ff                                  	call   0x38bb84
  38f1ab:	41 8b d7                                        	mov    edx,r15d
  38f1ae:	49 8b ce                                        	mov    rcx,r14
  38f1b1:	48 8b d8                                        	mov    rbx,rax
  38f1b4:	e8 cb c9 ff ff                                  	call   0x38bb84
  38f1b9:	48 8b 0b                                        	mov    rcx,QWORD PTR [rbx]
  38f1bc:	41 8b d7                                        	mov    edx,r15d
  38f1bf:	48 89 08                                        	mov    QWORD PTR [rax],rcx
  38f1c2:	49 8b ce                                        	mov    rcx,r14
  38f1c5:	e8 ba c9 ff ff                                  	call   0x38bb84
  38f1ca:	44 8b ff                                        	mov    r15d,edi
  38f1cd:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  38f1d0:	66 ff 8a ca 00 00 00                            	dec    WORD PTR [rdx+0xca]
  38f1d7:	3b fe                                           	cmp    edi,esi
  38f1d9:	7c c2                                           	jl     0x38f19d
  38f1db:	8b d6                                           	mov    edx,esi
  38f1dd:	49 8b ce                                        	mov    rcx,r14
  38f1e0:	e8 9f c9 ff ff                                  	call   0x38bb84
  38f1e5:	48 89 28                                        	mov    QWORD PTR [rax],rbp
  38f1e8:	66 89 b5 ca 00 00 00                            	mov    WORD PTR [rbp+0xca],si
  38f1ef:	48 83 c4 28                                     	add    rsp,0x28
  38f1f3:	41 5f                                           	pop    r15
  38f1f5:	41 5e                                           	pop    r14
  38f1f7:	5f                                              	pop    rdi
  38f1f8:	5e                                              	pop    rsi
  38f1f9:	5d                                              	pop    rbp
  38f1fa:	5b                                              	pop    rbx
  38f1fb:	c3                                              	ret
