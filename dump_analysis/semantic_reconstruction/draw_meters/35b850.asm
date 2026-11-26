
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035b850 <.data+0x35b850>:
  35b850:	48 8b c4                                        	mov    rax,rsp
  35b853:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  35b857:	48 89 78 10                                     	mov    QWORD PTR [rax+0x10],rdi
  35b85b:	55                                              	push   rbp
  35b85c:	48 8d 68 c1                                     	lea    rbp,[rax-0x3f]
  35b860:	48 81 ec 00 01 00 00                            	sub    rsp,0x100
  35b867:	0f 29 78 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm7
  35b86b:	bf ff 00 00 00                                  	mov    edi,0xff
  35b870:	44 0f 29 40 d8                                  	movaps XMMWORD PTR [rax-0x28],xmm8
  35b875:	45 33 c9                                        	xor    r9d,r9d
  35b878:	44 0f 29 48 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm9
  35b87d:	48 8b d9                                        	mov    rbx,rcx
  35b880:	44 0f 29 50 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm10
  35b885:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  35b88a:	44 0f 29 58 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm11
  35b88f:	44 8d 47 ab                                     	lea    r8d,[rdi-0x55]
  35b893:	44 0f 29 60 98                                  	movaps XMMWORD PTR [rax-0x68],xmm12
  35b898:	41 8d 51 14                                     	lea    edx,[r9+0x14]
  35b89c:	44 0f 28 e1                                     	movaps xmm12,xmm1
  35b8a0:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b8a4:	44 0f 28 cb                                     	movaps xmm9,xmm3
  35b8a8:	44 0f 28 da                                     	movaps xmm11,xmm2
  35b8ac:	e8 67 fa f7 ff                                  	call   0x2db318
  35b8b1:	45 33 c9                                        	xor    r9d,r9d
  35b8b4:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b8b8:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  35b8bc:	41 8d 51 55                                     	lea    edx,[r9+0x55]
  35b8c0:	45 8d 41 75                                     	lea    r8d,[r9+0x75]
  35b8c4:	e8 4f fa f7 ff                                  	call   0x2db318
  35b8c9:	45 33 c9                                        	xor    r9d,r9d
  35b8cc:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b8d0:	8d 57 87                                        	lea    edx,[rdi-0x79]
  35b8d3:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  35b8d7:	45 8d 41 51                                     	lea    r8d,[r9+0x51]
  35b8db:	e8 38 fa f7 ff                                  	call   0x2db318
  35b8e0:	45 33 c9                                        	xor    r9d,r9d
  35b8e3:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b8e7:	8d 57 9c                                        	lea    edx,[rdi-0x64]
  35b8ea:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  35b8ee:	45 8d 41 3e                                     	lea    r8d,[r9+0x3e]
  35b8f2:	e8 21 fa f7 ff                                  	call   0x2db318
  35b8f7:	45 33 c9                                        	xor    r9d,r9d
  35b8fa:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b8fe:	8d 57 c4                                        	lea    edx,[rdi-0x3c]
  35b901:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  35b905:	45 8d 41 24                                     	lea    r8d,[r9+0x24]
  35b909:	e8 0a fa f7 ff                                  	call   0x2db318
  35b90e:	45 33 c9                                        	xor    r9d,r9d
  35b911:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b915:	45 33 c0                                        	xor    r8d,r8d
  35b918:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  35b91c:	8b d7                                           	mov    edx,edi
  35b91e:	e8 f5 f9 f7 ff                                  	call   0x2db318
  35b923:	45 33 c9                                        	xor    r9d,r9d
  35b926:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b92a:	45 33 c0                                        	xor    r8d,r8d
  35b92d:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35b932:	33 d2                                           	xor    edx,edx
  35b934:	e8 df f9 f7 ff                                  	call   0x2db318
  35b939:	f3 44 0f 10 55 67                               	movss  xmm10,DWORD PTR [rbp+0x67]
  35b93f:	41 0f 28 ca                                     	movaps xmm1,xmm10
  35b943:	f3 0f 59 0d 61 77 f3 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff37761]        # 0x2930ac
  35b94b:	41 0f 2f c9                                     	comiss xmm1,xmm9
  35b94f:	72 07                                           	jb     0x35b958
  35b951:	0f 10 44 24 40                                  	movups xmm0,XMMWORD PTR [rsp+0x40]
  35b956:	eb 31                                           	jmp    0x35b989
  35b958:	0f 28 c1                                        	movaps xmm0,xmm1
  35b95b:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  35b95f:	41 0f 2f c1                                     	comiss xmm0,xmm9
  35b963:	72 06                                           	jb     0x35b96b
  35b965:	0f 10 45 87                                     	movups xmm0,XMMWORD PTR [rbp-0x79]
  35b969:	eb 1e                                           	jmp    0x35b989
  35b96b:	f3 0f 59 0d e5 77 f3 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff377e5]        # 0x293158
  35b973:	41 0f 2f c9                                     	comiss xmm1,xmm9
  35b977:	72 06                                           	jb     0x35b97f
  35b979:	0f 10 45 97                                     	movups xmm0,XMMWORD PTR [rbp-0x69]
  35b97d:	eb 0a                                           	jmp    0x35b989
  35b97f:	45 0f 2f d1                                     	comiss xmm10,xmm9
  35b983:	72 09                                           	jb     0x35b98e
  35b985:	0f 10 45 a7                                     	movups xmm0,XMMWORD PTR [rbp-0x59]
  35b989:	0f 11 44 24 30                                  	movups XMMWORD PTR [rsp+0x30],xmm0
  35b98e:	ba 43 00 00 00                                  	mov    edx,0x43
  35b993:	89 7c 24 20                                     	mov    DWORD PTR [rsp+0x20],edi
  35b997:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  35b99b:	44 8d 4a f3                                     	lea    r9d,[rdx-0xd]
  35b99f:	44 8d 42 fb                                     	lea    r8d,[rdx-0x5]
  35b9a3:	e8 70 f9 f7 ff                                  	call   0x2db318
  35b9a8:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  35b9ac:	e8 5b 3e f9 ff                                  	call   0x2ef80c
  35b9b1:	f3 0f 10 05 7b c8 f4 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff4c87b]        # 0x2a8234
  35b9b9:	41 0f 28 d3                                     	movaps xmm2,xmm11
  35b9bd:	f3 44 0f 10 45 77                               	movss  xmm8,DWORD PTR [rbp+0x77]
  35b9c3:	41 0f 28 cc                                     	movaps xmm1,xmm12
  35b9c7:	f3 0f 10 7d 6f                                  	movss  xmm7,DWORD PTR [rbp+0x6f]
  35b9cc:	41 0f 28 e0                                     	movaps xmm4,xmm8
  35b9d0:	f3 0f 58 e0                                     	addss  xmm4,xmm0
  35b9d4:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35b9d8:	0f 28 df                                        	movaps xmm3,xmm7
  35b9db:	48 8b cb                                        	mov    rcx,rbx
  35b9de:	f3 0f 58 d8                                     	addss  xmm3,xmm0
  35b9e2:	f3 0f 10 05 3e c8 f4 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff4c83e]        # 0x2a8228
  35b9ea:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  35b9ee:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  35b9f2:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35b9f8:	e8 3b 0d 00 00                                  	call   0x35c738
  35b9fd:	48 8b 4d 7f                                     	mov    rcx,QWORD PTR [rbp+0x7f]
  35ba01:	e8 06 3e f9 ff                                  	call   0x2ef80c
  35ba06:	41 0f 28 c0                                     	movaps xmm0,xmm8
  35ba0a:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35ba0e:	f3 0f 58 05 3e 18 f3 ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffff3183e]        # 0x28d254
  35ba16:	0f 28 df                                        	movaps xmm3,xmm7
  35ba19:	41 0f 28 d3                                     	movaps xmm2,xmm11
  35ba1d:	41 0f 28 cc                                     	movaps xmm1,xmm12
  35ba21:	48 8b cb                                        	mov    rcx,rbx
  35ba24:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35ba2a:	e8 09 0d 00 00                                  	call   0x35c738
  35ba2f:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35ba34:	e8 d3 3d f9 ff                                  	call   0x2ef80c
  35ba39:	f3 0f 5c 3d f3 76 f3 ff                         	subss  xmm7,DWORD PTR [rip+0xfffffffffff376f3]        # 0x293134
  35ba41:	f3 44 0f 58 1d 0a 18 f3 ff                      	addss  xmm11,DWORD PTR [rip+0xfffffffffff3180a]        # 0x28d254
  35ba4a:	f3 44 0f 58 25 01 18 f3 ff                      	addss  xmm12,DWORD PTR [rip+0xfffffffffff31801]        # 0x28d254
  35ba53:	f3 44 0f 5c 05 f8 17 f3 ff                      	subss  xmm8,DWORD PTR [rip+0xfffffffffff317f8]        # 0x28d254
  35ba5c:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35ba60:	48 8b cb                                        	mov    rcx,rbx
  35ba63:	f3 41 0f 59 f9                                  	mulss  xmm7,xmm9
  35ba68:	41 0f 28 d3                                     	movaps xmm2,xmm11
  35ba6c:	41 0f 28 cc                                     	movaps xmm1,xmm12
  35ba70:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  35ba77:	f3 41 0f 5e fa                                  	divss  xmm7,xmm10
  35ba7c:	0f 28 df                                        	movaps xmm3,xmm7
  35ba7f:	e8 b4 0c 00 00                                  	call   0x35c738
  35ba84:	4c 8d 9c 24 00 01 00 00                         	lea    r11,[rsp+0x100]
  35ba8c:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  35ba90:	49 8b 7b 18                                     	mov    rdi,QWORD PTR [r11+0x18]
  35ba94:	41 0f 28 7b f0                                  	movaps xmm7,XMMWORD PTR [r11-0x10]
  35ba99:	45 0f 28 43 e0                                  	movaps xmm8,XMMWORD PTR [r11-0x20]
  35ba9e:	45 0f 28 4b d0                                  	movaps xmm9,XMMWORD PTR [r11-0x30]
  35baa3:	45 0f 28 53 c0                                  	movaps xmm10,XMMWORD PTR [r11-0x40]
  35baa8:	45 0f 28 5b b0                                  	movaps xmm11,XMMWORD PTR [r11-0x50]
  35baad:	45 0f 28 63 a0                                  	movaps xmm12,XMMWORD PTR [r11-0x60]
  35bab2:	49 8b e3                                        	mov    rsp,r11
  35bab5:	5d                                              	pop    rbp
  35bab6:	c3                                              	ret
