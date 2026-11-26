
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038bc2c <.data+0x38bc2c>:
  38bc2c:	40 53                                           	rex push rbx
  38bc2e:	48 83 ec 20                                     	sub    rsp,0x20
  38bc32:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  38bc37:	48 8b d9                                        	mov    rbx,rcx
  38bc3a:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  38bc3e:	f3 41 0f 5e 50 04                               	divss  xmm2,DWORD PTR [r8+0x4]
  38bc44:	f3 41 0f 5e 08                                  	divss  xmm1,DWORD PTR [r8]
  38bc49:	e8 f2 06 f4 ff                                  	call   0x2cc340
  38bc4e:	48 8b c3                                        	mov    rax,rbx
  38bc51:	48 83 c4 20                                     	add    rsp,0x20
  38bc55:	5b                                              	pop    rbx
  38bc56:	c3                                              	ret
