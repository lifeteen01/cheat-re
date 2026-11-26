
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392f14 <.data+0x392f14>:
  392f14:	40 53                                           	rex push rbx
  392f16:	48 83 ec 20                                     	sub    rsp,0x20
  392f1a:	48 8b d9                                        	mov    rbx,rcx
  392f1d:	e8 a6 f4 ff ff                                  	call   0x3923c8
  392f22:	f2 0f 10 40 28                                  	movsd  xmm0,QWORD PTR [rax+0x28]
  392f27:	48 8b c3                                        	mov    rax,rbx
  392f2a:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  392f2e:	48 83 c4 20                                     	add    rsp,0x20
  392f32:	5b                                              	pop    rbx
  392f33:	c3                                              	ret
