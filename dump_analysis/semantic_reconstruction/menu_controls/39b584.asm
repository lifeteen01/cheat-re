
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b584 <.data+0x39b584>:
  39b584:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39b589:	57                                              	push   rdi
  39b58a:	48 83 ec 20                                     	sub    rsp,0x20
  39b58e:	8b da                                           	mov    ebx,edx
  39b590:	41 8b f8                                        	mov    edi,r8d
  39b593:	8b d1                                           	mov    edx,ecx
  39b595:	48 8b 0d 8c a5 06 00                            	mov    rcx,QWORD PTR [rip+0x6a58c]        # 0x405b28
  39b59c:	e8 f7 71 ff ff                                  	call   0x392798
  39b5a1:	8b d7                                           	mov    edx,edi
  39b5a3:	81 e2 80 00 00 00                               	and    edx,0x80
  39b5a9:	0f 95 c1                                        	setne  cl
  39b5ac:	89 58 04                                        	mov    DWORD PTR [rax+0x4],ebx
  39b5af:	83 e7 40                                        	and    edi,0x40
  39b5b2:	88 48 09                                        	mov    BYTE PTR [rax+0x9],cl
  39b5b5:	0b fa                                           	or     edi,edx
  39b5b7:	89 18                                           	mov    DWORD PTR [rax],ebx
  39b5b9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39b5be:	0f 95 c1                                        	setne  cl
  39b5c1:	88 48 08                                        	mov    BYTE PTR [rax+0x8],cl
  39b5c4:	48 83 c4 20                                     	add    rsp,0x20
  39b5c8:	5f                                              	pop    rdi
  39b5c9:	c3                                              	ret
