
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002df5dc <.data>:
  2df5dc:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  2df5e0:	0f 2e 02             	ucomiss xmm0,DWORD PTR [rdx]
  2df5e3:	7a 1f                	jp     0x2df604
  2df5e5:	75 1d                	jne    0x2df604
  2df5e7:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2df5ec:	0f 2e 42 04          	ucomiss xmm0,DWORD PTR [rdx+0x4]
  2df5f0:	7a 12                	jp     0x2df604
  2df5f2:	75 10                	jne    0x2df604
  2df5f4:	f3 0f 10 41 08       	movss  xmm0,DWORD PTR [rcx+0x8]
  2df5f9:	0f 2e 42 08          	ucomiss xmm0,DWORD PTR [rdx+0x8]
  2df5fd:	7a 05                	jp     0x2df604
  2df5ff:	75 03                	jne    0x2df604
  2df601:	32 c0                	xor    al,al
  2df603:	c3                   	ret
  2df604:	b0 01                	mov    al,0x1
  2df606:	c3                   	ret
  2df607:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002e1278 <.data>:
  2e1278:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2e127d:	57                   	push   rdi
  2e127e:	48 83 ec 20          	sub    rsp,0x20
  2e1282:	48 8b f9             	mov    rdi,rcx
  2e1285:	48 8b da             	mov    rbx,rdx
  2e1288:	48 8b ca             	mov    rcx,rdx
  2e128b:	e8 2c 69 0e 00       	call   0x3c7bbc
  2e1290:	48 8b cf             	mov    rcx,rdi
  2e1293:	e8 50 fc ff ff       	call   0x2e0ee8
  2e1298:	0f 57 c9             	xorps  xmm1,xmm1
  2e129b:	0f 2f c1             	comiss xmm0,xmm1
  2e129e:	76 25                	jbe    0x2e12c5
  2e12a0:	f3 0f 10 0f          	movss  xmm1,DWORD PTR [rdi]
  2e12a4:	f3 0f 5e c8          	divss  xmm1,xmm0
  2e12a8:	f3 0f 11 0b          	movss  DWORD PTR [rbx],xmm1
  2e12ac:	f3 0f 10 57 04       	movss  xmm2,DWORD PTR [rdi+0x4]
  2e12b1:	f3 0f 5e d0          	divss  xmm2,xmm0
  2e12b5:	f3 0f 11 53 04       	movss  DWORD PTR [rbx+0x4],xmm2
  2e12ba:	f3 0f 10 4f 08       	movss  xmm1,DWORD PTR [rdi+0x8]
  2e12bf:	f3 0f 5e c8          	divss  xmm1,xmm0
  2e12c3:	eb 07                	jmp    0x2e12cc
  2e12c5:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  2e12cc:	f3 0f 11 4b 08       	movss  DWORD PTR [rbx+0x8],xmm1
  2e12d1:	48 8b c3             	mov    rax,rbx
  2e12d4:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2e12d9:	48 83 c4 20          	add    rsp,0x20
  2e12dd:	5f                   	pop    rdi
  2e12de:	c3                   	ret
  2e12df:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002e3b58 <.data>:
  2e3b58:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  2e3b5c:	0f 57 c9             	xorps  xmm1,xmm1
  2e3b5f:	0f 2e c1             	ucomiss xmm0,xmm1
  2e3b62:	7a 1d                	jp     0x2e3b81
  2e3b64:	75 1b                	jne    0x2e3b81
  2e3b66:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2e3b6b:	0f 2e c1             	ucomiss xmm0,xmm1
  2e3b6e:	7a 11                	jp     0x2e3b81
  2e3b70:	75 0f                	jne    0x2e3b81
  2e3b72:	f3 0f 10 41 08       	movss  xmm0,DWORD PTR [rcx+0x8]
  2e3b77:	0f 2e c1             	ucomiss xmm0,xmm1
  2e3b7a:	7a 05                	jp     0x2e3b81
  2e3b7c:	75 03                	jne    0x2e3b81
  2e3b7e:	b0 01                	mov    al,0x1
  2e3b80:	c3                   	ret
  2e3b81:	32 c0                	xor    al,al
  2e3b83:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002e3c88 <.data>:
  2e3c88:	f3 0f 10 1d 6c 9e fa 	movss  xmm3,DWORD PTR [rip+0xfffffffffffa9e6c]        # 0x28dafc
  2e3c8f:	ff 
  2e3c90:	0f 28 e0             	movaps xmm4,xmm0
  2e3c93:	f3 0f 59 25 b5 95 fa 	mulss  xmm4,DWORD PTR [rip+0xfffffffffffa95b5]        # 0x28d250
  2e3c9a:	ff 
  2e3c9b:	0f 28 d3             	movaps xmm2,xmm3
  2e3c9e:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  2e3ca3:	66 0f 7e c1          	movd   ecx,xmm0
  2e3ca7:	d1 f9                	sar    ecx,1
  2e3ca9:	2b c1                	sub    eax,ecx
  2e3cab:	66 0f 6e c8          	movd   xmm1,eax
  2e3caf:	0f 28 c1             	movaps xmm0,xmm1
  2e3cb2:	f3 0f 59 c4          	mulss  xmm0,xmm4
  2e3cb6:	f3 0f 59 c1          	mulss  xmm0,xmm1
  2e3cba:	f3 0f 5c d0          	subss  xmm2,xmm0
  2e3cbe:	f3 0f 59 d1          	mulss  xmm2,xmm1
  2e3cc2:	0f 28 c2             	movaps xmm0,xmm2
  2e3cc5:	f3 0f 59 c4          	mulss  xmm0,xmm4
  2e3cc9:	f3 0f 59 c2          	mulss  xmm0,xmm2
  2e3ccd:	f3 0f 5c d8          	subss  xmm3,xmm0
  2e3cd1:	f3 0f 10 05 7b 95 fa 	movss  xmm0,DWORD PTR [rip+0xfffffffffffa957b]        # 0x28d254
  2e3cd8:	ff 
  2e3cd9:	f3 0f 59 da          	mulss  xmm3,xmm2
  2e3cdd:	f3 0f 5e c3          	divss  xmm0,xmm3
  2e3ce1:	c3                   	ret
  2e3ce2:	cc                   	int3
  2e3ce3:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002e5a44 <.data>:
  2e5a44:	0f 2f c8             	comiss xmm1,xmm0
  2e5a47:	77 07                	ja     0x2e5a50
  2e5a49:	0f 28 ca             	movaps xmm1,xmm2
  2e5a4c:	f3 0f 5d c8          	minss  xmm1,xmm0
  2e5a50:	0f 28 c1             	movaps xmm0,xmm1
  2e5a53:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002e5a80 <.data>:
  2e5a80:	48 8b c4             	mov    rax,rsp
  2e5a83:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  2e5a87:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  2e5a8b:	57                   	push   rdi
  2e5a8c:	48 83 ec 70          	sub    rsp,0x70
  2e5a90:	48 8b d9             	mov    rbx,rcx
  2e5a93:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  2e5a97:	49 8b f0             	mov    rsi,r8
  2e5a9a:	48 8b fa             	mov    rdi,rdx
  2e5a9d:	4c 8b c3             	mov    r8,rbx
  2e5aa0:	48 8d 50 a8          	lea    rdx,[rax-0x58]
  2e5aa4:	48 83 c1 0c          	add    rcx,0xc
  2e5aa8:	e8 1f 9c ff ff       	call   0x2df6cc
  2e5aad:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2e5ab2:	e8 31 b4 ff ff       	call   0x2e0ee8
  2e5ab7:	0f 28 f0             	movaps xmm6,xmm0
  2e5aba:	0f 2e 35 8b 77 fa ff 	ucomiss xmm6,DWORD PTR [rip+0xfffffffffffa778b]        # 0x28d24c
  2e5ac1:	7a 12                	jp     0x2e5ad5
  2e5ac3:	75 10                	jne    0x2e5ad5
  2e5ac5:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  2e5ac9:	f2 0f 11 07          	movsd  QWORD PTR [rdi],xmm0
  2e5acd:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  2e5ad0:	89 47 08             	mov    DWORD PTR [rdi+0x8],eax
  2e5ad3:	eb 5a                	jmp    0x2e5b2f
  2e5ad5:	0f 28 d6             	movaps xmm2,xmm6
  2e5ad8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e5add:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2e5ae2:	e8 5d 9c ff ff       	call   0x2df744
  2e5ae7:	4c 8b c3             	mov    r8,rbx
  2e5aea:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  2e5aef:	48 8b ce             	mov    rcx,rsi
  2e5af2:	e8 d5 9b ff ff       	call   0x2df6cc
  2e5af7:	48 8b c8             	mov    rcx,rax
  2e5afa:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e5aff:	e8 c0 00 00 00       	call   0x2e5bc4
  2e5b04:	0f 28 d6             	movaps xmm2,xmm6
  2e5b07:	0f 57 c9             	xorps  xmm1,xmm1
  2e5b0a:	e8 35 ff ff ff       	call   0x2e5a44
  2e5b0f:	0f 28 d0             	movaps xmm2,xmm0
  2e5b12:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
  2e5b17:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2e5b1c:	e8 4b 9b ff ff       	call   0x2df66c
  2e5b21:	4c 8b c0             	mov    r8,rax
  2e5b24:	48 8b d7             	mov    rdx,rdi
  2e5b27:	48 8b cb             	mov    rcx,rbx
  2e5b2a:	e8 d9 9b ff ff       	call   0x2df708
  2e5b2f:	0f 28 74 24 60       	movaps xmm6,XMMWORD PTR [rsp+0x60]
  2e5b34:	4c 8d 5c 24 70       	lea    r11,[rsp+0x70]
  2e5b39:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  2e5b3d:	48 8b c7             	mov    rax,rdi
  2e5b40:	49 8b 73 18          	mov    rsi,QWORD PTR [r11+0x18]
  2e5b44:	49 8b e3             	mov    rsp,r11
  2e5b47:	5f                   	pop    rdi
  2e5b48:	c3                   	ret
  2e5b49:	cc                   	int3
  2e5b4a:	cc                   	int3
  2e5b4b:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

00000000002e5bc4 <.data>:
  2e5bc4:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2e5bc9:	f3 0f 59 42 04       	mulss  xmm0,DWORD PTR [rdx+0x4]
  2e5bce:	f3 0f 10 09          	movss  xmm1,DWORD PTR [rcx]
  2e5bd2:	f3 0f 59 0a          	mulss  xmm1,DWORD PTR [rdx]
  2e5bd6:	f3 0f 10 51 08       	movss  xmm2,DWORD PTR [rcx+0x8]
  2e5bdb:	f3 0f 59 52 08       	mulss  xmm2,DWORD PTR [rdx+0x8]
  2e5be0:	f3 0f 58 c1          	addss  xmm0,xmm1
  2e5be4:	f3 0f 58 c2          	addss  xmm0,xmm2
  2e5be8:	c3                   	ret
  2e5be9:	cc                   	int3
  2e5bea:	cc                   	int3
  2e5beb:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

0000000000330830 <.data>:
  330830:	48 8b c4             	mov    rax,rsp
  330833:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  330837:	57                   	push   rdi
  330838:	48 83 ec 60          	sub    rsp,0x60
  33083c:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  330840:	48 8b da             	mov    rbx,rdx
  330843:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  330847:	0f 28 f3             	movaps xmm6,xmm3
  33084a:	f3 41 0f 10 78 08    	movss  xmm7,DWORD PTR [r8+0x8]
  330850:	48 8b f9             	mov    rdi,rcx
  330853:	f3 0f 5c 7a 08       	subss  xmm7,DWORD PTR [rdx+0x8]
  330858:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  33085d:	f3 45 0f 10 40 04    	movss  xmm8,DWORD PTR [r8+0x4]
  330863:	f3 44 0f 5c 42 04    	subss  xmm8,DWORD PTR [rdx+0x4]
  330869:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  33086e:	f3 45 0f 10 08       	movss  xmm9,DWORD PTR [r8]
  330873:	0f 28 cf             	movaps xmm1,xmm7
  330876:	f3 44 0f 5c 0a       	subss  xmm9,DWORD PTR [rdx]
  33087b:	f3 0f 59 cf          	mulss  xmm1,xmm7
  33087f:	41 0f 28 d0          	movaps xmm2,xmm8
  330883:	f3 41 0f 59 d0       	mulss  xmm2,xmm8
  330888:	41 0f 28 c1          	movaps xmm0,xmm9
  33088c:	f3 41 0f 59 c1       	mulss  xmm0,xmm9
  330891:	f3 0f 58 d0          	addss  xmm2,xmm0
  330895:	0f 57 c0             	xorps  xmm0,xmm0
  330898:	f3 0f 58 d1          	addss  xmm2,xmm1
  33089c:	0f 2e d0             	ucomiss xmm2,xmm0
  33089f:	7a 02                	jp     0x3308a3
  3308a1:	74 11                	je     0x3308b4
  3308a3:	0f 2f f0             	comiss xmm6,xmm0
  3308a6:	72 1e                	jb     0x3308c6
  3308a8:	0f 28 c6             	movaps xmm0,xmm6
  3308ab:	f3 0f 59 c6          	mulss  xmm0,xmm6
  3308af:	0f 2f c2             	comiss xmm0,xmm2
  3308b2:	72 12                	jb     0x3308c6
  3308b4:	f2 41 0f 10 00       	movsd  xmm0,QWORD PTR [r8]
  3308b9:	f2 0f 11 01          	movsd  QWORD PTR [rcx],xmm0
  3308bd:	41 8b 40 08          	mov    eax,DWORD PTR [r8+0x8]
  3308c1:	89 41 08             	mov    DWORD PTR [rcx+0x8],eax
  3308c4:	eb 47                	jmp    0x33090d
  3308c6:	0f 28 c2             	movaps xmm0,xmm2
  3308c9:	e8 ba 33 fb ff       	call   0x2e3c88
  3308ce:	f3 0f 5e f8          	divss  xmm7,xmm0
  3308d2:	48 8b cf             	mov    rcx,rdi
  3308d5:	f3 44 0f 5e c0       	divss  xmm8,xmm0
  3308da:	f3 44 0f 5e c8       	divss  xmm9,xmm0
  3308df:	f3 0f 59 fe          	mulss  xmm7,xmm6
  3308e3:	f3 44 0f 59 c6       	mulss  xmm8,xmm6
  3308e8:	f3 0f 58 7b 08       	addss  xmm7,DWORD PTR [rbx+0x8]
  3308ed:	f3 44 0f 59 ce       	mulss  xmm9,xmm6
  3308f2:	f3 44 0f 58 43 04    	addss  xmm8,DWORD PTR [rbx+0x4]
  3308f8:	f3 44 0f 58 0b       	addss  xmm9,DWORD PTR [rbx]
  3308fd:	0f 28 df             	movaps xmm3,xmm7
  330900:	41 0f 28 d0          	movaps xmm2,xmm8
  330904:	41 0f 28 c9          	movaps xmm1,xmm9
  330908:	e8 9b 72 09 00       	call   0x3c7ba8
  33090d:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  330912:	48 8b c7             	mov    rax,rdi
  330915:	0f 28 74 24 50       	movaps xmm6,XMMWORD PTR [rsp+0x50]
  33091a:	0f 28 7c 24 40       	movaps xmm7,XMMWORD PTR [rsp+0x40]
  33091f:	44 0f 28 44 24 30    	movaps xmm8,XMMWORD PTR [rsp+0x30]
  330925:	44 0f 28 4c 24 20    	movaps xmm9,XMMWORD PTR [rsp+0x20]
  33092b:	48 83 c4 60          	add    rsp,0x60
  33092f:	5f                   	pop    rdi
  330930:	c3                   	ret
  330931:	cc                   	int3
  330932:	cc                   	int3
  330933:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/projectile_helper_bytes.bin:     file format binary


Disassembly of section .data:

000000000037261c <.data>:
  37261c:	48 83 ec 28          	sub    rsp,0x28
  372620:	4c 8b c1             	mov    r8,rcx
  372623:	e8 e0 88 f5 ff       	call   0x2caf08
  372628:	84 c0                	test   al,al
  37262a:	75 04                	jne    0x372630
  37262c:	33 c0                	xor    eax,eax
  37262e:	eb 0f                	jmp    0x37263f
  372630:	ba 20 00 00 00       	mov    edx,0x20
  372635:	49 8b c8             	mov    rcx,r8
  372638:	e8 ff c7 f6 ff       	call   0x2dee3c
  37263d:	8b 00                	mov    eax,DWORD PTR [rax]
  37263f:	48 83 c4 28          	add    rsp,0x28
  372643:	c3                   	ret
