
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac254 <.data+0x3ac254>:
  3ac254:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3ac259:	57                                              	push   rdi
  3ac25a:	48 83 ec 30                                     	sub    rsp,0x30
  3ac25e:	41 8b f8                                        	mov    edi,r8d
  3ac261:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  3ac266:	4c 8b 44 24 60                                  	mov    r8,QWORD PTR [rsp+0x60]
  3ac26b:	48 8b da                                        	mov    rbx,rdx
  3ac26e:	ba 20 00 00 00                                  	mov    edx,0x20
  3ac273:	0f 28 f3                                        	movaps xmm6,xmm3
  3ac276:	e8 81 fe ff ff                                  	call   0x3ac0fc
  3ac27b:	48 8b c8                                        	mov    rcx,rax
  3ac27e:	48 85 c0                                        	test   rax,rax
  3ac281:	0f 84 80 00 00 00                               	je     0x3ac307
  3ac287:	f3 0f 10 43 0c                                  	movss  xmm0,DWORD PTR [rbx+0xc]
  3ac28c:	f3 0f 5c 43 04                                  	subss  xmm0,DWORD PTR [rbx+0x4]
  3ac291:	f3 0f 10 4b 08                                  	movss  xmm1,DWORD PTR [rbx+0x8]
  3ac296:	f3 0f 5c 0b                                     	subss  xmm1,DWORD PTR [rbx]
  3ac29a:	f3 0f 10 15 b2 0f ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffee0fb2]        # 0x28d254
  3ac2a2:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3ac2a6:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ac2a9:	0f 2e c8                                        	ucomiss xmm1,xmm0
  3ac2ac:	f3 0f 11 48 0c                                  	movss  DWORD PTR [rax+0xc],xmm1
  3ac2b1:	7a 02                                           	jp     0x3ac2b5
  3ac2b3:	74 07                                           	je     0x3ac2bc
  3ac2b5:	0f 28 c2                                        	movaps xmm0,xmm2
  3ac2b8:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  3ac2bc:	f3 0f 11 40 10                                  	movss  DWORD PTR [rax+0x10],xmm0
  3ac2c1:	f3 0f 5c 73 04                                  	subss  xmm6,DWORD PTR [rbx+0x4]
  3ac2c6:	66 0f 6e c7                                     	movd   xmm0,edi
  3ac2ca:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ac2cd:	f3 0f 59 f1                                     	mulss  xmm6,xmm1
  3ac2d1:	f3 0f 58 33                                     	addss  xmm6,DWORD PTR [rbx]
  3ac2d5:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3ac2d9:	f3 0f 11 70 08                                  	movss  DWORD PTR [rax+0x8],xmm6
  3ac2de:	83 7b 10 00                                     	cmp    DWORD PTR [rbx+0x10],0x0
  3ac2e2:	75 08                                           	jne    0x3ac2ec
  3ac2e4:	f3 0f 10 15 74 6f ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffee6f74]        # 0x293260
  3ac2ec:	f3 0f 11 50 14                                  	movss  DWORD PTR [rax+0x14],xmm2
  3ac2f1:	8b 43 04                                        	mov    eax,DWORD PTR [rbx+0x4]
  3ac2f4:	89 41 18                                        	mov    DWORD PTR [rcx+0x18],eax
  3ac2f7:	8b 43 0c                                        	mov    eax,DWORD PTR [rbx+0xc]
  3ac2fa:	89 41 1c                                        	mov    DWORD PTR [rcx+0x1c],eax
  3ac2fd:	48 8b c1                                        	mov    rax,rcx
  3ac300:	48 c7 01 00 00 00 00                            	mov    QWORD PTR [rcx],0x0
  3ac307:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3ac30c:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  3ac311:	48 83 c4 30                                     	add    rsp,0x30
  3ac315:	5f                                              	pop    rdi
  3ac316:	c3                                              	ret
