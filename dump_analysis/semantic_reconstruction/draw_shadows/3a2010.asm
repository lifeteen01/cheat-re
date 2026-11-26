
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a2010 <.data+0x3a2010>:
  3a2010:	44 89 4c 24 20                                  	mov    DWORD PTR [rsp+0x20],r9d
  3a2015:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  3a201a:	55                                              	push   rbp
  3a201b:	56                                              	push   rsi
  3a201c:	57                                              	push   rdi
  3a201d:	41 54                                           	push   r12
  3a201f:	41 55                                           	push   r13
  3a2021:	41 56                                           	push   r14
  3a2023:	41 57                                           	push   r15
  3a2025:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
  3a202c:	48 8d 6c 24 40                                  	lea    rbp,[rsp+0x40]
  3a2031:	48 89 9d d0 00 00 00                            	mov    QWORD PTR [rbp+0xd0],rbx
  3a2038:	4d 8b e8                                        	mov    r13,r8
  3a203b:	0f 29 b5 80 00 00 00                            	movaps XMMWORD PTR [rbp+0x80],xmm6
  3a2042:	4c 8b f1                                        	mov    r14,rcx
  3a2045:	0f 29 7d 70                                     	movaps XMMWORD PTR [rbp+0x70],xmm7
  3a2049:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  3a2050:	0f 84 f8 02 00 00                               	je     0x3a234e
  3a2056:	44 8b 95 00 01 00 00                            	mov    r10d,DWORD PTR [rbp+0x100]
  3a205d:	45 8b fa                                        	mov    r15d,r10d
  3a2060:	f3 0f 10 9d 08 01 00 00                         	movss  xmm3,DWORD PTR [rbp+0x108]
  3a2068:	41 81 e7 00 02 00 00                            	and    r15d,0x200
  3a206f:	0f 2f 1d d6 b1 ee ff                            	comiss xmm3,DWORD PTR [rip+0xffffffffffeeb1d6]        # 0x28d24c
  3a2076:	76 72                                           	jbe    0x3a20ea
  3a2078:	41 8b c2                                        	mov    eax,r10d
  3a207b:	25 f0 01 00 00                                  	and    eax,0x1f0
  3a2080:	3d 00 01 00 00                                  	cmp    eax,0x100
  3a2085:	74 63                                           	je     0x3a20ea
  3a2087:	c6 45 00 01                                     	mov    BYTE PTR [rbp+0x0],0x1
  3a208b:	45 85 ff                                        	test   r15d,r15d
  3a208e:	74 63                                           	je     0x3a20f3
  3a2090:	44 89 54 24 20                                  	mov    DWORD PTR [rsp+0x20],r10d
  3a2095:	e8 de 4a 00 00                                  	call   0x3a6b78
  3a209a:	49 63 7e 78                                     	movsxd rdi,DWORD PTR [r14+0x78]
  3a209e:	89 7d 18                                        	mov    DWORD PTR [rbp+0x18],edi
  3a20a1:	4c 8d 04 fd 00 00 00 00                         	lea    r8,[rdi*8+0x0]
  3a20a9:	49 8d 40 0f                                     	lea    rax,[r8+0xf]
  3a20ad:	49 3b c0                                        	cmp    rax,r8
  3a20b0:	77 0a                                           	ja     0x3a20bc
  3a20b2:	48 b8 f0 ff ff ff ff ff ff 0f                   	movabs rax,0xffffffffffffff0
  3a20bc:	48 83 e0 f0                                     	and    rax,0xfffffffffffffff0
  3a20c0:	e8 8b af f2 ff                                  	call   0x2cd050
  3a20c5:	49 8b 96 80 00 00 00                            	mov    rdx,QWORD PTR [r14+0x80]
  3a20cc:	48 2b e0                                        	sub    rsp,rax
  3a20cf:	48 8d 5c 24 40                                  	lea    rbx,[rsp+0x40]
  3a20d4:	48 8b cb                                        	mov    rcx,rbx
  3a20d7:	48 89 5d 20                                     	mov    QWORD PTR [rbp+0x20],rbx
  3a20db:	e8 6c 6c 02 00                                  	call   0x3c8d4c
  3a20e0:	41 c7 46 78 00 00 00 00                         	mov    DWORD PTR [r14+0x78],0x0
  3a20e8:	eb 26                                           	jmp    0x3a2110
  3a20ea:	c6 45 00 00                                     	mov    BYTE PTR [rbp+0x0],0x0
  3a20ee:	45 85 ff                                        	test   r15d,r15d
  3a20f1:	75 0e                                           	jne    0x3a2101
  3a20f3:	ba 36 00 00 00                                  	mov    edx,0x36
  3a20f8:	44 8d 42 ee                                     	lea    r8d,[rdx-0x12]
  3a20fc:	e8 9b 50 00 00                                  	call   0x3a719c
  3a2101:	c7 45 18 00 00 00 00                            	mov    DWORD PTR [rbp+0x18],0x0
  3a2108:	48 c7 45 20 00 00 00 00                         	mov    QWORD PTR [rbp+0x20],0x0
  3a2110:	45 33 e4                                        	xor    r12d,r12d
  3a2113:	33 f6                                           	xor    esi,esi
  3a2115:	49 8b 46 38                                     	mov    rax,QWORD PTR [r14+0x38]
  3a2119:	41 8d 0c 74                                     	lea    ecx,[r12+rsi*2]
  3a211d:	03 ce                                           	add    ecx,esi
  3a211f:	48 63 f9                                        	movsxd rdi,ecx
  3a2122:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a2126:	48 03 ff                                        	add    rdi,rdi
  3a2129:	48 8b 98 18 02 00 00                            	mov    rbx,QWORD PTR [rax+0x218]
  3a2130:	e8 3b 27 f3 ff                                  	call   0x2d4870
  3a2135:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a2139:	e8 32 27 f3 ff                                  	call   0x2d4870
  3a213e:	48 8b 95 d8 00 00 00                            	mov    rdx,QWORD PTR [rbp+0xd8]
  3a2145:	41 8b cc                                        	mov    ecx,r12d
  3a2148:	45 85 e4                                        	test   r12d,r12d
  3a214b:	74 30                                           	je     0x3a217d
  3a214d:	83 e9 01                                        	sub    ecx,0x1
  3a2150:	74 1f                                           	je     0x3a2171
  3a2152:	83 f9 01                                        	cmp    ecx,0x1
  3a2155:	75 3f                                           	jne    0x3a2196
  3a2157:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3a215d:	f3 0f 11 45 10                                  	movss  DWORD PTR [rbp+0x10],xmm0
  3a2162:	f3 0f 58 85 f0 00 00 00                         	addss  xmm0,DWORD PTR [rbp+0xf0]
  3a216a:	f3 0f 11 45 08                                  	movss  DWORD PTR [rbp+0x8],xmm0
  3a216f:	eb 25                                           	jmp    0x3a2196
  3a2171:	f3 0f 10 02                                     	movss  xmm0,DWORD PTR [rdx]
  3a2175:	f3 41 0f 10 4d 00                               	movss  xmm1,DWORD PTR [r13+0x0]
  3a217b:	eb 0f                                           	jmp    0x3a218c
  3a217d:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  3a2181:	0f 28 c1                                        	movaps xmm0,xmm1
  3a2184:	f3 0f 5c 85 f0 00 00 00                         	subss  xmm0,DWORD PTR [rbp+0xf0]
  3a218c:	f3 0f 11 4d 08                                  	movss  DWORD PTR [rbp+0x8],xmm1
  3a2191:	f3 0f 11 45 10                                  	movss  DWORD PTR [rbp+0x10],xmm0
  3a2196:	8b ce                                           	mov    ecx,esi
  3a2198:	85 f6                                           	test   esi,esi
  3a219a:	74 36                                           	je     0x3a21d2
  3a219c:	83 e9 01                                        	sub    ecx,0x1
  3a219f:	74 1f                                           	je     0x3a21c0
  3a21a1:	83 f9 01                                        	cmp    ecx,0x1
  3a21a4:	75 46                                           	jne    0x3a21ec
  3a21a6:	f3 41 0f 10 45 04                               	movss  xmm0,DWORD PTR [r13+0x4]
  3a21ac:	f3 0f 11 45 14                                  	movss  DWORD PTR [rbp+0x14],xmm0
  3a21b1:	f3 0f 58 85 f0 00 00 00                         	addss  xmm0,DWORD PTR [rbp+0xf0]
  3a21b9:	f3 0f 11 45 0c                                  	movss  DWORD PTR [rbp+0xc],xmm0
  3a21be:	eb 2c                                           	jmp    0x3a21ec
  3a21c0:	f3 41 0f 10 4d 04                               	movss  xmm1,DWORD PTR [r13+0x4]
  3a21c6:	f3 0f 10 42 04                                  	movss  xmm0,DWORD PTR [rdx+0x4]
  3a21cb:	f3 0f 11 4d 0c                                  	movss  DWORD PTR [rbp+0xc],xmm1
  3a21d0:	eb 15                                           	jmp    0x3a21e7
  3a21d2:	f3 0f 10 5a 04                                  	movss  xmm3,DWORD PTR [rdx+0x4]
  3a21d7:	0f 28 c3                                        	movaps xmm0,xmm3
  3a21da:	f3 0f 11 5d 0c                                  	movss  DWORD PTR [rbp+0xc],xmm3
  3a21df:	f3 0f 5c 85 f0 00 00 00                         	subss  xmm0,DWORD PTR [rbp+0xf0]
  3a21e7:	f3 0f 11 45 14                                  	movss  DWORD PTR [rbp+0x14],xmm0
  3a21ec:	f3 0f 10 54 fb 04                               	movss  xmm2,DWORD PTR [rbx+rdi*8+0x4]
  3a21f2:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3a21f6:	f3 0f 10 0c fb                                  	movss  xmm1,DWORD PTR [rbx+rdi*8]
  3a21fb:	e8 40 a1 f2 ff                                  	call   0x2cc340
  3a2200:	f3 0f 10 54 fb 0c                               	movss  xmm2,DWORD PTR [rbx+rdi*8+0xc]
  3a2206:	48 8d 4d 28                                     	lea    rcx,[rbp+0x28]
  3a220a:	f3 0f 10 4c fb 08                               	movss  xmm1,DWORD PTR [rbx+rdi*8+0x8]
  3a2210:	e8 2b a1 f2 ff                                  	call   0x2cc340
  3a2215:	4c 8b 85 f8 00 00 00                            	mov    r8,QWORD PTR [rbp+0xf8]
  3a221c:	45 85 ff                                        	test   r15d,r15d
  3a221f:	75 4e                                           	jne    0x3a226f
  3a2221:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a2225:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  3a2229:	e8 aa d7 f4 ff                                  	call   0x2ef9d8
  3a222e:	4c 8b 85 f8 00 00 00                            	mov    r8,QWORD PTR [rbp+0xf8]
  3a2235:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a2239:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a223d:	48 8b d8                                        	mov    rbx,rax
  3a2240:	e8 93 d7 f4 ff                                  	call   0x2ef9d8
  3a2245:	48 8b d0                                        	mov    rdx,rax
  3a2248:	4c 8d 4d 30                                     	lea    r9,[rbp+0x30]
  3a224c:	8b 85 e8 00 00 00                               	mov    eax,DWORD PTR [rbp+0xe8]
  3a2252:	4c 8b c3                                        	mov    r8,rbx
  3a2255:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a2259:	49 8b ce                                        	mov    rcx,r14
  3a225c:	48 8d 45 28                                     	lea    rax,[rbp+0x28]
  3a2260:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a2265:	e8 b6 4d 00 00                                  	call   0x3a7020
  3a226a:	e9 c7 00 00 00                                  	jmp    0x3a2336
  3a226f:	80 7d 00 00                                     	cmp    BYTE PTR [rbp+0x0],0x0
  3a2273:	74 5b                                           	je     0x3a22d0
  3a2275:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a2279:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3a227d:	e8 56 d7 f4 ff                                  	call   0x2ef9d8
  3a2282:	4c 8b 85 f8 00 00 00                            	mov    r8,QWORD PTR [rbp+0xf8]
  3a2289:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a228d:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  3a2291:	48 8b d8                                        	mov    rbx,rax
  3a2294:	e8 3f d7 f4 ff                                  	call   0x2ef9d8
  3a2299:	48 8b d0                                        	mov    rdx,rax
  3a229c:	4c 8d 4d 30                                     	lea    r9,[rbp+0x30]
  3a22a0:	8b 85 e8 00 00 00                               	mov    eax,DWORD PTR [rbp+0xe8]
  3a22a6:	4c 8b c3                                        	mov    r8,rbx
  3a22a9:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3a22ad:	49 8b ce                                        	mov    rcx,r14
  3a22b0:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
  3a22b3:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3a22b7:	48 8b 45 20                                     	mov    rax,QWORD PTR [rbp+0x20]
  3a22bb:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3a22c0:	48 8d 45 28                                     	lea    rax,[rbp+0x28]
  3a22c4:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a22c9:	e8 a6 00 00 00                                  	call   0x3a2374
  3a22ce:	eb 66                                           	jmp    0x3a2336
  3a22d0:	48 8b 95 d8 00 00 00                            	mov    rdx,QWORD PTR [rbp+0xd8]
  3a22d7:	48 8d 4d 58                                     	lea    rcx,[rbp+0x58]
  3a22db:	f2 41 0f 10 75 00                               	movsd  xmm6,QWORD PTR [r13+0x0]
  3a22e1:	f2 0f 10 3a                                     	movsd  xmm7,QWORD PTR [rdx]
  3a22e5:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3a22e9:	e8 ea d6 f4 ff                                  	call   0x2ef9d8
  3a22ee:	4c 8b 85 f8 00 00 00                            	mov    r8,QWORD PTR [rbp+0xf8]
  3a22f5:	48 8d 55 10                                     	lea    rdx,[rbp+0x10]
  3a22f9:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  3a22fd:	48 8b d8                                        	mov    rbx,rax
  3a2300:	e8 d3 d6 f4 ff                                  	call   0x2ef9d8
  3a2305:	48 8b d0                                        	mov    rdx,rax
  3a2308:	4c 8d 4d 30                                     	lea    r9,[rbp+0x30]
  3a230c:	8b 85 e8 00 00 00                               	mov    eax,DWORD PTR [rbp+0xe8]
  3a2312:	4c 8b c3                                        	mov    r8,rbx
  3a2315:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3a2319:	49 8b ce                                        	mov    rcx,r14
  3a231c:	f2 0f 11 74 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm6
  3a2322:	48 8d 45 28                                     	lea    rax,[rbp+0x28]
  3a2326:	f2 0f 11 7c 24 28                               	movsd  QWORD PTR [rsp+0x28],xmm7
  3a232c:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a2331:	e8 fe 07 00 00                                  	call   0x3a2b34
  3a2336:	ff c6                                           	inc    esi
  3a2338:	83 fe 03                                        	cmp    esi,0x3
  3a233b:	0f 8c d4 fd ff ff                               	jl     0x3a2115
  3a2341:	41 ff c4                                        	inc    r12d
  3a2344:	41 83 fc 03                                     	cmp    r12d,0x3
  3a2348:	0f 8c c5 fd ff ff                               	jl     0x3a2113
  3a234e:	48 8b 9d d0 00 00 00                            	mov    rbx,QWORD PTR [rbp+0xd0]
  3a2355:	0f 28 b5 80 00 00 00                            	movaps xmm6,XMMWORD PTR [rbp+0x80]
  3a235c:	0f 28 7d 70                                     	movaps xmm7,XMMWORD PTR [rbp+0x70]
  3a2360:	48 8d a5 90 00 00 00                            	lea    rsp,[rbp+0x90]
  3a2367:	41 5f                                           	pop    r15
  3a2369:	41 5e                                           	pop    r14
  3a236b:	41 5d                                           	pop    r13
  3a236d:	41 5c                                           	pop    r12
  3a236f:	5f                                              	pop    rdi
  3a2370:	5e                                              	pop    rsi
  3a2371:	5d                                              	pop    rbp
  3a2372:	c3                                              	ret
