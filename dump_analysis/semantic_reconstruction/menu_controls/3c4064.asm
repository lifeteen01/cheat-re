
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c4064 <.data+0x3c4064>:
  3c4064:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3c4069:	48 89 7c 24 10                                  	mov    QWORD PTR [rsp+0x10],rdi
  3c406e:	55                                              	push   rbp
  3c406f:	48 8b ec                                        	mov    rbp,rsp
  3c4072:	48 83 ec 60                                     	sub    rsp,0x60
  3c4076:	48 8b 05 ab 1a 04 00                            	mov    rax,QWORD PTR [rip+0x41aab]        # 0x405b28
  3c407d:	49 8b d9                                        	mov    rbx,r9
  3c4080:	44 8b 4d 48                                     	mov    r9d,DWORD PTR [rbp+0x48]
  3c4084:	44 8b da                                        	mov    r11d,edx
  3c4087:	48 8b f9                                        	mov    rdi,rcx
  3c408a:	44 8b 90 a8 47 00 00                            	mov    r10d,DWORD PTR [rax+0x47a8]
  3c4091:	41 8b c1                                        	mov    eax,r9d
  3c4094:	25 00 00 20 00                                  	and    eax,0x200000
  3c4099:	41 81 e2 80 00 00 00                            	and    r10d,0x80
  3c40a0:	44 0b d0                                        	or     r10d,eax
  3c40a3:	0f 85 37 03 00 00                               	jne    0x3c43e0
  3c40a9:	41 ba 05 00 00 00                               	mov    r10d,0x5
  3c40af:	45 3b c2                                        	cmp    r8d,r10d
  3c40b2:	0f 8f f4 01 00 00                               	jg     0x3c42ac
  3c40b8:	0f 84 b0 01 00 00                               	je     0x3c426e
  3c40be:	45 85 c0                                        	test   r8d,r8d
  3c40c1:	0f 84 4d 01 00 00                               	je     0x3c4214
  3c40c7:	41 83 e8 01                                     	sub    r8d,0x1
  3c40cb:	0f 84 fc 00 00 00                               	je     0x3c41cd
  3c40d1:	41 83 e8 01                                     	sub    r8d,0x1
  3c40d5:	0f 84 96 00 00 00                               	je     0x3c4171
  3c40db:	41 83 e8 01                                     	sub    r8d,0x1
  3c40df:	74 49                                           	je     0x3c412a
  3c40e1:	41 83 f8 01                                     	cmp    r8d,0x1
  3c40e5:	0f 85 f5 02 00 00                               	jne    0x3c43e0
  3c40eb:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c40ef:	45 8d 42 ff                                     	lea    r8d,[r10-0x1]
  3c40f3:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c40f8:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c40fc:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c4101:	4c 8b cb                                        	mov    r9,rbx
  3c4104:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c4109:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c410d:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3c410f:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c4113:	89 4c 24 28                                     	mov    DWORD PTR [rsp+0x28],ecx
  3c4117:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3c4119:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3c411d:	48 8b cf                                        	mov    rcx,rdi
  3c4120:	e8 3f 45 ff ff                                  	call   0x3b8664
  3c4125:	e9 b8 02 00 00                                  	jmp    0x3c43e2
  3c412a:	0f b7 03                                        	movzx  eax,WORD PTR [rbx]
  3c412d:	45 8b c2                                        	mov    r8d,r10d
  3c4130:	89 45 f0                                        	mov    DWORD PTR [rbp-0x10],eax
  3c4133:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c4137:	0f b7 10                                        	movzx  edx,WORD PTR [rax]
  3c413a:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c413e:	0f b7 08                                        	movzx  ecx,WORD PTR [rax]
  3c4141:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c4145:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c414a:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c414e:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c4153:	4c 8d 4d f0                                     	lea    r9,[rbp-0x10]
  3c4157:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c415c:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3c4160:	41 8b d3                                        	mov    edx,r11d
  3c4163:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3c4167:	48 8b cf                                        	mov    rcx,rdi
  3c416a:	e8 a5 4c ff ff                                  	call   0x3b8e14
  3c416f:	eb 48                                           	jmp    0x3c41b9
  3c4171:	0f bf 03                                        	movsx  eax,WORD PTR [rbx]
  3c4174:	41 b8 04 00 00 00                               	mov    r8d,0x4
  3c417a:	89 45 f0                                        	mov    DWORD PTR [rbp-0x10],eax
  3c417d:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c4181:	0f bf 10                                        	movsx  edx,WORD PTR [rax]
  3c4184:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c4188:	0f bf 08                                        	movsx  ecx,WORD PTR [rax]
  3c418b:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c418f:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c4194:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c4198:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c419d:	4c 8d 4d f0                                     	lea    r9,[rbp-0x10]
  3c41a1:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c41a6:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3c41aa:	41 8b d3                                        	mov    edx,r11d
  3c41ad:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3c41b1:	48 8b cf                                        	mov    rcx,rdi
  3c41b4:	e8 ab 44 ff ff                                  	call   0x3b8664
  3c41b9:	84 c0                                           	test   al,al
  3c41bb:	0f 84 21 02 00 00                               	je     0x3c43e2
  3c41c1:	0f b7 4d f0                                     	movzx  ecx,WORD PTR [rbp-0x10]
  3c41c5:	66 89 0b                                        	mov    WORD PTR [rbx],cx
  3c41c8:	e9 15 02 00 00                                  	jmp    0x3c43e2
  3c41cd:	0f b6 03                                        	movzx  eax,BYTE PTR [rbx]
  3c41d0:	45 8b c2                                        	mov    r8d,r10d
  3c41d3:	89 45 f0                                        	mov    DWORD PTR [rbp-0x10],eax
  3c41d6:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c41da:	0f b6 10                                        	movzx  edx,BYTE PTR [rax]
  3c41dd:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c41e1:	0f b6 08                                        	movzx  ecx,BYTE PTR [rax]
  3c41e4:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c41e8:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c41ed:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c41f1:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c41f6:	4c 8d 4d f0                                     	lea    r9,[rbp-0x10]
  3c41fa:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c41ff:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3c4203:	41 8b d3                                        	mov    edx,r11d
  3c4206:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3c420a:	48 8b cf                                        	mov    rcx,rdi
  3c420d:	e8 02 4c ff ff                                  	call   0x3b8e14
  3c4212:	eb 48                                           	jmp    0x3c425c
  3c4214:	0f be 03                                        	movsx  eax,BYTE PTR [rbx]
  3c4217:	41 b8 04 00 00 00                               	mov    r8d,0x4
  3c421d:	89 45 f0                                        	mov    DWORD PTR [rbp-0x10],eax
  3c4220:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c4224:	0f be 10                                        	movsx  edx,BYTE PTR [rax]
  3c4227:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c422b:	0f be 08                                        	movsx  ecx,BYTE PTR [rax]
  3c422e:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c4232:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c4237:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c423b:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c4240:	4c 8d 4d f0                                     	lea    r9,[rbp-0x10]
  3c4244:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c4249:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3c424d:	41 8b d3                                        	mov    edx,r11d
  3c4250:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3c4254:	48 8b cf                                        	mov    rcx,rdi
  3c4257:	e8 08 44 ff ff                                  	call   0x3b8664
  3c425c:	84 c0                                           	test   al,al
  3c425e:	0f 84 7e 01 00 00                               	je     0x3c43e2
  3c4264:	8a 4d f0                                        	mov    cl,BYTE PTR [rbp-0x10]
  3c4267:	88 0b                                           	mov    BYTE PTR [rbx],cl
  3c4269:	e9 74 01 00 00                                  	jmp    0x3c43e2
  3c426e:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c4272:	45 8b c2                                        	mov    r8d,r10d
  3c4275:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c427a:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c427e:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c4283:	4c 8b cb                                        	mov    r9,rbx
  3c4286:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c428b:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c428f:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3c4291:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c4295:	89 4c 24 28                                     	mov    DWORD PTR [rsp+0x28],ecx
  3c4299:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3c429b:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3c429f:	48 8b cf                                        	mov    rcx,rdi
  3c42a2:	e8 6d 4b ff ff                                  	call   0x3b8e14
  3c42a7:	e9 36 01 00 00                                  	jmp    0x3c43e2
  3c42ac:	41 83 e8 06                                     	sub    r8d,0x6
  3c42b0:	0f 84 e8 00 00 00                               	je     0x3c439e
  3c42b6:	41 83 e8 01                                     	sub    r8d,0x1
  3c42ba:	0f 84 9c 00 00 00                               	je     0x3c435c
  3c42c0:	41 83 e8 01                                     	sub    r8d,0x1
  3c42c4:	74 50                                           	je     0x3c4316
  3c42c6:	41 83 f8 01                                     	cmp    r8d,0x1
  3c42ca:	0f 85 10 01 00 00                               	jne    0x3c43e0
  3c42d0:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c42d4:	41 b8 09 00 00 00                               	mov    r8d,0x9
  3c42da:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c42df:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c42e3:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c42e8:	4c 8b cb                                        	mov    r9,rbx
  3c42eb:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c42f0:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c42f4:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3c42f8:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c42fc:	f2 0f 11 44 24 28                               	movsd  QWORD PTR [rsp+0x28],xmm0
  3c4302:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  3c4306:	f2 0f 11 4c 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm1
  3c430c:	e8 63 5a ff ff                                  	call   0x3b9d74
  3c4311:	e9 cc 00 00 00                                  	jmp    0x3c43e2
  3c4316:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c431a:	41 b8 08 00 00 00                               	mov    r8d,0x8
  3c4320:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c4325:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c4329:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c432e:	4c 8b cb                                        	mov    r9,rbx
  3c4331:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c4336:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c433a:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3c433e:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c4342:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  3c4348:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3c434c:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  3c4352:	e8 6d 52 ff ff                                  	call   0x3b95c4
  3c4357:	e9 86 00 00 00                                  	jmp    0x3c43e2
  3c435c:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c4360:	41 b8 07 00 00 00                               	mov    r8d,0x7
  3c4366:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c436b:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c436f:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c4374:	4c 8b cb                                        	mov    r9,rbx
  3c4377:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c437c:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c4380:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3c4383:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c4387:	48 89 4c 24 28                                  	mov    QWORD PTR [rsp+0x28],rcx
  3c438c:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3c438f:	48 89 4c 24 20                                  	mov    QWORD PTR [rsp+0x20],rcx
  3c4394:	48 8b cf                                        	mov    rcx,rdi
  3c4397:	e8 60 69 ff ff                                  	call   0x3bacfc
  3c439c:	eb 44                                           	jmp    0x3c43e2
  3c439e:	48 8b 45 50                                     	mov    rax,QWORD PTR [rbp+0x50]
  3c43a2:	41 b8 06 00 00 00                               	mov    r8d,0x6
  3c43a8:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c43ad:	48 8b 45 40                                     	mov    rax,QWORD PTR [rbp+0x40]
  3c43b1:	44 89 4c 24 38                                  	mov    DWORD PTR [rsp+0x38],r9d
  3c43b6:	4c 8b cb                                        	mov    r9,rbx
  3c43b9:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3c43be:	48 8b 45 38                                     	mov    rax,QWORD PTR [rbp+0x38]
  3c43c2:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3c43c5:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  3c43c9:	48 89 4c 24 28                                  	mov    QWORD PTR [rsp+0x28],rcx
  3c43ce:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3c43d1:	48 89 4c 24 20                                  	mov    QWORD PTR [rsp+0x20],rcx
  3c43d6:	48 8b cf                                        	mov    rcx,rdi
  3c43d9:	e8 62 61 ff ff                                  	call   0x3ba540
  3c43de:	eb 02                                           	jmp    0x3c43e2
  3c43e0:	32 c0                                           	xor    al,al
  3c43e2:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  3c43e7:	48 8b 7c 24 78                                  	mov    rdi,QWORD PTR [rsp+0x78]
  3c43ec:	48 83 c4 60                                     	add    rsp,0x60
  3c43f0:	5d                                              	pop    rbp
  3c43f1:	c3                                              	ret
