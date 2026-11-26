
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000334660 <.data+0x334660>:
  334660:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  334665:	57                                              	push   rdi
  334666:	48 83 ec 20                                     	sub    rsp,0x20
  33466a:	8b 05 e0 52 0c 00                               	mov    eax,DWORD PTR [rip+0xc52e0]        # 0x3f9950
  334670:	48 8b da                                        	mov    rbx,rdx
  334673:	48 8b f9                                        	mov    rdi,rcx
  334676:	a8 01                                           	test   al,0x1
  334678:	75 20                                           	jne    0x33469a
  33467a:	83 c8 01                                        	or     eax,0x1
  33467d:	89 05 cd 52 0c 00                               	mov    DWORD PTR [rip+0xc52cd],eax        # 0x3f9950
  334683:	e8 a4 f3 ff ff                                  	call   0x333a2c
  334688:	4c 8b c0                                        	mov    r8,rax
  33468b:	48 89 05 b6 52 0c 00                            	mov    QWORD PTR [rip+0xc52b6],rax        # 0x3f9948
  334692:	8b 05 b8 52 0c 00                               	mov    eax,DWORD PTR [rip+0xc52b8]        # 0x3f9950
  334698:	eb 07                                           	jmp    0x3346a1
  33469a:	4c 8b 05 a7 52 0c 00                            	mov    r8,QWORD PTR [rip+0xc52a7]        # 0x3f9948
  3346a1:	a8 02                                           	test   al,0x2
  3346a3:	75 1f                                           	jne    0x3346c4
  3346a5:	48 8b 0d b4 17 0a 00                            	mov    rcx,QWORD PTR [rip+0xa17b4]        # 0x3d5e60
  3346ac:	48 8d 15 ad 52 0c 00                            	lea    rdx,[rip+0xc52ad]        # 0x3f9960
  3346b3:	83 c8 02                                        	or     eax,0x2
  3346b6:	45 33 c9                                        	xor    r9d,r9d
  3346b9:	89 05 91 52 0c 00                               	mov    DWORD PTR [rip+0xc5291],eax        # 0x3f9950
  3346bf:	e8 60 76 f9 ff                                  	call   0x2cbd24
  3346c4:	48 8b 0d 95 17 0a 00                            	mov    rcx,QWORD PTR [rip+0xa1795]        # 0x3d5e60
  3346cb:	48 8d 15 8e 52 0c 00                            	lea    rdx,[rip+0xc528e]        # 0x3f9960
  3346d2:	4c 8b cb                                        	mov    r9,rbx
  3346d5:	4c 8b c7                                        	mov    r8,rdi
  3346d8:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3346dd:	48 83 c4 20                                     	add    rsp,0x20
  3346e1:	5f                                              	pop    rdi
  3346e2:	e9 ad d9 f9 ff                                  	jmp    0x2d2094
