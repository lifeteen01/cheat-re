
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df578 <.data+0x2df578>:
  2df578:	40 53                                           	rex push rbx
  2df57a:	48 83 ec 20                                     	sub    rsp,0x20
  2df57e:	8b 02                                           	mov    eax,DWORD PTR [rdx]
  2df580:	48 8b d9                                        	mov    rbx,rcx
  2df583:	89 01                                           	mov    DWORD PTR [rcx],eax
  2df585:	8b 42 04                                        	mov    eax,DWORD PTR [rdx+0x4]
  2df588:	89 41 04                                        	mov    DWORD PTR [rcx+0x4],eax
  2df58b:	8b 42 08                                        	mov    eax,DWORD PTR [rdx+0x8]
  2df58e:	89 41 08                                        	mov    DWORD PTR [rcx+0x8],eax
  2df591:	8b 42 0c                                        	mov    eax,DWORD PTR [rdx+0xc]
  2df594:	48 83 c2 10                                     	add    rdx,0x10
  2df598:	89 41 0c                                        	mov    DWORD PTR [rcx+0xc],eax
  2df59b:	48 83 c1 10                                     	add    rcx,0x10
  2df59f:	e8 50 ff ff ff                                  	call   0x2df4f4
  2df5a4:	48 8b c3                                        	mov    rax,rbx
  2df5a7:	48 83 c4 20                                     	add    rsp,0x20
  2df5ab:	5b                                              	pop    rbx
  2df5ac:	c3                                              	ret
