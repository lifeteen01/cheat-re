
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a6b38 <.data+0x3a6b38>:
  3a6b38:	48 83 ec 38                                     	sub    rsp,0x38
  3a6b3c:	f3 0f 10 05 0c 67 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee670c]        # 0x28d250
  3a6b44:	0f 2f c2                                        	comiss xmm0,xmm2
  3a6b47:	76 0d                                           	jbe    0x3a6b56
  3a6b49:	48 83 c1 78                                     	add    rcx,0x78
  3a6b4d:	48 83 c4 38                                     	add    rsp,0x38
  3a6b51:	e9 02 3b fd ff                                  	jmp    0x37a658
  3a6b56:	8b 44 24 60                                     	mov    eax,DWORD PTR [rsp+0x60]
  3a6b5a:	c1 e0 02                                        	shl    eax,0x2
  3a6b5d:	41 c1 e1 02                                     	shl    r9d,0x2
  3a6b61:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3a6b69:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3a6b6d:	e8 7a 23 00 00                                  	call   0x3a8eec
  3a6b72:	48 83 c4 38                                     	add    rsp,0x38
  3a6b76:	c3                                              	ret
