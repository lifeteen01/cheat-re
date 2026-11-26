
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003345c4 <.data+0x3345c4>:
  3345c4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3345c9:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3345ce:	57                                              	push   rdi
  3345cf:	48 83 ec 30                                     	sub    rsp,0x30
  3345d3:	8b 05 c7 5d 0c 00                               	mov    eax,DWORD PTR [rip+0xc5dc7]        # 0x3fa3a0
  3345d9:	41 8b d8                                        	mov    ebx,r8d
  3345dc:	48 8b fa                                        	mov    rdi,rdx
  3345df:	48 8b f1                                        	mov    rsi,rcx
  3345e2:	a8 01                                           	test   al,0x1
  3345e4:	75 20                                           	jne    0x334606
  3345e6:	83 c8 01                                        	or     eax,0x1
  3345e9:	89 05 b1 5d 0c 00                               	mov    DWORD PTR [rip+0xc5db1],eax        # 0x3fa3a0
  3345ef:	e8 48 f4 ff ff                                  	call   0x333a3c
  3345f4:	4c 8b c0                                        	mov    r8,rax
  3345f7:	48 89 05 9a 5d 0c 00                            	mov    QWORD PTR [rip+0xc5d9a],rax        # 0x3fa398
  3345fe:	8b 05 9c 5d 0c 00                               	mov    eax,DWORD PTR [rip+0xc5d9c]        # 0x3fa3a0
  334604:	eb 07                                           	jmp    0x33460d
  334606:	4c 8b 05 8b 5d 0c 00                            	mov    r8,QWORD PTR [rip+0xc5d8b]        # 0x3fa398
  33460d:	a8 02                                           	test   al,0x2
  33460f:	75 1f                                           	jne    0x334630
  334611:	48 8b 0d 48 18 0a 00                            	mov    rcx,QWORD PTR [rip+0xa1848]        # 0x3d5e60
  334618:	48 8d 15 91 5d 0c 00                            	lea    rdx,[rip+0xc5d91]        # 0x3fa3b0
  33461f:	83 c8 02                                        	or     eax,0x2
  334622:	45 33 c9                                        	xor    r9d,r9d
  334625:	89 05 75 5d 0c 00                               	mov    DWORD PTR [rip+0xc5d75],eax        # 0x3fa3a0
  33462b:	e8 f4 76 f9 ff                                  	call   0x2cbd24
  334630:	48 8b 0d 29 18 0a 00                            	mov    rcx,QWORD PTR [rip+0xa1829]        # 0x3d5e60
  334637:	48 8d 15 72 5d 0c 00                            	lea    rdx,[rip+0xc5d72]        # 0x3fa3b0
  33463e:	4c 8b cf                                        	mov    r9,rdi
  334641:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  334645:	4c 8b c6                                        	mov    r8,rsi
  334648:	e8 3f e8 ff ff                                  	call   0x332e8c
  33464d:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  334652:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  334657:	48 83 c4 30                                     	add    rsp,0x30
  33465b:	5f                                              	pop    rdi
  33465c:	c3                                              	ret
