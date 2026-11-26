
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000033480c <.data+0x33480c>:
  33480c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  334811:	57                                              	push   rdi
  334812:	48 83 ec 20                                     	sub    rsp,0x20
  334816:	8b 05 d4 56 0c 00                               	mov    eax,DWORD PTR [rip+0xc56d4]        # 0x3f9ef0
  33481c:	48 8b da                                        	mov    rbx,rdx
  33481f:	48 8b f9                                        	mov    rdi,rcx
  334822:	a8 01                                           	test   al,0x1
  334824:	75 20                                           	jne    0x334846
  334826:	83 c8 01                                        	or     eax,0x1
  334829:	89 05 c1 56 0c 00                               	mov    DWORD PTR [rip+0xc56c1],eax        # 0x3f9ef0
  33482f:	e8 b0 f1 ff ff                                  	call   0x3339e4
  334834:	4c 8b c0                                        	mov    r8,rax
  334837:	48 89 05 aa 56 0c 00                            	mov    QWORD PTR [rip+0xc56aa],rax        # 0x3f9ee8
  33483e:	8b 05 ac 56 0c 00                               	mov    eax,DWORD PTR [rip+0xc56ac]        # 0x3f9ef0
  334844:	eb 07                                           	jmp    0x33484d
  334846:	4c 8b 05 9b 56 0c 00                            	mov    r8,QWORD PTR [rip+0xc569b]        # 0x3f9ee8
  33484d:	a8 02                                           	test   al,0x2
  33484f:	75 1f                                           	jne    0x334870
  334851:	48 8b 0d 08 16 0a 00                            	mov    rcx,QWORD PTR [rip+0xa1608]        # 0x3d5e60
  334858:	48 8d 15 a1 56 0c 00                            	lea    rdx,[rip+0xc56a1]        # 0x3f9f00
  33485f:	83 c8 02                                        	or     eax,0x2
  334862:	45 33 c9                                        	xor    r9d,r9d
  334865:	89 05 85 56 0c 00                               	mov    DWORD PTR [rip+0xc5685],eax        # 0x3f9ef0
  33486b:	e8 b4 74 f9 ff                                  	call   0x2cbd24
  334870:	48 8b 0d e9 15 0a 00                            	mov    rcx,QWORD PTR [rip+0xa15e9]        # 0x3d5e60
  334877:	48 8d 15 82 56 0c 00                            	lea    rdx,[rip+0xc5682]        # 0x3f9f00
  33487e:	4c 8b cb                                        	mov    r9,rbx
  334881:	4c 8b c7                                        	mov    r8,rdi
  334884:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  334889:	48 83 c4 20                                     	add    rsp,0x20
  33488d:	5f                                              	pop    rdi
  33488e:	e9 01 d8 f9 ff                                  	jmp    0x2d2094
