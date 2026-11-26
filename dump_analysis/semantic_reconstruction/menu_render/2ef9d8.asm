
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ef9d8 <.data+0x2ef9d8>:
  2ef9d8:	40 53                                           	rex push rbx
  2ef9da:	48 83 ec 20                                     	sub    rsp,0x20
  2ef9de:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  2ef9e3:	48 8b d9                                        	mov    rbx,rcx
  2ef9e6:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  2ef9ea:	f3 41 0f 58 50 04                               	addss  xmm2,DWORD PTR [r8+0x4]
  2ef9f0:	f3 41 0f 58 08                                  	addss  xmm1,DWORD PTR [r8]
  2ef9f5:	e8 46 c9 fd ff                                  	call   0x2cc340
  2ef9fa:	48 8b c3                                        	mov    rax,rbx
  2ef9fd:	48 83 c4 20                                     	add    rsp,0x20
  2efa01:	5b                                              	pop    rbx
  2efa02:	c3                                              	ret
