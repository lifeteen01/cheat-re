
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cca48 <.data+0x2cca48>:
  2cca48:	48 8b c4                                        	mov    rax,rsp
  2cca4b:	53                                              	push   rbx
  2cca4c:	55                                              	push   rbp
  2cca4d:	56                                              	push   rsi
  2cca4e:	57                                              	push   rdi
  2cca4f:	41 56                                           	push   r14
  2cca51:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  2cca58:	0f 2f 15 ed 07 fc ff                            	comiss xmm2,DWORD PTR [rip+0xfffffffffffc07ed]        # 0x28d24c
  2cca5f:	48 8b da                                        	mov    rbx,rdx
  2cca62:	4c 8b f1                                        	mov    r14,rcx
  2cca65:	f3 0f 10 05 e3 07 fc ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffffc07e3]        # 0x28d250
  2cca6d:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  2cca71:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  2cca75:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  2cca7a:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  2cca7f:	44 0f 28 ca                                     	movaps xmm9,xmm2
  2cca83:	76 06                                           	jbe    0x2cca8b
  2cca85:	44 0f 28 c2                                     	movaps xmm8,xmm2
  2cca89:	eb 0c                                           	jmp    0x2cca97
  2cca8b:	f3 44 0f 10 41 10                               	movss  xmm8,DWORD PTR [rcx+0x10]
  2cca91:	f3 44 0f 10 49 14                               	movss  xmm9,DWORD PTR [rcx+0x14]
  2cca97:	f3 44 0f 59 c0                                  	mulss  xmm8,xmm0
  2cca9c:	f3 44 0f 59 c8                                  	mulss  xmm9,xmm0
  2ccaa1:	e8 f2 56 0c 00                                  	call   0x392198
  2ccaa6:	f3 0f 10 0d a6 07 fc ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffc07a6]        # 0x28d254
  2ccaae:	48 8d 8c 24 c0 00 00 00                         	lea    rcx,[rsp+0xc0]
  2ccab6:	f3 0f 10 73 04                                  	movss  xmm6,DWORD PTR [rbx+0x4]
  2ccabb:	0f 28 d1                                        	movaps xmm2,xmm1
  2ccabe:	f3 0f 10 3b                                     	movss  xmm7,DWORD PTR [rbx]
  2ccac2:	48 8b e8                                        	mov    rbp,rax
  2ccac5:	e8 76 f8 ff ff                                  	call   0x2cc340
  2ccaca:	0f 57 d2                                        	xorps  xmm2,xmm2
  2ccacd:	48 8d 8c 24 c8 00 00 00                         	lea    rcx,[rsp+0xc8]
  2ccad5:	0f 57 c9                                        	xorps  xmm1,xmm1
  2ccad8:	48 8b f0                                        	mov    rsi,rax
  2ccadb:	e8 60 f8 ff ff                                  	call   0x2cc340
  2ccae0:	41 0f 28 d1                                     	movaps xmm2,xmm9
  2ccae4:	48 8d 8c 24 d8 00 00 00                         	lea    rcx,[rsp+0xd8]
  2ccaec:	41 0f 28 c8                                     	movaps xmm1,xmm8
  2ccaf0:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  2ccaf4:	f3 0f 58 cf                                     	addss  xmm1,xmm7
  2ccaf8:	48 8b f8                                        	mov    rdi,rax
  2ccafb:	e8 40 f8 ff ff                                  	call   0x2cc340
  2ccb00:	f3 41 0f 5c f1                                  	subss  xmm6,xmm9
  2ccb05:	48 8b d8                                        	mov    rbx,rax
  2ccb08:	f3 41 0f 5c f8                                  	subss  xmm7,xmm8
  2ccb0d:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2ccb12:	0f 28 d6                                        	movaps xmm2,xmm6
  2ccb15:	0f 28 cf                                        	movaps xmm1,xmm7
  2ccb18:	e8 23 f8 ff ff                                  	call   0x2cc340
  2ccb1d:	49 8b 56 08                                     	mov    rdx,QWORD PTR [r14+0x8]
  2ccb21:	4c 8b c0                                        	mov    r8,rax
  2ccb24:	c7 44 24 30 ff ff ff ff                         	mov    DWORD PTR [rsp+0x30],0xffffffff
  2ccb2c:	4c 8b cb                                        	mov    r9,rbx
  2ccb2f:	48 89 74 24 28                                  	mov    QWORD PTR [rsp+0x28],rsi
  2ccb34:	48 8b cd                                        	mov    rcx,rbp
  2ccb37:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  2ccb3c:	e8 27 36 0d 00                                  	call   0x3a0168
  2ccb41:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  2ccb46:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  2ccb4e:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  2ccb53:	b0 01                                           	mov    al,0x1
  2ccb55:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  2ccb5a:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  2ccb5f:	49 8b e3                                        	mov    rsp,r11
  2ccb62:	41 5e                                           	pop    r14
  2ccb64:	5f                                              	pop    rdi
  2ccb65:	5e                                              	pop    rsi
  2ccb66:	5d                                              	pop    rbp
  2ccb67:	5b                                              	pop    rbx
  2ccb68:	c3                                              	ret
