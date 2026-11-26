
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000398bec <.data+0x398bec>:
  398bec:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  398bf1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  398bf6:	57                                              	push   rdi
  398bf7:	48 83 ec 40                                     	sub    rsp,0x40
  398bfb:	48 8b 35 26 cf 06 00                            	mov    rsi,QWORD PTR [rip+0x6cf26]        # 0x405b28
  398c02:	8b fa                                           	mov    edi,edx
  398c04:	48 63 d9                                        	movsxd rbx,ecx
  398c07:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  398c0c:	e8 3f 19 ff ff                                  	call   0x38a550
  398c11:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  398c15:	48 8d 8e 50 48 00 00                            	lea    rcx,[rsi+0x4850]
  398c1c:	48 03 db                                        	add    rbx,rbx
  398c1f:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  398c24:	0f 10 84 de b8 38 00 00                         	movups xmm0,XMMWORD PTR [rsi+rbx*8+0x38b8]
  398c2c:	f3 0f 7f 44 24 24                               	movdqu XMMWORD PTR [rsp+0x24],xmm0
  398c32:	e8 59 63 00 00                                  	call   0x39ef90
  398c37:	8b d7                                           	mov    edx,edi
  398c39:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  398c3e:	e8 dd 7a ff ff                                  	call   0x390720
  398c43:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  398c46:	f3 0f 7f 84 de b8 38 00 00                      	movdqu XMMWORD PTR [rsi+rbx*8+0x38b8],xmm0
  398c4f:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  398c54:	48 8b 74 24 58                                  	mov    rsi,QWORD PTR [rsp+0x58]
  398c59:	48 83 c4 40                                     	add    rsp,0x40
  398c5d:	5f                                              	pop    rdi
  398c5e:	c3                                              	ret
