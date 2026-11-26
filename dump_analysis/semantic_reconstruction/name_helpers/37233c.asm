
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037233c <.data+0x37233c>:
  37233c:	8b 05 fa 68 f3 ff                               	mov    eax,DWORD PTR [rip+0xfffffffffff368fa]        # 0x2a8c3c
  372342:	89 02                                           	mov    DWORD PTR [rdx],eax
  372344:	0f b7 05 f5 68 f3 ff                            	movzx  eax,WORD PTR [rip+0xfffffffffff368f5]        # 0x2a8c40
  37234b:	66 89 42 04                                     	mov    WORD PTR [rdx+0x4],ax
  37234f:	48 8b c2                                        	mov    rax,rdx
  372352:	c3                                              	ret
