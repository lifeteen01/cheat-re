
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003925cc <.data+0x3925cc>:
  3925cc:	48 8b 05 55 35 07 00                            	mov    rax,QWORD PTR [rip+0x73555]        # 0x405b28
  3925d3:	f3 0f 10 80 10 38 00 00                         	movss  xmm0,DWORD PTR [rax+0x3810]
  3925db:	f3 0f 58 c0                                     	addss  xmm0,xmm0
  3925df:	f3 0f 58 80 30 3c 00 00                         	addss  xmm0,DWORD PTR [rax+0x3c30]
  3925e7:	c3                                              	ret
