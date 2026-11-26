
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000398c60 <.data+0x398c60>:
  398c60:	40 53                                           	rex push rbx
  398c62:	55                                              	push   rbp
  398c63:	56                                              	push   rsi
  398c64:	57                                              	push   rdi
  398c65:	48 83 ec 38                                     	sub    rsp,0x38
  398c69:	48 8b ea                                        	mov    rbp,rdx
  398c6c:	8b f1                                           	mov    esi,ecx
  398c6e:	e8 41 a0 ff ff                                  	call   0x392cb4
  398c73:	83 38 08                                        	cmp    DWORD PTR [rax],0x8
  398c76:	75 46                                           	jne    0x398cbe
  398c78:	83 78 04 02                                     	cmp    DWORD PTR [rax+0x4],0x2
  398c7c:	75 40                                           	jne    0x398cbe
  398c7e:	48 8b 3d a3 ce 06 00                            	mov    rdi,QWORD PTR [rip+0x6cea3]        # 0x405b28
  398c85:	48 8b c8                                        	mov    rcx,rax
  398c88:	48 8d 97 d0 37 00 00                            	lea    rdx,[rdi+0x37d0]
  398c8f:	e8 30 a1 ff ff                                  	call   0x392dc4
  398c94:	8b d6                                           	mov    edx,esi
  398c96:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  398c9b:	48 8b d8                                        	mov    rbx,rax
  398c9e:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  398ca1:	e8 3a 29 ff ff                                  	call   0x38b5e0
  398ca6:	48 8b d0                                        	mov    rdx,rax
  398ca9:	48 8d 8f 60 48 00 00                            	lea    rcx,[rdi+0x4860]
  398cb0:	e8 c3 63 00 00                                  	call   0x39f078
  398cb5:	f2 0f 10 45 00                                  	movsd  xmm0,QWORD PTR [rbp+0x0]
  398cba:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  398cbe:	48 83 c4 38                                     	add    rsp,0x38
  398cc2:	5f                                              	pop    rdi
  398cc3:	5e                                              	pop    rsi
  398cc4:	5d                                              	pop    rbp
  398cc5:	5b                                              	pop    rbx
  398cc6:	c3                                              	ret
