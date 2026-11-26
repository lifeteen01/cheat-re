
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a1244 <.data+0x3a1244>:
  3a1244:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  3a124b:	0f 84 86 00 00 00                               	je     0x3a12d7
  3a1251:	53                                              	push   rbx
  3a1252:	55                                              	push   rbp
  3a1253:	56                                              	push   rsi
  3a1254:	57                                              	push   rdi
  3a1255:	48 83 ec 38                                     	sub    rsp,0x38
  3a1259:	f3 0f 10 05 ef bf ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffeebfef]        # 0x28d250
  3a1261:	41 8b f9                                        	mov    edi,r9d
  3a1264:	0f 2f 84 24 80 00 00 00                         	comiss xmm0,DWORD PTR [rsp+0x80]
  3a126c:	49 8b f0                                        	mov    rsi,r8
  3a126f:	48 8b ea                                        	mov    rbp,rdx
  3a1272:	48 8b d9                                        	mov    rbx,rcx
  3a1275:	77 36                                           	ja     0x3a12ad
  3a1277:	8b 8c 24 88 00 00 00                            	mov    ecx,DWORD PTR [rsp+0x88]
  3a127e:	8b c1                                           	mov    eax,ecx
  3a1280:	25 f0 01 00 00                                  	and    eax,0x1f0
  3a1285:	3d 00 01 00 00                                  	cmp    eax,0x100
  3a128a:	74 21                                           	je     0x3a12ad
  3a128c:	f3 0f 10 9c 24 80 00 00 00                      	movss  xmm3,DWORD PTR [rsp+0x80]
  3a1295:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3a1299:	48 8b cb                                        	mov    rcx,rbx
  3a129c:	e8 d7 58 00 00                                  	call   0x3a6b78
  3a12a1:	8b d7                                           	mov    edx,edi
  3a12a3:	48 8b cb                                        	mov    rcx,rbx
  3a12a6:	e8 69 77 fd ff                                  	call   0x378a14
  3a12ab:	eb 22                                           	jmp    0x3a12cf
  3a12ad:	ba 06 00 00 00                                  	mov    edx,0x6
  3a12b2:	48 8b cb                                        	mov    rcx,rbx
  3a12b5:	44 8d 42 fe                                     	lea    r8d,[rdx-0x2]
  3a12b9:	e8 de 5e 00 00                                  	call   0x3a719c
  3a12be:	44 8b cf                                        	mov    r9d,edi
  3a12c1:	4c 8b c6                                        	mov    r8,rsi
  3a12c4:	48 8b d5                                        	mov    rdx,rbp
  3a12c7:	48 8b cb                                        	mov    rcx,rbx
  3a12ca:	e8 f9 5b 00 00                                  	call   0x3a6ec8
  3a12cf:	48 83 c4 38                                     	add    rsp,0x38
  3a12d3:	5f                                              	pop    rdi
  3a12d4:	5e                                              	pop    rsi
  3a12d5:	5d                                              	pop    rbp
  3a12d6:	5b                                              	pop    rbx
  3a12d7:	c3                                              	ret
