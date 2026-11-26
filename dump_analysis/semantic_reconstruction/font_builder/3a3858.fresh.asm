
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3858 <.data+0x3a3858>:
  3a3858:	40 53                                           	rex push rbx
  3a385a:	48 83 ec 20                                     	sub    rsp,0x20
  3a385e:	48 8b d9                                        	mov    rbx,rcx
  3a3861:	e8 26 11 00 00                                  	call   0x3a498c
  3a3866:	03 43 04                                        	add    eax,DWORD PTR [rbx+0x4]
  3a3869:	03 03                                           	add    eax,DWORD PTR [rbx]
  3a386b:	48 83 c4 20                                     	add    rsp,0x20
  3a386f:	5b                                              	pop    rbx
  3a3870:	c3                                              	ret
