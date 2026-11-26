
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df87c <.data+0x2df87c>:
  2df87c:	8b 05 65 e1 fa ff                               	mov    eax,DWORD PTR [rip+0xfffffffffffae165]        # 0x28d9e7
  2df882:	f2 0f 10 05 56 e1 fa ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffffae156]        # 0x28d9e0
  2df88a:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  2df88e:	89 42 07                                        	mov    DWORD PTR [rdx+0x7],eax
  2df891:	48 8b c2                                        	mov    rax,rdx
  2df894:	c3                                              	ret
