
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002de97c <.data+0x2de97c>:
  2de97c:	40 53                                           	rex push rbx
  2de97e:	48 83 ec 20                                     	sub    rsp,0x20
  2de982:	0f 28 ca                                        	movaps xmm1,xmm2
  2de985:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  2de98a:	48 8b da                                        	mov    rbx,rdx
  2de98d:	e8 66 f2 ff ff                                  	call   0x2ddbf8
  2de992:	48 8b 44 24 48                                  	mov    rax,QWORD PTR [rsp+0x48]
  2de997:	48 8b cb                                        	mov    rcx,rbx
  2de99a:	48 89 83 88 00 00 00                            	mov    QWORD PTR [rbx+0x88],rax
  2de9a1:	c6 44 24 38 01                                  	mov    BYTE PTR [rsp+0x38],0x1
  2de9a6:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2de9aa:	89 83 d0 00 00 00                               	mov    DWORD PTR [rbx+0xd0],eax
  2de9b0:	48 8d 44 24 28                                  	lea    rax,[rsp+0x28]
  2de9b5:	48 89 43 78                                     	mov    QWORD PTR [rbx+0x78],rax
  2de9b9:	48 c7 83 80 00 00 00 01 00 00 00                	mov    QWORD PTR [rbx+0x80],0x1
  2de9c4:	e8 0b f2 0e 00                                  	call   0x3cdbd4
  2de9c9:	48 83 c4 20                                     	add    rsp,0x20
  2de9cd:	5b                                              	pop    rbx
  2de9ce:	e9 dd f1 0e 00                                  	jmp    0x3cdbb0
