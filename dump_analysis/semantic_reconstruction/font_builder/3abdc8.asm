
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003abdc8 <.data+0x3abdc8>:
  3abdc8:	45 85 c0             	test   r8d,r8d
  3abdcb:	0f 8e ff 01 00 00    	jle    0x3abfd0
  3abdd1:	55                   	push   rbp
  3abdd2:	53                   	push   rbx
  3abdd3:	56                   	push   rsi
  3abdd4:	57                   	push   rdi
  3abdd5:	41 54                	push   r12
  3abdd7:	41 55                	push   r13
  3abdd9:	41 56                	push   r14
  3abddb:	41 57                	push   r15
  3abddd:	48 8b ec             	mov    rbp,rsp
  3abde0:	48 83 ec 38          	sub    rsp,0x38
  3abde4:	44 8b 75 68          	mov    r14d,DWORD PTR [rbp+0x68]
  3abde8:	8b da                	mov    ebx,edx
  3abdea:	41 2b de             	sub    ebx,r14d
  3abded:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  3abdf4:	00 
  3abdf5:	41 8b f0             	mov    esi,r8d
  3abdf8:	4d 63 e1             	movsxd r12,r9d
  3abdfb:	44 8b fa             	mov    r15d,edx
  3abdfe:	48 8b f9             	mov    rdi,rcx
  3abe01:	4d 8b c6             	mov    r8,r14
  3abe04:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  3abe08:	33 d2                	xor    edx,edx
  3abe0a:	e8 61 cf 01 00       	call   0x3c8d70
  3abe0f:	45 33 d2             	xor    r10d,r10d
  3abe12:	41 8b c6             	mov    eax,r14d
  3abe15:	83 e8 02             	sub    eax,0x2
  3abe18:	0f 84 34 01 00 00    	je     0x3abf52
  3abe1e:	83 e8 01             	sub    eax,0x1
  3abe21:	0f 84 e4 00 00 00    	je     0x3abf0b
  3abe27:	83 e8 01             	sub    eax,0x1
  3abe2a:	0f 84 95 00 00 00    	je     0x3abec5
  3abe30:	45 33 c9             	xor    r9d,r9d
  3abe33:	83 f8 01             	cmp    eax,0x1
  3abe36:	74 45                	je     0x3abe7d
  3abe38:	85 db                	test   ebx,ebx
  3abe3a:	0f 88 6f 01 00 00    	js     0x3abfaf
  3abe40:	49 63 c1             	movsxd rax,r9d
  3abe43:	4c 8d 04 07          	lea    r8,[rdi+rax*1]
  3abe47:	83 e0 07             	and    eax,0x7
  3abe4a:	41 0f b6 10          	movzx  edx,BYTE PTR [r8]
  3abe4e:	8b ca                	mov    ecx,edx
  3abe50:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3abe55:	2b c8                	sub    ecx,eax
  3abe57:	43 8d 04 31          	lea    eax,[r9+r14*1]
  3abe5b:	83 e0 07             	and    eax,0x7
  3abe5e:	44 03 d1             	add    r10d,ecx
  3abe61:	41 ff c1             	inc    r9d
  3abe64:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3abe68:	33 d2                	xor    edx,edx
  3abe6a:	41 8b c2             	mov    eax,r10d
  3abe6d:	41 f7 f6             	div    r14d
  3abe70:	41 88 00             	mov    BYTE PTR [r8],al
  3abe73:	44 3b cb             	cmp    r9d,ebx
  3abe76:	7e c8                	jle    0x3abe40
  3abe78:	e9 32 01 00 00       	jmp    0x3abfaf
  3abe7d:	85 db                	test   ebx,ebx
  3abe7f:	0f 88 2a 01 00 00    	js     0x3abfaf
  3abe85:	49 63 c1             	movsxd rax,r9d
  3abe88:	4c 8d 04 07          	lea    r8,[rdi+rax*1]
  3abe8c:	83 e0 07             	and    eax,0x7
  3abe8f:	41 0f b6 10          	movzx  edx,BYTE PTR [r8]
  3abe93:	8b ca                	mov    ecx,edx
  3abe95:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3abe9a:	2b c8                	sub    ecx,eax
  3abe9c:	41 8d 41 05          	lea    eax,[r9+0x5]
  3abea0:	83 e0 07             	and    eax,0x7
  3abea3:	44 03 d1             	add    r10d,ecx
  3abea6:	41 ff c1             	inc    r9d
  3abea9:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3abead:	b8 cd cc cc cc       	mov    eax,0xcccccccd
  3abeb2:	41 f7 e2             	mul    r10d
  3abeb5:	c1 ea 02             	shr    edx,0x2
  3abeb8:	41 88 10             	mov    BYTE PTR [r8],dl
  3abebb:	44 3b cb             	cmp    r9d,ebx
  3abebe:	7e c5                	jle    0x3abe85
  3abec0:	e9 ea 00 00 00       	jmp    0x3abfaf
  3abec5:	45 33 c9             	xor    r9d,r9d
  3abec8:	85 db                	test   ebx,ebx
  3abeca:	0f 88 df 00 00 00    	js     0x3abfaf
  3abed0:	49 63 c1             	movsxd rax,r9d
  3abed3:	4c 8d 04 07          	lea    r8,[rdi+rax*1]
  3abed7:	83 e0 07             	and    eax,0x7
  3abeda:	41 0f b6 10          	movzx  edx,BYTE PTR [r8]
  3abede:	8b ca                	mov    ecx,edx
  3abee0:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3abee5:	2b c8                	sub    ecx,eax
  3abee7:	41 8d 41 04          	lea    eax,[r9+0x4]
  3abeeb:	83 e0 07             	and    eax,0x7
  3abeee:	44 03 d1             	add    r10d,ecx
  3abef1:	41 ff c1             	inc    r9d
  3abef4:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3abef8:	41 8b c2             	mov    eax,r10d
  3abefb:	c1 e8 02             	shr    eax,0x2
  3abefe:	41 88 00             	mov    BYTE PTR [r8],al
  3abf01:	44 3b cb             	cmp    r9d,ebx
  3abf04:	7e ca                	jle    0x3abed0
  3abf06:	e9 a4 00 00 00       	jmp    0x3abfaf
  3abf0b:	45 33 c9             	xor    r9d,r9d
  3abf0e:	85 db                	test   ebx,ebx
  3abf10:	0f 88 99 00 00 00    	js     0x3abfaf
  3abf16:	49 63 c1             	movsxd rax,r9d
  3abf19:	4c 8d 04 07          	lea    r8,[rdi+rax*1]
  3abf1d:	83 e0 07             	and    eax,0x7
  3abf20:	41 0f b6 10          	movzx  edx,BYTE PTR [r8]
  3abf24:	8b ca                	mov    ecx,edx
  3abf26:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3abf2b:	2b c8                	sub    ecx,eax
  3abf2d:	41 8d 41 03          	lea    eax,[r9+0x3]
  3abf31:	83 e0 07             	and    eax,0x7
  3abf34:	44 03 d1             	add    r10d,ecx
  3abf37:	41 ff c1             	inc    r9d
  3abf3a:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3abf3e:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  3abf43:	41 f7 e2             	mul    r10d
  3abf46:	d1 ea                	shr    edx,1
  3abf48:	41 88 10             	mov    BYTE PTR [r8],dl
  3abf4b:	44 3b cb             	cmp    r9d,ebx
  3abf4e:	7e c6                	jle    0x3abf16
  3abf50:	eb 5d                	jmp    0x3abfaf
  3abf52:	45 33 c9             	xor    r9d,r9d
  3abf55:	85 db                	test   ebx,ebx
  3abf57:	78 56                	js     0x3abfaf
  3abf59:	49 63 c1             	movsxd rax,r9d
  3abf5c:	4c 8d 04 07          	lea    r8,[rdi+rax*1]
  3abf60:	83 e0 07             	and    eax,0x7
  3abf63:	41 0f b6 10          	movzx  edx,BYTE PTR [r8]
  3abf67:	8b ca                	mov    ecx,edx
  3abf69:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3abf6e:	2b c8                	sub    ecx,eax
  3abf70:	41 8d 41 02          	lea    eax,[r9+0x2]
  3abf74:	83 e0 07             	and    eax,0x7
  3abf77:	44 03 d1             	add    r10d,ecx
  3abf7a:	41 ff c1             	inc    r9d
  3abf7d:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3abf81:	41 8b c2             	mov    eax,r10d
  3abf84:	d1 e8                	shr    eax,1
  3abf86:	41 88 00             	mov    BYTE PTR [r8],al
  3abf89:	44 3b cb             	cmp    r9d,ebx
  3abf8c:	7e cb                	jle    0x3abf59
  3abf8e:	eb 1f                	jmp    0x3abfaf
  3abf90:	49 63 c9             	movsxd rcx,r9d
  3abf93:	33 d2                	xor    edx,edx
  3abf95:	48 8b c1             	mov    rax,rcx
  3abf98:	83 e0 07             	and    eax,0x7
  3abf9b:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3abfa0:	44 2b d0             	sub    r10d,eax
  3abfa3:	41 8b c2             	mov    eax,r10d
  3abfa6:	41 f7 f6             	div    r14d
  3abfa9:	41 ff c1             	inc    r9d
  3abfac:	88 04 0f             	mov    BYTE PTR [rdi+rcx*1],al
  3abfaf:	45 3b cf             	cmp    r9d,r15d
  3abfb2:	7c dc                	jl     0x3abf90
  3abfb4:	49 03 fc             	add    rdi,r12
  3abfb7:	83 ee 01             	sub    esi,0x1
  3abfba:	0f 85 41 fe ff ff    	jne    0x3abe01
  3abfc0:	48 83 c4 38          	add    rsp,0x38
  3abfc4:	41 5f                	pop    r15
  3abfc6:	41 5e                	pop    r14
  3abfc8:	41 5d                	pop    r13
  3abfca:	41 5c                	pop    r12
  3abfcc:	5f                   	pop    rdi
  3abfcd:	5e                   	pop    rsi
  3abfce:	5b                   	pop    rbx
  3abfcf:	5d                   	pop    rbp
  3abfd0:	c3                   	ret
