
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392260 <.data+0x392260>:
  392260:	48 83 ec 38                                     	sub    rsp,0x38
  392264:	f3 0f 6f 01                                     	movdqu xmm0,XMMWORD PTR [rcx]
  392268:	48 8b 05 b9 38 07 00                            	mov    rax,QWORD PTR [rip+0x738b9]        # 0x405b28
  39226f:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  392274:	0f 11 44 24 20                                  	movups XMMWORD PTR [rsp+0x20],xmm0
  392279:	0f c6 c0 ff                                     	shufps xmm0,xmm0,0xff
  39227d:	f3 0f 59 80 d0 37 00 00                         	mulss  xmm0,DWORD PTR [rax+0x37d0]
  392285:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [rsp+0x2c],xmm0
  39228b:	e8 cc e1 ff ff                                  	call   0x39045c
  392290:	48 83 c4 38                                     	add    rsp,0x38
  392294:	c3                                              	ret
