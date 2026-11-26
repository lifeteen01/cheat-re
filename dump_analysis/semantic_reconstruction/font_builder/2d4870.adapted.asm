
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d4870 <.data+0x2d4870>:
  2d4870:	48 c7 01 00 00 00 00                            	mov    QWORD PTR [rcx],0x0
  2d4877:	48 8b c1                                        	mov    rax,rcx
  2d487a:	c3                                              	ret
  2d487b:	cc                                              	int3
  2d487c:	40 53                                           	rex push rbx
  2d487e:	48 83 ec 20                                     	sub    rsp,0x20
  2d4882:	f2 0f 10 02                                     	movsd  xmm0,QWORD PTR [rdx]
  2d4886:	48 8b d9                                        	mov    rbx,rcx
  2d4889:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  2d488d:	8b 42 08                                        	mov    eax,DWORD PTR [rdx+0x8]
  2d4890:	89 41 08                                        	mov    DWORD PTR [rcx+0x8],eax
  2d4893:	8b 42 0c                                        	mov    eax,DWORD PTR [rdx+0xc]
  2d4896:	89 41 0c                                        	mov    DWORD PTR [rcx+0xc],eax
  2d4899:	8b 42 10                                        	mov    eax,DWORD PTR [rdx+0x10]
  2d489c:	48 83 c2 18                                     	add    rdx,0x18
  2d48a0:	89 41 10                                        	mov    DWORD PTR [rcx+0x10],eax
  2d48a3:	48 83 c1 18                                     	add    rcx,0x18
  2d48a7:	e8 d8 79 ff ff                                  	call   0x2cc284
  2d48ac:	48 8b c3                                        	mov    rax,rbx
  2d48af:	48                                        	add    rsp,0x20
