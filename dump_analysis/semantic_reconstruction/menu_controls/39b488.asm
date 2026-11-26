
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b488 <.data+0x39b488>:
  39b488:	40 53                                           	rex push rbx
  39b48a:	55                                              	push   rbp
  39b48b:	56                                              	push   rsi
  39b48c:	57                                              	push   rdi
  39b48d:	48 83 ec 38                                     	sub    rsp,0x38
  39b491:	48 8b 1d 90 a6 06 00                            	mov    rbx,QWORD PTR [rip+0x6a690]        # 0x405b28
  39b498:	48 8b fa                                        	mov    rdi,rdx
  39b49b:	8b f1                                           	mov    esi,ecx
  39b49d:	48 39 93 e8 48 00 00                            	cmp    QWORD PTR [rbx+0x48e8],rdx
  39b4a4:	74 08                                           	je     0x39b4ae
  39b4a6:	48 8b ca                                        	mov    rcx,rdx
  39b4a9:	e8 2a 02 00 00                                  	call   0x39b6d8
  39b4ae:	4c 63 87 58 01 00 00                            	movsxd r8,DWORD PTR [rdi+0x158]
  39b4b5:	8b 83 84 47 00 00                               	mov    eax,DWORD PTR [rbx+0x4784]
  39b4bb:	49 8b e8                                        	mov    rbp,r8
  39b4be:	89 b3 f0 48 00 00                               	mov    DWORD PTR [rbx+0x48f0],esi
  39b4c4:	44 89 83 20 49 00 00                            	mov    DWORD PTR [rbx+0x4920],r8d
  39b4cb:	89 83 f4 48 00 00                               	mov    DWORD PTR [rbx+0x48f4],eax
  39b4d1:	42 89 b4 87 a0 03 00 00                         	mov    DWORD PTR [rdi+r8*4+0x3a0],esi
  39b4d9:	39 b3 a4 47 00 00                               	cmp    DWORD PTR [rbx+0x47a4],esi
  39b4df:	75 23                                           	jne    0x39b504
  39b4e1:	4c 8d 83 c0 47 00 00                            	lea    r8,[rbx+0x47c0]
  39b4e8:	48 8b d7                                        	mov    rdx,rdi
  39b4eb:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39b4f0:	e8 eb 2c 00 00                                  	call   0x39e1e0
  39b4f5:	48 03 ed                                        	add    rbp,rbp
  39b4f8:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  39b4fb:	f3 0f 7f 84 ef a8 03 00 00                      	movdqu XMMWORD PTR [rdi+rbp*8+0x3a8],xmm0
  39b504:	8b 83 90 3f 00 00                               	mov    eax,DWORD PTR [rbx+0x3f90]
  39b50a:	83 e8 02                                        	sub    eax,0x2
  39b50d:	83 f8 01                                        	cmp    eax,0x1
  39b510:	76 09                                           	jbe    0x39b51b
  39b512:	c6 83 26 49 00 00 01                            	mov    BYTE PTR [rbx+0x4926],0x1
  39b519:	eb 07                                           	jmp    0x39b522
  39b51b:	c6 83 27 49 00 00 01                            	mov    BYTE PTR [rbx+0x4927],0x1
  39b522:	48 83 c4 38                                     	add    rsp,0x38
  39b526:	5f                                              	pop    rdi
  39b527:	5e                                              	pop    rsi
  39b528:	5d                                              	pop    rbp
  39b529:	5b                                              	pop    rbx
  39b52a:	c3                                              	ret
