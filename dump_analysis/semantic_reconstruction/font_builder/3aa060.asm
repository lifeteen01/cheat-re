
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aa060 <.data+0x3aa060>:
  3aa060:	40 55                                           	rex push rbp
  3aa062:	53                                              	push   rbx
  3aa063:	57                                              	push   rdi
  3aa064:	41 54                                           	push   r12
  3aa066:	41 55                                           	push   r13
  3aa068:	41 56                                           	push   r14
  3aa06a:	48 8b ec                                        	mov    rbp,rsp
  3aa06d:	48 83 ec 78                                     	sub    rsp,0x78
  3aa071:	48 89 51 08                                     	mov    QWORD PTR [rcx+0x8],rdx
  3aa075:	45 8b e0                                        	mov    r12d,r8d
  3aa078:	44 89 41 10                                     	mov    DWORD PTR [rcx+0x10],r8d
  3aa07c:	48 8b fa                                        	mov    rdi,rdx
  3aa07f:	48 8b d9                                        	mov    rbx,rcx
  3aa082:	45 33 c0                                        	xor    r8d,r8d
  3aa085:	33 d2                                           	xor    edx,edx
  3aa087:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa08b:	e8 88 22 00 00                                  	call   0x3ac318
  3aa090:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa094:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa098:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3aa09b:	f3 0f 7f 43 40                                  	movdqu XMMWORD PTR [rbx+0x40],xmm0
  3aa0a0:	e8 ab 55 ff ff                                  	call   0x39f650
  3aa0a5:	48 8b c8                                        	mov    rcx,rax
  3aa0a8:	e8 d7 47 ff ff                                  	call   0x39e884
  3aa0ad:	4c 8b c0                                        	mov    r8,rax
  3aa0b0:	41 8b d4                                        	mov    edx,r12d
  3aa0b3:	48 8b cf                                        	mov    rcx,rdi
  3aa0b6:	e8 25 1b 00 00                                  	call   0x3abbe0
  3aa0bb:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa0bf:	44 8b f0                                        	mov    r14d,eax
  3aa0c2:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa0c6:	e8 9d 55 ff ff                                  	call   0x39f668
  3aa0cb:	48 8b c8                                        	mov    rcx,rax
  3aa0ce:	e8 b1 47 ff ff                                  	call   0x39e884
  3aa0d3:	4c 8b c0                                        	mov    r8,rax
  3aa0d6:	41 8b d4                                        	mov    edx,r12d
  3aa0d9:	48 8b cf                                        	mov    rcx,rdi
  3aa0dc:	e8 ff 1a 00 00                                  	call   0x3abbe0
  3aa0e1:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa0e5:	89 43 18                                        	mov    DWORD PTR [rbx+0x18],eax
  3aa0e8:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa0ec:	e8 8f 55 ff ff                                  	call   0x39f680
  3aa0f1:	48 8b c8                                        	mov    rcx,rax
  3aa0f4:	e8 8b 47 ff ff                                  	call   0x39e884
  3aa0f9:	4c 8b c0                                        	mov    r8,rax
  3aa0fc:	41 8b d4                                        	mov    edx,r12d
  3aa0ff:	48 8b cf                                        	mov    rcx,rdi
  3aa102:	e8 d9 1a 00 00                                  	call   0x3abbe0
  3aa107:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa10b:	89 43 1c                                        	mov    DWORD PTR [rbx+0x1c],eax
  3aa10e:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa112:	e8 81 55 ff ff                                  	call   0x39f698
  3aa117:	48 8b c8                                        	mov    rcx,rax
  3aa11a:	e8 65 47 ff ff                                  	call   0x39e884
  3aa11f:	4c 8b c0                                        	mov    r8,rax
  3aa122:	41 8b d4                                        	mov    edx,r12d
  3aa125:	48 8b cf                                        	mov    rcx,rdi
  3aa128:	e8 b3 1a 00 00                                  	call   0x3abbe0
  3aa12d:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa131:	89 43 20                                        	mov    DWORD PTR [rbx+0x20],eax
  3aa134:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa138:	e8 73 55 ff ff                                  	call   0x39f6b0
  3aa13d:	48 8b c8                                        	mov    rcx,rax
  3aa140:	e8 3f 47 ff ff                                  	call   0x39e884
  3aa145:	4c 8b c0                                        	mov    r8,rax
  3aa148:	41 8b d4                                        	mov    edx,r12d
  3aa14b:	48 8b cf                                        	mov    rcx,rdi
  3aa14e:	e8 8d 1a 00 00                                  	call   0x3abbe0
  3aa153:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa157:	89 43 24                                        	mov    DWORD PTR [rbx+0x24],eax
  3aa15a:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa15e:	e8 65 55 ff ff                                  	call   0x39f6c8
  3aa163:	48 8b c8                                        	mov    rcx,rax
  3aa166:	e8 19 47 ff ff                                  	call   0x39e884
  3aa16b:	4c 8b c0                                        	mov    r8,rax
  3aa16e:	41 8b d4                                        	mov    edx,r12d
  3aa171:	48 8b cf                                        	mov    rcx,rdi
  3aa174:	e8 67 1a 00 00                                  	call   0x3abbe0
  3aa179:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa17d:	89 43 28                                        	mov    DWORD PTR [rbx+0x28],eax
  3aa180:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa184:	e8 57 55 ff ff                                  	call   0x39f6e0
  3aa189:	48 8b c8                                        	mov    rcx,rax
  3aa18c:	e8 f3 46 ff ff                                  	call   0x39e884
  3aa191:	4c 8b c0                                        	mov    r8,rax
  3aa194:	41 8b d4                                        	mov    edx,r12d
  3aa197:	48 8b cf                                        	mov    rcx,rdi
  3aa19a:	e8 41 1a 00 00                                  	call   0x3abbe0
  3aa19f:	89 43 2c                                        	mov    DWORD PTR [rbx+0x2c],eax
  3aa1a2:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3aa1a6:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa1aa:	e8 49 55 ff ff                                  	call   0x39f6f8
  3aa1af:	48 8b c8                                        	mov    rcx,rax
  3aa1b2:	e8 cd 46 ff ff                                  	call   0x39e884
  3aa1b7:	4c 8b c0                                        	mov    r8,rax
  3aa1ba:	41 8b d4                                        	mov    edx,r12d
  3aa1bd:	48 8b cf                                        	mov    rcx,rdi
  3aa1c0:	e8 1b 1a 00 00                                  	call   0x3abbe0
  3aa1c5:	45 33 ed                                        	xor    r13d,r13d
  3aa1c8:	89 43 30                                        	mov    DWORD PTR [rbx+0x30],eax
  3aa1cb:	45 85 f6                                        	test   r14d,r14d
  3aa1ce:	74 22                                           	je     0x3aa1f2
  3aa1d0:	44 39 6b 1c                                     	cmp    DWORD PTR [rbx+0x1c],r13d
  3aa1d4:	74 1c                                           	je     0x3aa1f2
  3aa1d6:	44 39 6b 24                                     	cmp    DWORD PTR [rbx+0x24],r13d
  3aa1da:	74 16                                           	je     0x3aa1f2
  3aa1dc:	44 39 6b 28                                     	cmp    DWORD PTR [rbx+0x28],r13d
  3aa1e0:	74 10                                           	je     0x3aa1f2
  3aa1e2:	44 39 6b 20                                     	cmp    DWORD PTR [rbx+0x20],r13d
  3aa1e6:	74 1a                                           	je     0x3aa202
  3aa1e8:	44 39 6b 18                                     	cmp    DWORD PTR [rbx+0x18],r13d
  3aa1ec:	0f 85 2d 02 00 00                               	jne    0x3aa41f
  3aa1f2:	33 c0                                           	xor    eax,eax
  3aa1f4:	48 83 c4 78                                     	add    rsp,0x78
  3aa1f8:	41 5e                                           	pop    r14
  3aa1fa:	41 5d                                           	pop    r13
  3aa1fc:	41 5c                                           	pop    r12
  3aa1fe:	5f                                              	pop    rdi
  3aa1ff:	5b                                              	pop    rbx
  3aa200:	5d                                              	pop    rbp
  3aa201:	c3                                              	ret
  3aa202:	48 8d 55 ac                                     	lea    rdx,[rbp-0x54]
  3aa206:	c7 45 50 02 00 00 00                            	mov    DWORD PTR [rbp+0x50],0x2
  3aa20d:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3aa211:	44 89 6d 40                                     	mov    DWORD PTR [rbp+0x40],r13d
  3aa215:	44 89 6d a8                                     	mov    DWORD PTR [rbp-0x58],r13d
  3aa219:	44 89 6d 38                                     	mov    DWORD PTR [rbp+0x38],r13d
  3aa21d:	e8 ee 54 ff ff                                  	call   0x39f710
  3aa222:	48 8b c8                                        	mov    rcx,rax
  3aa225:	e8 5a 46 ff ff                                  	call   0x39e884
  3aa22a:	4c 8b c0                                        	mov    r8,rax
  3aa22d:	41 8b d4                                        	mov    edx,r12d
  3aa230:	48 8b cf                                        	mov    rcx,rdi
  3aa233:	e8 a8 19 00 00                                  	call   0x3abbe0
  3aa238:	44 8b c8                                        	mov    r9d,eax
  3aa23b:	85 c0                                           	test   eax,eax
  3aa23d:	74 b3                                           	je     0x3aa1f2
  3aa23f:	45 33 c0                                        	xor    r8d,r8d
  3aa242:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa246:	33 d2                                           	xor    edx,edx
  3aa248:	e8 cb 20 00 00                                  	call   0x3ac318
  3aa24d:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa251:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3aa254:	f3 0f 7f 83 80 00 00 00                         	movdqu XMMWORD PTR [rbx+0x80],xmm0
  3aa25c:	e8 b7 20 00 00                                  	call   0x3ac318
  3aa261:	4a 8d 14 0f                                     	lea    rdx,[rdi+r9*1]
  3aa265:	41 b8 00 00 00 20                               	mov    r8d,0x20000000
  3aa26b:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa26f:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3aa272:	f3 0f 7f 83 90 00 00 00                         	movdqu XMMWORD PTR [rbx+0x90],xmm0
  3aa27a:	e8 99 20 00 00                                  	call   0x3ac318
  3aa27f:	ba 02 00 00 00                                  	mov    edx,0x2
  3aa284:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3aa288:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3aa28b:	f3 0f 7f 43 40                                  	movdqu XMMWORD PTR [rbx+0x40],xmm0
  3aa290:	66 0f 7f 45 b8                                  	movdqa XMMWORD PTR [rbp-0x48],xmm0
  3aa295:	e8 5a 0d 00 00                                  	call   0x3aaff4
  3aa29a:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3aa29e:	e8 79 0c 00 00                                  	call   0x3aaf1c
  3aa2a3:	0f b6 d0                                        	movzx  edx,al
  3aa2a6:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3aa2aa:	e8 35 0d 00 00                                  	call   0x3aafe4
  3aa2af:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa2b3:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa2b7:	e8 40 0d 00 00                                  	call   0x3aaffc
  3aa2bc:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa2c0:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa2c4:	e8 33 0d 00 00                                  	call   0x3aaffc
  3aa2c9:	45 33 c0                                        	xor    r8d,r8d
  3aa2cc:	48 8d 55 c8                                     	lea    rdx,[rbp-0x38]
  3aa2d0:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa2d4:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3aa2d7:	f3 0f 7f 4d c8                                  	movdqu XMMWORD PTR [rbp-0x38],xmm1
  3aa2dc:	e8 bb 0d 00 00                                  	call   0x3ab09c
  3aa2e1:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa2e5:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa2e9:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3aa2ec:	f3 0f 7f 4d c8                                  	movdqu XMMWORD PTR [rbp-0x38],xmm1
  3aa2f1:	e8 06 0d 00 00                                  	call   0x3aaffc
  3aa2f6:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa2fa:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3aa2fe:	e8 f9 0c 00 00                                  	call   0x3aaffc
  3aa303:	ba 11 00 00 00                                  	mov    edx,0x11
  3aa308:	4c 8d 4d 40                                     	lea    r9,[rbp+0x40]
  3aa30c:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3aa310:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3aa313:	44 8d 42 f0                                     	lea    r8d,[rdx-0x10]
  3aa317:	f3 0f 7f 4b 60                                  	movdqu XMMWORD PTR [rbx+0x60],xmm1
  3aa31c:	e8 5b 13 00 00                                  	call   0x3ab67c
  3aa321:	4c 8d 4d 50                                     	lea    r9,[rbp+0x50]
  3aa325:	ba 06 01 00 00                                  	mov    edx,0x106
  3aa32a:	41 b8 01 00 00 00                               	mov    r8d,0x1
  3aa330:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3aa334:	e8 43 13 00 00                                  	call   0x3ab67c
  3aa339:	4c 8d 4d a8                                     	lea    r9,[rbp-0x58]
  3aa33d:	ba 24 01 00 00                                  	mov    edx,0x124
  3aa342:	41 b8 01 00 00 00                               	mov    r8d,0x1
  3aa348:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3aa34c:	e8 2b 13 00 00                                  	call   0x3ab67c
  3aa351:	4c 8d 4d 38                                     	lea    r9,[rbp+0x38]
  3aa355:	ba 25 01 00 00                                  	mov    edx,0x125
  3aa35a:	41 b8 01 00 00 00                               	mov    r8d,0x1
  3aa360:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3aa364:	e8 13 13 00 00                                  	call   0x3ab67c
  3aa369:	0f 28 55 c8                                     	movaps xmm2,XMMWORD PTR [rbp-0x38]
  3aa36d:	4c 8d 45 c8                                     	lea    r8,[rbp-0x38]
  3aa371:	0f 28 5d b8                                     	movaps xmm3,XMMWORD PTR [rbp-0x48]
  3aa375:	48 8d 55 d8                                     	lea    rdx,[rbp-0x28]
  3aa379:	48 8d 4d e8                                     	lea    rcx,[rbp-0x18]
  3aa37d:	66 0f 7f 55 c8                                  	movdqa XMMWORD PTR [rbp-0x38],xmm2
  3aa382:	66 0f 7f 5d d8                                  	movdqa XMMWORD PTR [rbp-0x28],xmm3
  3aa387:	e8 78 19 00 00                                  	call   0x3abd04
  3aa38c:	83 7d 50 02                                     	cmp    DWORD PTR [rbp+0x50],0x2
  3aa390:	0f 10 10                                        	movups xmm2,XMMWORD PTR [rax]
  3aa393:	f3 0f 7f 53 70                                  	movdqu XMMWORD PTR [rbx+0x70],xmm2
  3aa398:	0f 85 54 fe ff ff                               	jne    0x3aa1f2
  3aa39e:	44 39 6d 40                                     	cmp    DWORD PTR [rbp+0x40],r13d
  3aa3a2:	0f 84 4a fe ff ff                               	je     0x3aa1f2
  3aa3a8:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
  3aa3ab:	85 d2                                           	test   edx,edx
  3aa3ad:	74 4f                                           	je     0x3aa3fe
  3aa3af:	44 39 6d 38                                     	cmp    DWORD PTR [rbp+0x38],r13d
  3aa3b3:	0f 84 39 fe ff ff                               	je     0x3aa1f2
  3aa3b9:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3aa3bd:	e8 22 0c 00 00                                  	call   0x3aafe4
  3aa3c2:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa3c6:	48 8d 4d e8                                     	lea    rcx,[rbp-0x18]
  3aa3ca:	e8 2d 0c 00 00                                  	call   0x3aaffc
  3aa3cf:	44 8b 4d c4                                     	mov    r9d,DWORD PTR [rbp-0x3c]
  3aa3d3:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa3d7:	44 2b 4d 38                                     	sub    r9d,DWORD PTR [rbp+0x38]
  3aa3db:	48 8d 4d e8                                     	lea    rcx,[rbp-0x18]
  3aa3df:	44 8b 45 38                                     	mov    r8d,DWORD PTR [rbp+0x38]
  3aa3e3:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3aa3e6:	f3 0f 7f 8b 80 00 00 00                         	movdqu XMMWORD PTR [rbx+0x80],xmm1
  3aa3ee:	e8 99 0b 00 00                                  	call   0x3aaf8c
  3aa3f3:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3aa3f6:	f3 0f 7f 8b 90 00 00 00                         	movdqu XMMWORD PTR [rbx+0x90],xmm1
  3aa3fe:	8b 55 40                                        	mov    edx,DWORD PTR [rbp+0x40]
  3aa401:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3aa405:	e8 da 0b 00 00                                  	call   0x3aafe4
  3aa40a:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  3aa40e:	48 8d 4d e8                                     	lea    rcx,[rbp-0x18]
  3aa412:	e8 e5 0b 00 00                                  	call   0x3aaffc
  3aa417:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3aa41a:	f3 0f 7f 4b 50                                  	movdqu XMMWORD PTR [rbx+0x50],xmm1
  3aa41f:	4c 8d 05 aa fe ef ff                            	lea    r8,[rip+0xffffffffffeffeaa]        # 0x2aa2d0
  3aa426:	41 8b d4                                        	mov    edx,r12d
  3aa429:	48 8b cf                                        	mov    rcx,rdi
  3aa42c:	e8 af 17 00 00                                  	call   0x3abbe0
  3aa431:	85 c0                                           	test   eax,eax
  3aa433:	74 13                                           	je     0x3aa448
  3aa435:	8b c8                                           	mov    ecx,eax
  3aa437:	48 83 c1 04                                     	add    rcx,0x4
  3aa43b:	48 03 cf                                        	add    rcx,rdi
  3aa43e:	e8 51 39 00 00                                  	call   0x3add94
  3aa443:	0f b7 d0                                        	movzx  edx,ax
  3aa446:	eb 05                                           	jmp    0x3aa44d
  3aa448:	ba ff ff 00 00                                  	mov    edx,0xffff
  3aa44d:	89 53 14                                        	mov    DWORD PTR [rbx+0x14],edx
  3aa450:	48 8d 4f 02                                     	lea    rcx,[rdi+0x2]
  3aa454:	49 03 ce                                        	add    rcx,r14
  3aa457:	c7 43 34 ff ff ff ff                            	mov    DWORD PTR [rbx+0x34],0xffffffff
  3aa45e:	e8 31 39 00 00                                  	call   0x3add94
  3aa463:	44 0f b7 d0                                     	movzx  r10d,ax
  3aa467:	45 8b c5                                        	mov    r8d,r13d
  3aa46a:	44 89 6b 38                                     	mov    DWORD PTR [rbx+0x38],r13d
  3aa46e:	66 45 3b ea                                     	cmp    r13w,r10w
  3aa472:	73 52                                           	jae    0x3aa4c6
  3aa474:	45 8d 5e 04                                     	lea    r11d,[r14+0x4]
  3aa478:	43 8d 04 c3                                     	lea    eax,[r11+r8*8]
  3aa47c:	48 8d 0c 38                                     	lea    rcx,[rax+rdi*1]
  3aa480:	44 8b c8                                        	mov    r9d,eax
  3aa483:	e8 0c 39 00 00                                  	call   0x3add94
  3aa488:	66 85 c0                                        	test   ax,ax
  3aa48b:	74 1f                                           	je     0x3aa4ac
  3aa48d:	66 83 f8 03                                     	cmp    ax,0x3
  3aa491:	75 2b                                           	jne    0x3aa4be
  3aa493:	48 8d 4f 02                                     	lea    rcx,[rdi+0x2]
  3aa497:	49 03 c9                                        	add    rcx,r9
  3aa49a:	e8 f5 38 00 00                                  	call   0x3add94
  3aa49f:	0f b7 d0                                        	movzx  edx,ax
  3aa4a2:	83 ea 01                                        	sub    edx,0x1
  3aa4a5:	74 05                                           	je     0x3aa4ac
  3aa4a7:	83 fa 09                                        	cmp    edx,0x9
  3aa4aa:	75 12                                           	jne    0x3aa4be
  3aa4ac:	48 8d 4f 04                                     	lea    rcx,[rdi+0x4]
  3aa4b0:	49 03 c9                                        	add    rcx,r9
  3aa4b3:	e8 bc 38 00 00                                  	call   0x3add74
  3aa4b8:	41 03 c6                                        	add    eax,r14d
  3aa4bb:	89 43 38                                        	mov    DWORD PTR [rbx+0x38],eax
  3aa4be:	41 ff c0                                        	inc    r8d
  3aa4c1:	45 3b c2                                        	cmp    r8d,r10d
  3aa4c4:	7c b2                                           	jl     0x3aa478
  3aa4c6:	44 39 6b 38                                     	cmp    DWORD PTR [rbx+0x38],r13d
  3aa4ca:	0f 84 22 fd ff ff                               	je     0x3aa1f2
  3aa4d0:	48 63 4b 1c                                     	movsxd rcx,DWORD PTR [rbx+0x1c]
  3aa4d4:	48 83 c1 32                                     	add    rcx,0x32
  3aa4d8:	48 03 cf                                        	add    rcx,rdi
  3aa4db:	e8 b4 38 00 00                                  	call   0x3add94
  3aa4e0:	0f b7 d0                                        	movzx  edx,ax
  3aa4e3:	b8 01 00 00 00                                  	mov    eax,0x1
  3aa4e8:	89 53 3c                                        	mov    DWORD PTR [rbx+0x3c],edx
  3aa4eb:	e9 04 fd ff ff                                  	jmp    0x3aa1f4
