
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cba50 <.data+0x2cba50>:
  2cba50:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2cba55:	57                                              	push   rdi
  2cba56:	48 83 ec 40                                     	sub    rsp,0x40
  2cba5a:	48 8b fa                                        	mov    rdi,rdx
  2cba5d:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2cba62:	49 8b d0                                        	mov    rdx,r8
  2cba65:	49 8b d9                                        	mov    rbx,r9
  2cba68:	e8 fb 07 00 00                                  	call   0x2cc268
  2cba6d:	48 8b d3                                        	mov    rdx,rbx
  2cba70:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  2cba75:	e8 ee 07 00 00                                  	call   0x2cc268
  2cba7a:	48 8b 54 24 70                                  	mov    rdx,QWORD PTR [rsp+0x70]
  2cba7f:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2cba84:	e8 df 07 00 00                                  	call   0x2cc268
  2cba89:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  2cba8e:	33 c0                                           	xor    eax,eax
  2cba90:	48 8b cf                                        	mov    rcx,rdi
  2cba93:	f2 0f 10 4c 24 30                               	movsd  xmm1,QWORD PTR [rsp+0x30]
  2cba99:	66 89 87 d0 00 00 00                            	mov    WORD PTR [rdi+0xd0],ax
  2cbaa0:	88 87 d2 00 00 00                               	mov    BYTE PTR [rdi+0xd2],al
  2cbaa6:	8a 44 24 5b                                     	mov    al,BYTE PTR [rsp+0x5b]
  2cbaaa:	88 87 d3 00 00 00                               	mov    BYTE PTR [rdi+0xd3],al
  2cbab0:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  2cbab5:	0f 11 87 88 00 00 00                            	movups XMMWORD PTR [rdi+0x88],xmm0
  2cbabc:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  2cbac0:	f2 0f 11 8f 98 00 00 00                         	movsd  QWORD PTR [rdi+0x98],xmm1
  2cbac8:	48 c7 87 80 00 00 00 03 00 00 00                	mov    QWORD PTR [rdi+0x80],0x3
  2cbad3:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  2cbad8:	48 83 c4 40                                     	add    rsp,0x40
  2cbadc:	5f                                              	pop    rdi
  2cbadd:	e9 f2 20 10 00                                  	jmp    0x3cdbd4
