
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000389db4 <.data+0x389db4>:
  389db4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  389db9:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  389dbe:	57                                              	push   rdi
  389dbf:	48 83 ec 50                                     	sub    rsp,0x50
  389dc3:	48 63 da                                        	movsxd rbx,edx
  389dc6:	48 8b f9                                        	mov    rdi,rcx
  389dc9:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  389dce:	48 8d 0d 0b 23 07 00                            	lea    rcx,[rip+0x7230b]        # 0x3fc0e0
  389dd5:	48 8b d3                                        	mov    rdx,rbx
  389dd8:	49 8b f1                                        	mov    rsi,r9
  389ddb:	0f 28 f2                                        	movaps xmm6,xmm2
  389dde:	e8 d5 c9 fa ff                                  	call   0x3367b8
  389de3:	48 8b c8                                        	mov    rcx,rax
  389de6:	0f 28 ce                                        	movaps xmm1,xmm6
  389de9:	e8 fe ac fd ff                                  	call   0x364aec
  389dee:	48 85 c0                                        	test   rax,rax
  389df1:	75 10                                           	jne    0x389e03
  389df3:	0f 57 d2                                        	xorps  xmm2,xmm2
  389df6:	0f 57 c9                                        	xorps  xmm1,xmm1
  389df9:	48 8b cf                                        	mov    rcx,rdi
  389dfc:	e8 3f 25 f4 ff                                  	call   0x2cc340
  389e01:	eb 66                                           	jmp    0x389e69
  389e03:	48 8b d3                                        	mov    rdx,rbx
  389e06:	48 8d 0d d3 22 07 00                            	lea    rcx,[rip+0x722d3]        # 0x3fc0e0
  389e0d:	e8 a6 c9 fa ff                                  	call   0x3367b8
  389e12:	48 8b c8                                        	mov    rcx,rax
  389e15:	0f 28 ce                                        	movaps xmm1,xmm6
  389e18:	e8 cf ac fd ff                                  	call   0x364aec
  389e1d:	33 d2                                           	xor    edx,edx
  389e1f:	48 8b ce                                        	mov    rcx,rsi
  389e22:	48 8b d8                                        	mov    rbx,rax
  389e25:	e8 26 7e 00 00                                  	call   0x391c50
  389e2a:	f3 0f 59 35 b6 f0 eb ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffebf0b6]        # 0x248ee8
  389e32:	48 8b d7                                        	mov    rdx,rdi
  389e35:	48 8b cb                                        	mov    rcx,rbx
  389e38:	48 c7 44 24 38 00 00 00 00                      	mov    QWORD PTR [rsp+0x38],0x0
  389e41:	f3 0f 10 05 17 94 f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff09417]        # 0x293260
  389e49:	f3 0f 10 1d 03 3d f0 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff03d03]        # 0x28db54
  389e51:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  389e56:	0f 28 d6                                        	movaps xmm2,xmm6
  389e59:	48 89 74 24 28                                  	mov    QWORD PTR [rsp+0x28],rsi
  389e5e:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  389e64:	e8 0b 9a 01 00                                  	call   0x3a3874
  389e69:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  389e6e:	48 8b c7                                        	mov    rax,rdi
  389e71:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  389e76:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  389e7b:	48 83 c4 50                                     	add    rsp,0x50
  389e7f:	5f                                              	pop    rdi
  389e80:	c3                                              	ret
