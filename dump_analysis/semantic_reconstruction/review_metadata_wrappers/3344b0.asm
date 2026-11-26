
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003344b0 <.data+0x3344b0>:
  3344b0:	40 53                                           	rex push rbx
  3344b2:	48 83 ec 20                                     	sub    rsp,0x20
  3344b6:	8b 05 44 59 0c 00                               	mov    eax,DWORD PTR [rip+0xc5944]        # 0x3f9e00
  3344bc:	48 8b d9                                        	mov    rbx,rcx
  3344bf:	a8 01                                           	test   al,0x1
  3344c1:	75 20                                           	jne    0x3344e3
  3344c3:	83 c8 01                                        	or     eax,0x1
  3344c6:	89 05 34 59 0c 00                               	mov    DWORD PTR [rip+0xc5934],eax        # 0x3f9e00
  3344cc:	e8 3b f5 ff ff                                  	call   0x333a0c
  3344d1:	4c 8b c0                                        	mov    r8,rax
  3344d4:	48 89 05 1d 59 0c 00                            	mov    QWORD PTR [rip+0xc591d],rax        # 0x3f9df8
  3344db:	8b 05 1f 59 0c 00                               	mov    eax,DWORD PTR [rip+0xc591f]        # 0x3f9e00
  3344e1:	eb 07                                           	jmp    0x3344ea
  3344e3:	4c 8b 05 0e 59 0c 00                            	mov    r8,QWORD PTR [rip+0xc590e]        # 0x3f9df8
  3344ea:	a8 02                                           	test   al,0x2
  3344ec:	75 1f                                           	jne    0x33450d
  3344ee:	48 8b 0d 6b 19 0a 00                            	mov    rcx,QWORD PTR [rip+0xa196b]        # 0x3d5e60
  3344f5:	48 8d 15 14 59 0c 00                            	lea    rdx,[rip+0xc5914]        # 0x3f9e10
  3344fc:	83 c8 02                                        	or     eax,0x2
  3344ff:	45 33 c9                                        	xor    r9d,r9d
  334502:	89 05 f8 58 0c 00                               	mov    DWORD PTR [rip+0xc58f8],eax        # 0x3f9e00
  334508:	e8 17 78 f9 ff                                  	call   0x2cbd24
  33450d:	48 8b 0d 4c 19 0a 00                            	mov    rcx,QWORD PTR [rip+0xa194c]        # 0x3d5e60
  334514:	48 8d 15 f5 58 0c 00                            	lea    rdx,[rip+0xc58f5]        # 0x3f9e10
  33451b:	4c 8b c3                                        	mov    r8,rbx
  33451e:	48 83 c4 20                                     	add    rsp,0x20
  334522:	5b                                              	pop    rbx
  334523:	e9 d4 74 f9 ff                                  	jmp    0x2cb9fc
