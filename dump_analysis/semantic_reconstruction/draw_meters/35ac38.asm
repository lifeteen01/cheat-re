
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035ac38 <.data+0x35ac38>:
  35ac38:	48 8b c4                                        	mov    rax,rsp
  35ac3b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  35ac3f:	f3 0f 11 50 18                                  	movss  DWORD PTR [rax+0x18],xmm2
  35ac44:	f3 0f 11 48 10                                  	movss  DWORD PTR [rax+0x10],xmm1
  35ac49:	55                                              	push   rbp
  35ac4a:	56                                              	push   rsi
  35ac4b:	57                                              	push   rdi
  35ac4c:	48 8d 68 d8                                     	lea    rbp,[rax-0x28]
  35ac50:	48 81 ec 10 01 00 00                            	sub    rsp,0x110
  35ac57:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  35ac5b:	0f 29 78 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm7
  35ac5f:	44 0f 29 40 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm8
  35ac64:	44 0f 29 48 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm9
  35ac69:	44 0f 28 cb                                     	movaps xmm9,xmm3
  35ac6d:	f3 44 0f 5d 4d 50                               	minss  xmm9,DWORD PTR [rbp+0x50]
  35ac73:	44 0f 29 50 98                                  	movaps XMMWORD PTR [rax-0x68],xmm10
  35ac78:	44 0f 29 58 88                                  	movaps XMMWORD PTR [rax-0x78],xmm11
  35ac7d:	44 0f 29 a0 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm12
  35ac85:	44 0f 29 a8 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm13
  35ac8d:	45 0f 57 ed                                     	xorps  xmm13,xmm13
  35ac91:	45 0f 2f e9                                     	comiss xmm13,xmm9
  35ac95:	44 0f 29 b0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm14
  35ac9d:	f3 44 0f 10 75 58                               	movss  xmm14,DWORD PTR [rbp+0x58]
  35aca3:	76 04                                           	jbe    0x35aca9
  35aca5:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  35aca9:	f3 44 0f 5e 4d 50                               	divss  xmm9,DWORD PTR [rbp+0x50]
  35acaf:	48 8b 75 68                                     	mov    rsi,QWORD PTR [rbp+0x68]
  35acb3:	33 ff                                           	xor    edi,edi
  35acb5:	f3 44 0f 10 1d 96 25 f3 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff32596]        # 0x28d254
  35acbe:	45 0f 28 d6                                     	movaps xmm10,xmm14
  35acc2:	f3 44 0f 5c 55 60                               	subss  xmm10,DWORD PTR [rbp+0x60]
  35acc8:	f3 45 0f 58 c9                                  	addss  xmm9,xmm9
  35accd:	f3 44 0f 59 15 c2 83 f3 ff                      	mulss  xmm10,DWORD PTR [rip+0xfffffffffff383c2]        # 0x293098
  35acd6:	f3 44 0f 59 0d 7d 84 f3 ff                      	mulss  xmm9,DWORD PTR [rip+0xfffffffffff3847d]        # 0x29315c
  35acdf:	f3 45 0f 5c f2                                  	subss  xmm14,xmm10
  35ace4:	f3 44 0f 58 55 60                               	addss  xmm10,DWORD PTR [rbp+0x60]
  35acea:	f3 45 0f 5c cd                                  	subss  xmm9,xmm13
  35acef:	f3 44 0f 5e 0d 4c 2e f3 ff                      	divss  xmm9,DWORD PTR [rip+0xfffffffffff32e4c]        # 0x28db44
  35acf8:	66 44 0f 6e e7                                  	movd   xmm12,edi
  35acfd:	ff c7                                           	inc    edi
  35acff:	45 0f 5b e4                                     	cvtdq2ps xmm12,xmm12
  35ad03:	66 44 0f 6e c7                                  	movd   xmm8,edi
  35ad08:	41 0f 28 fc                                     	movaps xmm7,xmm12
  35ad0c:	f3 41 0f 59 f9                                  	mulss  xmm7,xmm9
  35ad11:	45 0f 5b c0                                     	cvtdq2ps xmm8,xmm8
  35ad15:	f3 41 0f 58 fd                                  	addss  xmm7,xmm13
  35ad1a:	f3 45 0f 59 c1                                  	mulss  xmm8,xmm9
  35ad1f:	0f 28 c7                                        	movaps xmm0,xmm7
  35ad22:	f3 45 0f 58 c5                                  	addss  xmm8,xmm13
  35ad27:	e8 6c 54 f8 ff                                  	call   0x2e0198
  35ad2c:	0f 28 f0                                        	movaps xmm6,xmm0
  35ad2f:	0f 28 c7                                        	movaps xmm0,xmm7
  35ad32:	f3 41 0f 59 f6                                  	mulss  xmm6,xmm14
  35ad37:	f3 0f 58 75 40                                  	addss  xmm6,DWORD PTR [rbp+0x40]
  35ad3c:	e8 27 52 f8 ff                                  	call   0x2dff68
  35ad41:	f3 41 0f 59 c6                                  	mulss  xmm0,xmm14
  35ad46:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  35ad4b:	0f 28 d6                                        	movaps xmm2,xmm6
  35ad4e:	f3 0f 58 45 38                                  	addss  xmm0,DWORD PTR [rbp+0x38]
  35ad53:	0f 28 c8                                        	movaps xmm1,xmm0
  35ad56:	e8 e5 15 f7 ff                                  	call   0x2cc340
  35ad5b:	41 0f 28 c0                                     	movaps xmm0,xmm8
  35ad5f:	e8 34 54 f8 ff                                  	call   0x2e0198
  35ad64:	0f 28 f0                                        	movaps xmm6,xmm0
  35ad67:	41 0f 28 c0                                     	movaps xmm0,xmm8
  35ad6b:	f3 41 0f 59 f6                                  	mulss  xmm6,xmm14
  35ad70:	f3 0f 58 75 40                                  	addss  xmm6,DWORD PTR [rbp+0x40]
  35ad75:	e8 ee 51 f8 ff                                  	call   0x2dff68
  35ad7a:	f3 41 0f 59 c6                                  	mulss  xmm0,xmm14
  35ad7f:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35ad84:	0f 28 d6                                        	movaps xmm2,xmm6
  35ad87:	f3 0f 58 45 38                                  	addss  xmm0,DWORD PTR [rbp+0x38]
  35ad8c:	0f 28 c8                                        	movaps xmm1,xmm0
  35ad8f:	e8 ac 15 f7 ff                                  	call   0x2cc340
  35ad94:	0f 28 c7                                        	movaps xmm0,xmm7
  35ad97:	e8 fc 53 f8 ff                                  	call   0x2e0198
  35ad9c:	0f 28 f0                                        	movaps xmm6,xmm0
  35ad9f:	0f 28 c7                                        	movaps xmm0,xmm7
  35ada2:	f3 41 0f 59 f2                                  	mulss  xmm6,xmm10
  35ada7:	f3 0f 58 75 40                                  	addss  xmm6,DWORD PTR [rbp+0x40]
  35adac:	e8 b7 51 f8 ff                                  	call   0x2dff68
  35adb1:	f3 0f 10 7d 38                                  	movss  xmm7,DWORD PTR [rbp+0x38]
  35adb6:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  35adbb:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  35adc0:	0f 28 d6                                        	movaps xmm2,xmm6
  35adc3:	f3 0f 58 c7                                     	addss  xmm0,xmm7
  35adc7:	0f 28 c8                                        	movaps xmm1,xmm0
  35adca:	e8 71 15 f7 ff                                  	call   0x2cc340
  35adcf:	41 0f 28 c0                                     	movaps xmm0,xmm8
  35add3:	e8 c0 53 f8 ff                                  	call   0x2e0198
  35add8:	0f 28 f0                                        	movaps xmm6,xmm0
  35addb:	41 0f 28 c0                                     	movaps xmm0,xmm8
  35addf:	f3 41 0f 59 f2                                  	mulss  xmm6,xmm10
  35ade4:	f3 0f 58 75 40                                  	addss  xmm6,DWORD PTR [rbp+0x40]
  35ade9:	e8 7a 51 f8 ff                                  	call   0x2dff68
  35adee:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  35adf3:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  35adf8:	0f 28 d6                                        	movaps xmm2,xmm6
  35adfb:	f3 0f 58 c7                                     	addss  xmm0,xmm7
  35adff:	0f 28 c8                                        	movaps xmm1,xmm0
  35ae02:	e8 39 15 f7 ff                                  	call   0x2cc340
  35ae07:	80 7d 70 00                                     	cmp    BYTE PTR [rbp+0x70],0x0
  35ae0b:	0f 10 06                                        	movups xmm0,XMMWORD PTR [rsi]
  35ae0e:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  35ae14:	74 45                                           	je     0x35ae5b
  35ae16:	f3 44 0f 58 25 31 24 f3 ff                      	addss  xmm12,DWORD PTR [rip+0xfffffffffff32431]        # 0x28d250
  35ae1f:	41 0f 28 cb                                     	movaps xmm1,xmm11
  35ae23:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  35ae2a:	41 0f 28 db                                     	movaps xmm3,xmm11
  35ae2e:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  35ae33:	41 0f 28 d3                                     	movaps xmm2,xmm11
  35ae37:	f3 44 0f 5e 25 04 2d f3 ff                      	divss  xmm12,DWORD PTR [rip+0xfffffffffff32d04]        # 0x28db44
  35ae40:	f3 41 0f 5c cc                                  	subss  xmm1,xmm12
  35ae45:	f3 0f 59 0d ab d3 f4 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff4d3ab]        # 0x2a81f8
  35ae4d:	e8 a6 64 00 00                                  	call   0x3612f8
  35ae52:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  35ae55:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  35ae5b:	e8 6c 80 03 00                                  	call   0x392ecc
  35ae60:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35ae65:	48 8b d8                                        	mov    rbx,rax
  35ae68:	e8 9f 49 f9 ff                                  	call   0x2ef80c
  35ae6d:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  35ae71:	4c 8d 4c 24 40                                  	lea    r9,[rsp+0x40]
  35ae76:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  35ae7b:	48 8b cb                                        	mov    rcx,rbx
  35ae7e:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  35ae83:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  35ae88:	48 8d 54 24 38                                  	lea    rdx,[rsp+0x38]
  35ae8d:	e8 f2 61 04 00                                  	call   0x3a1084
  35ae92:	f3 0f 10 44 24 5c                               	movss  xmm0,DWORD PTR [rsp+0x5c]
  35ae98:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  35ae9d:	f3 0f 59 05 ab 23 f3 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff323ab]        # 0x28d250
  35aea5:	f3 0f 10 5c 24 58                               	movss  xmm3,DWORD PTR [rsp+0x58]
  35aeab:	f3 0f 10 54 24 54                               	movss  xmm2,DWORD PTR [rsp+0x54]
  35aeb1:	f3 0f 10 4c 24 50                               	movss  xmm1,DWORD PTR [rsp+0x50]
  35aeb7:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35aebd:	e8 8a 99 f7 ff                                  	call   0x2d484c
  35aec2:	e8 05 80 03 00                                  	call   0x392ecc
  35aec7:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  35aecc:	48 8b d8                                        	mov    rbx,rax
  35aecf:	e8 38 49 f9 ff                                  	call   0x2ef80c
  35aed4:	44 8b c8                                        	mov    r9d,eax
  35aed7:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  35aede:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  35aee3:	48 8b cb                                        	mov    rcx,rbx
  35aee6:	48 8d 54 24 38                                  	lea    rdx,[rsp+0x38]
  35aeeb:	e8 04 53 04 00                                  	call   0x3a01f4
  35aef0:	e8 d7 7f 03 00                                  	call   0x392ecc
  35aef5:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  35aefa:	48 8b d8                                        	mov    rbx,rax
  35aefd:	e8 0a 49 f9 ff                                  	call   0x2ef80c
  35af02:	44 8b c8                                        	mov    r9d,eax
  35af05:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  35af0c:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  35af11:	48 8b cb                                        	mov    rcx,rbx
  35af14:	48 8d 54 24 48                                  	lea    rdx,[rsp+0x48]
  35af19:	e8 d6 52 04 00                                  	call   0x3a01f4
  35af1e:	83 ff 64                                        	cmp    edi,0x64
  35af21:	0f 8c d1 fd ff ff                               	jl     0x35acf8
  35af27:	4c 8d 9c 24 10 01 00 00                         	lea    r11,[rsp+0x110]
  35af2f:	49 8b 5b 20                                     	mov    rbx,QWORD PTR [r11+0x20]
  35af33:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35af38:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  35af3d:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  35af42:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  35af47:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  35af4c:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  35af51:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  35af56:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  35af5b:	45 0f 28 b3 70 ff ff ff                         	movaps xmm14,XMMWORD PTR [r11-0x90]
  35af63:	49 8b e3                                        	mov    rsp,r11
  35af66:	5f                                              	pop    rdi
  35af67:	5e                                              	pop    rsi
  35af68:	5d                                              	pop    rbp
  35af69:	c3                                              	ret
