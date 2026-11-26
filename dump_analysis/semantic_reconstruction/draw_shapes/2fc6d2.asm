
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002fc6d2 <.data+0x2fc6d2>:
  2fc6d2:	48 8d 0d 7f fd 0e 00                            	lea    rcx,[rip+0xefd7f]        # 0x3ec458
  2fc6d9:	e8 2e 31 ff ff                                  	call   0x2ef80c
  2fc6de:	f3 0f 10 95 f4 02 00 00                         	movss  xmm2,DWORD PTR [rbp+0x2f4]
  2fc6e6:	48 8d 8d 98 0b 00 00                            	lea    rcx,[rbp+0xb98]
  2fc6ed:	f3 0f 10 8d f0 02 00 00                         	movss  xmm1,DWORD PTR [rbp+0x2f0]
  2fc6f5:	8b d8                                           	mov    ebx,eax
  2fc6f7:	e8 44 fc fc ff                                  	call   0x2cc340
  2fc6fc:	44 8b cb                                        	mov    r9d,ebx
  2fc6ff:	f3 44 0f 11 5c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm11
  2fc706:	48 8b 9d d0 29 00 00                            	mov    rbx,QWORD PTR [rbp+0x29d0]
  2fc70d:	48 8b d0                                        	mov    rdx,rax
  2fc710:	48 8b cb                                        	mov    rcx,rbx
  2fc713:	c6 44 24 20 00                                  	mov    BYTE PTR [rsp+0x20],0x0
  2fc718:	0f 28 d6                                        	movaps xmm2,xmm6
  2fc71b:	e8 58 fe 05 00                                  	call   0x35c578
