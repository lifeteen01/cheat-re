
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394784 <.data+0x394784>:
  394784:	48 83 ec 28                                     	sub    rsp,0x28
  394788:	48 8b 05 99 13 07 00                            	mov    rax,QWORD PTR [rip+0x71399]        # 0x405b28
  39478f:	44 8b c2                                        	mov    r8d,edx
  394792:	48 8b 90 e8 48 00 00                            	mov    rdx,QWORD PTR [rax+0x48e8]
  394799:	48 85 d2                                        	test   rdx,rdx
  39479c:	74 45                                           	je     0x3947e3
  39479e:	48 8b 92 78 03 00 00                            	mov    rdx,QWORD PTR [rdx+0x378]
  3947a5:	48 85 d2                                        	test   rdx,rdx
  3947a8:	74 39                                           	je     0x3947e3
  3947aa:	80 ba b7 00 00 00 00                            	cmp    BYTE PTR [rdx+0xb7],0x0
  3947b1:	74 30                                           	je     0x3947e3
  3947b3:	48 8b 89 78 03 00 00                            	mov    rcx,QWORD PTR [rcx+0x378]
  3947ba:	48 3b d1                                        	cmp    rdx,rcx
  3947bd:	74 24                                           	je     0x3947e3
  3947bf:	f7 42 14 00 00 00 08                            	test   DWORD PTR [rdx+0x14],0x8000000
  3947c6:	75 0f                                           	jne    0x3947d7
  3947c8:	f7 42 14 00 00 00 04                            	test   DWORD PTR [rdx+0x14],0x4000000
  3947cf:	74 12                                           	je     0x3947e3
  3947d1:	41 f6 c0 20                                     	test   r8b,0x20
  3947d5:	75 0c                                           	jne    0x3947e3
  3947d7:	e8 e0 00 00 00                                  	call   0x3948bc
  3947dc:	84 c0                                           	test   al,al
  3947de:	0f 95 c0                                        	setne  al
  3947e1:	eb 02                                           	jmp    0x3947e5
  3947e3:	b0 01                                           	mov    al,0x1
  3947e5:	48 83 c4 28                                     	add    rsp,0x28
  3947e9:	c3                                              	ret
