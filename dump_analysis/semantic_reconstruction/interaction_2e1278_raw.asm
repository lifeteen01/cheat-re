
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e1278 <.data+0x2e1278>:
  2e1278:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e127d:	57                                              	push   rdi
  2e127e:	48 83 ec 20                                     	sub    rsp,0x20
  2e1282:	48 8b f9                                        	mov    rdi,rcx
  2e1285:	48 8b da                                        	mov    rbx,rdx
  2e1288:	48 8b ca                                        	mov    rcx,rdx
  2e128b:	e8 2c 69 0e 00                                  	call   0x3c7bbc
  2e1290:	48 8b cf                                        	mov    rcx,rdi
  2e1293:	e8 50 fc ff ff                                  	call   0x2e0ee8
  2e1298:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e129b:	0f 2f c1                                        	comiss xmm0,xmm1
  2e129e:	76 25                                           	jbe    0x2e12c5
  2e12a0:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  2e12a4:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  2e12a8:	f3 0f 11 0b                                     	movss  DWORD PTR [rbx],xmm1
  2e12ac:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  2e12b1:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  2e12b5:	f3 0f 11 53 04                                  	movss  DWORD PTR [rbx+0x4],xmm2
  2e12ba:	f3 0f 10 4f 08                                  	movss  xmm1,DWORD PTR [rdi+0x8]
  2e12bf:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  2e12c3:	eb 07                                           	jmp    0x2e12cc
  2e12c5:	48 c7 03 00 00 00 00                            	mov    QWORD PTR [rbx],0x0
  2e12cc:	f3 0f 11 4b 08                                  	movss  DWORD PTR [rbx+0x8],xmm1
  2e12d1:	48 8b c3                                        	mov    rax,rbx
  2e12d4:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2e12d9:	48 83 c4 20                                     	add    rsp,0x20
  2e12dd:	5f                                              	pop    rdi
  2e12de:	c3                                              	ret
