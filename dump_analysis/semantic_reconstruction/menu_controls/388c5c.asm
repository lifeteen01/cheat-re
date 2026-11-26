
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000388c5c <.data+0x388c5c>:
  388c5c:	48 8b c4                                        	mov    rax,rsp
  388c5f:	53                                              	push   rbx
  388c60:	56                                              	push   rsi
  388c61:	57                                              	push   rdi
  388c62:	48 83 ec 60                                     	sub    rsp,0x60
  388c66:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  388c6a:	0f 28 f0                                        	movaps xmm6,xmm0
  388c6d:	0f 29 78 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm7
  388c71:	44 0f 29 40 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm8
  388c76:	48 89 50 a8                                     	mov    QWORD PTR [rax-0x58],rdx
  388c7a:	e8 75 05 00 00                                  	call   0x3891f4
  388c7f:	0f 28 f8                                        	movaps xmm7,xmm0
  388c82:	0f 28 c6                                        	movaps xmm0,xmm6
  388c85:	e8 66 e1 ff ff                                  	call   0x386df0
  388c8a:	0f 28 d8                                        	movaps xmm3,xmm0
  388c8d:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  388c92:	0f 28 d7                                        	movaps xmm2,xmm7
  388c95:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  388c9d:	44 0f 28 c0                                     	movaps xmm8,xmm0
  388ca1:	e8 f6 a3 ff ff                                  	call   0x38309c
  388ca6:	48 8b d0                                        	mov    rdx,rax
  388ca9:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  388cae:	48 8d 8c 24 98 00 00 00                         	lea    rcx,[rsp+0x98]
  388cb6:	e8 29 db fa ff                                  	call   0x3367e4
  388cbb:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  388cbf:	f2 0f 11 4c 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm1
  388cc5:	e8 02 a2 00 00                                  	call   0x392ecc
  388cca:	8b 3d 00 a1 07 00                               	mov    edi,DWORD PTR [rip+0x7a100]        # 0x402dd0
  388cd0:	48 8d 70 20                                     	lea    rsi,[rax+0x20]
  388cd4:	eb 53                                           	jmp    0x388d29
  388cd6:	8b d7                                           	mov    edx,edi
  388cd8:	48 8b ce                                        	mov    rcx,rsi
  388cdb:	e8 c8 a0 ff ff                                  	call   0x382da8
  388ce0:	48 8b d0                                        	mov    rdx,rax
  388ce3:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  388ceb:	41 0f 28 d8                                     	movaps xmm3,xmm8
  388cef:	0f 28 d7                                        	movaps xmm2,xmm7
  388cf2:	e8 a5 a3 ff ff                                  	call   0x38309c
  388cf7:	48 8b d0                                        	mov    rdx,rax
  388cfa:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  388cff:	48 8d 8c 24 98 00 00 00                         	lea    rcx,[rsp+0x98]
  388d07:	e8 d8 da fa ff                                  	call   0x3367e4
  388d0c:	8b d7                                           	mov    edx,edi
  388d0e:	48 8b ce                                        	mov    rcx,rsi
  388d11:	48 8b d8                                        	mov    rbx,rax
  388d14:	f3 0f 10 70 04                                  	movss  xmm6,DWORD PTR [rax+0x4]
  388d19:	e8 8a a0 ff ff                                  	call   0x382da8
  388d1e:	8b 0b                                           	mov    ecx,DWORD PTR [rbx]
  388d20:	ff c7                                           	inc    edi
  388d22:	89 08                                           	mov    DWORD PTR [rax],ecx
  388d24:	f3 0f 11 70 04                                  	movss  DWORD PTR [rax+0x4],xmm6
  388d29:	3b 3e                                           	cmp    edi,DWORD PTR [rsi]
  388d2b:	7c a9                                           	jl     0x388cd6
  388d2d:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  388d32:	0f 28 7c 24 40                                  	movaps xmm7,XMMWORD PTR [rsp+0x40]
  388d37:	44 0f 28 44 24 30                               	movaps xmm8,XMMWORD PTR [rsp+0x30]
  388d3d:	48 83 c4 60                                     	add    rsp,0x60
  388d41:	5f                                              	pop    rdi
  388d42:	5e                                              	pop    rsi
  388d43:	5b                                              	pop    rbx
  388d44:	c3                                              	ret
