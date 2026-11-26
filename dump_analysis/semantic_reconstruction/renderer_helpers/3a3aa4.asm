
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3aa4 <.data+0x3a3aa4>:
  3a3aa4:	48 8b c4                                        	mov    rax,rsp
  3a3aa7:	53                                              	push   rbx
  3a3aa8:	55                                              	push   rbp
  3a3aa9:	56                                              	push   rsi
  3a3aaa:	57                                              	push   rdi
  3a3aab:	41 54                                           	push   r12
  3a3aad:	41 56                                           	push   r14
  3a3aaf:	41 57                                           	push   r15
  3a3ab1:	48 83 ec 60                                     	sub    rsp,0x60
  3a3ab5:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3a3ab9:	33 ed                                           	xor    ebp,ebp
  3a3abb:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3a3abf:	4d 8b e1                                        	mov    r12,r9
  3a3ac2:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3a3ac7:	4d 8b f0                                        	mov    r14,r8
  3a3aca:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3a3acf:	4c 8b f9                                        	mov    r15,rcx
  3a3ad2:	f3 44 0f 10 8c 24 c0 00 00 00                   	movss  xmm9,DWORD PTR [rsp+0xc0]
  3a3adc:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3a3ae0:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a3ae3:	0f 57 ff                                        	xorps  xmm7,xmm7
  3a3ae6:	49 8b f0                                        	mov    rsi,r8
  3a3ae9:	40 b7 01                                        	mov    dil,0x1
  3a3aec:	49 8b d8                                        	mov    rbx,r8
  3a3aef:	f3 44 0f 5e c9                                  	divss  xmm9,xmm1
  3a3af4:	4d 3b c1                                        	cmp    r8,r9
  3a3af7:	0f 83 0a 01 00 00                               	jae    0x3a3c07
  3a3afd:	0f be 13                                        	movsx  edx,BYTE PTR [rbx]
  3a3b00:	89 94 24 c0 00 00 00                            	mov    DWORD PTR [rsp+0xc0],edx
  3a3b07:	81 fa 80 00 00 00                               	cmp    edx,0x80
  3a3b0d:	73 07                                           	jae    0x3a3b16
  3a3b0f:	b8 01 00 00 00                                  	mov    eax,0x1
  3a3b14:	eb 1c                                           	jmp    0x3a3b32
  3a3b16:	4d 8b c4                                        	mov    r8,r12
  3a3b19:	48 8d 8c 24 c0 00 00 00                         	lea    rcx,[rsp+0xc0]
  3a3b21:	48 8b d3                                        	mov    rdx,rbx
  3a3b24:	e8 53 fa fe ff                                  	call   0x39357c
  3a3b29:	8b 94 24 c0 00 00 00                            	mov    edx,DWORD PTR [rsp+0xc0]
  3a3b30:	48 98                                           	cdqe
  3a3b32:	4c 8d 04 18                                     	lea    r8,[rax+rbx*1]
  3a3b36:	83 fa 20                                        	cmp    edx,0x20
  3a3b39:	73 20                                           	jae    0x3a3b5b
  3a3b3b:	83 fa 0a                                        	cmp    edx,0xa
  3a3b3e:	75 12                                           	jne    0x3a3b52
  3a3b40:	0f 57 ff                                        	xorps  xmm7,xmm7
  3a3b43:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a3b46:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3a3b4a:	40 b7 01                                        	mov    dil,0x1
  3a3b4d:	e9 8e 00 00 00                                  	jmp    0x3a3be0
  3a3b52:	83 fa 0d                                        	cmp    edx,0xd
  3a3b55:	0f 84 85 00 00 00                               	je     0x3a3be0
  3a3b5b:	41 3b 17                                        	cmp    edx,DWORD PTR [r15]
  3a3b5e:	7d 0d                                           	jge    0x3a3b6d
  3a3b60:	49 8b 47 08                                     	mov    rax,QWORD PTR [r15+0x8]
  3a3b64:	8b ca                                           	mov    ecx,edx
  3a3b66:	f3 0f 10 04 88                                  	movss  xmm0,DWORD PTR [rax+rcx*4]
  3a3b6b:	eb 06                                           	jmp    0x3a3b73
  3a3b6d:	f3 41 0f 10 47 10                               	movss  xmm0,DWORD PTR [r15+0x10]
  3a3b73:	8b ca                                           	mov    ecx,edx
  3a3b75:	e8 96 0f 00 00                                  	call   0x3a4b10
  3a3b7a:	84 c0                                           	test   al,al
  3a3b7c:	74 19                                           	je     0x3a3b97
  3a3b7e:	40 84 ff                                        	test   dil,dil
  3a3b81:	74 0b                                           	je     0x3a3b8e
  3a3b83:	f3 44 0f 58 c7                                  	addss  xmm8,xmm7
  3a3b88:	48 8b f3                                        	mov    rsi,rbx
  3a3b8b:	0f 57 ff                                        	xorps  xmm7,xmm7
  3a3b8e:	f3 0f 58 f8                                     	addss  xmm7,xmm0
  3a3b92:	40 32 ff                                        	xor    dil,dil
  3a3b95:	eb 3b                                           	jmp    0x3a3bd2
  3a3b97:	f3 0f 58 c6                                     	addss  xmm0,xmm6
  3a3b9b:	0f 28 f0                                        	movaps xmm6,xmm0
  3a3b9e:	40 84 ff                                        	test   dil,dil
  3a3ba1:	74 05                                           	je     0x3a3ba8
  3a3ba3:	49 8b f0                                        	mov    rsi,r8
  3a3ba6:	eb 12                                           	jmp    0x3a3bba
  3a3ba8:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3a3bac:	48 8b ee                                        	mov    rbp,rsi
  3a3baf:	0f 57 ff                                        	xorps  xmm7,xmm7
  3a3bb2:	f3 44 0f 58 c6                                  	addss  xmm8,xmm6
  3a3bb7:	0f 57 f6                                        	xorps  xmm6,xmm6
  3a3bba:	83 fa 3f                                        	cmp    edx,0x3f
  3a3bbd:	77 10                                           	ja     0x3a3bcf
  3a3bbf:	48 b9 00 00 00 00 06 50 00 88                   	movabs rcx,0x8800500600000000
  3a3bc9:	48 0f a3 d1                                     	bt     rcx,rdx
  3a3bcd:	72 c3                                           	jb     0x3a3b92
  3a3bcf:	40 b7 01                                        	mov    dil,0x1
  3a3bd2:	0f 28 c6                                        	movaps xmm0,xmm6
  3a3bd5:	f3 41 0f 58 c0                                  	addss  xmm0,xmm8
  3a3bda:	41 0f 2f c1                                     	comiss xmm0,xmm9
  3a3bde:	77 0e                                           	ja     0x3a3bee
  3a3be0:	49 8b d8                                        	mov    rbx,r8
  3a3be3:	4d 3b c4                                        	cmp    r8,r12
  3a3be6:	0f 82 11 ff ff ff                               	jb     0x3a3afd
  3a3bec:	eb 10                                           	jmp    0x3a3bfe
  3a3bee:	44 0f 2f ce                                     	comiss xmm9,xmm6
  3a3bf2:	76 0a                                           	jbe    0x3a3bfe
  3a3bf4:	48 85 ed                                        	test   rbp,rbp
  3a3bf7:	48 8b de                                        	mov    rbx,rsi
  3a3bfa:	48 0f 45 dd                                     	cmovne rbx,rbp
  3a3bfe:	48 8d 43 01                                     	lea    rax,[rbx+0x1]
  3a3c02:	49 3b de                                        	cmp    rbx,r14
  3a3c05:	74 03                                           	je     0x3a3c0a
  3a3c07:	48 8b c3                                        	mov    rax,rbx
  3a3c0a:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  3a3c0f:	0f 28 7c 24 40                                  	movaps xmm7,XMMWORD PTR [rsp+0x40]
  3a3c14:	44 0f 28 44 24 30                               	movaps xmm8,XMMWORD PTR [rsp+0x30]
  3a3c1a:	44 0f 28 4c 24 20                               	movaps xmm9,XMMWORD PTR [rsp+0x20]
  3a3c20:	48 83 c4 60                                     	add    rsp,0x60
  3a3c24:	41 5f                                           	pop    r15
  3a3c26:	41 5e                                           	pop    r14
  3a3c28:	41 5c                                           	pop    r12
  3a3c2a:	5f                                              	pop    rdi
  3a3c2b:	5e                                              	pop    rsi
  3a3c2c:	5d                                              	pop    rbp
  3a3c2d:	5b                                              	pop    rbx
  3a3c2e:	c3                                              	ret
