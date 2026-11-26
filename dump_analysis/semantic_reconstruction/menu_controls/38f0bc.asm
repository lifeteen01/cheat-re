
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038f0bc <.data+0x38f0bc>:
  38f0bc:	40 53                                           	rex push rbx
  38f0be:	55                                              	push   rbp
  38f0bf:	56                                              	push   rsi
  38f0c0:	57                                              	push   rdi
  38f0c1:	41 56                                           	push   r14
  38f0c3:	48 83 ec 20                                     	sub    rsp,0x20
  38f0c7:	4c 8b 35 5a 6a 07 00                            	mov    r14,QWORD PTR [rip+0x76a5a]        # 0x405b28
  38f0ce:	48 8b e9                                        	mov    rbp,rcx
  38f0d1:	49 81 c6 a8 3e 00 00                            	add    r14,0x3ea8
  38f0d8:	49 8b ce                                        	mov    rcx,r14
  38f0db:	e8 34 f2 00 00                                  	call   0x39e314
  38f0e0:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  38f0e3:	48 3b cd                                        	cmp    rcx,rbp
  38f0e6:	74 6a                                           	je     0x38f152
  38f0e8:	48 39 a9 78 03 00 00                            	cmp    QWORD PTR [rcx+0x378],rbp
  38f0ef:	74 61                                           	je     0x38f152
  38f0f1:	41 8b 1e                                        	mov    ebx,DWORD PTR [r14]
  38f0f4:	8d 73 fe                                        	lea    esi,[rbx-0x2]
  38f0f7:	85 f6                                           	test   esi,esi
  38f0f9:	78 57                                           	js     0x38f152
  38f0fb:	8b d6                                           	mov    edx,esi
  38f0fd:	49 8b ce                                        	mov    rcx,r14
  38f100:	e8 7f ca ff ff                                  	call   0x38bb84
  38f105:	48 39 28                                        	cmp    QWORD PTR [rax],rbp
  38f108:	74 07                                           	je     0x38f111
  38f10a:	83 ee 01                                        	sub    esi,0x1
  38f10d:	79 ec                                           	jns    0x38f0fb
  38f10f:	eb 41                                           	jmp    0x38f152
  38f111:	2b de                                           	sub    ebx,esi
  38f113:	8d 56 01                                        	lea    edx,[rsi+0x1]
  38f116:	ff cb                                           	dec    ebx
  38f118:	49 8b ce                                        	mov    rcx,r14
  38f11b:	48 63 fb                                        	movsxd rdi,ebx
  38f11e:	48 c1 e7 03                                     	shl    rdi,0x3
  38f122:	e8 5d ca ff ff                                  	call   0x38bb84
  38f127:	8b d6                                           	mov    edx,esi
  38f129:	49 8b ce                                        	mov    rcx,r14
  38f12c:	48 8b d8                                        	mov    rbx,rax
  38f12f:	e8 50 ca ff ff                                  	call   0x38bb84
  38f134:	48 8b c8                                        	mov    rcx,rax
  38f137:	4c 8b c7                                        	mov    r8,rdi
  38f13a:	48 8b d3                                        	mov    rdx,rbx
  38f13d:	e8 0a 9c 03 00                                  	call   0x3c8d4c
  38f142:	41 8b 16                                        	mov    edx,DWORD PTR [r14]
  38f145:	49 8b ce                                        	mov    rcx,r14
  38f148:	ff ca                                           	dec    edx
  38f14a:	e8 35 ca ff ff                                  	call   0x38bb84
  38f14f:	48 89 28                                        	mov    QWORD PTR [rax],rbp
  38f152:	48 83 c4 20                                     	add    rsp,0x20
  38f156:	41 5e                                           	pop    r14
  38f158:	5f                                              	pop    rdi
  38f159:	5e                                              	pop    rsi
  38f15a:	5d                                              	pop    rbp
  38f15b:	5b                                              	pop    rbx
  38f15c:	c3                                              	ret
