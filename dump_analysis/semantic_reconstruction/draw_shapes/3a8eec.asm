
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8eec <.data+0x3a8eec>:
  3a8eec:	40 53                                           	rex push rbx
  3a8eee:	55                                              	push   rbp
  3a8eef:	56                                              	push   rsi
  3a8ef0:	57                                              	push   rdi
  3a8ef1:	41 54                                           	push   r12
  3a8ef3:	41 55                                           	push   r13
  3a8ef5:	41 56                                           	push   r14
  3a8ef7:	41 57                                           	push   r15
  3a8ef9:	48 83 ec 38                                     	sub    rsp,0x38
  3a8efd:	f3 0f 10 05 4b 43 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee434b]        # 0x28d250
  3a8f05:	41 8b f1                                        	mov    esi,r9d
  3a8f08:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  3a8f0d:	4c 8b e2                                        	mov    r12,rdx
  3a8f10:	0f 28 f2                                        	movaps xmm6,xmm2
  3a8f13:	48 8b e9                                        	mov    rbp,rcx
  3a8f16:	0f 2f c6                                        	comiss xmm0,xmm6
  3a8f19:	76 0e                                           	jbe    0x3a8f29
  3a8f1b:	48 83 c1 78                                     	add    rcx,0x78
  3a8f1f:	e8 34 17 fd ff                                  	call   0x37a658
  3a8f24:	e9 d0 01 00 00                                  	jmp    0x3a90f9
  3a8f29:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [rsp+0xa8]
  3a8f30:	85 c0                                           	test   eax,eax
  3a8f32:	7f 12                                           	jg     0x3a8f46
  3a8f34:	0f 28 ce                                        	movaps xmm1,xmm6
  3a8f37:	e8 78 fd ff ff                                  	call   0x3a8cb4
  3a8f3c:	8b c8                                           	mov    ecx,eax
  3a8f3e:	b8 30 00 00 00                                  	mov    eax,0x30
  3a8f43:	99                                              	cdq
  3a8f44:	f7 f9                                           	idiv   ecx
  3a8f46:	ba 01 00 00 00                                  	mov    edx,0x1
  3a8f4b:	8b c8                                           	mov    ecx,eax
  3a8f4d:	44 8d 42 0b                                     	lea    r8d,[rdx+0xb]
  3a8f51:	e8 56 d3 fc ff                                  	call   0x3762ac
  3a8f56:	44 8b bc 24 a0 00 00 00                         	mov    r15d,DWORD PTR [rsp+0xa0]
  3a8f5e:	8b f8                                           	mov    edi,eax
  3a8f60:	41 8b cf                                        	mov    ecx,r15d
  3a8f63:	2b ce                                           	sub    ecx,esi
  3a8f65:	e8 9e bb ff ff                                  	call   0x3a4b08
  3a8f6a:	45 32 ed                                        	xor    r13b,r13b
  3a8f6d:	89 bc 24 90 00 00 00                            	mov    DWORD PTR [rsp+0x90],edi
  3a8f74:	8b c8                                           	mov    ecx,eax
  3a8f76:	3b fa                                           	cmp    edi,edx
  3a8f78:	7e 1f                                           	jle    0x3a8f99
  3a8f7a:	99                                              	cdq
  3a8f7b:	f7 ff                                           	idiv   edi
  3a8f7d:	85 d2                                           	test   edx,edx
  3a8f7f:	7e 18                                           	jle    0x3a8f99
  3a8f81:	44 8d 70 02                                     	lea    r14d,[rax+0x2]
  3a8f85:	41 b5 01                                        	mov    r13b,0x1
  3a8f88:	85 c9                                           	test   ecx,ecx
  3a8f8a:	7e 11                                           	jle    0x3a8f9d
  3a8f8c:	8b c7                                           	mov    eax,edi
  3a8f8e:	2b c2                                           	sub    eax,edx
  3a8f90:	99                                              	cdq
  3a8f91:	2b c2                                           	sub    eax,edx
  3a8f93:	d1 f8                                           	sar    eax,1
  3a8f95:	2b f8                                           	sub    edi,eax
  3a8f97:	eb 04                                           	jmp    0x3a8f9d
  3a8f99:	44 8d 70 01                                     	lea    r14d,[rax+0x1]
  3a8f9d:	48 8d 5d 78                                     	lea    rbx,[rbp+0x78]
  3a8fa1:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  3a8fa3:	48 8b cb                                        	mov    rcx,rbx
  3a8fa6:	41 03 d6                                        	add    edx,r14d
  3a8fa9:	e8 86 1d fd ff                                  	call   0x37ad34
  3a8fae:	8b 03                                           	mov    eax,DWORD PTR [rbx]
  3a8fb0:	41 bb ab aa aa 2a                               	mov    r11d,0x2aaaaaab
  3a8fb6:	41 2b c6                                        	sub    eax,r14d
  3a8fb9:	48 63 c8                                        	movsxd rcx,eax
  3a8fbc:	48 8b 85 80 00 00 00                            	mov    rax,QWORD PTR [rbp+0x80]
  3a8fc3:	4c 8d 0c c8                                     	lea    r9,[rax+rcx*8]
  3a8fc7:	83 fe 2f                                        	cmp    esi,0x2f
  3a8fca:	76 23                                           	jbe    0x3a8fef
  3a8fcc:	41 8b c3                                        	mov    eax,r11d
  3a8fcf:	8b ce                                           	mov    ecx,esi
  3a8fd1:	f7 ee                                           	imul   esi
  3a8fd3:	c1 fa 03                                        	sar    edx,0x3
  3a8fd6:	8b c2                                           	mov    eax,edx
  3a8fd8:	c1 e8 1f                                        	shr    eax,0x1f
  3a8fdb:	03 d0                                           	add    edx,eax
  3a8fdd:	8d 04 52                                        	lea    eax,[rdx+rdx*2]
  3a8fe0:	c1 e0 04                                        	shl    eax,0x4
  3a8fe3:	2b c8                                           	sub    ecx,eax
  3a8fe5:	44 8d 41 30                                     	lea    r8d,[rcx+0x30]
  3a8fe9:	44 0f 49 c1                                     	cmovns r8d,ecx
  3a8fed:	eb 03                                           	jmp    0x3a8ff2
  3a8fef:	44 8b c6                                        	mov    r8d,esi
  3a8ff2:	44 8b 94 24 90 00 00 00                         	mov    r10d,DWORD PTR [rsp+0x90]
  3a8ffa:	44 3b fe                                        	cmp    r15d,esi
  3a8ffd:	7c 52                                           	jl     0x3a9051
  3a8fff:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3a9003:	41 8d 50 d0                                     	lea    edx,[r8-0x30]
  3a9007:	41 83 f8 30                                     	cmp    r8d,0x30
  3a900b:	0f 28 c6                                        	movaps xmm0,xmm6
  3a900e:	41 0f 4c d0                                     	cmovl  edx,r8d
  3a9012:	03 f7                                           	add    esi,edi
  3a9014:	48 63 ca                                        	movsxd rcx,edx
  3a9017:	44 8d 04 3a                                     	lea    r8d,[rdx+rdi*1]
  3a901b:	41 8b fa                                        	mov    edi,r10d
  3a901e:	f3 0f 59 44 c8 40                               	mulss  xmm0,DWORD PTR [rax+rcx*8+0x40]
  3a9024:	f3 0f 10 4c c8 44                               	movss  xmm1,DWORD PTR [rax+rcx*8+0x44]
  3a902a:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3a902e:	f3 41 0f 58 04 24                               	addss  xmm0,DWORD PTR [r12]
  3a9034:	f3 41 0f 11 01                                  	movss  DWORD PTR [r9],xmm0
  3a9039:	f3 41 0f 58 4c 24 04                            	addss  xmm1,DWORD PTR [r12+0x4]
  3a9040:	f3 41 0f 11 49 04                               	movss  DWORD PTR [r9+0x4],xmm1
  3a9046:	49 83 c1 08                                     	add    r9,0x8
  3a904a:	41 3b f7                                        	cmp    esi,r15d
  3a904d:	7e b0                                           	jle    0x3a8fff
  3a904f:	eb 50                                           	jmp    0x3a90a1
  3a9051:	45 85 c0                                        	test   r8d,r8d
  3a9054:	41 8d 40 30                                     	lea    eax,[r8+0x30]
  3a9058:	0f 28 c6                                        	movaps xmm0,xmm6
  3a905b:	41 0f 49 c0                                     	cmovns eax,r8d
  3a905f:	2b f7                                           	sub    esi,edi
  3a9061:	4c 63 c0                                        	movsxd r8,eax
  3a9064:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3a9068:	f3 42 0f 59 44 c0 40                            	mulss  xmm0,DWORD PTR [rax+r8*8+0x40]
  3a906f:	f3 42 0f 10 4c c0 44                            	movss  xmm1,DWORD PTR [rax+r8*8+0x44]
  3a9076:	44 2b c7                                        	sub    r8d,edi
  3a9079:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3a907d:	41 8b fa                                        	mov    edi,r10d
  3a9080:	f3 41 0f 58 04 24                               	addss  xmm0,DWORD PTR [r12]
  3a9086:	f3 41 0f 11 01                                  	movss  DWORD PTR [r9],xmm0
  3a908b:	f3 41 0f 58 4c 24 04                            	addss  xmm1,DWORD PTR [r12+0x4]
  3a9092:	f3 41 0f 11 49 04                               	movss  DWORD PTR [r9+0x4],xmm1
  3a9098:	49 83 c1 08                                     	add    r9,0x8
  3a909c:	41 3b f7                                        	cmp    esi,r15d
  3a909f:	7d b0                                           	jge    0x3a9051
  3a90a1:	45 84 ed                                        	test   r13b,r13b
  3a90a4:	74 53                                           	je     0x3a90f9
  3a90a6:	41 8b c3                                        	mov    eax,r11d
  3a90a9:	0f 28 c6                                        	movaps xmm0,xmm6
  3a90ac:	41 f7 ef                                        	imul   r15d
  3a90af:	c1 fa 03                                        	sar    edx,0x3
  3a90b2:	8b c2                                           	mov    eax,edx
  3a90b4:	c1 e8 1f                                        	shr    eax,0x1f
  3a90b7:	03 d0                                           	add    edx,eax
  3a90b9:	8d 04 52                                        	lea    eax,[rdx+rdx*2]
  3a90bc:	c1 e0 04                                        	shl    eax,0x4
  3a90bf:	44 2b f8                                        	sub    r15d,eax
  3a90c2:	41 8d 47 30                                     	lea    eax,[r15+0x30]
  3a90c6:	41 0f 49 c7                                     	cmovns eax,r15d
  3a90ca:	48 63 c8                                        	movsxd rcx,eax
  3a90cd:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3a90d1:	f3 0f 59 44 c8 40                               	mulss  xmm0,DWORD PTR [rax+rcx*8+0x40]
  3a90d7:	f3 0f 10 4c c8 44                               	movss  xmm1,DWORD PTR [rax+rcx*8+0x44]
  3a90dd:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3a90e1:	f3 41 0f 58 04 24                               	addss  xmm0,DWORD PTR [r12]
  3a90e7:	f3 41 0f 11 01                                  	movss  DWORD PTR [r9],xmm0
  3a90ec:	f3 41 0f 58 4c 24 04                            	addss  xmm1,DWORD PTR [r12+0x4]
  3a90f3:	f3 41 0f 11 49 04                               	movss  DWORD PTR [r9+0x4],xmm1
  3a90f9:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  3a90fe:	48 83 c4 38                                     	add    rsp,0x38
  3a9102:	41 5f                                           	pop    r15
  3a9104:	41 5e                                           	pop    r14
  3a9106:	41 5d                                           	pop    r13
  3a9108:	41 5c                                           	pop    r12
  3a910a:	5f                                              	pop    rdi
  3a910b:	5e                                              	pop    rsi
  3a910c:	5d                                              	pop    rbp
  3a910d:	5b                                              	pop    rbx
  3a910e:	c3                                              	ret
