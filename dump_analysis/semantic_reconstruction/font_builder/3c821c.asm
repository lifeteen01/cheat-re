
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c821c <.data+0x3c821c>:
  3c821c:	49 83 f8 01                                     	cmp    r8,0x1
  3c8220:	0f 86 87 02 00 00                               	jbe    0x3c84ad
  3c8226:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  3c822b:	48 89 4c 24 08                                  	mov    QWORD PTR [rsp+0x8],rcx
  3c8230:	53                                              	push   rbx
  3c8231:	55                                              	push   rbp
  3c8232:	56                                              	push   rsi
  3c8233:	57                                              	push   rdi
  3c8234:	41 54                                           	push   r12
  3c8236:	41 55                                           	push   r13
  3c8238:	41 56                                           	push   r14
  3c823a:	41 57                                           	push   r15
  3c823c:	48 83 ec 28                                     	sub    rsp,0x28
  3c8240:	49 8b d8                                        	mov    rbx,r8
  3c8243:	49 8b f8                                        	mov    rdi,r8
  3c8246:	48 d1 eb                                        	shr    rbx,1
  3c8249:	4d 8b e0                                        	mov    r12,r8
  3c824c:	48 8b c2                                        	mov    rax,rdx
  3c824f:	48 8b f3                                        	mov    rsi,rbx
  3c8252:	48 0f af 31                                     	imul   rsi,QWORD PTR [rcx]
  3c8256:	4c 8b c3                                        	mov    r8,rbx
  3c8259:	48 8b e9                                        	mov    rbp,rcx
  3c825c:	48 03 f0                                        	add    rsi,rax
  3c825f:	48 2b fb                                        	sub    rdi,rbx
  3c8262:	4c 8b f2                                        	mov    r14,rdx
  3c8265:	e8 b2 ff ff ff                                  	call   0x3c821c
  3c826a:	4c 8b c7                                        	mov    r8,rdi
  3c826d:	48 8b d6                                        	mov    rdx,rsi
  3c8270:	48 8b cd                                        	mov    rcx,rbp
  3c8273:	e8 a4 ff ff ff                                  	call   0x3c821c
  3c8278:	48 8b 45 08                                     	mov    rax,QWORD PTR [rbp+0x8]
  3c827c:	4c 8b 4d 10                                     	mov    r9,QWORD PTR [rbp+0x10]
  3c8280:	48 8b 4d 18                                     	mov    rcx,QWORD PTR [rbp+0x18]
  3c8284:	4c 8b 7d 20                                     	mov    r15,QWORD PTR [rbp+0x20]
  3c8288:	4c 8b 6d 00                                     	mov    r13,QWORD PTR [rbp+0x0]
  3c828c:	4c 89 8c 24 80 00 00 00                         	mov    QWORD PTR [rsp+0x80],r9
  3c8294:	48 89 8c 24 88 00 00 00                         	mov    QWORD PTR [rsp+0x88],rcx
  3c829c:	48 85 c0                                        	test   rax,rax
  3c829f:	0f 84 c2 01 00 00                               	je     0x3c8467
  3c82a5:	48 83 e8 01                                     	sub    rax,0x1
  3c82a9:	0f 84 70 01 00 00                               	je     0x3c841f
  3c82af:	48 83 e8 01                                     	sub    rax,0x1
  3c82b3:	0f 84 b1 00 00 00                               	je     0x3c836a
  3c82b9:	48 83 f8 01                                     	cmp    rax,0x1
  3c82bd:	0f 84 9d 00 00 00                               	je     0x3c8360
  3c82c3:	eb 4b                                           	jmp    0x3c8310
  3c82c5:	48 85 ff                                        	test   rdi,rdi
  3c82c8:	0f 84 a5 01 00 00                               	je     0x3c8473
  3c82ce:	4c 8b c1                                        	mov    r8,rcx
  3c82d1:	48 8b d6                                        	mov    rdx,rsi
  3c82d4:	49 8b ce                                        	mov    rcx,r14
  3c82d7:	41 ff d1                                        	call   r9
  3c82da:	85 c0                                           	test   eax,eax
  3c82dc:	7f 0b                                           	jg     0x3c82e9
  3c82de:	49 8b d6                                        	mov    rdx,r14
  3c82e1:	4d 03 f5                                        	add    r14,r13
  3c82e4:	48 ff cb                                        	dec    rbx
  3c82e7:	eb 09                                           	jmp    0x3c82f2
  3c82e9:	48 8b d6                                        	mov    rdx,rsi
  3c82ec:	49 03 f5                                        	add    rsi,r13
  3c82ef:	48 ff cf                                        	dec    rdi
  3c82f2:	4d 8b c5                                        	mov    r8,r13
  3c82f5:	49 8b cf                                        	mov    rcx,r15
  3c82f8:	e8 07 ff ff ff                                  	call   0x3c8204
  3c82fd:	4c 8b 8c 24 80 00 00 00                         	mov    r9,QWORD PTR [rsp+0x80]
  3c8305:	4c 8b f8                                        	mov    r15,rax
  3c8308:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3c8310:	48 85 db                                        	test   rbx,rbx
  3c8313:	75 b0                                           	jne    0x3c82c5
  3c8315:	e9 6b 01 00 00                                  	jmp    0x3c8485
  3c831a:	48 85 ff                                        	test   rdi,rdi
  3c831d:	0f 84 50 01 00 00                               	je     0x3c8473
  3c8323:	48 8b 16                                        	mov    rdx,QWORD PTR [rsi]
  3c8326:	4c 8b c1                                        	mov    r8,rcx
  3c8329:	49 8b 0e                                        	mov    rcx,QWORD PTR [r14]
  3c832c:	41 ff d1                                        	call   r9
  3c832f:	85 c0                                           	test   eax,eax
  3c8331:	7f 0c                                           	jg     0x3c833f
  3c8333:	49 8b 06                                        	mov    rax,QWORD PTR [r14]
  3c8336:	49 83 c6 08                                     	add    r14,0x8
  3c833a:	48 ff cb                                        	dec    rbx
  3c833d:	eb 0a                                           	jmp    0x3c8349
  3c833f:	48 8b 06                                        	mov    rax,QWORD PTR [rsi]
  3c8342:	48 83 c6 08                                     	add    rsi,0x8
  3c8346:	48 ff cf                                        	dec    rdi
  3c8349:	4c 8b 8c 24 80 00 00 00                         	mov    r9,QWORD PTR [rsp+0x80]
  3c8351:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3c8359:	49 89 07                                        	mov    QWORD PTR [r15],rax
  3c835c:	49 83 c7 08                                     	add    r15,0x8
  3c8360:	48 85 db                                        	test   rbx,rbx
  3c8363:	75 b5                                           	jne    0x3c831a
  3c8365:	e9 1b 01 00 00                                  	jmp    0x3c8485
  3c836a:	48 85 db                                        	test   rbx,rbx
  3c836d:	0f 84 12 01 00 00                               	je     0x3c8485
  3c8373:	48 85 ff                                        	test   rdi,rdi
  3c8376:	0f 84 f2 00 00 00                               	je     0x3c846e
  3c837c:	4c 8b c1                                        	mov    r8,rcx
  3c837f:	49 8b ef                                        	mov    rbp,r15
  3c8382:	49 8b ce                                        	mov    rcx,r14
  3c8385:	48 8b d6                                        	mov    rdx,rsi
  3c8388:	4d 03 fd                                        	add    r15,r13
  3c838b:	41 ff d1                                        	call   r9
  3c838e:	85 c0                                           	test   eax,eax
  3c8390:	7f 0b                                           	jg     0x3c839d
  3c8392:	49 8b ce                                        	mov    rcx,r14
  3c8395:	4d 03 f5                                        	add    r14,r13
  3c8398:	48 ff cb                                        	dec    rbx
  3c839b:	eb 18                                           	jmp    0x3c83b5
  3c839d:	48 8b ce                                        	mov    rcx,rsi
  3c83a0:	49 03 f5                                        	add    rsi,r13
  3c83a3:	48 ff cf                                        	dec    rdi
  3c83a6:	eb 0d                                           	jmp    0x3c83b5
  3c83a8:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3c83aa:	48 8d 49 04                                     	lea    rcx,[rcx+0x4]
  3c83ae:	89 45 00                                        	mov    DWORD PTR [rbp+0x0],eax
  3c83b1:	48 83 c5 04                                     	add    rbp,0x4
  3c83b5:	49 3b ef                                        	cmp    rbp,r15
  3c83b8:	72 ee                                           	jb     0x3c83a8
  3c83ba:	4c 8b 8c 24 80 00 00 00                         	mov    r9,QWORD PTR [rsp+0x80]
  3c83c2:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3c83ca:	48 85 db                                        	test   rbx,rbx
  3c83cd:	75 a4                                           	jne    0x3c8373
  3c83cf:	48 8b 6c 24 70                                  	mov    rbp,QWORD PTR [rsp+0x70]
  3c83d4:	e9 ac 00 00 00                                  	jmp    0x3c8485
  3c83d9:	48 85 ff                                        	test   rdi,rdi
  3c83dc:	0f 84 91 00 00 00                               	je     0x3c8473
  3c83e2:	4c 8b c1                                        	mov    r8,rcx
  3c83e5:	48 8b d6                                        	mov    rdx,rsi
  3c83e8:	49 8b ce                                        	mov    rcx,r14
  3c83eb:	41 ff d1                                        	call   r9
  3c83ee:	85 c0                                           	test   eax,eax
  3c83f0:	7f 0c                                           	jg     0x3c83fe
  3c83f2:	49 8b 06                                        	mov    rax,QWORD PTR [r14]
  3c83f5:	49 83 c6 08                                     	add    r14,0x8
  3c83f9:	48 ff cb                                        	dec    rbx
  3c83fc:	eb 0a                                           	jmp    0x3c8408
  3c83fe:	48 8b 06                                        	mov    rax,QWORD PTR [rsi]
  3c8401:	48 83 c6 08                                     	add    rsi,0x8
  3c8405:	48 ff cf                                        	dec    rdi
  3c8408:	4c 8b 8c 24 80 00 00 00                         	mov    r9,QWORD PTR [rsp+0x80]
  3c8410:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3c8418:	49 89 07                                        	mov    QWORD PTR [r15],rax
  3c841b:	49 83 c7 08                                     	add    r15,0x8
  3c841f:	48 85 db                                        	test   rbx,rbx
  3c8422:	75 b5                                           	jne    0x3c83d9
  3c8424:	eb 5f                                           	jmp    0x3c8485
  3c8426:	48 85 ff                                        	test   rdi,rdi
  3c8429:	74 48                                           	je     0x3c8473
  3c842b:	4c 8b c1                                        	mov    r8,rcx
  3c842e:	48 8b d6                                        	mov    rdx,rsi
  3c8431:	49 8b ce                                        	mov    rcx,r14
  3c8434:	41 ff d1                                        	call   r9
  3c8437:	85 c0                                           	test   eax,eax
  3c8439:	7f 0c                                           	jg     0x3c8447
  3c843b:	41 8b 06                                        	mov    eax,DWORD PTR [r14]
  3c843e:	49 83 c6 04                                     	add    r14,0x4
  3c8442:	48 ff cb                                        	dec    rbx
  3c8445:	eb 09                                           	jmp    0x3c8450
  3c8447:	8b 06                                           	mov    eax,DWORD PTR [rsi]
  3c8449:	48 83 c6 04                                     	add    rsi,0x4
  3c844d:	48 ff cf                                        	dec    rdi
  3c8450:	4c 8b 8c 24 80 00 00 00                         	mov    r9,QWORD PTR [rsp+0x80]
  3c8458:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3c8460:	41 89 07                                        	mov    DWORD PTR [r15],eax
  3c8463:	49 83 c7 04                                     	add    r15,0x4
  3c8467:	48 85 db                                        	test   rbx,rbx
  3c846a:	75 ba                                           	jne    0x3c8426
  3c846c:	eb 17                                           	jmp    0x3c8485
  3c846e:	48 8b 6c 24 70                                  	mov    rbp,QWORD PTR [rsp+0x70]
  3c8473:	4d 8b c5                                        	mov    r8,r13
  3c8476:	49 8b d6                                        	mov    rdx,r14
  3c8479:	4c 0f af c3                                     	imul   r8,rbx
  3c847d:	49 8b cf                                        	mov    rcx,r15
  3c8480:	e8 c7 08 00 00                                  	call   0x3c8d4c
  3c8485:	48 8b 55 20                                     	mov    rdx,QWORD PTR [rbp+0x20]
  3c8489:	4c 2b e7                                        	sub    r12,rdi
  3c848c:	48 8b 4c 24 78                                  	mov    rcx,QWORD PTR [rsp+0x78]
  3c8491:	4d 0f af e5                                     	imul   r12,r13
  3c8495:	4d 8b c4                                        	mov    r8,r12
  3c8498:	e8 af 08 00 00                                  	call   0x3c8d4c
  3c849d:	48 83 c4 28                                     	add    rsp,0x28
  3c84a1:	41 5f                                           	pop    r15
  3c84a3:	41 5e                                           	pop    r14
  3c84a5:	41 5d                                           	pop    r13
  3c84a7:	41 5c                                           	pop    r12
  3c84a9:	5f                                              	pop    rdi
  3c84aa:	5e                                              	pop    rsi
  3c84ab:	5d                                              	pop    rbp
  3c84ac:	5b                                              	pop    rbx
  3c84ad:	c3                                              	ret
