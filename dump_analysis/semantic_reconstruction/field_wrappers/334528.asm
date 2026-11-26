
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000334528 <.data+0x334528>:
  334528:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  33452d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  334532:	57                                              	push   rdi
  334533:	48 83 ec 30                                     	sub    rsp,0x30
  334537:	8b 05 73 5d 0c 00                               	mov    eax,DWORD PTR [rip+0xc5d73]        # 0x3fa2b0
  33453d:	49 8b d8                                        	mov    rbx,r8
  334540:	48 8b fa                                        	mov    rdi,rdx
  334543:	48 8b f1                                        	mov    rsi,rcx
  334546:	a8 01                                           	test   al,0x1
  334548:	75 20                                           	jne    0x33456a
  33454a:	83 c8 01                                        	or     eax,0x1
  33454d:	89 05 5d 5d 0c 00                               	mov    DWORD PTR [rip+0xc5d5d],eax        # 0x3fa2b0
  334553:	e8 dc f4 ff ff                                  	call   0x333a34
  334558:	4c 8b c0                                        	mov    r8,rax
  33455b:	48 89 05 46 5d 0c 00                            	mov    QWORD PTR [rip+0xc5d46],rax        # 0x3fa2a8
  334562:	8b 05 48 5d 0c 00                               	mov    eax,DWORD PTR [rip+0xc5d48]        # 0x3fa2b0
  334568:	eb 07                                           	jmp    0x334571
  33456a:	4c 8b 05 37 5d 0c 00                            	mov    r8,QWORD PTR [rip+0xc5d37]        # 0x3fa2a8
  334571:	a8 02                                           	test   al,0x2
  334573:	75 1f                                           	jne    0x334594
  334575:	48 8b 0d e4 18 0a 00                            	mov    rcx,QWORD PTR [rip+0xa18e4]        # 0x3d5e60
  33457c:	48 8d 15 3d 5d 0c 00                            	lea    rdx,[rip+0xc5d3d]        # 0x3fa2c0
  334583:	83 c8 02                                        	or     eax,0x2
  334586:	45 33 c9                                        	xor    r9d,r9d
  334589:	89 05 21 5d 0c 00                               	mov    DWORD PTR [rip+0xc5d21],eax        # 0x3fa2b0
  33458f:	e8 90 77 f9 ff                                  	call   0x2cbd24
  334594:	48 8b 0d c5 18 0a 00                            	mov    rcx,QWORD PTR [rip+0xa18c5]        # 0x3d5e60
  33459b:	48 8d 15 1e 5d 0c 00                            	lea    rdx,[rip+0xc5d1e]        # 0x3fa2c0
  3345a2:	4c 8b cf                                        	mov    r9,rdi
  3345a5:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  3345aa:	4c 8b c6                                        	mov    r8,rsi
  3345ad:	e8 9e 74 f9 ff                                  	call   0x2cba50
  3345b2:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3345b7:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  3345bc:	48 83 c4 30                                     	add    rsp,0x30
  3345c0:	5f                                              	pop    rdi
  3345c1:	c3                                              	ret
