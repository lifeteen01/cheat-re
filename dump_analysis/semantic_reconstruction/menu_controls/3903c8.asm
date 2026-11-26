
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003903c8 <.data+0x3903c8>:
  3903c8:	40 53                                           	rex push rbx
  3903ca:	55                                              	push   rbp
  3903cb:	56                                              	push   rsi
  3903cc:	57                                              	push   rdi
  3903cd:	41 56                                           	push   r14
  3903cf:	48 83 ec 20                                     	sub    rsp,0x20
  3903d3:	48 8b 35 4e 57 07 00                            	mov    rsi,QWORD PTR [rip+0x7574e]        # 0x405b28
  3903da:	44 8a f2                                        	mov    r14b,dl
  3903dd:	48 81 c6 b0 48 00 00                            	add    rsi,0x48b0
  3903e4:	48 8b e9                                        	mov    rbp,rcx
  3903e7:	83 3e 00                                        	cmp    DWORD PTR [rsi],0x0
  3903ea:	74 64                                           	je     0x390450
  3903ec:	33 db                                           	xor    ebx,ebx
  3903ee:	48 85 c9                                        	test   rcx,rcx
  3903f1:	74 4f                                           	je     0x390442
  3903f3:	3b 1e                                           	cmp    ebx,DWORD PTR [rsi]
  3903f5:	7d 59                                           	jge    0x390450
  3903f7:	8b d3                                           	mov    edx,ebx
  3903f9:	48 8b ce                                        	mov    rcx,rsi
  3903fc:	e8 8f b7 ff ff                                  	call   0x38bb90
  390401:	48 8b 48 08                                     	mov    rcx,QWORD PTR [rax+0x8]
  390405:	48 85 c9                                        	test   rcx,rcx
  390408:	74 32                                           	je     0x39043c
  39040a:	f7 41 14 00 00 00 01                            	test   DWORD PTR [rcx+0x14],0x1000000
  390411:	75 29                                           	jne    0x39043c
  390413:	8b fb                                           	mov    edi,ebx
  390415:	8b d7                                           	mov    edx,edi
  390417:	48 8b ce                                        	mov    rcx,rsi
  39041a:	e8 71 b7 ff ff                                  	call   0x38bb90
  39041f:	48 8b 50 08                                     	mov    rdx,QWORD PTR [rax+0x8]
  390423:	48 85 d2                                        	test   rdx,rdx
  390426:	74 0c                                           	je     0x390434
  390428:	48 8b cd                                        	mov    rcx,rbp
  39042b:	e8 8c 44 00 00                                  	call   0x3948bc
  390430:	84 c0                                           	test   al,al
  390432:	75 08                                           	jne    0x39043c
  390434:	ff c7                                           	inc    edi
  390436:	3b 3e                                           	cmp    edi,DWORD PTR [rsi]
  390438:	7c db                                           	jl     0x390415
  39043a:	eb 0a                                           	jmp    0x390446
  39043c:	ff c3                                           	inc    ebx
  39043e:	3b 1e                                           	cmp    ebx,DWORD PTR [rsi]
  390440:	7c b5                                           	jl     0x3903f7
  390442:	3b 1e                                           	cmp    ebx,DWORD PTR [rsi]
  390444:	7d 0a                                           	jge    0x390450
  390446:	41 8a d6                                        	mov    dl,r14b
  390449:	8b cb                                           	mov    ecx,ebx
  39044b:	e8 cc fe ff ff                                  	call   0x39031c
  390450:	48 83 c4 20                                     	add    rsp,0x20
  390454:	41 5e                                           	pop    r14
  390456:	5f                                              	pop    rdi
  390457:	5e                                              	pop    rsi
  390458:	5d                                              	pop    rbp
  390459:	5b                                              	pop    rbx
  39045a:	c3                                              	ret
