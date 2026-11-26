
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c04d0 <.data+0x3c04d0>:
  3c04d0:	85 c9                                           	test   ecx,ecx
  3c04d2:	74 61                                           	je     0x3c0535
  3c04d4:	53                                              	push   rbx
  3c04d5:	48 83 ec 20                                     	sub    rsp,0x20
  3c04d9:	48 8b 1d 48 56 04 00                            	mov    rbx,QWORD PTR [rip+0x45648]        # 0x405b28
  3c04e0:	8b 83 20 4c 00 00                               	mov    eax,DWORD PTR [rbx+0x4c20]
  3c04e6:	3b c1                                           	cmp    eax,ecx
  3c04e8:	75 46                                           	jne    0x3c0530
  3c04ea:	89 83 a8 5a 00 00                               	mov    DWORD PTR [rbx+0x5aa8],eax
  3c04f0:	48 8d 8b b0 5a 00 00                            	lea    rcx,[rbx+0x5ab0]
  3c04f7:	8b 93 28 4c 00 00                               	mov    edx,DWORD PTR [rbx+0x4c28]
  3c04fd:	ff c2                                           	inc    edx
  3c04ff:	e8 d0 a7 fb ff                                  	call   0x37acd4
  3c0504:	48 8b 83 48 4c 00 00                            	mov    rax,QWORD PTR [rbx+0x4c48]
  3c050b:	48 8d 15 16 ce ec ff                            	lea    rdx,[rip+0xffffffffffecce16]        # 0x28d328
  3c0512:	48 8b 8b b8 5a 00 00                            	mov    rcx,QWORD PTR [rbx+0x5ab8]
  3c0519:	48 85 c0                                        	test   rax,rax
  3c051c:	48 0f 45 d0                                     	cmovne rdx,rax
  3c0520:	8b 83 28 4c 00 00                               	mov    eax,DWORD PTR [rbx+0x4c28]
  3c0526:	ff c0                                           	inc    eax
  3c0528:	4c 63 c0                                        	movsxd r8,eax
  3c052b:	e8 1c 88 00 00                                  	call   0x3c8d4c
  3c0530:	48 83 c4 20                                     	add    rsp,0x20
  3c0534:	5b                                              	pop    rbx
  3c0535:	c3                                              	ret
