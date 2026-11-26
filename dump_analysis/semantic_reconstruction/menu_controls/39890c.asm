
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039890c <.data+0x39890c>:
  39890c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  398911:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  398916:	57                                              	push   rdi
  398917:	48 83 ec 20                                     	sub    rsp,0x20
  39891b:	48 8b 35 06 d2 06 00                            	mov    rsi,QWORD PTR [rip+0x6d206]        # 0x405b28
  398922:	8b d9                                           	mov    ebx,ecx
  398924:	48 8d be 50 48 00 00                            	lea    rdi,[rsi+0x4850]
  39892b:	39 0f                                           	cmp    DWORD PTR [rdi],ecx
  39892d:	0f 4c 1f                                        	cmovl  ebx,DWORD PTR [rdi]
  398930:	eb 25                                           	jmp    0x398957
  398932:	48 8b cf                                        	mov    rcx,rdi
  398935:	e8 fa 59 00 00                                  	call   0x39e334
  39893a:	48 63 08                                        	movsxd rcx,DWORD PTR [rax]
  39893d:	0f 10 40 04                                     	movups xmm0,XMMWORD PTR [rax+0x4]
  398941:	48 03 c9                                        	add    rcx,rcx
  398944:	f3 0f 7f 84 ce b8 38 00 00                      	movdqu XMMWORD PTR [rsi+rcx*8+0x38b8],xmm0
  39894d:	48 8b cf                                        	mov    rcx,rdi
  398950:	e8 4b 65 00 00                                  	call   0x39eea0
  398955:	ff cb                                           	dec    ebx
  398957:	85 db                                           	test   ebx,ebx
  398959:	7f d7                                           	jg     0x398932
  39895b:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  398960:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  398965:	48 83 c4 20                                     	add    rsp,0x20
  398969:	5f                                              	pop    rdi
  39896a:	c3                                              	ret
