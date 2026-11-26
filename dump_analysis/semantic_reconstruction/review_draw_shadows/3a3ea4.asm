
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3ea4 <.data+0x3a3ea4>:
  3a3ea4:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  3a3ea9:	55                                              	push   rbp
  3a3eaa:	53                                              	push   rbx
  3a3eab:	56                                              	push   rsi
  3a3eac:	57                                              	push   rdi
  3a3ead:	41 54                                           	push   r12
  3a3eaf:	41 55                                           	push   r13
  3a3eb1:	41 56                                           	push   r14
  3a3eb3:	41 57                                           	push   r15
  3a3eb5:	48 81 ec e8 00 00 00                            	sub    rsp,0xe8
  3a3ebc:	48 8d 6c 24 20                                  	lea    rbp,[rsp+0x20]
  3a3ec1:	0f 29 b5 b0 00 00 00                            	movaps XMMWORD PTR [rbp+0xb0],xmm6
  3a3ec8:	4d 8b f8                                        	mov    r15,r8
  3a3ecb:	0f 29 bd a0 00 00 00                            	movaps XMMWORD PTR [rbp+0xa0],xmm7
  3a3ed2:	48 8b f9                                        	mov    rdi,rcx
  3a3ed5:	44 0f 29 8d 90 00 00 00                         	movaps XMMWORD PTR [rbp+0x90],xmm9
  3a3edd:	44 0f 29 9d 80 00 00 00                         	movaps XMMWORD PTR [rbp+0x80],xmm11
  3a3ee5:	f3 44 0f 10 9d 30 01 00 00                      	movss  xmm11,DWORD PTR [rbp+0x130]
  3a3eee:	44 0f 2f 9d 38 01 00 00                         	comiss xmm11,DWORD PTR [rbp+0x138]
  3a3ef6:	48 63 da                                        	movsxd rbx,edx
  3a3ef9:	0f 83 4d 04 00 00                               	jae    0x3a434c
  3a3eff:	f3 44 0f 10 8d 34 01 00 00                      	movss  xmm9,DWORD PTR [rbp+0x134]
  3a3f08:	44 0f 2f 8d 3c 01 00 00                         	comiss xmm9,DWORD PTR [rbp+0x13c]
  3a3f10:	0f 83 36 04 00 00                               	jae    0x3a434c
  3a3f16:	83 fb 03                                        	cmp    ebx,0x3
  3a3f19:	0f 8c 2d 04 00 00                               	jl     0x3a434c
  3a3f1f:	43 8d 04 09                                     	lea    eax,[r9+r9*1]
  3a3f23:	49 bc f0 ff ff ff ff ff ff 0f                   	movabs r12,0xffffffffffffff0
  3a3f2d:	4c 63 c0                                        	movsxd r8,eax
  3a3f30:	49 8d 40 0f                                     	lea    rax,[r8+0xf]
  3a3f34:	49 3b c0                                        	cmp    rax,r8
  3a3f37:	77 03                                           	ja     0x3a3f3c
  3a3f39:	49 8b c4                                        	mov    rax,r12
  3a3f3c:	48 83 e0 f0                                     	and    rax,0xfffffffffffffff0
  3a3f40:	e8 0b 91 f2 ff                                  	call   0x2cd050
  3a3f45:	48 2b e0                                        	sub    rsp,rax
  3a3f48:	4d 63 e9                                        	movsxd r13,r9d
  3a3f4b:	40 32 f6                                        	xor    sil,sil
  3a3f4e:	4c 89 6d 40                                     	mov    QWORD PTR [rbp+0x40],r13
  3a3f52:	41 b6 ff                                        	mov    r14b,0xff
  3a3f55:	45 33 db                                        	xor    r11d,r11d
  3a3f58:	4c 8d 54 24 20                                  	lea    r10,[rsp+0x20]
  3a3f5d:	4b 8d 04 2a                                     	lea    rax,[r10+r13*1]
  3a3f61:	4c 89 55 50                                     	mov    QWORD PTR [rbp+0x50],r10
  3a3f65:	48 89 45 58                                     	mov    QWORD PTR [rbp+0x58],rax
  3a3f69:	f3 42 0f 10 44 df 04                            	movss  xmm0,DWORD PTR [rdi+r11*8+0x4]
  3a3f70:	f3 42 0f 10 0c df                               	movss  xmm1,DWORD PTR [rdi+r11*8]
  3a3f76:	44 0f 2f c8                                     	comiss xmm9,xmm0
  3a3f7a:	0f 96 c1                                        	setbe  cl
  3a3f7d:	fe c9                                           	dec    cl
  3a3f7f:	80 e1 04                                        	and    cl,0x4
  3a3f82:	0f 2f 85 3c 01 00 00                            	comiss xmm0,DWORD PTR [rbp+0x13c]
  3a3f89:	0f 96 c0                                        	setbe  al
  3a3f8c:	fe c8                                           	dec    al
  3a3f8e:	24 08                                           	and    al,0x8
  3a3f90:	0a c8                                           	or     cl,al
  3a3f92:	44 0f 2f d9                                     	comiss xmm11,xmm1
  3a3f96:	0f 97 c0                                        	seta   al
  3a3f99:	0a c8                                           	or     cl,al
  3a3f9b:	0f 2f 8d 38 01 00 00                            	comiss xmm1,DWORD PTR [rbp+0x138]
  3a3fa2:	0f 96 c0                                        	setbe  al
  3a3fa5:	fe c8                                           	dec    al
  3a3fa7:	24 02                                           	and    al,0x2
  3a3fa9:	0a c8                                           	or     cl,al
  3a3fab:	43 88 0c 1a                                     	mov    BYTE PTR [r10+r11*1],cl
  3a3faf:	44 22 f1                                        	and    r14b,cl
  3a3fb2:	41 ff c3                                        	inc    r11d
  3a3fb5:	40 0a f1                                        	or     sil,cl
  3a3fb8:	44 3b db                                        	cmp    r11d,ebx
  3a3fbb:	7c ac                                           	jl     0x3a3f69
  3a3fbd:	45 84 f6                                        	test   r14b,r14b
  3a3fc0:	0f 85 86 03 00 00                               	jne    0x3a434c
  3a3fc6:	40 84 f6                                        	test   sil,sil
  3a3fc9:	75 22                                           	jne    0x3a3fed
  3a3fcb:	44 3b cb                                        	cmp    r9d,ebx
  3a3fce:	0f 8c 73 03 00 00                               	jl     0x3a4347
  3a3fd4:	4c 8b c3                                        	mov    r8,rbx
  3a3fd7:	48 8b d7                                        	mov    rdx,rdi
  3a3fda:	49 c1 e0 03                                     	shl    r8,0x3
  3a3fde:	49 8b cf                                        	mov    rcx,r15
  3a3fe1:	e8 66 4d 02 00                                  	call   0x3c8d4c
  3a3fe6:	8b c3                                           	mov    eax,ebx
  3a3fe8:	e9 61 03 00 00                                  	jmp    0x3a434e
  3a3fed:	4a 8d 04 c5 00 00 00 00                         	lea    rax,[r8*8+0x0]
  3a3ff5:	48 8d 48 0f                                     	lea    rcx,[rax+0xf]
  3a3ff9:	48 3b c8                                        	cmp    rcx,rax
  3a3ffc:	77 03                                           	ja     0x3a4001
  3a3ffe:	49 8b cc                                        	mov    rcx,r12
  3a4001:	48 83 e1 f0                                     	and    rcx,0xfffffffffffffff0
  3a4005:	48 8b c1                                        	mov    rax,rcx
  3a4008:	e8 43 90 f2 ff                                  	call   0x2cd050
  3a400d:	48 2b e1                                        	sub    rsp,rcx
  3a4010:	4c 8b c3                                        	mov    r8,rbx
  3a4013:	49 c1 e0 03                                     	shl    r8,0x3
  3a4017:	48 8b d7                                        	mov    rdx,rdi
  3a401a:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a401f:	4a 8d 04 e9                                     	lea    rax,[rcx+r13*8]
  3a4023:	48 89 4d 20                                     	mov    QWORD PTR [rbp+0x20],rcx
  3a4027:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  3a402b:	e8 1c 4d 02 00                                  	call   0x3c8d4c
  3a4030:	33 d2                                           	xor    edx,edx
  3a4032:	40 0f b6 c6                                     	movzx  eax,sil
  3a4036:	45 33 ff                                        	xor    r15d,r15d
  3a4039:	89 45 14                                        	mov    DWORD PTR [rbp+0x14],eax
  3a403c:	41 8b cf                                        	mov    ecx,r15d
  3a403f:	41 bc 01 00 00 00                               	mov    r12d,0x1
  3a4045:	41 d3 e4                                        	shl    r12d,cl
  3a4048:	41 85 c4                                        	test   r12d,eax
  3a404b:	0f 84 5b 02 00 00                               	je     0x3a42ac
  3a4051:	48 63 ca                                        	movsxd rcx,edx
  3a4054:	b8 01 00 00 00                                  	mov    eax,0x1
  3a4059:	2b c2                                           	sub    eax,edx
  3a405b:	45 33 db                                        	xor    r11d,r11d
  3a405e:	48 63 d0                                        	movsxd rdx,eax
  3a4061:	48 63 c3                                        	movsxd rax,ebx
  3a4064:	48 8b 74 cd 20                                  	mov    rsi,QWORD PTR [rbp+rcx*8+0x20]
  3a4069:	48 8b 4c cd 50                                  	mov    rcx,QWORD PTR [rbp+rcx*8+0x50]
  3a406e:	4c 8b 44 d5 20                                  	mov    r8,QWORD PTR [rbp+rdx*8+0x20]
  3a4073:	4c 8b 74 d5 50                                  	mov    r14,QWORD PTR [rbp+rdx*8+0x50]
  3a4078:	49 8b f8                                        	mov    rdi,r8
  3a407b:	4c 89 45 38                                     	mov    QWORD PTR [rbp+0x38],r8
  3a407f:	89 55 10                                        	mov    DWORD PTR [rbp+0x10],edx
  3a4082:	48 89 4d 18                                     	mov    QWORD PTR [rbp+0x18],rcx
  3a4086:	4f 8d 14 e8                                     	lea    r10,[r8+r13*8]
  3a408a:	44 8a 44 01 ff                                  	mov    r8b,BYTE PTR [rcx+rax*1-0x1]
  3a408f:	4c 8d 68 ff                                     	lea    r13,[rax-0x1]
  3a4093:	4c 89 55 30                                     	mov    QWORD PTR [rbp+0x30],r10
  3a4097:	4e 8d 2c ee                                     	lea    r13,[rsi+r13*8]
  3a409b:	44 89 5d 08                                     	mov    DWORD PTR [rbp+0x8],r11d
  3a409f:	85 db                                           	test   ebx,ebx
  3a40a1:	0f 8e f3 01 00 00                               	jle    0x3a429a
  3a40a7:	0f b6 11                                        	movzx  edx,BYTE PTR [rcx]
  3a40aa:	44 8b ca                                        	mov    r9d,edx
  3a40ad:	41 0f b6 c0                                     	movzx  eax,r8b
  3a40b1:	45 23 cc                                        	and    r9d,r12d
  3a40b4:	89 95 30 01 00 00                               	mov    DWORD PTR [rbp+0x130],edx
  3a40ba:	8b ca                                           	mov    ecx,edx
  3a40bc:	44 89 4d 0c                                     	mov    DWORD PTR [rbp+0xc],r9d
  3a40c0:	33 c8                                           	xor    ecx,eax
  3a40c2:	41 85 cc                                        	test   r12d,ecx
  3a40c5:	75 29                                           	jne    0x3a40f0
  3a40c7:	45 85 c9                                        	test   r9d,r9d
  3a40ca:	0f 85 a5 01 00 00                               	jne    0x3a4275
  3a40d0:	49 3b fa                                        	cmp    rdi,r10
  3a40d3:	0f 83 6e 02 00 00                               	jae    0x3a4347
  3a40d9:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  3a40dd:	f2 0f 11 07                                     	movsd  QWORD PTR [rdi],xmm0
  3a40e1:	48 83 c7 08                                     	add    rdi,0x8
  3a40e5:	41 88 16                                        	mov    BYTE PTR [r14],dl
  3a40e8:	49 ff c6                                        	inc    r14
  3a40eb:	e9 85 01 00 00                                  	jmp    0x3a4275
  3a40f0:	f3 0f 10 36                                     	movss  xmm6,DWORD PTR [rsi]
  3a40f4:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a40f8:	f3 0f 10 7e 04                                  	movss  xmm7,DWORD PTR [rsi+0x4]
  3a40fd:	e8 6e 07 f3 ff                                  	call   0x2d4870
  3a4102:	41 8b cf                                        	mov    ecx,r15d
  3a4105:	45 85 ff                                        	test   r15d,r15d
  3a4108:	0f 84 93 00 00 00                               	je     0x3a41a1
  3a410e:	83 e9 01                                        	sub    ecx,0x1
  3a4111:	74 7d                                           	je     0x3a4190
  3a4113:	83 e9 01                                        	sub    ecx,0x1
  3a4116:	74 4a                                           	je     0x3a4162
  3a4118:	83 f9 01                                        	cmp    ecx,0x1
  3a411b:	75 36                                           	jne    0x3a4153
  3a411d:	f3 0f 10 8d 3c 01 00 00                         	movss  xmm1,DWORD PTR [rbp+0x13c]
  3a4125:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  3a4129:	f3 41 0f 5c 4d 04                               	subss  xmm1,DWORD PTR [r13+0x4]
  3a412f:	f3 41 0f 5c 7d 04                               	subss  xmm7,DWORD PTR [r13+0x4]
  3a4135:	f3 41 0f 5c 75 00                               	subss  xmm6,DWORD PTR [r13+0x0]
  3a413b:	f3 0f 10 95 3c 01 00 00                         	movss  xmm2,DWORD PTR [rbp+0x13c]
  3a4143:	f3 0f 5e cf                                     	divss  xmm1,xmm7
  3a4147:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3a414b:	f3 41 0f 58 4d 00                               	addss  xmm1,DWORD PTR [r13+0x0]
  3a4151:	eb 7a                                           	jmp    0x3a41cd
  3a4153:	f3 0f 10 4d 04                                  	movss  xmm1,DWORD PTR [rbp+0x4]
  3a4158:	f3 0f 10 45 00                                  	movss  xmm0,DWORD PTR [rbp+0x0]
  3a415d:	e9 83 00 00 00                                  	jmp    0x3a41e5
  3a4162:	f3 41 0f 5c 7d 04                               	subss  xmm7,DWORD PTR [r13+0x4]
  3a4168:	f3 41 0f 5c 75 00                               	subss  xmm6,DWORD PTR [r13+0x0]
  3a416e:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3a4172:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  3a4176:	f3 41 0f 5c 4d 04                               	subss  xmm1,DWORD PTR [r13+0x4]
  3a417c:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3a4180:	f3 0f 5e cf                                     	divss  xmm1,xmm7
  3a4184:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3a4188:	f3 41 0f 58 4d 00                               	addss  xmm1,DWORD PTR [r13+0x0]
  3a418e:	eb 3d                                           	jmp    0x3a41cd
  3a4190:	f3 0f 10 95 38 01 00 00                         	movss  xmm2,DWORD PTR [rbp+0x138]
  3a4198:	48 8d 4d 70                                     	lea    rcx,[rbp+0x70]
  3a419c:	0f 28 ca                                        	movaps xmm1,xmm2
  3a419f:	eb 0c                                           	jmp    0x3a41ad
  3a41a1:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3a41a5:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3a41a9:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a41ad:	f3 41 0f 5c 55 00                               	subss  xmm2,DWORD PTR [r13+0x0]
  3a41b3:	f3 41 0f 5c 75 00                               	subss  xmm6,DWORD PTR [r13+0x0]
  3a41b9:	f3 41 0f 5c 7d 04                               	subss  xmm7,DWORD PTR [r13+0x4]
  3a41bf:	f3 0f 5e d6                                     	divss  xmm2,xmm6
  3a41c3:	f3 0f 59 d7                                     	mulss  xmm2,xmm7
  3a41c7:	f3 41 0f 58 55 04                               	addss  xmm2,DWORD PTR [r13+0x4]
  3a41cd:	e8 6e 81 f2 ff                                  	call   0x2cc340
  3a41d2:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [rax+0x4]
  3a41d7:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3a41db:	f3 0f 11 4d 04                                  	movss  DWORD PTR [rbp+0x4],xmm1
  3a41e0:	f3 0f 11 45 00                                  	movss  DWORD PTR [rbp+0x0],xmm0
  3a41e5:	4c 8b 55 30                                     	mov    r10,QWORD PTR [rbp+0x30]
  3a41e9:	49 3b fa                                        	cmp    rdi,r10
  3a41ec:	0f 83 55 01 00 00                               	jae    0x3a4347
  3a41f2:	44 0f 2f c9                                     	comiss xmm9,xmm1
  3a41f6:	48 8d 57 08                                     	lea    rdx,[rdi+0x8]
  3a41fa:	f3 0f 11 07                                     	movss  DWORD PTR [rdi],xmm0
  3a41fe:	f3 0f 11 4f 04                                  	movss  DWORD PTR [rdi+0x4],xmm1
  3a4203:	0f 96 c1                                        	setbe  cl
  3a4206:	fe c9                                           	dec    cl
  3a4208:	80 e1 04                                        	and    cl,0x4
  3a420b:	0f 2f 8d 3c 01 00 00                            	comiss xmm1,DWORD PTR [rbp+0x13c]
  3a4212:	0f 96 c0                                        	setbe  al
  3a4215:	fe c8                                           	dec    al
  3a4217:	24 08                                           	and    al,0x8
  3a4219:	0a c8                                           	or     cl,al
  3a421b:	44 0f 2f d8                                     	comiss xmm11,xmm0
  3a421f:	0f 97 c0                                        	seta   al
  3a4222:	0a c8                                           	or     cl,al
  3a4224:	0f 2f 85 38 01 00 00                            	comiss xmm0,DWORD PTR [rbp+0x138]
  3a422b:	0f 96 c0                                        	setbe  al
  3a422e:	fe c8                                           	dec    al
  3a4230:	24 02                                           	and    al,0x2
  3a4232:	0a c8                                           	or     cl,al
  3a4234:	83 7d 0c 00                                     	cmp    DWORD PTR [rbp+0xc],0x0
  3a4238:	41 88 0e                                        	mov    BYTE PTR [r14],cl
  3a423b:	75 25                                           	jne    0x3a4262
  3a423d:	49 3b d2                                        	cmp    rdx,r10
  3a4240:	0f 83 01 01 00 00                               	jae    0x3a4347
  3a4246:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  3a424a:	48 83 c7 10                                     	add    rdi,0x10
  3a424e:	8b 85 30 01 00 00                               	mov    eax,DWORD PTR [rbp+0x130]
  3a4254:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  3a4258:	41 88 46 01                                     	mov    BYTE PTR [r14+0x1],al
  3a425c:	49 83 c6 02                                     	add    r14,0x2
  3a4260:	eb 0c                                           	jmp    0x3a426e
  3a4262:	8b 85 30 01 00 00                               	mov    eax,DWORD PTR [rbp+0x130]
  3a4268:	49 ff c6                                        	inc    r14
  3a426b:	48 8b fa                                        	mov    rdi,rdx
  3a426e:	44 8b 5d 08                                     	mov    r11d,DWORD PTR [rbp+0x8]
  3a4272:	44 8a c0                                        	mov    r8b,al
  3a4275:	48 8b 4d 18                                     	mov    rcx,QWORD PTR [rbp+0x18]
  3a4279:	41 ff c3                                        	inc    r11d
  3a427c:	48 ff c1                                        	inc    rcx
  3a427f:	44 89 5d 08                                     	mov    DWORD PTR [rbp+0x8],r11d
  3a4283:	4c 8b ee                                        	mov    r13,rsi
  3a4286:	48 89 4d 18                                     	mov    QWORD PTR [rbp+0x18],rcx
  3a428a:	48 83 c6 08                                     	add    rsi,0x8
  3a428e:	44 3b db                                        	cmp    r11d,ebx
  3a4291:	0f 8c 10 fe ff ff                               	jl     0x3a40a7
  3a4297:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
  3a429a:	48 2b 7d 38                                     	sub    rdi,QWORD PTR [rbp+0x38]
  3a429e:	4c 8b 6d 40                                     	mov    r13,QWORD PTR [rbp+0x40]
  3a42a2:	48 8b df                                        	mov    rbx,rdi
  3a42a5:	8b 45 14                                        	mov    eax,DWORD PTR [rbp+0x14]
  3a42a8:	48 c1 fb 03                                     	sar    rbx,0x3
  3a42ac:	41 ff c7                                        	inc    r15d
  3a42af:	41 83 ff 04                                     	cmp    r15d,0x4
  3a42b3:	0f 8c 83 fd ff ff                               	jl     0x3a403c
  3a42b9:	83 fb 03                                        	cmp    ebx,0x3
  3a42bc:	0f 8c 8a 00 00 00                               	jl     0x3a434c
  3a42c2:	f3 0f 10 3d 06 98 ee ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffee9806]        # 0x28dad0
  3a42ca:	33 ff                                           	xor    edi,edi
  3a42cc:	4c 8b bd 20 01 00 00                            	mov    r15,QWORD PTR [rbp+0x120]
  3a42d3:	33 f6                                           	xor    esi,esi
  3a42d5:	48 63 c2                                        	movsxd rax,edx
  3a42d8:	4c 8b 74 c5 20                                  	mov    r14,QWORD PTR [rbp+rax*8+0x20]
  3a42dd:	48 63 c3                                        	movsxd rax,ebx
  3a42e0:	f2 41 0f 10 44 c6 f8                            	movsd  xmm0,QWORD PTR [r14+rax*8-0x8]
  3a42e7:	f2 0f 11 85 38 01 00 00                         	movsd  QWORD PTR [rbp+0x138],xmm0
  3a42ef:	48 63 c6                                        	movsxd rax,esi
  3a42f2:	4c 8d 85 38 01 00 00                            	lea    r8,[rbp+0x138]
  3a42f9:	48 8d 95 30 01 00 00                            	lea    rdx,[rbp+0x130]
  3a4300:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3a4304:	f2 41 0f 10 34 c6                               	movsd  xmm6,QWORD PTR [r14+rax*8]
  3a430a:	f2 0f 11 b5 30 01 00 00                         	movsd  QWORD PTR [rbp+0x130],xmm6
  3a4312:	e8 cd 24 f9 ff                                  	call   0x3367e4
  3a4317:	48 8b c8                                        	mov    rcx,rax
  3a431a:	e8 d5 f0 fe ff                                  	call   0x3933f4
  3a431f:	0f 2f f8                                        	comiss xmm7,xmm0
  3a4322:	73 13                                           	jae    0x3a4337
  3a4324:	48 63 c7                                        	movsxd rax,edi
  3a4327:	ff c7                                           	inc    edi
  3a4329:	f2 0f 11 b5 38 01 00 00                         	movsd  QWORD PTR [rbp+0x138],xmm6
  3a4331:	f2 41 0f 11 34 c7                               	movsd  QWORD PTR [r15+rax*8],xmm6
  3a4337:	ff c6                                           	inc    esi
  3a4339:	3b f3                                           	cmp    esi,ebx
  3a433b:	7c b2                                           	jl     0x3a42ef
  3a433d:	33 c0                                           	xor    eax,eax
  3a433f:	83 ff 02                                        	cmp    edi,0x2
  3a4342:	0f 4f c7                                        	cmovg  eax,edi
  3a4345:	eb 07                                           	jmp    0x3a434e
  3a4347:	83 c8 ff                                        	or     eax,0xffffffff
  3a434a:	eb 02                                           	jmp    0x3a434e
  3a434c:	33 c0                                           	xor    eax,eax
  3a434e:	0f 28 b5 b0 00 00 00                            	movaps xmm6,XMMWORD PTR [rbp+0xb0]
  3a4355:	0f 28 bd a0 00 00 00                            	movaps xmm7,XMMWORD PTR [rbp+0xa0]
  3a435c:	44 0f 28 8d 90 00 00 00                         	movaps xmm9,XMMWORD PTR [rbp+0x90]
  3a4364:	44 0f 28 9d 80 00 00 00                         	movaps xmm11,XMMWORD PTR [rbp+0x80]
  3a436c:	48 8d a5 c8 00 00 00                            	lea    rsp,[rbp+0xc8]
  3a4373:	41 5f                                           	pop    r15
  3a4375:	41 5e                                           	pop    r14
  3a4377:	41 5d                                           	pop    r13
  3a4379:	41 5c                                           	pop    r12
  3a437b:	5f                                              	pop    rdi
  3a437c:	5e                                              	pop    rsi
  3a437d:	5b                                              	pop    rbx
  3a437e:	5d                                              	pop    rbp
  3a437f:	c3                                              	ret
