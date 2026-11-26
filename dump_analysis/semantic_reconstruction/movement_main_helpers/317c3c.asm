
dump_analysis/semantic_reconstruction/movement_main_helpers/317c3c.bin:     file format binary


Disassembly of section .data:

0000000000317c3c <.data>:
  317c3c:	48 8b c4                                        	mov    rax,rsp
  317c3f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  317c43:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  317c47:	55                                              	push   rbp
  317c48:	57                                              	push   rdi
  317c49:	41 54                                           	push   r12
  317c4b:	41 56                                           	push   r14
  317c4d:	41 57                                           	push   r15
  317c4f:	48 8d a8 c8 fe ff ff                            	lea    rbp,[rax-0x138]
  317c56:	48 81 ec 10 02 00 00                            	sub    rsp,0x210
  317c5d:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  317c61:	48 8b ca                                        	mov    rcx,rdx
  317c64:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  317c68:	48 8b fa                                        	mov    rdi,rdx
  317c6b:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  317c70:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  317c75:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  317c7a:	44 0f 29 a8 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm13
  317c82:	e8 81 32 fb ff                                  	call   0x2caf08
  317c87:	84 c0                                           	test   al,al
  317c89:	0f 84 d7 08 00 00                               	je     0x318566
  317c8f:	48 8b ca                                        	mov    rcx,rdx
  317c92:	e8 05 92 fc ff                                  	call   0x2e0e9c
  317c97:	84 c0                                           	test   al,al
  317c99:	0f 84 c7 08 00 00                               	je     0x318566
  317c9f:	80 3d d2 01 0c 00 00                            	cmp    BYTE PTR [rip+0xc01d2],0x0        # 0x3d7e78
  317ca6:	0f 84 ba 08 00 00                               	je     0x318566
  317cac:	80 3d ed f5 0b 00 00                            	cmp    BYTE PTR [rip+0xbf5ed],0x0        # 0x3d72a0
  317cb3:	0f 84 ad 08 00 00                               	je     0x318566
  317cb9:	48 8b cf                                        	mov    rcx,rdi
  317cbc:	e8 c3 0d 05 00                                  	call   0x368a84
  317cc1:	48 8b c8                                        	mov    rcx,rax
  317cc4:	4c 8b f8                                        	mov    r15,rax
  317cc7:	e8 3c 32 fb ff                                  	call   0x2caf08
  317ccc:	84 c0                                           	test   al,al
  317cce:	0f 84 92 08 00 00                               	je     0x318566
  317cd4:	48 8b cf                                        	mov    rcx,rdi
  317cd7:	e8 bc 15 05 00                                  	call   0x369298
  317cdc:	48 8b c8                                        	mov    rcx,rax
  317cdf:	4c 8b e0                                        	mov    r12,rax
  317ce2:	e8 21 32 fb ff                                  	call   0x2caf08
  317ce7:	84 c0                                           	test   al,al
  317ce9:	0f 84 77 08 00 00                               	je     0x318566
  317cef:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  317cf3:	48 8b cf                                        	mov    rcx,rdi
  317cf6:	e8 69 14 05 00                                  	call   0x369164
  317cfb:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  317cff:	48 8b cf                                        	mov    rcx,rdi
  317d02:	e8 f9 03 05 00                                  	call   0x368100
  317d07:	49 8b cf                                        	mov    rcx,r15
  317d0a:	e8 d1 99 05 00                                  	call   0x3716e0
  317d0f:	4c 8b f0                                        	mov    r14,rax
  317d12:	e8 99 85 fc ff                                  	call   0x2e02b0
  317d17:	80 3d ca f5 0c 00 00                            	cmp    BYTE PTR [rip+0xcf5ca],0x0        # 0x3e72e8
  317d1e:	48 8b f0                                        	mov    rsi,rax
  317d21:	f3 44 0f 10 15 2a b5 f7 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff7b52a]        # 0x293254
  317d2a:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  317d2e:	0f 84 84 02 00 00                               	je     0x317fb8
  317d34:	49 8b ce                                        	mov    rcx,r14
  317d37:	e8 cc 31 fb ff                                  	call   0x2caf08
  317d3c:	84 c0                                           	test   al,al
  317d3e:	0f 84 74 02 00 00                               	je     0x317fb8
  317d44:	48 8b ce                                        	mov    rcx,rsi
  317d47:	e8 bc 31 fb ff                                  	call   0x2caf08
  317d4c:	84 c0                                           	test   al,al
  317d4e:	0f 85 64 02 00 00                               	jne    0x317fb8
  317d54:	f3 0f 10 35 7c 82 0d 00                         	movss  xmm6,DWORD PTR [rip+0xd827c]        # 0x3effd8
  317d5c:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  317d60:	f3 0f 10 3d 74 82 0d 00                         	movss  xmm7,DWORD PTR [rip+0xd8274]        # 0x3effdc
  317d68:	f3 44 0f 10 05 6f 82 0d 00                      	movss  xmm8,DWORD PTR [rip+0xd826f]        # 0x3effe0
  317d71:	f3 0f 11 75 a0                                  	movss  DWORD PTR [rbp-0x60],xmm6
  317d76:	f3 0f 11 7d a4                                  	movss  DWORD PTR [rbp-0x5c],xmm7
  317d7b:	f3 44 0f 11 45 a8                               	movss  DWORD PTR [rbp-0x58],xmm8
  317d81:	e8 d2 bd fc ff                                  	call   0x2e3b58
  317d86:	84 c0                                           	test   al,al
  317d88:	0f 85 2a 02 00 00                               	jne    0x317fb8
  317d8e:	f3 0f 10 15 16 b3 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff7b316]        # 0x2930ac
  317d96:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  317d9b:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  317d9f:	e8 c8 78 fc ff                                  	call   0x2df66c
  317da4:	4c 8b c0                                        	mov    r8,rax
  317da7:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  317dac:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  317db0:	e8 53 79 fc ff                                  	call   0x2df708
  317db5:	f2 0f 10 05 8b f4 0b 00                         	movsd  xmm0,QWORD PTR [rip+0xbf48b]        # 0x3d7248
  317dbd:	4c 8d 4c 24 70                                  	lea    r9,[rsp+0x70]
  317dc2:	8b 05 88 f4 0b 00                               	mov    eax,DWORD PTR [rip+0xbf488]        # 0x3d7250
  317dc8:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  317dcd:	f3 45 0f 10 ae f8 03 00 00                      	movss  xmm13,DWORD PTR [r14+0x3f8]
  317dd6:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  317ddb:	0f 14 f7                                        	unpcklps xmm6,xmm7
  317dde:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  317de2:	f3 0f 10 3d b2 b2 f7 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff7b2b2]        # 0x29309c
  317dea:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  317df0:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  317df6:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  317dfa:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  317dfe:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  317e04:	f3 44 0f 11 44 24 48                            	movss  DWORD PTR [rsp+0x48],xmm8
  317e0b:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  317e11:	f2 0f 11 74 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm6
  317e17:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  317e1b:	e8 74 f3 ff ff                                  	call   0x317194
  317e20:	0f 10 40 10                                     	movups xmm0,XMMWORD PTR [rax+0x10]
  317e24:	0f 10 48 20                                     	movups xmm1,XMMWORD PTR [rax+0x20]
  317e28:	0f 10 10                                        	movups xmm2,XMMWORD PTR [rax]
  317e2b:	0f 29 45 00                                     	movaps XMMWORD PTR [rbp+0x0],xmm0
  317e2f:	0f 10 40 30                                     	movups xmm0,XMMWORD PTR [rax+0x30]
  317e33:	0f 29 4d 10                                     	movaps XMMWORD PTR [rbp+0x10],xmm1
  317e37:	0f 10 48 40                                     	movups xmm1,XMMWORD PTR [rax+0x40]
  317e3b:	66 0f 7e d0                                     	movd   eax,xmm2
  317e3f:	0f 29 55 f0                                     	movaps XMMWORD PTR [rbp-0x10],xmm2
  317e43:	0f 29 45 20                                     	movaps XMMWORD PTR [rbp+0x20],xmm0
  317e47:	0f 29 4d 30                                     	movaps XMMWORD PTR [rbp+0x30],xmm1
  317e4b:	84 c0                                           	test   al,al
  317e4d:	0f 84 6d 01 00 00                               	je     0x317fc0
  317e53:	41 0f 5a c5                                     	cvtps2pd xmm0,xmm13
  317e57:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  317e5c:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  317e60:	f2 0f 5c 05 a8 b2 f7 ff                         	subsd  xmm0,QWORD PTR [rip+0xfffffffffff7b2a8]        # 0x293110
  317e68:	66 0f 5a f0                                     	cvtpd2ps xmm6,xmm0
  317e6c:	e8 07 94 fc ff                                  	call   0x2e1278
  317e71:	48 8b c8                                        	mov    rcx,rax
  317e74:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  317e79:	0f 28 d6                                        	movaps xmm2,xmm6
  317e7c:	e8 eb 77 fc ff                                  	call   0x2df66c
  317e81:	48 8b c8                                        	mov    rcx,rax
  317e84:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  317e89:	48 8d 55 e0                                     	lea    rdx,[rbp-0x20]
  317e8d:	e8 76 78 fc ff                                  	call   0x2df708
  317e92:	f3 0f 10 15 b6 53 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff753b6]        # 0x28d250
  317e9a:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  317e9e:	48 8d 0d bb e1 0c 00                            	lea    rcx,[rip+0xce1bb]        # 0x3e6060
  317ea5:	48 8b d8                                        	mov    rbx,rax
  317ea8:	e8 bf 77 fc ff                                  	call   0x2df66c
  317ead:	4c 8b c0                                        	mov    r8,rax
  317eb0:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  317eb4:	48 8b cb                                        	mov    rcx,rbx
  317eb7:	e8 10 78 fc ff                                  	call   0x2df6cc
  317ebc:	80 3d 55 f1 0c 00 00                            	cmp    BYTE PTR [rip+0xcf155],0x0        # 0x3e7018
  317ec3:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  317ec7:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  317eca:	f2 0f 11 45 a0                                  	movsd  QWORD PTR [rbp-0x60],xmm0
  317ecf:	89 45 a8                                        	mov    DWORD PTR [rbp-0x58],eax
  317ed2:	74 12                                           	je     0x317ee6
  317ed4:	f3 0f 10 45 a4                                  	movss  xmm0,DWORD PTR [rbp-0x5c]
  317ed9:	f3 0f 58 05 a7 e1 0c 00                         	addss  xmm0,DWORD PTR [rip+0xce1a7]        # 0x3e6088
  317ee1:	f3 0f 11 45 a4                                  	movss  DWORD PTR [rbp-0x5c],xmm0
  317ee6:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  317eeb:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  317eef:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  317ef3:	e8 d4 77 fc ff                                  	call   0x2df6cc
  317ef8:	48 8b c8                                        	mov    rcx,rax
  317efb:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  317f00:	e8 73 93 fc ff                                  	call   0x2e1278
  317f05:	f3 0f 10 15 47 53 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff75347]        # 0x28d254
  317f0d:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  317f11:	0f 57 db                                        	xorps  xmm3,xmm3
  317f14:	0f 57 c9                                        	xorps  xmm1,xmm1
  317f17:	e8 8c fc 0a 00                                  	call   0x3c7ba8
  317f1c:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  317f21:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  317f26:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  317f2a:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  317f2e:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  317f31:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  317f37:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  317f3d:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  317f41:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  317f45:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  317f4b:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  317f4f:	e8 9c 90 fc ff                                  	call   0x2e0ff0
  317f54:	80 3d 3d d1 0c 00 00                            	cmp    BYTE PTR [rip+0xcd13d],0x0        # 0x3e5098
  317f5b:	74 44                                           	je     0x317fa1
  317f5d:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  317f63:	4c 8d 4c 24 30                                  	lea    r9,[rsp+0x30]
  317f68:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  317f6c:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  317f71:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  317f77:	48 8b d7                                        	mov    rdx,rdi
  317f7a:	f2 0f 10 45 b0                                  	movsd  xmm0,QWORD PTR [rbp-0x50]
  317f7f:	49 8b ce                                        	mov    rcx,r14
  317f82:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  317f86:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
  317f89:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  317f8f:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  317f96:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  317f9a:	e8 51 ef 04 00                                  	call   0x366ef0
  317f9f:	eb 1f                                           	jmp    0x317fc0
  317fa1:	0f 10 45 c0                                     	movups xmm0,XMMWORD PTR [rbp-0x40]
  317fa5:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  317fa9:	49 8b cc                                        	mov    rcx,r12
  317fac:	66 0f 7f 45 80                                  	movdqa XMMWORD PTR [rbp-0x80],xmm0
  317fb1:	e8 4e bd 05 00                                  	call   0x373d04
  317fb6:	eb 08                                           	jmp    0x317fc0
  317fb8:	f3 0f 10 3d dc b0 f7 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff7b0dc]        # 0x29309c
  317fc0:	48 8b ce                                        	mov    rcx,rsi
  317fc3:	e8 40 2f fb ff                                  	call   0x2caf08
  317fc8:	84 c0                                           	test   al,al
  317fca:	0f 84 96 05 00 00                               	je     0x318566
  317fd0:	48 8b ce                                        	mov    rcx,rsi
  317fd3:	e8 c4 8e fc ff                                  	call   0x2e0e9c
  317fd8:	84 c0                                           	test   al,al
  317fda:	0f 84 86 05 00 00                               	je     0x318566
  317fe0:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  317fe5:	48 8b ce                                        	mov    rcx,rsi
  317fe8:	e8 a3 17 05 00                                  	call   0x369790
  317fed:	49 8b cf                                        	mov    rcx,r15
  317ff0:	e8 c3 9e 05 00                                  	call   0x371eb8
  317ff5:	49 8b ce                                        	mov    rcx,r14
  317ff8:	4c 8b f8                                        	mov    r15,rax
  317ffb:	e8 08 2f fb ff                                  	call   0x2caf08
  318000:	84 c0                                           	test   al,al
  318002:	0f 84 cf 02 00 00                               	je     0x3182d7
  318008:	f3 0f 10 15 9c b0 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff7b09c]        # 0x2930ac
  318010:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  318014:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  318018:	e8 4f 76 fc ff                                  	call   0x2df66c
  31801d:	4c 8b c0                                        	mov    r8,rax
  318020:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  318025:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  318029:	e8 da 76 fc ff                                  	call   0x2df708
  31802e:	f3 41 0f 10 b6 f8 03 00 00                      	movss  xmm6,DWORD PTR [r14+0x3f8]
  318037:	48 8b ce                                        	mov    rcx,rsi
  31803a:	e8 15 da ff ff                                  	call   0x315a54
  31803f:	48 8b c8                                        	mov    rcx,rax
  318042:	4c 8b c0                                        	mov    r8,rax
  318045:	e8 be 2e fb ff                                  	call   0x2caf08
  31804a:	84 c0                                           	test   al,al
  31804c:	74 1d                                           	je     0x31806b
  31804e:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  318052:	49 8b c8                                        	mov    rcx,r8
  318055:	e8 7a c7 05 00                                  	call   0x3747d4
  31805a:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  31805e:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  318064:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  318067:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  31806b:	48 8b ce                                        	mov    rcx,rsi
  31806e:	e8 e1 d9 fc ff                                  	call   0x2e5a54
  318073:	48 8b c8                                        	mov    rcx,rax
  318076:	48 8b d0                                        	mov    rdx,rax
  318079:	e8 8a 2e fb ff                                  	call   0x2caf08
  31807e:	84 c0                                           	test   al,al
  318080:	74 6b                                           	je     0x3180ed
  318082:	48 8b ca                                        	mov    rcx,rdx
  318085:	e8 ca e2 fb ff                                  	call   0x2d6354
  31808a:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  31808e:	48 8b d8                                        	mov    rbx,rax
  318091:	48 8d 8d 50 01 00 00                            	lea    rcx,[rbp+0x150]
  318098:	e8 b7 a2 fd ff                                  	call   0x2f2354
  31809d:	48 8b c8                                        	mov    rcx,rax
  3180a0:	e8 e3 50 fc ff                                  	call   0x2dd188
  3180a5:	48 8b c8                                        	mov    rcx,rax
  3180a8:	48 ba 25 23 22 84 e4 9c f2 cb                   	movabs rdx,0xcbf29ce484222325
  3180b2:	e8 95 da fc ff                                  	call   0x2e5b4c
  3180b7:	80 3d 5a ef 0c 00 00                            	cmp    BYTE PTR [rip+0xcef5a],0x0        # 0x3e7018
  3180be:	74 2d                                           	je     0x3180ed
  3180c0:	b9 2f 00 00 00                                  	mov    ecx,0x2f
  3180c5:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3180c9:	48 3b d8                                        	cmp    rbx,rax
  3180cc:	44 8d 41 06                                     	lea    r8d,[rcx+0x6]
  3180d0:	44 0f 44 c1                                     	cmove  r8d,ecx
  3180d4:	48 8b ce                                        	mov    rcx,rsi
  3180d7:	e8 0c 0b 05 00                                  	call   0x368be8
  3180dc:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3180e0:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  3180e6:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3180e9:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  3180ed:	f2 0f 10 05 53 f1 0b 00                         	movsd  xmm0,QWORD PTR [rip+0xbf153]        # 0x3d7248
  3180f5:	4c 8d 4c 24 30                                  	lea    r9,[rsp+0x30]
  3180fa:	8b 05 50 f1 0b 00                               	mov    eax,DWORD PTR [rip+0xbf150]        # 0x3d7250
  318100:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  318105:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  31810b:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  318110:	f2 0f 10 44 24 50                               	movsd  xmm0,QWORD PTR [rsp+0x50]
  318116:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  31811a:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  31811e:	8b 44 24 58                                     	mov    eax,DWORD PTR [rsp+0x58]
  318122:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  318128:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  31812e:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  318132:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  318136:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  31813c:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  318142:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  318146:	e8 49 f0 ff ff                                  	call   0x317194
  31814b:	0f 10 40 10                                     	movups xmm0,XMMWORD PTR [rax+0x10]
  31814f:	0f 10 48 20                                     	movups xmm1,XMMWORD PTR [rax+0x20]
  318153:	0f 10 10                                        	movups xmm2,XMMWORD PTR [rax]
  318156:	0f 29 45 00                                     	movaps XMMWORD PTR [rbp+0x0],xmm0
  31815a:	0f 10 40 30                                     	movups xmm0,XMMWORD PTR [rax+0x30]
  31815e:	0f 29 4d 10                                     	movaps XMMWORD PTR [rbp+0x10],xmm1
  318162:	0f 10 48 40                                     	movups xmm1,XMMWORD PTR [rax+0x40]
  318166:	66 0f 7e d0                                     	movd   eax,xmm2
  31816a:	0f 29 55 f0                                     	movaps XMMWORD PTR [rbp-0x10],xmm2
  31816e:	0f 29 45 20                                     	movaps XMMWORD PTR [rbp+0x20],xmm0
  318172:	0f 29 4d 30                                     	movaps XMMWORD PTR [rbp+0x30],xmm1
  318176:	84 c0                                           	test   al,al
  318178:	0f 84 e8 03 00 00                               	je     0x318566
  31817e:	0f 5a c6                                        	cvtps2pd xmm0,xmm6
  318181:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  318185:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  318189:	f2 0f 5c 05 7f af f7 ff                         	subsd  xmm0,QWORD PTR [rip+0xfffffffffff7af7f]        # 0x293110
  318191:	66 0f 5a f0                                     	cvtpd2ps xmm6,xmm0
  318195:	e8 de 90 fc ff                                  	call   0x2e1278
  31819a:	48 8b c8                                        	mov    rcx,rax
  31819d:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3181a1:	0f 28 d6                                        	movaps xmm2,xmm6
  3181a4:	e8 c3 74 fc ff                                  	call   0x2df66c
  3181a9:	48 8b c8                                        	mov    rcx,rax
  3181ac:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3181b1:	48 8d 55 e0                                     	lea    rdx,[rbp-0x20]
  3181b5:	e8 4e 75 fc ff                                  	call   0x2df708
  3181ba:	f3 0f 10 15 8e 50 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff7508e]        # 0x28d250
  3181c2:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  3181c7:	48 8d 0d 92 de 0c 00                            	lea    rcx,[rip+0xcde92]        # 0x3e6060
  3181ce:	48 8b d8                                        	mov    rbx,rax
  3181d1:	e8 96 74 fc ff                                  	call   0x2df66c
  3181d6:	4c 8b c0                                        	mov    r8,rax
  3181d9:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  3181de:	48 8b cb                                        	mov    rcx,rbx
  3181e1:	e8 e6 74 fc ff                                  	call   0x2df6cc
  3181e6:	80 3d 2b ee 0c 00 00                            	cmp    BYTE PTR [rip+0xcee2b],0x0        # 0x3e7018
  3181ed:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3181f1:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  3181f7:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3181fa:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  3181fe:	74 14                                           	je     0x318214
  318200:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [rsp+0x54]
  318206:	f3 0f 58 05 7a de 0c 00                         	addss  xmm0,DWORD PTR [rip+0xcde7a]        # 0x3e6088
  31820e:	f3 0f 11 44 24 54                               	movss  DWORD PTR [rsp+0x54],xmm0
  318214:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  318219:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  31821d:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  318222:	e8 a5 74 fc ff                                  	call   0x2df6cc
  318227:	48 8b c8                                        	mov    rcx,rax
  31822a:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  31822f:	e8 44 90 fc ff                                  	call   0x2e1278
  318234:	f3 0f 10 15 18 50 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff75018]        # 0x28d254
  31823c:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  318240:	0f 57 db                                        	xorps  xmm3,xmm3
  318243:	0f 57 c9                                        	xorps  xmm1,xmm1
  318246:	e8 5d f9 0a 00                                  	call   0x3c7ba8
  31824b:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  318250:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  318255:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  318259:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  31825d:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  318260:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  318266:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  31826c:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  318270:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  318274:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  31827a:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  31827e:	e8 6d 8d fc ff                                  	call   0x2e0ff0
  318283:	80 3d 0e ce 0c 00 00                            	cmp    BYTE PTR [rip+0xcce0e],0x0        # 0x3e5098
  31828a:	0f 84 c1 02 00 00                               	je     0x318551
  318290:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  318296:	4c 8d 4c 24 30                                  	lea    r9,[rsp+0x30]
  31829b:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  31829f:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  3182a4:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  3182aa:	48 8b d7                                        	mov    rdx,rdi
  3182ad:	f2 0f 10 45 b0                                  	movsd  xmm0,QWORD PTR [rbp-0x50]
  3182b2:	49 8b ce                                        	mov    rcx,r14
  3182b5:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3182b9:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
  3182bc:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  3182c2:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  3182c9:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  3182cd:	e8 1e ec 04 00                                  	call   0x366ef0
  3182d2:	e9 8f 02 00 00                                  	jmp    0x318566
  3182d7:	49 8b cf                                        	mov    rcx,r15
  3182da:	e8 29 2c fb ff                                  	call   0x2caf08
  3182df:	84 c0                                           	test   al,al
  3182e1:	0f 84 7f 02 00 00                               	je     0x318566
  3182e7:	49 8b cf                                        	mov    rcx,r15
  3182ea:	e8 49 36 05 00                                  	call   0x36b938
  3182ef:	48 8b c8                                        	mov    rcx,rax
  3182f2:	48 8b d0                                        	mov    rdx,rax
  3182f5:	e8 0e 2c fb ff                                  	call   0x2caf08
  3182fa:	84 c0                                           	test   al,al
  3182fc:	0f 84 64 02 00 00                               	je     0x318566
  318302:	48 8b ca                                        	mov    rcx,rdx
  318305:	e8 26 a8 05 00                                  	call   0x372b30
  31830a:	48 8b c8                                        	mov    rcx,rax
  31830d:	48 8b d8                                        	mov    rbx,rax
  318310:	e8 f3 2b fb ff                                  	call   0x2caf08
  318315:	84 c0                                           	test   al,al
  318317:	0f 84 49 02 00 00                               	je     0x318566
  31831d:	f3 45 0f 10 87 ac 03 00 00                      	movss  xmm8,DWORD PTR [r15+0x3ac]
  318326:	48 8b ce                                        	mov    rcx,rsi
  318329:	f3 44 0f 59 43 3c                               	mulss  xmm8,DWORD PTR [rbx+0x3c]
  31832f:	e8 20 d7 ff ff                                  	call   0x315a54
  318334:	48 8b c8                                        	mov    rcx,rax
  318337:	4c 8b c0                                        	mov    r8,rax
  31833a:	e8 c9 2b fb ff                                  	call   0x2caf08
  31833f:	84 c0                                           	test   al,al
  318341:	74 1d                                           	je     0x318360
  318343:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  318347:	49 8b c8                                        	mov    rcx,r8
  31834a:	e8 85 c4 05 00                                  	call   0x3747d4
  31834f:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  318353:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  318359:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  31835c:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  318360:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  318364:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  318368:	e8 0b 8f fc ff                                  	call   0x2e1278
  31836d:	f3 0f 10 15 df 4e f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff74edf]        # 0x28d254
  318375:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  318379:	48 8b c8                                        	mov    rcx,rax
  31837c:	e8 eb 72 fc ff                                  	call   0x2df66c
  318381:	4c 8b c0                                        	mov    r8,rax
  318384:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  318389:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  31838d:	e8 76 73 fc ff                                  	call   0x2df708
  318392:	f3 0f 10 7b 38                                  	movss  xmm7,DWORD PTR [rbx+0x38]
  318397:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  31839b:	f3 0f 10 73 34                                  	movss  xmm6,DWORD PTR [rbx+0x34]
  3183a0:	48 8d 8d 50 01 00 00                            	lea    rcx,[rbp+0x150]
  3183a7:	0f 57 c0                                        	xorps  xmm0,xmm0
  3183aa:	0f 11 45 40                                     	movups XMMWORD PTR [rbp+0x40],xmm0
  3183ae:	0f 11 45 50                                     	movups XMMWORD PTR [rbp+0x50],xmm0
  3183b2:	0f 5a ff                                        	cvtps2pd xmm7,xmm7
  3183b5:	0f 5a f6                                        	cvtps2pd xmm6,xmm6
  3183b8:	e8 33 b4 fd ff                                  	call   0x2f37f0
  3183bd:	48 8b c8                                        	mov    rcx,rax
  3183c0:	e8 cf 80 00 00                                  	call   0x320494
  3183c5:	48 8b d0                                        	mov    rdx,rax
  3183c8:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3183cc:	41 0f 5a d0                                     	cvtps2pd xmm2,xmm8
  3183d0:	0f 28 de                                        	movaps xmm3,xmm6
  3183d3:	f2 0f 11 7c 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm7
  3183d9:	66 49 0f 7e d0                                  	movq   r8,xmm2
  3183de:	66 49 0f 7e f1                                  	movq   r9,xmm6
  3183e3:	e8 2c 63 fd ff                                  	call   0x2ee714
  3183e8:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3183ec:	e8 63 df fb ff                                  	call   0x2d6354
  3183f1:	48 8b c8                                        	mov    rcx,rax
  3183f4:	48 8b f0                                        	mov    rsi,rax
  3183f7:	e8 24 8a fc ff                                  	call   0x2e0e20
  3183fc:	48 8b f8                                        	mov    rdi,rax
  3183ff:	48 85 c0                                        	test   rax,rax
  318402:	75 31                                           	jne    0x318435
  318404:	f3 0f 10 5b 34                                  	movss  xmm3,DWORD PTR [rbx+0x34]
  318409:	41 0f 28 c8                                     	movaps xmm1,xmm8
  31840d:	f3 0f 10 53 38                                  	movss  xmm2,DWORD PTR [rbx+0x38]
  318412:	48 8b ce                                        	mov    rcx,rsi
  318415:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  31841c:	e8 43 7a fc ff                                  	call   0x2dfe64
  318421:	48 8b f8                                        	mov    rdi,rax
  318424:	48 85 c0                                        	test   rax,rax
  318427:	0f 84 39 01 00 00                               	je     0x318566
  31842d:	48 8b c8                                        	mov    rcx,rax
  318430:	e8 3b b6 fc ff                                  	call   0x2e3a70
  318435:	f2 0f 10 05 0b ee 0b 00                         	movsd  xmm0,QWORD PTR [rip+0xbee0b]        # 0x3d7248
  31843d:	4c 8d 4c 24 30                                  	lea    r9,[rsp+0x30]
  318442:	8b 05 08 ee 0b 00                               	mov    eax,DWORD PTR [rip+0xbee08]        # 0x3d7250
  318448:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  31844d:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  318453:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  318458:	f2 0f 10 44 24 50                               	movsd  xmm0,QWORD PTR [rsp+0x50]
  31845e:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  318462:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  318466:	8b 44 24 58                                     	mov    eax,DWORD PTR [rsp+0x58]
  31846a:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  318470:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  318476:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  31847a:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  31847e:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  318484:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  318488:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  31848d:	e8 e2 9e fc ff                                  	call   0x2e2374
  318492:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  318496:	e8 bd b6 fc ff                                  	call   0x2e3b58
  31849b:	84 c0                                           	test   al,al
  31849d:	0f 85 c3 00 00 00                               	jne    0x318566
  3184a3:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3184a7:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3184ab:	e8 c8 8d fc ff                                  	call   0x2e1278
  3184b0:	48 8b c8                                        	mov    rcx,rax
  3184b3:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3184b7:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3184bb:	e8 ac 71 fc ff                                  	call   0x2df66c
  3184c0:	48 8b c8                                        	mov    rcx,rax
  3184c3:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3184c8:	48 8d 55 e0                                     	lea    rdx,[rbp-0x20]
  3184cc:	e8 37 72 fc ff                                  	call   0x2df708
  3184d1:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3184d6:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3184da:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3184df:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3184e3:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  3184e9:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3184ec:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  3184f0:	e8 d7 71 fc ff                                  	call   0x2df6cc
  3184f5:	48 8b c8                                        	mov    rcx,rax
  3184f8:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  3184fd:	e8 76 8d fc ff                                  	call   0x2e1278
  318502:	f3 0f 10 15 4a 4d f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff74d4a]        # 0x28d254
  31850a:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  31850e:	0f 57 db                                        	xorps  xmm3,xmm3
  318511:	0f 57 c9                                        	xorps  xmm1,xmm1
  318514:	e8 8f f6 0a 00                                  	call   0x3c7ba8
  318519:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  31851e:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  318523:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  318527:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  31852b:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  31852e:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  318534:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  31853a:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  31853e:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  318542:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  318548:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  31854c:	e8 9f 8a fc ff                                  	call   0x2e0ff0
  318551:	0f 10 45 c0                                     	movups xmm0,XMMWORD PTR [rbp-0x40]
  318555:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  318559:	49 8b cc                                        	mov    rcx,r12
  31855c:	66 0f 7f 45 80                                  	movdqa XMMWORD PTR [rbp-0x80],xmm0
  318561:	e8 9e b7 05 00                                  	call   0x373d04
  318566:	4c 8d 9c 24 10 02 00 00                         	lea    r11,[rsp+0x210]
  31856e:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  318572:	49 8b 73 38                                     	mov    rsi,QWORD PTR [r11+0x38]
  318576:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  31857b:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  318580:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  318585:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  31858a:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  31858f:	45 0f 28 6b a0                                  	movaps xmm13,XMMWORD PTR [r11-0x60]
  318594:	49 8b e3                                        	mov    rsp,r11
  318597:	41 5f                                           	pop    r15
  318599:	41 5e                                           	pop    r14
  31859b:	41 5c                                           	pop    r12
  31859d:	5f                                              	pop    rdi
  31859e:	5d                                              	pop    rbp
  31859f:	c3                                              	ret
