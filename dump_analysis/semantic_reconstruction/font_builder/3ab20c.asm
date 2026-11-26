
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab20c <.data+0x3ab20c>:
  3ab20c:	40 55                	rex push rbp
  3ab20e:	53                   	push   rbx
  3ab20f:	56                   	push   rsi
  3ab210:	57                   	push   rdi
  3ab211:	41 54                	push   r12
  3ab213:	41 55                	push   r13
  3ab215:	41 56                	push   r14
  3ab217:	41 57                	push   r15
  3ab219:	48 8b ec             	mov    rbp,rsp
  3ab21c:	48 83 ec 58          	sub    rsp,0x58
  3ab220:	0f 10 82 90 00 00 00 	movups xmm0,XMMWORD PTR [rdx+0x90]
  3ab227:	4c 8b ea             	mov    r13,rdx
  3ab22a:	48 8b d9             	mov    rbx,rcx
  3ab22d:	33 d2                	xor    edx,edx
  3ab22f:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab233:	f3 0f 7f 45 c8       	movdqu XMMWORD PTR [rbp-0x38],xmm0
  3ab238:	41 8b f0             	mov    esi,r8d
  3ab23b:	e8 a4 fd ff ff       	call   0x3aafe4
  3ab240:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab244:	e8 d3 fc ff ff       	call   0x3aaf1c
  3ab249:	84 c0                	test   al,al
  3ab24b:	75 59                	jne    0x3ab2a6
  3ab24d:	8b d6                	mov    edx,esi
  3ab24f:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab253:	e8 9c fd ff ff       	call   0x3aaff4
  3ab258:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab25c:	e8 bb fc ff ff       	call   0x3aaf1c
  3ab261:	44 8a f0             	mov    r14b,al
  3ab264:	41 0f 10 85 80 00 00 	movups xmm0,XMMWORD PTR [r13+0x80]
  3ab26b:	00 
  3ab26c:	45 0f b6 c6          	movzx  r8d,r14b
  3ab270:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
  3ab274:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  3ab278:	f3 0f 7f 45 c8       	movdqu XMMWORD PTR [rbp-0x38],xmm0
  3ab27d:	e8 1a fe ff ff       	call   0x3ab09c
  3ab282:	41 0f 10 45 40       	movups xmm0,XMMWORD PTR [r13+0x40]
  3ab287:	4c 8d 45 c8          	lea    r8,[rbp-0x38]
  3ab28b:	48 8b cb             	mov    rcx,rbx
  3ab28e:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  3ab292:	0f 10 08             	movups xmm1,XMMWORD PTR [rax]
  3ab295:	f3 0f 7f 45 d8       	movdqu XMMWORD PTR [rbp-0x28],xmm0
  3ab29a:	f3 0f 7f 4d c8       	movdqu XMMWORD PTR [rbp-0x38],xmm1
  3ab29f:	e8 60 0a 00 00       	call   0x3abd04
  3ab2a4:	eb 6a                	jmp    0x3ab310
  3ab2a6:	3c 03                	cmp    al,0x3
  3ab2a8:	75 59                	jne    0x3ab303
  3ab2aa:	bf 02 00 00 00       	mov    edi,0x2
  3ab2af:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab2b3:	8b d7                	mov    edx,edi
  3ab2b5:	e8 82 fc ff ff       	call   0x3aaf3c
  3ab2ba:	8b d7                	mov    edx,edi
  3ab2bc:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab2c0:	44 8b e0             	mov    r12d,eax
  3ab2c3:	e8 74 fc ff ff       	call   0x3aaf3c
  3ab2c8:	33 ff                	xor    edi,edi
  3ab2ca:	44 8b f8             	mov    r15d,eax
  3ab2cd:	45 85 e4             	test   r12d,r12d
  3ab2d0:	7e 31                	jle    0x3ab303
  3ab2d2:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab2d6:	e8 41 fc ff ff       	call   0x3aaf1c
  3ab2db:	ba 02 00 00 00       	mov    edx,0x2
  3ab2e0:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3ab2e4:	44 8a f0             	mov    r14b,al
  3ab2e7:	e8 50 fc ff ff       	call   0x3aaf3c
  3ab2ec:	41 3b f7             	cmp    esi,r15d
  3ab2ef:	7c 08                	jl     0x3ab2f9
  3ab2f1:	3b f0                	cmp    esi,eax
  3ab2f3:	0f 8c 6b ff ff ff    	jl     0x3ab264
  3ab2f9:	ff c7                	inc    edi
  3ab2fb:	44 8b f8             	mov    r15d,eax
  3ab2fe:	41 3b fc             	cmp    edi,r12d
  3ab301:	7c cf                	jl     0x3ab2d2
  3ab303:	45 33 c0             	xor    r8d,r8d
  3ab306:	33 d2                	xor    edx,edx
  3ab308:	48 8b cb             	mov    rcx,rbx
  3ab30b:	e8 08 10 00 00       	call   0x3ac318
  3ab310:	48 8b c3             	mov    rax,rbx
  3ab313:	48 83 c4 58          	add    rsp,0x58
  3ab317:	41 5f                	pop    r15
  3ab319:	41 5e                	pop    r14
  3ab31b:	41 5d                	pop    r13
  3ab31d:	41 5c                	pop    r12
  3ab31f:	5f                   	pop    rdi
  3ab320:	5e                   	pop    rsi
  3ab321:	5b                   	pop    rbx
  3ab322:	5d                   	pop    rbp
  3ab323:	c3                   	ret
