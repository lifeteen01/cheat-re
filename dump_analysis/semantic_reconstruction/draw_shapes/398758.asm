
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000398758 <.data+0x398758>:
  398758:	40 53                                           	rex push rbx
  39875a:	48 83 ec 30                                     	sub    rsp,0x30
  39875e:	f3 0f 11 5c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm3
  398764:	44 8b ca                                        	mov    r9d,edx
  398767:	48 8b 91 80 00 00 00                            	mov    rdx,QWORD PTR [rcx+0x80]
  39876e:	48 8b d9                                        	mov    rbx,rcx
  398771:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  398776:	44 8b 41 78                                     	mov    r8d,DWORD PTR [rcx+0x78]
  39877a:	e8 15 7b 00 00                                  	call   0x3a0294
  39877f:	c7 43 78 00 00 00 00                            	mov    DWORD PTR [rbx+0x78],0x0
  398786:	48 83 c4 30                                     	add    rsp,0x30
  39878a:	5b                                              	pop    rbx
  39878b:	c3                                              	ret
