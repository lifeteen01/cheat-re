
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032bd4c <.data+0x32bd4c>:
  32bd4c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  32bd51:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  32bd56:	57                                              	push   rdi
  32bd57:	48 83 ec 40                                     	sub    rsp,0x40
  32bd5b:	8b 15 6f be 0c 00                               	mov    edx,DWORD PTR [rip+0xcbe6f]        # 0x3f7bd0
  32bd61:	41 8a f9                                        	mov    dil,r9b
  32bd64:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  32bd69:	49 8b f0                                        	mov    rsi,r8
  32bd6c:	0f 28 f1                                        	movaps xmm6,xmm1
  32bd6f:	48 8b d9                                        	mov    rbx,rcx
  32bd72:	f6 c2 01                                        	test   dl,0x1
  32bd75:	75 20                                           	jne    0x32bd97
  32bd77:	4c 8b 05 82 b1 0a 00                            	mov    r8,QWORD PTR [rip+0xab182]        # 0x3d6f00
  32bd7e:	83 ca 01                                        	or     edx,0x1
  32bd81:	49 81 c0 b0 86 65 03                            	add    r8,0x36586b0
  32bd88:	89 15 42 be 0c 00                               	mov    DWORD PTR [rip+0xcbe42],edx        # 0x3f7bd0
  32bd8e:	4c 89 05 33 be 0c 00                            	mov    QWORD PTR [rip+0xcbe33],r8        # 0x3f7bc8
  32bd95:	eb 07                                           	jmp    0x32bd9e
  32bd97:	4c 8b 05 2a be 0c 00                            	mov    r8,QWORD PTR [rip+0xcbe2a]        # 0x3f7bc8
  32bd9e:	f6 c2 02                                        	test   dl,0x2
  32bda1:	75 1f                                           	jne    0x32bdc2
  32bda3:	48 8b 0d b6 a0 0a 00                            	mov    rcx,QWORD PTR [rip+0xaa0b6]        # 0x3d5e60
  32bdaa:	83 ca 02                                        	or     edx,0x2
  32bdad:	89 15 1d be 0c 00                               	mov    DWORD PTR [rip+0xcbe1d],edx        # 0x3f7bd0
  32bdb3:	45 33 c9                                        	xor    r9d,r9d
  32bdb6:	48 8d 15 23 be 0c 00                            	lea    rdx,[rip+0xcbe23]        # 0x3f7be0
  32bdbd:	e8 62 ff f9 ff                                  	call   0x2cbd24
  32bdc2:	48 8b cb                                        	mov    rcx,rbx
  32bdc5:	e8 f2 bd 09 00                                  	call   0x3c7bbc
  32bdca:	48 8b 0d 8f a0 0a 00                            	mov    rcx,QWORD PTR [rip+0xaa08f]        # 0x3d5e60
  32bdd1:	48 8d 15 08 be 0c 00                            	lea    rdx,[rip+0xcbe08]        # 0x3f7be0
  32bdd8:	0f 28 de                                        	movaps xmm3,xmm6
  32bddb:	40 88 7c 24 28                                  	mov    BYTE PTR [rsp+0x28],dil
  32bde0:	4c 8b c3                                        	mov    r8,rbx
  32bde3:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  32bde8:	e8 b3 f9 ff ff                                  	call   0x32b7a0
  32bded:	48 8b 74 24 58                                  	mov    rsi,QWORD PTR [rsp+0x58]
  32bdf2:	48 8b c3                                        	mov    rax,rbx
  32bdf5:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  32bdfa:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  32bdff:	48 83 c4 40                                     	add    rsp,0x40
  32be03:	5f                                              	pop    rdi
  32be04:	c3                                              	ret
