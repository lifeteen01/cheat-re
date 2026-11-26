
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392ef8 <.data+0x392ef8>:
  392ef8:	48 8b 05 29 2c 07 00                            	mov    rax,QWORD PTR [rip+0x72c29]        # 0x405b28
  392eff:	48 8b 90 08 3f 00 00                            	mov    rdx,QWORD PTR [rax+0x3f08]
  392f06:	48 8b c1                                        	mov    rax,rcx
  392f09:	f2 0f 10 42 20                                  	movsd  xmm0,QWORD PTR [rdx+0x20]
  392f0e:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  392f12:	c3                                              	ret
