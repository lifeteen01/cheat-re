
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032b728 <.data+0x32b728>:
  32b728:	40 53                                           	rex push rbx
  32b72a:	48 83 ec 40                                     	sub    rsp,0x40
  32b72e:	48 8b da                                        	mov    rbx,rdx
  32b731:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  32b736:	49 8b d0                                        	mov    rdx,r8
  32b739:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  32b73e:	0f 28 f3                                        	movaps xmm6,xmm3
  32b741:	e8 22 0b fa ff                                  	call   0x2cc268
  32b746:	0f 28 ce                                        	movaps xmm1,xmm6
  32b749:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  32b74e:	e8 a5 24 fb ff                                  	call   0x2ddbf8
  32b753:	0f b7 44 24 5a                                  	movzx  eax,WORD PTR [rsp+0x5a]
  32b758:	48 8b cb                                        	mov    rcx,rbx
  32b75b:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  32b760:	66 89 83 d2 00 00 00                            	mov    WORD PTR [rbx+0xd2],ax
  32b767:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  32b76c:	48 89 43 78                                     	mov    QWORD PTR [rbx+0x78],rax
  32b770:	f3 0f 7f 83 88 00 00 00                         	movdqu XMMWORD PTR [rbx+0x88],xmm0
  32b778:	66 c7 83 d0 00 00 00 00 01                      	mov    WORD PTR [rbx+0xd0],0x100
  32b781:	48 c7 83 80 00 00 00 02 00 00 00                	mov    QWORD PTR [rbx+0x80],0x2
  32b78c:	e8 43 24 0a 00                                  	call   0x3cdbd4
  32b791:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  32b796:	48 83 c4 40                                     	add    rsp,0x40
  32b79a:	5b                                              	pop    rbx
  32b79b:	e9 10 24 0a 00                                  	jmp    0x3cdbb0
