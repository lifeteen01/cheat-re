
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b5890 <.data+0x3b5890>:
  3b5890:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3b5895:	57                                              	push   rdi
  3b5896:	48 83 ec 20                                     	sub    rsp,0x20
  3b589a:	48 8b 05 87 02 05 00                            	mov    rax,QWORD PTR [rip+0x50287]        # 0x405b28
  3b58a1:	48 8b 98 08 3f 00 00                            	mov    rbx,QWORD PTR [rax+0x3f08]
  3b58a8:	48 8b b8 48 4b 00 00                            	mov    rdi,QWORD PTR [rax+0x4b48]
  3b58af:	48 8b cb                                        	mov    rcx,rbx
  3b58b2:	0f 10 83 38 02 00 00                            	movups xmm0,XMMWORD PTR [rbx+0x238]
  3b58b9:	48 8d 97 48 01 00 00                            	lea    rdx,[rdi+0x148]
  3b58c0:	f3 0f 7f 87 68 01 00 00                         	movdqu XMMWORD PTR [rdi+0x168],xmm0
  3b58c8:	e8 6f fd ff ff                                  	call   0x3b563c
  3b58cd:	44 0f b7 87 1e 02 00 00                         	movzx  r8d,WORD PTR [rdi+0x21e]
  3b58d5:	48 8b 93 98 02 00 00                            	mov    rdx,QWORD PTR [rbx+0x298]
  3b58dc:	48 8b 8f 98 01 00 00                            	mov    rcx,QWORD PTR [rdi+0x198]
  3b58e3:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3b58e8:	48 83 c4 20                                     	add    rsp,0x20
  3b58ec:	5f                                              	pop    rdi
  3b58ed:	e9 a2 27 ff ff                                  	jmp    0x3a8094
