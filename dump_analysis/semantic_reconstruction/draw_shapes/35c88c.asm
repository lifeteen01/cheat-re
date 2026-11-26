
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035c88c <.data+0x35c88c>:
  35c88c:	40 53                                           	rex push rbx
  35c88e:	55                                              	push   rbp
  35c88f:	56                                              	push   rsi
  35c890:	57                                              	push   rdi
  35c891:	48 83 ec 48                                     	sub    rsp,0x48
  35c895:	49 8b f9                                        	mov    rdi,r9
  35c898:	49 8b f0                                        	mov    rsi,r8
  35c89b:	48 8b ea                                        	mov    rbp,rdx
  35c89e:	e8 5d 09 00 00                                  	call   0x35d200
  35c8a3:	8b 8c 24 90 00 00 00                            	mov    ecx,DWORD PTR [rsp+0x90]
  35c8aa:	0f 57 e4                                        	xorps  xmm4,xmm4
  35c8ad:	f3 0f 10 05 2f 0e f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff30e2f]        # 0x28d6e4
  35c8b5:	0f 57 db                                        	xorps  xmm3,xmm3
  35c8b8:	0f 57 d2                                        	xorps  xmm2,xmm2
  35c8bb:	0f 57 c9                                        	xorps  xmm1,xmm1
  35c8be:	48 8b 98 98 02 00 00                            	mov    rbx,QWORD PTR [rax+0x298]
  35c8c5:	8b c1                                           	mov    eax,ecx
  35c8c7:	c1 e8 18                                        	shr    eax,0x18
  35c8ca:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  35c8cf:	8b c1                                           	mov    eax,ecx
  35c8d1:	c1 e8 10                                        	shr    eax,0x10
  35c8d4:	0f b6 c0                                        	movzx  eax,al
  35c8d7:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35c8dc:	8b c1                                           	mov    eax,ecx
  35c8de:	c1 e8 08                                        	shr    eax,0x8
  35c8e1:	0f b6 c0                                        	movzx  eax,al
  35c8e4:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  35c8e8:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35c8ed:	0f b6 c1                                        	movzx  eax,cl
  35c8f0:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c8f5:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35c8fa:	f3 0f 5e d8                                     	divss  xmm3,xmm0
  35c8fe:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  35c902:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  35c906:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35c90c:	e8 3f fa f6 ff                                  	call   0x2cc350
  35c911:	48 8b c8                                        	mov    rcx,rax
  35c914:	e8 47 59 03 00                                  	call   0x392260
  35c919:	4c 8b cf                                        	mov    r9,rdi
  35c91c:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  35c920:	4c 8b c6                                        	mov    r8,rsi
  35c923:	48 8b d5                                        	mov    rdx,rbp
  35c926:	48 8b cb                                        	mov    rcx,rbx
  35c929:	e8 0a 6a 04 00                                  	call   0x3a3338
  35c92e:	48 83 c4 48                                     	add    rsp,0x48
  35c932:	5f                                              	pop    rdi
  35c933:	5e                                              	pop    rsi
  35c934:	5d                                              	pop    rbp
  35c935:	5b                                              	pop    rbx
  35c936:	c3                                              	ret
