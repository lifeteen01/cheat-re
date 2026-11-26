
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000330830 <.data+0x330830>:
  330830:	48 8b c4                                        	mov    rax,rsp
  330833:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  330837:	57                                              	push   rdi
  330838:	48 83 ec 60                                     	sub    rsp,0x60
  33083c:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  330840:	48 8b da                                        	mov    rbx,rdx
  330843:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  330847:	0f 28 f3                                        	movaps xmm6,xmm3
  33084a:	f3 41 0f 10 78 08                               	movss  xmm7,DWORD PTR [r8+0x8]
  330850:	48 8b f9                                        	mov    rdi,rcx
  330853:	f3 0f 5c 7a 08                                  	subss  xmm7,DWORD PTR [rdx+0x8]
  330858:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  33085d:	f3 45 0f 10 40 04                               	movss  xmm8,DWORD PTR [r8+0x4]
  330863:	f3 44 0f 5c 42 04                               	subss  xmm8,DWORD PTR [rdx+0x4]
  330869:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  33086e:	f3 45 0f 10 08                                  	movss  xmm9,DWORD PTR [r8]
  330873:	0f 28 cf                                        	movaps xmm1,xmm7
  330876:	f3 44 0f 5c 0a                                  	subss  xmm9,DWORD PTR [rdx]
  33087b:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  33087f:	41 0f 28 d0                                     	movaps xmm2,xmm8
  330883:	f3 41 0f 59 d0                                  	mulss  xmm2,xmm8
  330888:	41 0f 28 c1                                     	movaps xmm0,xmm9
  33088c:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  330891:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  330895:	0f 57 c0                                        	xorps  xmm0,xmm0
  330898:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  33089c:	0f 2e d0                                        	ucomiss xmm2,xmm0
  33089f:	7a 02                                           	jp     0x3308a3
  3308a1:	74 11                                           	je     0x3308b4
  3308a3:	0f 2f f0                                        	comiss xmm6,xmm0
  3308a6:	72 1e                                           	jb     0x3308c6
  3308a8:	0f 28 c6                                        	movaps xmm0,xmm6
  3308ab:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3308af:	0f 2f c2                                        	comiss xmm0,xmm2
  3308b2:	72 12                                           	jb     0x3308c6
  3308b4:	f2 41 0f 10 00                                  	movsd  xmm0,QWORD PTR [r8]
  3308b9:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  3308bd:	41 8b 40 08                                     	mov    eax,DWORD PTR [r8+0x8]
  3308c1:	89 41 08                                        	mov    DWORD PTR [rcx+0x8],eax
  3308c4:	eb 47                                           	jmp    0x33090d
  3308c6:	0f 28 c2                                        	movaps xmm0,xmm2
  3308c9:	e8 ba 33 fb ff                                  	call   0x2e3c88
  3308ce:	f3 0f 5e f8                                     	divss  xmm7,xmm0
  3308d2:	48 8b cf                                        	mov    rcx,rdi
  3308d5:	f3 44 0f 5e c0                                  	divss  xmm8,xmm0
  3308da:	f3 44 0f 5e c8                                  	divss  xmm9,xmm0
  3308df:	f3 0f 59 fe                                     	mulss  xmm7,xmm6
  3308e3:	f3 44 0f 59 c6                                  	mulss  xmm8,xmm6
  3308e8:	f3 0f 58 7b 08                                  	addss  xmm7,DWORD PTR [rbx+0x8]
  3308ed:	f3 44 0f 59 ce                                  	mulss  xmm9,xmm6
  3308f2:	f3 44 0f 58 43 04                               	addss  xmm8,DWORD PTR [rbx+0x4]
  3308f8:	f3 44 0f 58 0b                                  	addss  xmm9,DWORD PTR [rbx]
  3308fd:	0f 28 df                                        	movaps xmm3,xmm7
  330900:	41 0f 28 d0                                     	movaps xmm2,xmm8
  330904:	41 0f 28 c9                                     	movaps xmm1,xmm9
  330908:	e8 9b 72 09 00                                  	call   0x3c7ba8
  33090d:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  330912:	48 8b c7                                        	mov    rax,rdi
  330915:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  33091a:	0f 28 7c 24 40                                  	movaps xmm7,XMMWORD PTR [rsp+0x40]
  33091f:	44 0f 28 44 24 30                               	movaps xmm8,XMMWORD PTR [rsp+0x30]
  330925:	44 0f 28 4c 24 20                               	movaps xmm9,XMMWORD PTR [rsp+0x20]
  33092b:	48 83 c4 60                                     	add    rsp,0x60
  33092f:	5f                                              	pop    rdi
  330930:	c3                                              	ret
