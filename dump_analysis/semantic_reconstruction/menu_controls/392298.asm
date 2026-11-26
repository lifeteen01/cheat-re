
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392298 <.data+0x392298>:
  392298:	48 83 ec 38                                     	sub    rsp,0x38
  39229c:	48 8b 15 85 38 07 00                            	mov    rdx,QWORD PTR [rip+0x73885]        # 0x405b28
  3922a3:	48 63 c1                                        	movsxd rax,ecx
  3922a6:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3922ab:	48 03 c0                                        	add    rax,rax
  3922ae:	f3 0f 59 8a d0 37 00 00                         	mulss  xmm1,DWORD PTR [rdx+0x37d0]
  3922b6:	f3 0f 6f 84 c2 b8 38 00 00                      	movdqu xmm0,XMMWORD PTR [rdx+rax*8+0x38b8]
  3922bf:	0f 11 44 24 20                                  	movups XMMWORD PTR [rsp+0x20],xmm0
  3922c4:	0f c6 c0 ff                                     	shufps xmm0,xmm0,0xff
  3922c8:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3922cc:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [rsp+0x2c],xmm0
  3922d2:	e8 85 e1 ff ff                                  	call   0x39045c
  3922d7:	48 83 c4 38                                     	add    rsp,0x38
  3922db:	c3                                              	ret
