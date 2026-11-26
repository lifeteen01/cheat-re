
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a0168 <.data+0x3a0168>:
  3a0168:	40 53                                           	rex push rbx
  3a016a:	55                                              	push   rbp
  3a016b:	56                                              	push   rsi
  3a016c:	57                                              	push   rdi
  3a016d:	41 56                                           	push   r14
  3a016f:	41 57                                           	push   r15
  3a0171:	48 83 ec 38                                     	sub    rsp,0x38
  3a0175:	8b ac 24 a0 00 00 00                            	mov    ebp,DWORD PTR [rsp+0xa0]
  3a017c:	4d 8b f1                                        	mov    r14,r9
  3a017f:	4d 8b f8                                        	mov    r15,r8
  3a0182:	48 8b fa                                        	mov    rdi,rdx
  3a0185:	48 8b d9                                        	mov    rbx,rcx
  3a0188:	f7 c5 00 00 00 ff                               	test   ebp,0xff000000
  3a018e:	74 56                                           	je     0x3a01e6
  3a0190:	48 8b b1 98 00 00 00                            	mov    rsi,QWORD PTR [rcx+0x98]
  3a0197:	48 3b d6                                        	cmp    rdx,rsi
  3a019a:	74 05                                           	je     0x3a01a1
  3a019c:	e8 23 72 00 00                                  	call   0x3a73c4
  3a01a1:	ba 06 00 00 00                                  	mov    edx,0x6
  3a01a6:	48 8b cb                                        	mov    rcx,rbx
  3a01a9:	44 8d 42 fe                                     	lea    r8d,[rdx-0x2]
  3a01ad:	e8 ea 6f 00 00                                  	call   0x3a719c
  3a01b2:	48 8b 84 24 98 00 00 00                         	mov    rax,QWORD PTR [rsp+0x98]
  3a01ba:	4d 8b c6                                        	mov    r8,r14
  3a01bd:	4c 8b 8c 24 90 00 00 00                         	mov    r9,QWORD PTR [rsp+0x90]
  3a01c5:	49 8b d7                                        	mov    rdx,r15
  3a01c8:	89 6c 24 28                                     	mov    DWORD PTR [rsp+0x28],ebp
  3a01cc:	48 8b cb                                        	mov    rcx,rbx
  3a01cf:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a01d4:	e8 47 6e 00 00                                  	call   0x3a7020
  3a01d9:	48 3b fe                                        	cmp    rdi,rsi
  3a01dc:	74 08                                           	je     0x3a01e6
  3a01de:	48 8b cb                                        	mov    rcx,rbx
  3a01e1:	e8 9e 6c 00 00                                  	call   0x3a6e84
  3a01e6:	48 83 c4 38                                     	add    rsp,0x38
  3a01ea:	41 5f                                           	pop    r15
  3a01ec:	41 5e                                           	pop    r14
  3a01ee:	5f                                              	pop    rdi
  3a01ef:	5e                                              	pop    rsi
  3a01f0:	5d                                              	pop    rbp
  3a01f1:	5b                                              	pop    rbx
  3a01f2:	c3                                              	ret
