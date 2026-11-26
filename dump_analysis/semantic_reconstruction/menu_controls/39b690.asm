
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b690 <.data+0x39b690>:
  39b690:	4c 8b 15 91 a4 06 00                            	mov    r10,QWORD PTR [rip+0x6a491]        # 0x405b28
  39b697:	49 8b 82 e8 48 00 00                            	mov    rax,QWORD PTR [r10+0x48e8]
  39b69e:	45 89 82 f4 48 00 00                            	mov    DWORD PTR [r10+0x48f4],r8d
  39b6a5:	41 89 8a f0 48 00 00                            	mov    DWORD PTR [r10+0x48f0],ecx
  39b6ac:	41 89 92 20 49 00 00                            	mov    DWORD PTR [r10+0x4920],edx
  39b6b3:	4c 63 c2                                        	movsxd r8,edx
  39b6b6:	42 89 8c 80 a0 03 00 00                         	mov    DWORD PTR [rax+r8*4+0x3a0],ecx
  39b6be:	4d 03 c0                                        	add    r8,r8
  39b6c1:	49 8b 82 e8 48 00 00                            	mov    rax,QWORD PTR [r10+0x48e8]
  39b6c8:	41 0f 10 01                                     	movups xmm0,XMMWORD PTR [r9]
  39b6cc:	f3 42 0f 7f 84 c0 a8 03 00 00                   	movdqu XMMWORD PTR [rax+r8*8+0x3a8],xmm0
  39b6d6:	c3                                              	ret
