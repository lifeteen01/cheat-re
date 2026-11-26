
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a31f8 <.data+0x3a31f8>:
  3a31f8:	40 53                                           	rex push rbx
  3a31fa:	55                                              	push   rbp
  3a31fb:	56                                              	push   rsi
  3a31fc:	57                                              	push   rdi
  3a31fd:	41 56                                           	push   r14
  3a31ff:	48 83 ec 70                                     	sub    rsp,0x70
  3a3203:	8b ac 24 c0 00 00 00                            	mov    ebp,DWORD PTR [rsp+0xc0]
  3a320a:	4d 8b f1                                        	mov    r14,r9
  3a320d:	0f 29 74 24 60                                  	movaps XMMWORD PTR [rsp+0x60],xmm6
  3a3212:	0f 28 f2                                        	movaps xmm6,xmm2
  3a3215:	48 8b f2                                        	mov    rsi,rdx
  3a3218:	48 8b d9                                        	mov    rbx,rcx
  3a321b:	f7 c5 00 00 00 ff                               	test   ebp,0xff000000
  3a3221:	0f 84 fe 00 00 00                               	je     0x3a3325
  3a3227:	4c 8b 84 24 d0 00 00 00                         	mov    r8,QWORD PTR [rsp+0xd0]
  3a322f:	48 8b bc 24 c8 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xc8]
  3a3237:	4d 85 c0                                        	test   r8,r8
  3a323a:	75 0c                                           	jne    0x3a3248
  3a323c:	48 8b cf                                        	mov    rcx,rdi
  3a323f:	e8 c0 76 02 00                                  	call   0x3ca904
  3a3244:	4c 8d 04 38                                     	lea    r8,[rax+rdi*1]
  3a3248:	49 3b f8                                        	cmp    rdi,r8
  3a324b:	0f 84 d4 00 00 00                               	je     0x3a3325
  3a3251:	48 85 f6                                        	test   rsi,rsi
  3a3254:	75 08                                           	jne    0x3a325e
  3a3256:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a325a:	48 8b 70 08                                     	mov    rsi,QWORD PTR [rax+0x8]
  3a325e:	0f 2e 35 e7 9f ee ff                            	ucomiss xmm6,DWORD PTR [rip+0xffffffffffee9fe7]        # 0x28d24c
  3a3265:	7a 0b                                           	jp     0x3a3272
  3a3267:	75 09                                           	jne    0x3a3272
  3a3269:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a326d:	f3 0f 10 70 10                                  	movss  xmm6,DWORD PTR [rax+0x10]
  3a3272:	0f 10 83 88 00 00 00                            	movups xmm0,XMMWORD PTR [rbx+0x88]
  3a3279:	48 8b 84 24 e0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xe0]
  3a3281:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  3a3287:	48 85 c0                                        	test   rax,rax
  3a328a:	74 5a                                           	je     0x3a32e6
  3a328c:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3a3290:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [rsp+0x50]
  3a3296:	e8 59 71 fe ff                                  	call   0x38a3f4
  3a329b:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [rax+0x4]
  3a32a0:	f3 0f 11 44 24 50                               	movss  DWORD PTR [rsp+0x50],xmm0
  3a32a6:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [rsp+0x54]
  3a32ac:	e8 43 71 fe ff                                  	call   0x38a3f4
  3a32b1:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [rax+0x8]
  3a32b6:	f3 0f 11 44 24 54                               	movss  DWORD PTR [rsp+0x54],xmm0
  3a32bc:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [rsp+0x58]
  3a32c2:	e8 05 30 fd ff                                  	call   0x3762cc
  3a32c7:	f3 0f 10 48 0c                                  	movss  xmm1,DWORD PTR [rax+0xc]
  3a32cc:	f3 0f 11 44 24 58                               	movss  DWORD PTR [rsp+0x58],xmm0
  3a32d2:	f3 0f 10 44 24 5c                               	movss  xmm0,DWORD PTR [rsp+0x5c]
  3a32d8:	e8 ef 2f fd ff                                  	call   0x3762cc
  3a32dd:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [rsp+0x5c],xmm0
  3a32e3:	48 85 c0                                        	test   rax,rax
  3a32e6:	f3 0f 10 84 24 d8 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xd8]
  3a32ef:	0f 95 c0                                        	setne  al
  3a32f2:	88 44 24 48                                     	mov    BYTE PTR [rsp+0x48],al
  3a32f6:	4d 8b ce                                        	mov    r9,r14
  3a32f9:	f3 0f 11 44 24 40                               	movss  DWORD PTR [rsp+0x40],xmm0
  3a32ff:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
  3a3304:	4c 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],r8
  3a3309:	0f 28 d6                                        	movaps xmm2,xmm6
  3a330c:	48 89 7c 24 30                                  	mov    QWORD PTR [rsp+0x30],rdi
  3a3311:	48 8b d3                                        	mov    rdx,rbx
  3a3314:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3a3319:	48 8b ce                                        	mov    rcx,rsi
  3a331c:	89 6c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebp
  3a3320:	e8 07 46 00 00                                  	call   0x3a792c
  3a3325:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  3a332a:	48 83 c4 70                                     	add    rsp,0x70
  3a332e:	41 5e                                           	pop    r14
  3a3330:	5f                                              	pop    rdi
  3a3331:	5e                                              	pop    rsi
  3a3332:	5d                                              	pop    rbp
  3a3333:	5b                                              	pop    rbx
  3a3334:	c3                                              	ret
