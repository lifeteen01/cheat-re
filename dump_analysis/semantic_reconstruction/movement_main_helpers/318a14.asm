
dump_analysis/semantic_reconstruction/movement_main_helpers/318a14.bin:     file format binary


Disassembly of section .data:

0000000000318a14 <.data>:
  318a14:	48 8b c4                                        	mov    rax,rsp
  318a17:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  318a1b:	57                                              	push   rdi
  318a1c:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  318a23:	f3 0f 10 02                                     	movss  xmm0,DWORD PTR [rdx]
  318a27:	48 8b da                                        	mov    rbx,rdx
  318a2a:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  318a2e:	48 8b f9                                        	mov    rdi,rcx
  318a31:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  318a35:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  318a3a:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  318a3f:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  318a44:	0f 5a c0                                        	cvtps2pd xmm0,xmm0
  318a47:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  318a4c:	e8 5b 01 00 00                                  	call   0x318bac
  318a51:	f2 0f 10 3d bf a6 f7 ff                         	movsd  xmm7,QWORD PTR [rip+0xfffffffffff7a6bf]        # 0x293118
  318a59:	0f 57 f6                                        	xorps  xmm6,xmm6
  318a5c:	f2 0f 59 c7                                     	mulsd  xmm0,xmm7
  318a60:	f2 0f 5a f0                                     	cvtsd2ss xmm6,xmm0
  318a64:	0f 28 c6                                        	movaps xmm0,xmm6
  318a67:	e8 fc 74 fc ff                                  	call   0x2dff68
  318a6c:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  318a70:	f3 44 0f 5a c8                                  	cvtss2sd xmm9,xmm0
  318a75:	0f 28 c6                                        	movaps xmm0,xmm6
  318a78:	e8 1b 77 fc ff                                  	call   0x2e0198
  318a7d:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  318a81:	f3 44 0f 5a c0                                  	cvtss2sd xmm8,xmm0
  318a86:	f3 0f 10 43 04                                  	movss  xmm0,DWORD PTR [rbx+0x4]
  318a8b:	0f 5a c0                                        	cvtps2pd xmm0,xmm0
  318a8e:	e8 19 01 00 00                                  	call   0x318bac
  318a93:	f2 0f 59 c7                                     	mulsd  xmm0,xmm7
  318a97:	0f 57 f6                                        	xorps  xmm6,xmm6
  318a9a:	f2 0f 5a f0                                     	cvtsd2ss xmm6,xmm0
  318a9e:	0f 28 c6                                        	movaps xmm0,xmm6
  318aa1:	e8 c2 74 fc ff                                  	call   0x2dff68
  318aa6:	45 0f 57 db                                     	xorps  xmm11,xmm11
  318aaa:	f3 44 0f 5a d8                                  	cvtss2sd xmm11,xmm0
  318aaf:	0f 28 c6                                        	movaps xmm0,xmm6
  318ab2:	e8 e1 76 fc ff                                  	call   0x2e0198
  318ab7:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  318abb:	f3 44 0f 5a d0                                  	cvtss2sd xmm10,xmm0
  318ac0:	f3 0f 10 43 08                                  	movss  xmm0,DWORD PTR [rbx+0x8]
  318ac5:	0f 5a c0                                        	cvtps2pd xmm0,xmm0
  318ac8:	e8 df 00 00 00                                  	call   0x318bac
  318acd:	f2 0f 59 c7                                     	mulsd  xmm0,xmm7
  318ad1:	0f 57 f6                                        	xorps  xmm6,xmm6
  318ad4:	f2 0f 5a f0                                     	cvtsd2ss xmm6,xmm0
  318ad8:	0f 28 c6                                        	movaps xmm0,xmm6
  318adb:	e8 88 74 fc ff                                  	call   0x2dff68
  318ae0:	0f 57 ff                                        	xorps  xmm7,xmm7
  318ae3:	f3 0f 5a f8                                     	cvtss2sd xmm7,xmm0
  318ae7:	0f 28 c6                                        	movaps xmm0,xmm6
  318aea:	e8 a9 76 fc ff                                  	call   0x2e0198
  318aef:	41 0f 28 d2                                     	movaps xmm2,xmm10
  318af3:	41 0f 28 db                                     	movaps xmm3,xmm11
  318af7:	f2 41 0f 59 d9                                  	mulsd  xmm3,xmm9
  318afc:	0f 57 ed                                        	xorps  xmm5,xmm5
  318aff:	48 8b cf                                        	mov    rcx,rdi
  318b02:	f3 0f 5a e8                                     	cvtss2sd xmm5,xmm0
  318b06:	0f 28 c3                                        	movaps xmm0,xmm3
  318b09:	f2 45 0f 59 d1                                  	mulsd  xmm10,xmm9
  318b0e:	f2 0f 59 c7                                     	mulsd  xmm0,xmm7
  318b12:	f2 41 0f 59 d0                                  	mulsd  xmm2,xmm8
  318b17:	f2 0f 59 dd                                     	mulsd  xmm3,xmm5
  318b1b:	f2 45 0f 59 d8                                  	mulsd  xmm11,xmm8
  318b20:	0f 28 ca                                        	movaps xmm1,xmm2
  318b23:	f2 0f 59 d7                                     	mulsd  xmm2,xmm7
  318b27:	f2 0f 59 cd                                     	mulsd  xmm1,xmm5
  318b2b:	f2 0f 58 da                                     	addsd  xmm3,xmm2
  318b2f:	f2 0f 5c c1                                     	subsd  xmm0,xmm1
  318b33:	41 0f 28 cb                                     	movaps xmm1,xmm11
  318b37:	f2 0f 59 cd                                     	mulsd  xmm1,xmm5
  318b3b:	f2 44 0f 59 df                                  	mulsd  xmm11,xmm7
  318b40:	66 0f 5a e0                                     	cvtpd2ps xmm4,xmm0
  318b44:	41 0f 28 c2                                     	movaps xmm0,xmm10
  318b48:	f2 44 0f 59 d5                                  	mulsd  xmm10,xmm5
  318b4d:	f2 0f 59 c7                                     	mulsd  xmm0,xmm7
  318b51:	66 0f 5a db                                     	cvtpd2ps xmm3,xmm3
  318b55:	f2 45 0f 58 d3                                  	addsd  xmm10,xmm11
  318b5a:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  318b60:	f3 0f 59 1d f8 a6 f7 ff                         	mulss  xmm3,DWORD PTR [rip+0xfffffffffff7a6f8]        # 0x293260
  318b68:	f2 0f 5c c1                                     	subsd  xmm0,xmm1
  318b6c:	66 41 0f 5a ca                                  	cvtpd2ps xmm1,xmm10
  318b71:	66 0f 5a d0                                     	cvtpd2ps xmm2,xmm0
  318b75:	e8 d6 37 fb ff                                  	call   0x2cc350
  318b7a:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  318b7f:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  318b87:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  318b8b:	48 8b c7                                        	mov    rax,rdi
  318b8e:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  318b93:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  318b98:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  318b9d:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  318ba2:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  318ba7:	49 8b e3                                        	mov    rsp,r11
  318baa:	5f                                              	pop    rdi
  318bab:	c3                                              	ret
