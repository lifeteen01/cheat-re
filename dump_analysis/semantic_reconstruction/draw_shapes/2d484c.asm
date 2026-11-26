
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d484c <.data+0x2d484c>:
  2d484c:	40 53                                           	rex push rbx
  2d484e:	48 83 ec 30                                     	sub    rsp,0x30
  2d4852:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [rsp+0x60]
  2d4858:	48 8b d9                                        	mov    rbx,rcx
  2d485b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  2d4861:	e8 ea 7a ff ff                                  	call   0x2cc350
  2d4866:	48 8b c3                                        	mov    rax,rbx
  2d4869:	48 83 c4 30                                     	add    rsp,0x30
  2d486d:	5b                                              	pop    rbx
  2d486e:	c3                                              	ret
