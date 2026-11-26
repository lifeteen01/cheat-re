
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ccd14 <.data+0x2ccd14>:
  2ccd14:	48 8b c4                                        	mov    rax,rsp
  2ccd17:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  2ccd1b:	55                                              	push   rbp
  2ccd1c:	56                                              	push   rsi
  2ccd1d:	57                                              	push   rdi
  2ccd1e:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  2ccd22:	48 81 ec b0 00 00 00                            	sub    rsp,0xb0
  2ccd29:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  2ccd2d:	48 8b fa                                        	mov    rdi,rdx
  2ccd30:	48 8b f1                                        	mov    rsi,rcx
  2ccd33:	e8 34 fe ff ff                                  	call   0x2ccb6c
  2ccd38:	84 c0                                           	test   al,al
  2ccd3a:	0f 84 1f 01 00 00                               	je     0x2cce5f
  2ccd40:	48 8d 55 7f                                     	lea    rdx,[rbp+0x7f]
  2ccd44:	48 8d 4d 77                                     	lea    rcx,[rbp+0x77]
  2ccd48:	e8 b3 f9 ff ff                                  	call   0x2cc700
  2ccd4d:	48 8b c8                                        	mov    rcx,rax
  2ccd50:	e8 77 0f 00 00                                  	call   0x2cdccc
  2ccd55:	48 8d 55 b7                                     	lea    rdx,[rbp-0x49]
  2ccd59:	48 8b d8                                        	mov    rbx,rax
  2ccd5c:	48 8d 4d 77                                     	lea    rcx,[rbp+0x77]
  2ccd60:	e8 07 f9 ff ff                                  	call   0x2cc66c
  2ccd65:	48 8b c8                                        	mov    rcx,rax
  2ccd68:	e8 27 10 00 00                                  	call   0x2cdd94
  2ccd6d:	48 8b d0                                        	mov    rdx,rax
  2ccd70:	48 8d 4d 17                                     	lea    rcx,[rbp+0x17]
  2ccd74:	e8 53 f5 ff ff                                  	call   0x2cc2cc
  2ccd79:	48 8b d0                                        	mov    rdx,rax
  2ccd7c:	48 8d 4d f7                                     	lea    rcx,[rbp-0x9]
  2ccd80:	4c 8b c6                                        	mov    r8,rsi
  2ccd83:	e8 b0 df ff ff                                  	call   0x2cad38
  2ccd88:	48 8b d0                                        	mov    rdx,rax
  2ccd8b:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2ccd8f:	4c 8b c3                                        	mov    r8,rbx
  2ccd92:	e8 a1 df ff ff                                  	call   0x2cad38
  2ccd97:	48 8d 4d f7                                     	lea    rcx,[rbp-0x9]
  2ccd9b:	e8 54 f7 ff ff                                  	call   0x2cc4f4
  2ccda0:	48 8d 4d 17                                     	lea    rcx,[rbp+0x17]
  2ccda4:	e8 4b f7 ff ff                                  	call   0x2cc4f4
  2ccda9:	48 8d 55 b7                                     	lea    rdx,[rbp-0x49]
  2ccdad:	48 8d 4d 77                                     	lea    rcx,[rbp+0x77]
  2ccdb1:	e8 f2 f9 ff ff                                  	call   0x2cc7a8
  2ccdb6:	48 8b c8                                        	mov    rcx,rax
  2ccdb9:	e8 76 10 00 00                                  	call   0x2cde34
  2ccdbe:	48 8d 55 ca                                     	lea    rdx,[rbp-0x36]
  2ccdc2:	48 8b d8                                        	mov    rbx,rax
  2ccdc5:	48 8d 4d 77                                     	lea    rcx,[rbp+0x77]
  2ccdc9:	e8 86 f9 ff ff                                  	call   0x2cc754
  2ccdce:	48 8b c8                                        	mov    rcx,rax
  2ccdd1:	e8 6e 0f 00 00                                  	call   0x2cdd44
  2ccdd6:	48 8b c8                                        	mov    rcx,rax
  2ccdd9:	48 8b d3                                        	mov    rdx,rbx
  2ccddc:	e8 fb fd ff ff                                  	call   0x2ccbdc
  2ccde1:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2ccde5:	48 8b d8                                        	mov    rbx,rax
  2ccde8:	e8 ff 09 00 00                                  	call   0x2cd7ec
  2ccded:	48 8b 0d 74 93 10 00                            	mov    rcx,QWORD PTR [rip+0x109374]        # 0x3d6168
  2ccdf4:	48 8b d0                                        	mov    rdx,rax
  2ccdf7:	4c 8b c3                                        	mov    r8,rbx
  2ccdfa:	e8 29 e1 ff ff                                  	call   0x2caf28
  2ccdff:	48 8b f0                                        	mov    rsi,rax
  2cce02:	48 85 c0                                        	test   rax,rax
  2cce05:	74 4b                                           	je     0x2cce52
  2cce07:	48 8b c8                                        	mov    rcx,rax
  2cce0a:	e8 fd fd ff ff                                  	call   0x2ccc0c
  2cce0f:	84 c0                                           	test   al,al
  2cce11:	74 3f                                           	je     0x2cce52
  2cce13:	48 8b ce                                        	mov    rcx,rsi
  2cce16:	e8 6d e0 ff ff                                  	call   0x2cae88
  2cce1b:	48 8b ce                                        	mov    rcx,rsi
  2cce1e:	66 0f 6e f0                                     	movd   xmm6,eax
  2cce22:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  2cce25:	e8 de df ff ff                                  	call   0x2cae08
  2cce2a:	0f 57 c9                                        	xorps  xmm1,xmm1
  2cce2d:	0f 2f ce                                        	comiss xmm1,xmm6
  2cce30:	73 20                                           	jae    0x2cce52
  2cce32:	66 0f 6e c0                                     	movd   xmm0,eax
  2cce36:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  2cce39:	0f 2f c8                                        	comiss xmm1,xmm0
  2cce3c:	73 14                                           	jae    0x2cce52
  2cce3e:	b3 01                                           	mov    bl,0x1
  2cce40:	f3 0f 11 77 10                                  	movss  DWORD PTR [rdi+0x10],xmm6
  2cce45:	88 1f                                           	mov    BYTE PTR [rdi],bl
  2cce47:	f3 0f 11 47 14                                  	movss  DWORD PTR [rdi+0x14],xmm0
  2cce4c:	48 89 77 08                                     	mov    QWORD PTR [rdi+0x8],rsi
  2cce50:	eb 02                                           	jmp    0x2cce54
  2cce52:	32 db                                           	xor    bl,bl
  2cce54:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2cce58:	e8 97 f6 ff ff                                  	call   0x2cc4f4
  2cce5d:	8a c3                                           	mov    al,bl
  2cce5f:	4c 8d 9c 24 b0 00 00 00                         	lea    r11,[rsp+0xb0]
  2cce67:	49 8b 5b 20                                     	mov    rbx,QWORD PTR [r11+0x20]
  2cce6b:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  2cce70:	49 8b e3                                        	mov    rsp,r11
  2cce73:	5f                                              	pop    rdi
  2cce74:	5e                                              	pop    rsi
  2cce75:	5d                                              	pop    rbp
  2cce76:	c3                                              	ret
