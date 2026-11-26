
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a01f4 <.data+0x3a01f4>:
  3a01f4:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  3a01fb:	0f 84 92 00 00 00                               	je     0x3a0293
  3a0201:	53                                              	push   rbx
  3a0202:	55                                              	push   rbp
  3a0203:	56                                              	push   rsi
  3a0204:	57                                              	push   rdi
  3a0205:	48 83 ec 38                                     	sub    rsp,0x38
  3a0209:	f3 0f 10 15 3f d0 ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeed03f]        # 0x28d250
  3a0211:	48 8b f9                                        	mov    rdi,rcx
  3a0214:	0f 28 ca                                        	movaps xmm1,xmm2
  3a0217:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a021c:	41 8b d9                                        	mov    ebx,r9d
  3a021f:	49 8b f0                                        	mov    rsi,r8
  3a0222:	48 8b ea                                        	mov    rbp,rdx
  3a0225:	e8 16 c1 f2 ff                                  	call   0x2cc340
  3a022a:	4c 8b c0                                        	mov    r8,rax
  3a022d:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3a0232:	48 8b d5                                        	mov    rdx,rbp
  3a0235:	e8 9e f7 f4 ff                                  	call   0x2ef9d8
  3a023a:	48 8b d0                                        	mov    rdx,rax
  3a023d:	48 8b cf                                        	mov    rcx,rdi
  3a0240:	e8 fb 87 fd ff                                  	call   0x378a40
  3a0245:	f3 0f 10 15 03 d0 ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeed003]        # 0x28d250
  3a024d:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3a0252:	0f 28 ca                                        	movaps xmm1,xmm2
  3a0255:	e8 e6 c0 f2 ff                                  	call   0x2cc340
  3a025a:	4c 8b c0                                        	mov    r8,rax
  3a025d:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a0262:	48 8b d6                                        	mov    rdx,rsi
  3a0265:	e8 6e f7 f4 ff                                  	call   0x2ef9d8
  3a026a:	48 8b d0                                        	mov    rdx,rax
  3a026d:	48 8b cf                                        	mov    rcx,rdi
  3a0270:	e8 cb 87 fd ff                                  	call   0x378a40
  3a0275:	f3 0f 10 9c 24 80 00 00 00                      	movss  xmm3,DWORD PTR [rsp+0x80]
  3a027e:	45 33 c0                                        	xor    r8d,r8d
  3a0281:	8b d3                                           	mov    edx,ebx
  3a0283:	48 8b cf                                        	mov    rcx,rdi
  3a0286:	e8 cd 84 ff ff                                  	call   0x398758
  3a028b:	48 83 c4 38                                     	add    rsp,0x38
  3a028f:	5f                                              	pop    rdi
  3a0290:	5e                                              	pop    rsi
  3a0291:	5d                                              	pop    rbp
  3a0292:	5b                                              	pop    rbx
  3a0293:	c3                                              	ret
