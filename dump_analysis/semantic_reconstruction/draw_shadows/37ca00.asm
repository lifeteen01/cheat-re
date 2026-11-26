
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ca00 <.data+0x37ca00>:
  37ca00:	40 53                                           	rex push rbx
  37ca02:	48 83 ec 20                                     	sub    rsp,0x20
  37ca06:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  37ca0a:	0f 28 c2                                        	movaps xmm0,xmm2
  37ca0d:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  37ca12:	48 8b d9                                        	mov    rbx,rcx
  37ca15:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  37ca19:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  37ca1d:	e8 1e f9 f4 ff                                  	call   0x2cc340
  37ca22:	48 8b c3                                        	mov    rax,rbx
  37ca25:	48 83 c4 20                                     	add    rsp,0x20
  37ca29:	5b                                              	pop    rbx
  37ca2a:	c3                                              	ret
