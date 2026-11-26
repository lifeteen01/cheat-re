
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035af6c <.data+0x35af6c>:
  35af6c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  35af71:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  35af76:	57                                              	push   rdi
  35af77:	48 83 ec 50                                     	sub    rsp,0x50
  35af7b:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  35af80:	48 8b f2                                        	mov    rsi,rdx
  35af83:	0f 28 f2                                        	movaps xmm6,xmm2
  35af86:	41 8b d9                                        	mov    ebx,r9d
  35af89:	e8 72 22 00 00                                  	call   0x35d200
  35af8e:	f3 0f 10 05 4e 27 f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff3274e]        # 0x28d6e4
  35af96:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35af9b:	0f 57 e4                                        	xorps  xmm4,xmm4
  35af9e:	0f 57 db                                        	xorps  xmm3,xmm3
  35afa1:	0f 57 d2                                        	xorps  xmm2,xmm2
  35afa4:	0f 57 c9                                        	xorps  xmm1,xmm1
  35afa7:	48 8b b8 98 02 00 00                            	mov    rdi,QWORD PTR [rax+0x298]
  35afae:	8b c3                                           	mov    eax,ebx
  35afb0:	c1 e8 18                                        	shr    eax,0x18
  35afb3:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  35afb8:	8b c3                                           	mov    eax,ebx
  35afba:	c1 e8 10                                        	shr    eax,0x10
  35afbd:	0f b6 c0                                        	movzx  eax,al
  35afc0:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35afc5:	8b c3                                           	mov    eax,ebx
  35afc7:	c1 e8 08                                        	shr    eax,0x8
  35afca:	0f b6 c0                                        	movzx  eax,al
  35afcd:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  35afd1:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35afd6:	0f b6 c3                                        	movzx  eax,bl
  35afd9:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35afde:	f3 0f 5e d8                                     	divss  xmm3,xmm0
  35afe2:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  35afe6:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  35afea:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35aff0:	e8 5b 13 f7 ff                                  	call   0x2cc350
  35aff5:	48 8b c8                                        	mov    rcx,rax
  35aff8:	e8 63 72 03 00                                  	call   0x392260
  35affd:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x80]
  35b006:	44 8b c8                                        	mov    r9d,eax
  35b009:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  35b00f:	0f 28 d6                                        	movaps xmm2,xmm6
  35b012:	48 8b d6                                        	mov    rdx,rsi
  35b015:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  35b01d:	48 8b cf                                        	mov    rcx,rdi
  35b020:	e8 87 47 04 00                                  	call   0x39f7ac
  35b025:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  35b02a:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  35b02f:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  35b034:	48 83 c4 50                                     	add    rsp,0x50
  35b038:	5f                                              	pop    rdi
  35b039:	c3                                              	ret
