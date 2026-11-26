
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bc08 <.data+0x38bc08>:
  38bc08:	40 53                                           	rex push rbx
  38bc0a:	48 83 ec 20                                     	sub    rsp,0x20
  38bc0e:	0f 28 ca                                        	movaps xmm1,xmm2
  38bc11:	48 8b d9                                        	mov    rbx,rcx
  38bc14:	f3 0f 59 0a                                     	mulss  xmm1,DWORD PTR [rdx]
  38bc18:	f3 0f 59 52 04                                  	mulss  xmm2,DWORD PTR [rdx+0x4]
  38bc1d:	e8 1e 07 f4 ff                                  	call   0x2cc340
  38bc22:	48 8b c3                                        	mov    rax,rbx
  38bc25:	48 83 c4 20                                     	add    rsp,0x20
  38bc29:	5b                                              	pop    rbx
  38bc2a:	c3                                              	ret
