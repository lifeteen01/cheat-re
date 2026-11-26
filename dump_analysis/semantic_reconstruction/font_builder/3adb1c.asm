
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003adb1c <.data+0x3adb1c>:
  3adb1c:	40 55                	rex push rbp
  3adb1e:	53                   	push   rbx
  3adb1f:	56                   	push   rsi
  3adb20:	57                   	push   rdi
  3adb21:	41 54                	push   r12
  3adb23:	41 55                	push   r13
  3adb25:	41 56                	push   r14
  3adb27:	41 57                	push   r15
  3adb29:	48 8b ec             	mov    rbp,rsp
  3adb2c:	48 83 ec 38          	sub    rsp,0x38
  3adb30:	44 8b 75 68          	mov    r14d,DWORD PTR [rbp+0x68]
  3adb34:	41 8b d8             	mov    ebx,r8d
  3adb37:	41 2b de             	sub    ebx,r14d
  3adb3a:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  3adb41:	00 
  3adb42:	45 8b f9             	mov    r15d,r9d
  3adb45:	45 8b e0             	mov    r12d,r8d
  3adb48:	8b f2                	mov    esi,edx
  3adb4a:	48 8b f9             	mov    rdi,rcx
  3adb4d:	85 d2                	test   edx,edx
  3adb4f:	0f 8e ee 01 00 00    	jle    0x3add43
  3adb55:	4d 8b c6             	mov    r8,r14
  3adb58:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  3adb5c:	33 d2                	xor    edx,edx
  3adb5e:	e8 0d b2 01 00       	call   0x3c8d70
  3adb63:	45 33 d2             	xor    r10d,r10d
  3adb66:	41 8b c6             	mov    eax,r14d
  3adb69:	83 e8 02             	sub    eax,0x2
  3adb6c:	0f 84 54 01 00 00    	je     0x3adcc6
  3adb72:	83 e8 01             	sub    eax,0x1
  3adb75:	0f 84 fc 00 00 00    	je     0x3adc77
  3adb7b:	83 e8 01             	sub    eax,0x1
  3adb7e:	0f 84 a5 00 00 00    	je     0x3adc29
  3adb84:	45 33 c9             	xor    r9d,r9d
  3adb87:	83 f8 01             	cmp    eax,0x1
  3adb8a:	74 4d                	je     0x3adbd9
  3adb8c:	85 db                	test   ebx,ebx
  3adb8e:	0f 88 9e 01 00 00    	js     0x3add32
  3adb94:	41 8b c1             	mov    eax,r9d
  3adb97:	41 0f af c7          	imul   eax,r15d
  3adb9b:	4c 63 c0             	movsxd r8,eax
  3adb9e:	41 8b c1             	mov    eax,r9d
  3adba1:	83 e0 07             	and    eax,0x7
  3adba4:	42 0f b6 14 07       	movzx  edx,BYTE PTR [rdi+r8*1]
  3adba9:	0f b6 4c 05 e8       	movzx  ecx,BYTE PTR [rbp+rax*1-0x18]
  3adbae:	8b c2                	mov    eax,edx
  3adbb0:	2b c1                	sub    eax,ecx
  3adbb2:	44 03 d0             	add    r10d,eax
  3adbb5:	43 8d 04 31          	lea    eax,[r9+r14*1]
  3adbb9:	83 e0 07             	and    eax,0x7
  3adbbc:	41 ff c1             	inc    r9d
  3adbbf:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3adbc3:	33 d2                	xor    edx,edx
  3adbc5:	41 8b c2             	mov    eax,r10d
  3adbc8:	41 f7 f6             	div    r14d
  3adbcb:	42 88 04 07          	mov    BYTE PTR [rdi+r8*1],al
  3adbcf:	44 3b cb             	cmp    r9d,ebx
  3adbd2:	7e c0                	jle    0x3adb94
  3adbd4:	e9 59 01 00 00       	jmp    0x3add32
  3adbd9:	85 db                	test   ebx,ebx
  3adbdb:	0f 88 51 01 00 00    	js     0x3add32
  3adbe1:	41 8b c1             	mov    eax,r9d
  3adbe4:	41 0f af c7          	imul   eax,r15d
  3adbe8:	4c 63 c0             	movsxd r8,eax
  3adbeb:	41 8b c1             	mov    eax,r9d
  3adbee:	83 e0 07             	and    eax,0x7
  3adbf1:	42 0f b6 14 07       	movzx  edx,BYTE PTR [rdi+r8*1]
  3adbf6:	0f b6 4c 05 e8       	movzx  ecx,BYTE PTR [rbp+rax*1-0x18]
  3adbfb:	8b c2                	mov    eax,edx
  3adbfd:	2b c1                	sub    eax,ecx
  3adbff:	44 03 d0             	add    r10d,eax
  3adc02:	41 8d 41 05          	lea    eax,[r9+0x5]
  3adc06:	83 e0 07             	and    eax,0x7
  3adc09:	41 ff c1             	inc    r9d
  3adc0c:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3adc10:	b8 cd cc cc cc       	mov    eax,0xcccccccd
  3adc15:	41 f7 e2             	mul    r10d
  3adc18:	c1 ea 02             	shr    edx,0x2
  3adc1b:	42 88 14 07          	mov    BYTE PTR [rdi+r8*1],dl
  3adc1f:	44 3b cb             	cmp    r9d,ebx
  3adc22:	7e bd                	jle    0x3adbe1
  3adc24:	e9 09 01 00 00       	jmp    0x3add32
  3adc29:	45 33 c9             	xor    r9d,r9d
  3adc2c:	85 db                	test   ebx,ebx
  3adc2e:	0f 88 fe 00 00 00    	js     0x3add32
  3adc34:	41 8b c1             	mov    eax,r9d
  3adc37:	41 0f af c7          	imul   eax,r15d
  3adc3b:	4c 63 c0             	movsxd r8,eax
  3adc3e:	41 8b c1             	mov    eax,r9d
  3adc41:	83 e0 07             	and    eax,0x7
  3adc44:	42 0f b6 14 07       	movzx  edx,BYTE PTR [rdi+r8*1]
  3adc49:	0f b6 4c 05 e8       	movzx  ecx,BYTE PTR [rbp+rax*1-0x18]
  3adc4e:	8b c2                	mov    eax,edx
  3adc50:	2b c1                	sub    eax,ecx
  3adc52:	44 03 d0             	add    r10d,eax
  3adc55:	41 8d 41 04          	lea    eax,[r9+0x4]
  3adc59:	83 e0 07             	and    eax,0x7
  3adc5c:	41 ff c1             	inc    r9d
  3adc5f:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3adc63:	41 8b c2             	mov    eax,r10d
  3adc66:	c1 e8 02             	shr    eax,0x2
  3adc69:	42 88 04 07          	mov    BYTE PTR [rdi+r8*1],al
  3adc6d:	44 3b cb             	cmp    r9d,ebx
  3adc70:	7e c2                	jle    0x3adc34
  3adc72:	e9 bb 00 00 00       	jmp    0x3add32
  3adc77:	45 33 c9             	xor    r9d,r9d
  3adc7a:	85 db                	test   ebx,ebx
  3adc7c:	0f 88 b0 00 00 00    	js     0x3add32
  3adc82:	41 8b c1             	mov    eax,r9d
  3adc85:	41 0f af c7          	imul   eax,r15d
  3adc89:	4c 63 c0             	movsxd r8,eax
  3adc8c:	41 8b c1             	mov    eax,r9d
  3adc8f:	83 e0 07             	and    eax,0x7
  3adc92:	42 0f b6 14 07       	movzx  edx,BYTE PTR [rdi+r8*1]
  3adc97:	0f b6 4c 05 e8       	movzx  ecx,BYTE PTR [rbp+rax*1-0x18]
  3adc9c:	8b c2                	mov    eax,edx
  3adc9e:	2b c1                	sub    eax,ecx
  3adca0:	44 03 d0             	add    r10d,eax
  3adca3:	41 8d 41 03          	lea    eax,[r9+0x3]
  3adca7:	83 e0 07             	and    eax,0x7
  3adcaa:	41 ff c1             	inc    r9d
  3adcad:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3adcb1:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  3adcb6:	41 f7 e2             	mul    r10d
  3adcb9:	d1 ea                	shr    edx,1
  3adcbb:	42 88 14 07          	mov    BYTE PTR [rdi+r8*1],dl
  3adcbf:	44 3b cb             	cmp    r9d,ebx
  3adcc2:	7e be                	jle    0x3adc82
  3adcc4:	eb 6c                	jmp    0x3add32
  3adcc6:	45 33 c9             	xor    r9d,r9d
  3adcc9:	85 db                	test   ebx,ebx
  3adccb:	78 65                	js     0x3add32
  3adccd:	41 8b c1             	mov    eax,r9d
  3adcd0:	41 0f af c7          	imul   eax,r15d
  3adcd4:	4c 63 c0             	movsxd r8,eax
  3adcd7:	41 8b c1             	mov    eax,r9d
  3adcda:	83 e0 07             	and    eax,0x7
  3adcdd:	42 0f b6 14 07       	movzx  edx,BYTE PTR [rdi+r8*1]
  3adce2:	0f b6 4c 05 e8       	movzx  ecx,BYTE PTR [rbp+rax*1-0x18]
  3adce7:	8b c2                	mov    eax,edx
  3adce9:	2b c1                	sub    eax,ecx
  3adceb:	44 03 d0             	add    r10d,eax
  3adcee:	41 8d 41 02          	lea    eax,[r9+0x2]
  3adcf2:	83 e0 07             	and    eax,0x7
  3adcf5:	41 ff c1             	inc    r9d
  3adcf8:	88 54 05 e8          	mov    BYTE PTR [rbp+rax*1-0x18],dl
  3adcfc:	41 8b c2             	mov    eax,r10d
  3adcff:	d1 e8                	shr    eax,1
  3add01:	42 88 04 07          	mov    BYTE PTR [rdi+r8*1],al
  3add05:	44 3b cb             	cmp    r9d,ebx
  3add08:	7e c3                	jle    0x3adccd
  3add0a:	eb 26                	jmp    0x3add32
  3add0c:	41 8b c1             	mov    eax,r9d
  3add0f:	33 d2                	xor    edx,edx
  3add11:	83 e0 07             	and    eax,0x7
  3add14:	41 8b c9             	mov    ecx,r9d
  3add17:	41 0f af cf          	imul   ecx,r15d
  3add1b:	0f b6 44 05 e8       	movzx  eax,BYTE PTR [rbp+rax*1-0x18]
  3add20:	44 2b d0             	sub    r10d,eax
  3add23:	41 8b c2             	mov    eax,r10d
  3add26:	48 63 c9             	movsxd rcx,ecx
  3add29:	41 f7 f6             	div    r14d
  3add2c:	41 ff c1             	inc    r9d
  3add2f:	88 04 0f             	mov    BYTE PTR [rdi+rcx*1],al
  3add32:	45 3b cc             	cmp    r9d,r12d
  3add35:	7c d5                	jl     0x3add0c
  3add37:	48 ff c7             	inc    rdi
  3add3a:	83 ee 01             	sub    esi,0x1
  3add3d:	0f 85 12 fe ff ff    	jne    0x3adb55
  3add43:	48 83 c4 38          	add    rsp,0x38
  3add47:	41 5f                	pop    r15
  3add49:	41 5e                	pop    r14
  3add4b:	41 5d                	pop    r13
  3add4d:	41 5c                	pop    r12
  3add4f:	5f                   	pop    rdi
  3add50:	5e                   	pop    rsi
  3add51:	5b                   	pop    rbx
  3add52:	5d                   	pop    rbp
  3add53:	c3                   	ret
