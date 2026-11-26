
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395258 <.data+0x395258>:
  395258:	40 53                                           	rex push rbx
  39525a:	48 83 ec 30                                     	sub    rsp,0x30
  39525e:	4c 8b 05 c3 08 07 00                            	mov    r8,QWORD PTR [rip+0x708c3]        # 0x405b28
  395265:	48 8b d9                                        	mov    rbx,rcx
  395268:	49 8b 90 08 3f 00 00                            	mov    rdx,QWORD PTR [r8+0x3f08]
  39526f:	48 89 11                                        	mov    QWORD PTR [rcx],rdx
  395272:	41 8b 80 a4 47 00 00                            	mov    eax,DWORD PTR [r8+0x47a4]
  395279:	89 41 08                                        	mov    DWORD PTR [rcx+0x8],eax
  39527c:	41 8b 80 84 47 00 00                            	mov    eax,DWORD PTR [r8+0x4784]
  395283:	89 41 0c                                        	mov    DWORD PTR [rcx+0xc],eax
  395286:	41 8b 80 a8 47 00 00                            	mov    eax,DWORD PTR [r8+0x47a8]
  39528d:	49 81 c0 c0 47 00 00                            	add    r8,0x47c0
  395294:	89 41 20                                        	mov    DWORD PTR [rcx+0x20],eax
  395297:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39529c:	e8 3f 8f 00 00                                  	call   0x39e1e0
  3952a1:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3952a4:	f3 0f 7f 43 10                                  	movdqu XMMWORD PTR [rbx+0x10],xmm0
  3952a9:	48 83 c4 30                                     	add    rsp,0x30
  3952ad:	5b                                              	pop    rbx
  3952ae:	c3                                              	ret
