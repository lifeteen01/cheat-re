; [C] Read-only original DLL byte extraction, SHA256 ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090

dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002caf08 <.data+0x2caf08>:
  2caf08:	48 85 c9             	test   rcx,rcx
  2caf0b:	75 03                	jne    0x2caf10
  2caf0d:	32 c0                	xor    al,al
  2caf0f:	c3                   	ret
  2caf10:	48 8d 81 00 00 f0 ff 	lea    rax,[rcx-0x100000]
  2caf17:	48 b9 fe ff ef ff ff 	movabs rcx,0x7ffffeffffe
  2caf1e:	07 00 00 
  2caf21:	48 3b c1             	cmp    rax,rcx
  2caf24:	0f 96 c0             	setbe  al
  2caf27:	c3                   	ret
  2caf28:	4c               	mov    r11,rsp


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d86a0 <.data+0x2d86a0>:
  2d86a0:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  2d86a4:	48 39 01             	cmp    QWORD PTR [rcx],rax
  2d86a7:	0f 94 c0             	sete   al
  2d86aa:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df5dc <.data+0x2df5dc>:
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


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df6cc <.data+0x2df6cc>:
  2df6cc:	40 53                	rex push rbx
  2df6ce:	48 83 ec 20          	sub    rsp,0x20
  2df6d2:	f3 0f 10 59 08       	movss  xmm3,DWORD PTR [rcx+0x8]
  2df6d7:	48 8b da             	mov    rbx,rdx
  2df6da:	f3 0f 10 51 04       	movss  xmm2,DWORD PTR [rcx+0x4]
  2df6df:	f3 0f 10 09          	movss  xmm1,DWORD PTR [rcx]
  2df6e3:	48 8b ca             	mov    rcx,rdx
  2df6e6:	f3 41 0f 5c 58 08    	subss  xmm3,DWORD PTR [r8+0x8]
  2df6ec:	f3 41 0f 5c 50 04    	subss  xmm2,DWORD PTR [r8+0x4]
  2df6f2:	f3 41 0f 5c 08       	subss  xmm1,DWORD PTR [r8]
  2df6f7:	e8 ac 84 0e 00       	call   0x3c7ba8
  2df6fc:	48 8b c3             	mov    rax,rbx
  2df6ff:	48 83 c4 20          	add    rsp,0x20
  2df703:	5b                   	pop    rbx
  2df704:	c3                   	ret
  2df705:	cc                   	int3
  2df706:	cc                   	int3
  2df707:	cc                   	int3
  2df708:	40 53                	rex push rbx
  2df70a:	48 83 ec 20          	sub    rsp,0x20
  2df70e:	f3 41 0f 10 58 08    	movss  xmm3,DWORD PTR [r8+0x8]
  2df714:	48 8b da             	mov    rbx,rdx
  2df717:	f3 41 0f 10 50 04    	movss  xmm2,DWORD PTR [r8+0x4]
  2df71d:	f3 41 0f 10 08       	movss  xmm1,DWORD PTR [r8]
  2df722:	f3 0f 58 59 08       	addss  xmm3,DWORD PTR [rcx+0x8]
  2df727:	f3 0f 58 51 04       	addss  xmm2,DWORD PTR [rcx+0x4]
  2df72c:	f3 0f 58 09          	addss  xmm1,DWORD PTR [rcx]
  2df730:	48 8b ca             	mov    rcx,rdx
  2df733:	e8 70 84 0e 00       	call   0x3c7ba8
  2df738:	48 8b c3             	mov    rax,rbx
  2df73b:	48 83 c4 20          	add    rsp,0x20
  2df73f:	5b                   	pop    rbx
  2df740:	c3                   	ret
  2df741:	cc                   	int3
  2df742:	cc                   	int3
  2df743:	cc                   	int3
  2df744:	40 53                	rex push rbx
  2df746:	48 83 ec 20          	sub    rsp,0x20
  2df74a:	f3 0f 10 59 08       	movss  xmm3,DWORD PTR [rcx+0x8]
  2df74f:	0f 28 c2             	movaps xmm0,xmm2
  2df752:	f3 0f 10 51 04       	movss  xmm2,DWORD PTR [rcx+0x4]
  2df757:	48 8b da             	mov    rbx,rdx
  2df75a:	f3 0f 10 09          	movss  xmm1,DWORD PTR [rcx]
  2df75e:	48 8b ca             	mov    rcx,rdx
  2df761:	f3 0f 5e d0          	divss  xmm2,xmm0
  2df765:	f3 0f 5e d8          	divss  xmm3,xmm0
  2df769:	f3 0f 5e c8          	divss  xmm1,xmm0
  2df76d:	e8 36 84 0e 00       	call   0x3c7ba8
  2df772:	48 8b c3             	mov    rax,rbx
  2df775:	48 83 c4 20          	add    rsp,0x20
  2df779:	5b                   	pop    rbx
  2df77a:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dff30 <.data+0x2dff30>:
  2dff30:	f3 0f 10 09          	movss  xmm1,DWORD PTR [rcx]
  2dff34:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2dff39:	f3 0f 5c 42 04       	subss  xmm0,DWORD PTR [rdx+0x4]
  2dff3e:	f3 0f 5c 0a          	subss  xmm1,DWORD PTR [rdx]
  2dff42:	f3 0f 10 51 08       	movss  xmm2,DWORD PTR [rcx+0x8]
  2dff47:	f3 0f 5c 52 08       	subss  xmm2,DWORD PTR [rdx+0x8]
  2dff4c:	f3 0f 59 c0          	mulss  xmm0,xmm0
  2dff50:	f3 0f 59 c9          	mulss  xmm1,xmm1
  2dff54:	f3 0f 59 d2          	mulss  xmm2,xmm2
  2dff58:	f3 0f 58 c1          	addss  xmm0,xmm1
  2dff5c:	f3 0f 58 c2          	addss  xmm0,xmm2
  2dff60:	e9 23 3d 00 00       	jmp    0x2e3c88


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3b58 <.data+0x2e3b58>:
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


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e5a44 <.data+0x2e5a44>:
  2e5a44:	0f 2f c8             	comiss xmm1,xmm0
  2e5a47:	77 07                	ja     0x2e5a50
  2e5a49:	0f 28 ca             	movaps xmm1,xmm2
  2e5a4c:	f3 0f 5d c8          	minss  xmm1,xmm0
  2e5a50:	0f 28 c1             	movaps xmm0,xmm1
  2e5a53:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ef7d0 <.data+0x2ef7d0>:
  2ef7d0:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  2ef7d3:	48 8d 14 52          	lea    rdx,[rdx+rdx*2]
  2ef7d7:	48 8d 04 90          	lea    rax,[rax+rdx*4]
  2ef7db:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000031a94c <.data+0x31a94c>:
  31a94c:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  31a950:	48 83 e8 0c          	sub    rax,0xc
  31a954:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000031ac64 <.data+0x31ac64>:
  31ac64:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  31ac67:	48 3b 41 08          	cmp    rax,QWORD PTR [rcx+0x8]
  31ac6b:	74 04                	je     0x31ac71
  31ac6d:	48 89 41 08          	mov    QWORD PTR [rcx+0x8],rax
  31ac71:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320d9c <.data+0x320d9c>:
  320d9c:	e9 8f a4 fc ff       	jmp    0x2eb230


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320f64 <.data+0x320f64>:
  320f64:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  320f68:	48 b8 ab aa aa aa aa 	movabs rax,0x2aaaaaaaaaaaaaab
  320f6f:	aa aa 2a 
  320f72:	48 2b 11             	sub    rdx,QWORD PTR [rcx]
  320f75:	48 f7 ea             	imul   rdx
  320f78:	48 d1 fa             	sar    rdx,1
  320f7b:	48 8b c2             	mov    rax,rdx
  320f7e:	48 c1 e8 3f          	shr    rax,0x3f
  320f82:	48 03 c2             	add    rax,rdx
  320f85:	c3                   	ret


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000322ef8 <.data+0x322ef8>:
  322ef8:	40 53                	rex push rbx
  322efa:	48 83 ec 30          	sub    rsp,0x30
  322efe:	48 8b d9             	mov    rbx,rcx
  322f01:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  322f06:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  322f0b:	e8 c8 fa ff ff       	call   0x3229d8
  322f10:	48 8b c8             	mov    rcx,rax
  322f13:	e8 48 a2 fb ff       	call   0x2dd160
  322f18:	48 8b d0             	mov    rdx,rax
  322f1b:	4c 8d 05 6e f5 0c 00 	lea    r8,[rip+0xcf56e]        # 0x3f2490
  322f22:	48 8b cb             	mov    rcx,rbx
  322f25:	e8 06 00 00 00       	call   0x322f30
  322f2a:	48 83 c4 30          	add    rsp,0x30
  322f2e:	5b                   	pop    rbx
  322f2f:	c3                   	ret
  322f30:	40 53                	rex push rbx
  322f32:	55                   	push   rbp
  322f33:	56                   	push   rsi
  322f34:	57                   	push   rdi
  322f35:	41 54                	push   r12
  322f37:	41 56                	push   r14
  322f39:	41 57                	push   r15
  322f3b:	48 83 ec 20          	sub    rsp,0x20
  322f3f:	4d 8b e0             	mov    r12,r8
  322f42:	4c 8b f2             	mov    r14,rdx
  322f45:	48 85 c9             	test   rcx,rcx
  322f48:	0f 84 a1 00 00 00    	je     0x322fef
  322f4e:	48 85 d2             	test   rdx,rdx
  322f51:	0f 84 98 00 00 00    	je     0x322fef
  322f57:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  322f5a:	0f 84 8f 00 00 00    	je     0x322fef
  322f60:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  322f64:	48 85 c0             	test   rax,rax
  322f67:	0f 84 82 00 00 00    	je     0x322fef
  322f6d:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  322f71:	48 85 c0             	test   rax,rax
  322f74:	74 79                	je     0x322fef
  322f76:	4c 8b 78 20          	mov    r15,QWORD PTR [rax+0x20]
  322f7a:	4d 85 ff             	test   r15,r15
  322f7d:	74 70                	je     0x322fef
  322f7f:	8b 68 30             	mov    ebp,DWORD PTR [rax+0x30]
  322f82:	8d 45 ff             	lea    eax,[rbp-0x1]
  322f85:	3d ff 00 00 00       	cmp    eax,0xff
  322f8a:	77 63                	ja     0x322fef
  322f8c:	33 f6                	xor    esi,esi
  322f8e:	85 ed                	test   ebp,ebp
  322f90:	7e 5d                	jle    0x322fef
  322f92:	8b c6                	mov    eax,esi
  322f94:	c1 e0 04             	shl    eax,0x4
  322f97:	48 98                	cdqe
  322f99:	49 8b 5c 07 08       	mov    rbx,QWORD PTR [r15+rax*1+0x8]
  322f9e:	48 85 db             	test   rbx,rbx
  322fa1:	74 46                	je     0x322fe9
  322fa3:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  322fa7:	48 85 db             	test   rbx,rbx
  322faa:	74 3d                	je     0x322fe9
  322fac:	f6 c3 01             	test   bl,0x1
  322faf:	75 38                	jne    0x322fe9
  322fb1:	48 8b 1b             	mov    rbx,QWORD PTR [rbx]
  322fb4:	48 85 db             	test   rbx,rbx
  322fb7:	74 30                	je     0x322fe9
  322fb9:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  322fbc:	48 85 ff             	test   rdi,rdi
  322fbf:	74 28                	je     0x322fe9
  322fc1:	49 83 3c 24 00       	cmp    QWORD PTR [r12],0x0
  322fc6:	74 0b                	je     0x322fd3
  322fc8:	49 39 3c 24          	cmp    QWORD PTR [r12],rdi
  322fcc:	75 1b                	jne    0x322fe9
  322fce:	48 8b c3             	mov    rax,rbx
  322fd1:	eb 1e                	jmp    0x322ff1
  322fd3:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  322fd7:	48 85 c9             	test   rcx,rcx
  322fda:	74 0d                	je     0x322fe9
  322fdc:	49 8b d6             	mov    rdx,r14
  322fdf:	e8 7c 79 0a 00       	call   0x3ca960
  322fe4:	48 85 c0             	test   rax,rax
  322fe7:	75 17                	jne    0x323000
  322fe9:	ff c6                	inc    esi
  322feb:	3b f5                	cmp    esi,ebp
  322fed:	7c a3                	jl     0x322f92
  322fef:	33 c0                	xor    eax,eax
  322ff1:	48 83 c4 20          	add    rsp,0x20
  322ff5:	41 5f                	pop    r15
  322ff7:	41 5e                	pop    r14
  322ff9:	41 5c                	pop    r12
  322ffb:	5f                   	pop    rdi
  322ffc:	5e                   	pop    rsi
  322ffd:	5d                   	pop    rbp
  322ffe:	5b                   	pop    rbx
  322fff:	c3                   	ret
  323000:	49 89 3c 24          	mov    QWORD PTR [r12],rdi
  323004:	eb c8                	jmp    0x322fce
  323006:	cc                   	int3
  323007:	cc                   	int3


dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c7ba8 <.data+0x3c7ba8>:
  3c7ba8:	f3 0f 11 09          	movss  DWORD PTR [rcx],xmm1
  3c7bac:	48 8b c1             	mov    rax,rcx
  3c7baf:	f3 0f 11 51 04       	movss  DWORD PTR [rcx+0x4],xmm2
  3c7bb4:	f3 0f 11 59 08       	movss  DWORD PTR [rcx+0x8],xmm3
  3c7bb9:	c3                   	ret
  3c7bba:	cc                   	int3
  3c7bbb:	cc                   	int3
  3c7bbc:	33 c0                	xor    eax,eax
  3c7bbe:	48 89 01             	mov    QWORD PTR [rcx],rax
  3c7bc1:	89 41 08             	mov    DWORD PTR [rcx+0x8],eax
  3c7bc4:	48 8b c1             	mov    rax,rcx
  3c7bc7:	c3                   	ret

; [C] Literal constants, raw offset=RVA in mapped input:
; 0x28d254: 0000803f binary32=1.0
; 0x2930a8: cdcc4c3e binary32=0.20000000298023224
; 0x28dafc: 0000c03f binary32=1.5
; 0x293098: cdcc4c3d binary32=0.05000000074505806
; 0x293134: 00000040 binary32=2.0
; 0x2941b4: 0000403f binary32=0.75
; 0x293180: 0000a040 binary32=5.0
; 0x28d250: 0000003f binary32=0.5
; 0x2930b8: 5c8fc23e binary32=0.3799999952316284