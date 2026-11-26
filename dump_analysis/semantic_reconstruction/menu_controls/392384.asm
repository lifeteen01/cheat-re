
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392384 <.data+0x392384>:
  392384:	48 8b 15 9d 37 07 00                            	mov    rdx,QWORD PTR [rip+0x7379d]        # 0x405b28
  39238b:	48 8b 82 08 3f 00 00                            	mov    rax,QWORD PTR [rdx+0x3f08]
  392392:	48 83 b8 a8 01 00 00 00                         	cmp    QWORD PTR [rax+0x1a8],0x0
  39239a:	f2 0f 10 80 50 02 00 00                         	movsd  xmm0,QWORD PTR [rax+0x250]
  3923a2:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  3923a6:	75 0a                                           	jne    0x3923b2
  3923a8:	48 83 ba 48 4b 00 00 00                         	cmp    QWORD PTR [rdx+0x4b48],0x0
  3923b0:	74 08                                           	je     0x3923ba
  3923b2:	8b 80 20 02 00 00                               	mov    eax,DWORD PTR [rax+0x220]
  3923b8:	89 01                                           	mov    DWORD PTR [rcx],eax
  3923ba:	48 8b c1                                        	mov    rax,rcx
  3923bd:	c3                                              	ret
