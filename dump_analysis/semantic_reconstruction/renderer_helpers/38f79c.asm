
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038f79c <.data+0x38f79c>:
  38f79c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  38f7a1:	48 89 74 24 18                                  	mov    QWORD PTR [rsp+0x18],rsi
  38f7a6:	57                                              	push   rdi
  38f7a7:	48 83 ec 40                                     	sub    rsp,0x40
  38f7ab:	48 8b 35 76 63 07 00                            	mov    rsi,QWORD PTR [rip+0x76376]        # 0x405b28
  38f7b2:	49 8b c0                                        	mov    rax,r8
  38f7b5:	48 8b fa                                        	mov    rdi,rdx
  38f7b8:	48 8b d9                                        	mov    rbx,rcx
  38f7bb:	45 84 c9                                        	test   r9b,r9b
  38f7be:	74 0b                                           	je     0x38f7cb
  38f7c0:	48 8b d0                                        	mov    rdx,rax
  38f7c3:	48 8b cf                                        	mov    rcx,rdi
  38f7c6:	e8 85 24 00 00                                  	call   0x391c50
  38f7cb:	f3 0f 10 96 30 3c 00 00                         	movss  xmm2,DWORD PTR [rsi+0x3c30]
  38f7d3:	48 3b f8                                        	cmp    rdi,rax
  38f7d6:	75 0d                                           	jne    0x38f7e5
  38f7d8:	0f 57 c9                                        	xorps  xmm1,xmm1
  38f7db:	48 8b cb                                        	mov    rcx,rbx
  38f7de:	e8 5d cb f3 ff                                  	call   0x2cc340
  38f7e3:	eb 61                                           	jmp    0x38f846
  38f7e5:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [rsp+0x70]
  38f7eb:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  38f7f0:	f3 0f 10 1d 5c e3 ef ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffefe35c]        # 0x28db54
  38f7f8:	48 8b 8e 28 3c 00 00                            	mov    rcx,QWORD PTR [rsi+0x3c28]
  38f7ff:	48 c7 44 24 38 00 00 00 00                      	mov    QWORD PTR [rsp+0x38],0x0
  38f808:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  38f80d:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  38f812:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  38f818:	e8 57 40 01 00                                  	call   0x3a3874
  38f81d:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [rsp+0x58]
  38f823:	f3 0f 58 05 21 a9 f1 ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffff1a921]        # 0x2aa14c
  38f82b:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  38f82f:	66 0f 6e c0                                     	movd   xmm0,eax
  38f833:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  38f836:	f3 0f 11 44 24 58                               	movss  DWORD PTR [rsp+0x58],xmm0
  38f83c:	f2 0f 10 4c 24 58                               	movsd  xmm1,QWORD PTR [rsp+0x58]
  38f842:	f2 0f 11 0b                                     	movsd  QWORD PTR [rbx],xmm1
  38f846:	48 8b 74 24 60                                  	mov    rsi,QWORD PTR [rsp+0x60]
  38f84b:	48 8b c3                                        	mov    rax,rbx
  38f84e:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  38f853:	48 83 c4 40                                     	add    rsp,0x40
  38f857:	5f                                              	pop    rdi
  38f858:	c3                                              	ret
