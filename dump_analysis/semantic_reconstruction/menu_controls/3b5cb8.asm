
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b5cb8 <.data+0x3b5cb8>:
  3b5cb8:	48 8b c4                                        	mov    rax,rsp
  3b5cbb:	48 81 ec 98 00 00 00                            	sub    rsp,0x98
  3b5cc2:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3b5cc6:	0f 28 f2                                        	movaps xmm6,xmm2
  3b5cc9:	e8 d6 a3 00 00                                  	call   0x3c00a4
  3b5cce:	80 38 25                                        	cmp    BYTE PTR [rax],0x25
  3b5cd1:	75 58                                           	jne    0x3b5d2b
  3b5cd3:	80 78 01 25                                     	cmp    BYTE PTR [rax+0x1],0x25
  3b5cd7:	74 52                                           	je     0x3b5d2b
  3b5cd9:	41 b8 20 00 00 00                               	mov    r8d,0x20
  3b5cdf:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3b5ce4:	48 8b c8                                        	mov    rcx,rax
  3b5ce7:	e8 64 a4 00 00                                  	call   0x3c0150
  3b5cec:	0f 57 db                                        	xorps  xmm3,xmm3
  3b5cef:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  3b5cf4:	f3 0f 5a de                                     	cvtss2sd xmm3,xmm6
  3b5cf8:	ba 40 00 00 00                                  	mov    edx,0x40
  3b5cfd:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3b5d02:	66 49 0f 7e d9                                  	movq   r9,xmm3
  3b5d07:	e8 04 d4 fd ff                                  	call   0x393110
  3b5d0c:	80 7c 24 40 20                                  	cmp    BYTE PTR [rsp+0x40],0x20
  3b5d11:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3b5d16:	75 08                                           	jne    0x3b5d20
  3b5d18:	48 ff c1                                        	inc    rcx
  3b5d1b:	80 39 20                                        	cmp    BYTE PTR [rcx],0x20
  3b5d1e:	74 f8                                           	je     0x3b5d18
  3b5d20:	e8 cb 2a 01 00                                  	call   0x3c87f0
  3b5d25:	f2 0f 5a c0                                     	cvtsd2ss xmm0,xmm0
  3b5d29:	eb 03                                           	jmp    0x3b5d2e
  3b5d2b:	0f 28 c6                                        	movaps xmm0,xmm6
  3b5d2e:	0f 28 b4 24 80 00 00 00                         	movaps xmm6,XMMWORD PTR [rsp+0x80]
  3b5d36:	48 81 c4 98 00 00 00                            	add    rsp,0x98
  3b5d3d:	c3                                              	ret
