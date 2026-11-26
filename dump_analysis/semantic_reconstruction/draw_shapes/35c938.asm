
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035c938 <.data+0x35c938>:
  35c938:	48 8b c4                                        	mov    rax,rsp
  35c93b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  35c93f:	57                                              	push   rdi
  35c940:	48 81 ec c0 00 00 00                            	sub    rsp,0xc0
  35c947:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  35c94b:	bf ff 00 00 00                                  	mov    edi,0xff
  35c950:	44 0f 29 40 d8                                  	movaps XMMWORD PTR [rax-0x28],xmm8
  35c955:	48 8b d9                                        	mov    rbx,rcx
  35c958:	44 0f 29 48 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm9
  35c95d:	48 8d 48 98                                     	lea    rcx,[rax-0x68]
  35c961:	44 0f 29 50 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm10
  35c966:	45 33 c9                                        	xor    r9d,r9d
  35c969:	f3 44 0f 10 15 f6 0c 09 00                      	movss  xmm10,DWORD PTR [rip+0x90cf6]        # 0x3ed668
  35c972:	44 8d 47 a6                                     	lea    r8d,[rdi-0x5a]
  35c976:	f3 44 0f 59 15 c9 68 f3 ff                      	mulss  xmm10,DWORD PTR [rip+0xfffffffffff368c9]        # 0x293248
  35c97f:	8b d7                                           	mov    edx,edi
  35c981:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35c985:	44 0f 29 60 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm12
  35c98a:	44 0f 28 c2                                     	movaps xmm8,xmm2
  35c98e:	44 0f 28 e3                                     	movaps xmm12,xmm3
  35c992:	44 0f 28 c9                                     	movaps xmm9,xmm1
  35c996:	41 0f 28 f2                                     	movaps xmm6,xmm10
  35c99a:	f3 0f 5c 35 fa 67 f3 ff                         	subss  xmm6,DWORD PTR [rip+0xfffffffffff367fa]        # 0x29319c
  35c9a2:	e8 71 e9 f7 ff                                  	call   0x2db318
  35c9a7:	f3 0f 10 9c 24 08 01 00 00                      	movss  xmm3,DWORD PTR [rsp+0x108]
  35c9b0:	41 0f 28 ca                                     	movaps xmm1,xmm10
  35c9b4:	f3 0f 58 0d e0 67 f3 ff                         	addss  xmm1,DWORD PTR [rip+0xfffffffffff367e0]        # 0x29319c
  35c9bc:	c6 44 24 40 01                                  	mov    BYTE PTR [rsp+0x40],0x1
  35c9c1:	41 0f 28 d0                                     	movaps xmm2,xmm8
  35c9c5:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  35c9c8:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
  35c9cd:	48 8b cb                                        	mov    rcx,rbx
  35c9d0:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  35c9d5:	f3 44 0f 11 54 24 30                            	movss  DWORD PTR [rsp+0x30],xmm10
  35c9dc:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  35c9e2:	41 0f 28 c9                                     	movaps xmm1,xmm9
  35c9e6:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  35c9ec:	f3 0f 10 84 24 10 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x110]
  35c9f5:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35c9fb:	e8 38 e2 ff ff                                  	call   0x35ac38
  35ca00:	44 0f 2f 25 44 08 f3 ff                         	comiss xmm12,DWORD PTR [rip+0xfffffffffff30844]        # 0x28d24c
  35ca08:	76 5e                                           	jbe    0x35ca68
  35ca0a:	45 33 c9                                        	xor    r9d,r9d
  35ca0d:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35ca11:	44 8b c7                                        	mov    r8d,edi
  35ca14:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  35ca19:	33 d2                                           	xor    edx,edx
  35ca1b:	e8 f8 e8 f7 ff                                  	call   0x2db318
  35ca20:	c6 44 24 40 01                                  	mov    BYTE PTR [rsp+0x40],0x1
  35ca25:	41 0f 28 dc                                     	movaps xmm3,xmm12
  35ca29:	41 0f 28 d0                                     	movaps xmm2,xmm8
  35ca2d:	41 0f 28 c9                                     	movaps xmm1,xmm9
  35ca31:	48 8b cb                                        	mov    rcx,rbx
  35ca34:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  35ca37:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
  35ca3c:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  35ca41:	f3 0f 11 74 24 30                               	movss  DWORD PTR [rsp+0x30],xmm6
  35ca47:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  35ca4d:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xf0]
  35ca56:	f3 44 0f 11 54 24 28                            	movss  DWORD PTR [rsp+0x28],xmm10
  35ca5d:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35ca63:	e8 d0 e1 ff ff                                  	call   0x35ac38
  35ca68:	44 8b cf                                        	mov    r9d,edi
  35ca6b:	c7 44 24 20 c0 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xc0
  35ca73:	44 8b c7                                        	mov    r8d,edi
  35ca76:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35ca7b:	33 d2                                           	xor    edx,edx
  35ca7d:	e8 96 e8 f7 ff                                  	call   0x2db318
  35ca82:	f3 0f 10 9c 24 f8 00 00 00                      	movss  xmm3,DWORD PTR [rsp+0xf8]
  35ca8b:	0f 2f 1d ba 07 f3 ff                            	comiss xmm3,DWORD PTR [rip+0xfffffffffff307ba]        # 0x28d24c
  35ca92:	76 58                                           	jbe    0x35caec
  35ca94:	0f 10 44 24 50                                  	movups xmm0,XMMWORD PTR [rsp+0x50]
  35ca99:	c6 44 24 40 00                                  	mov    BYTE PTR [rsp+0x40],0x0
  35ca9e:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
  35caa3:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  35caa8:	0f 28 ce                                        	movaps xmm1,xmm6
  35caab:	f3 0f 5c 0d e9 66 f3 ff                         	subss  xmm1,DWORD PTR [rip+0xfffffffffff366e9]        # 0x29319c
  35cab3:	66 0f 7f 44 24 50                               	movdqa XMMWORD PTR [rsp+0x50],xmm0
  35cab9:	41 0f 28 d0                                     	movaps xmm2,xmm8
  35cabd:	f3 0f 10 84 24 00 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x100]
  35cac6:	48 8b cb                                        	mov    rcx,rbx
  35cac9:	f3 0f 5f 0d 7b 07 f3 ff                         	maxss  xmm1,DWORD PTR [rip+0xfffffffffff3077b]        # 0x28d24c
  35cad1:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm1
  35cad7:	41 0f 28 c9                                     	movaps xmm1,xmm9
  35cadb:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  35cae1:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35cae7:	e8 4c e1 ff ff                                  	call   0x35ac38
  35caec:	4c 8d 9c 24 c0 00 00 00                         	lea    r11,[rsp+0xc0]
  35caf4:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  35caf8:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35cafd:	45 0f 28 43 e0                                  	movaps xmm8,XMMWORD PTR [r11-0x20]
  35cb02:	45 0f 28 4b d0                                  	movaps xmm9,XMMWORD PTR [r11-0x30]
  35cb07:	45 0f 28 53 c0                                  	movaps xmm10,XMMWORD PTR [r11-0x40]
  35cb0c:	45 0f 28 63 b0                                  	movaps xmm12,XMMWORD PTR [r11-0x50]
  35cb11:	49 8b e3                                        	mov    rsp,r11
  35cb14:	5f                                              	pop    rdi
  35cb15:	c3                                              	ret
