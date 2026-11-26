
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000383044 <.data+0x383044>:
  383044:	40 53                                           	rex push rbx
  383046:	48 83 ec 20                                     	sub    rsp,0x20
  38304a:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  38304f:	48 8b d9                                        	mov    rbx,rcx
  383052:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  383056:	f3 41 0f 5f 50 04                               	maxss  xmm2,DWORD PTR [r8+0x4]
  38305c:	f3 41 0f 5f 08                                  	maxss  xmm1,DWORD PTR [r8]
  383061:	e8 da 92 f4 ff                                  	call   0x2cc340
  383066:	48 8b c3                                        	mov    rax,rbx
  383069:	48 83 c4 20                                     	add    rsp,0x20
  38306d:	5b                                              	pop    rbx
  38306e:	c3                                              	ret
