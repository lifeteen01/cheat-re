
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b5824 <.data+0x3b5824>:
  3b5824:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3b5829:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3b582e:	57                                              	push   rdi
  3b582f:	48 83 ec 20                                     	sub    rsp,0x20
  3b5833:	48 8b 05 ee 02 05 00                            	mov    rax,QWORD PTR [rip+0x502ee]        # 0x405b28
  3b583a:	48 8b b0 48 4b 00 00                            	mov    rsi,QWORD PTR [rax+0x4b48]
  3b5841:	48 8b b8 08 3f 00 00                            	mov    rdi,QWORD PTR [rax+0x3f08]
  3b5848:	8b 56 74                                        	mov    edx,DWORD PTR [rsi+0x74]
  3b584b:	48 8d 4e 18                                     	lea    rcx,[rsi+0x18]
  3b584f:	e8 34 f7 ff ff                                  	call   0x3b4f88
  3b5854:	48 8d 96 68 01 00 00                            	lea    rdx,[rsi+0x168]
  3b585b:	48 8b cf                                        	mov    rcx,rdi
  3b585e:	48 8b d8                                        	mov    rbx,rax
  3b5861:	e8 d6 fd ff ff                                  	call   0x3b563c
  3b5866:	44 0f b7 43 5c                                  	movzx  r8d,WORD PTR [rbx+0x5c]
  3b586b:	48 8b 97 98 02 00 00                            	mov    rdx,QWORD PTR [rdi+0x298]
  3b5872:	48 8b 8e 98 01 00 00                            	mov    rcx,QWORD PTR [rsi+0x198]
  3b5879:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3b587e:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3b5883:	48 83 c4 20                                     	add    rsp,0x20
  3b5887:	5f                                              	pop    rdi
  3b5888:	e9 07 28 ff ff                                  	jmp    0x3a8094
