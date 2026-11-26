
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9540 <.data+0x3a9540>:
  3a9540:	44 8b 41 14                                     	mov    r8d,DWORD PTR [rcx+0x14]
  3a9544:	44 3b 42 14                                     	cmp    r8d,DWORD PTR [rdx+0x14]
  3a9548:	7d 04                                           	jge    0x3a954e
  3a954a:	83 c8 ff                                        	or     eax,0xffffffff
  3a954d:	c3                                              	ret
  3a954e:	33 c0                                           	xor    eax,eax
  3a9550:	44 3b 42 14                                     	cmp    r8d,DWORD PTR [rdx+0x14]
  3a9554:	0f 9f c0                                        	setg   al
  3a9557:	c3                                              	ret
  3a9558:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a955d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a9562:	57                                              	push   rdi
  3a9563:	48 83 ec 20                                     	sub    rsp,0x20
  3a9567:	48 63 fa                                        	movsxd rdi,edx
  3a956a:	48 8b d9                                        	mov    rbx,rcx
  3a956d:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  3a9570:	7e 3a                                           	jle    0x3a95ac
  3a9572:	48 69 cf 10 01 00 00                            	imul   rcx,rdi,0x110
  3a9579:	e8 da bb fe ff                                  	call   0x395158
  3a957e:	48 8b                                       	mov    rdx,QWORD PTR [rbx+0x8]
