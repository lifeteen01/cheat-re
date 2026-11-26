
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f294 <.data+0x39f294>:
  39f294:	40 53                                           	rex push rbx
  39f296:	48 83 ec 20                                     	sub    rsp,0x20
  39f29a:	48 8b d9                                        	mov    rbx,rcx
  39f29d:	e8 fe c0 f3 ff                                  	call   0x2db3a0
  39f2a2:	0f 57 c0                                        	xorps  xmm0,xmm0
  39f2a5:	33 c0                                           	xor    eax,eax
  39f2a7:	0f 11 03                                        	movups XMMWORD PTR [rbx],xmm0
  39f2aa:	0f 11 43 10                                     	movups XMMWORD PTR [rbx+0x10],xmm0
  39f2ae:	0f 11 43 20                                     	movups XMMWORD PTR [rbx+0x20],xmm0
  39f2b2:	48 89 43 30                                     	mov    QWORD PTR [rbx+0x30],rax
  39f2b6:	48 8b c3                                        	mov    rax,rbx
  39f2b9:	48 83 c4 20                                     	add    rsp,0x20
  39f2bd:	5b                                              	pop    rbx
  39f2be:	c3                                              	ret
