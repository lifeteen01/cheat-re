COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=3236590 --stop-address=3237116 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003162ee <.data+0x3162ee>:
  3162ee:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  3162f2:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  3162f6:	e8 35 64 fb ff       	call   0x2cc730
  3162fb:	48 8b c8             	mov    rcx,rax
  3162fe:	e8 a1 79 fb ff       	call   0x2cdca4
  316303:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  316307:	4c 8b f0             	mov    r14,rax
  31630a:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31630e:	e8 1d 64 fb ff       	call   0x2cc730
  316313:	48 8b c8             	mov    rcx,rax
  316316:	e8 89 79 fb ff       	call   0x2cdca4
  31631b:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  316320:	48 8b f0             	mov    rsi,rax
  316323:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316327:	e8 ec d0 fd ff       	call   0x2f3418
  31632c:	48 8b c8             	mov    rcx,rax
  31632f:	e8 d0 d3 fc ff       	call   0x2e3704
  316334:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  316338:	48 8b f8             	mov    rdi,rax
  31633b:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31633f:	e8 ec 63 fb ff       	call   0x2cc730
  316344:	48 8b c8             	mov    rcx,rax
  316347:	e8 58 79 fb ff       	call   0x2cdca4
  31634c:	48 8d 55 9f          	lea    rdx,[rbp-0x61]
  316350:	48 8b d8             	mov    rbx,rax
  316353:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316357:	e8 34 cf fd ff       	call   0x2f3290
  31635c:	48 8b c8             	mov    rcx,rax
  31635f:	e8 a0 d3 fc ff       	call   0x2e3704
  316364:	48 8b c8             	mov    rcx,rax
  316367:	48 8b d3             	mov    rdx,rbx
  31636a:	e8 b5 de 01 00       	call   0x334224
  31636f:	48 8b c8             	mov    rcx,rax
  316372:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  316377:	4c 8b ce             	mov    r9,rsi
  31637a:	45 8b c7             	mov    r8d,r15d
  31637d:	48 8b d7             	mov    rdx,rdi
  316380:	e8 27 e6 01 00       	call   0x3349ac
  316385:	48 8d 55 c9          	lea    rdx,[rbp-0x37]
  316389:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31638d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  316390:	e8 c3 cc fd ff       	call   0x2f3058
  316395:	48 8b c8             	mov    rcx,rax
  316398:	e8 67 d3 fc ff       	call   0x2e3704
  31639d:	48 8b d0             	mov    rdx,rax
  3163a0:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  3163a5:	4c 8d 0d fc 6a 01 00 	lea    r9,[rip+0x16afc]        # 0x32cea8
  3163ac:	4c 8b c3             	mov    r8,rbx
  3163af:	48 8d 0d d2 a4 0d 00 	lea    rcx,[rip+0xda4d2]        # 0x3f0888
  3163b6:	e8 9d 00 00 00       	call   0x316458
  3163bb:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  3163c0:	e8 2f 61 fb ff       	call   0x2cc4f4
  3163c5:	48 81 c4 08 01 00 00 	add    rsp,0x108
  3163cc:	41 5f                	pop    r15
  3163ce:	41 5e                	pop    r14
  3163d0:	5f                   	pop    rdi
  3163d1:	5e                   	pop    rsi
  3163d2:	5b                   	pop    rbx
  3163d3:	5d                   	pop    rbp
  3163d4:	c3                   	ret
  3163d5:	cc                   	int3
  3163d6:	cc                   	int3
  3163d7:	cc                   	int3
  3163d8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3163dd:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3163e2:	57                   	push   rdi
  3163e3:	48 83 ec 20          	sub    rsp,0x20
  3163e7:	48 8b c2             	mov    rax,rdx
  3163ea:	48 8b d9             	mov    rbx,rcx
  3163ed:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  3163f2:	48 8b c8             	mov    rcx,rax
  3163f5:	49 8b f9             	mov    rdi,r9
  3163f8:	49 8b f0             	mov    rsi,r8
  3163fb:	e8 24 de 01 00       	call   0x334224
  316400:	48 85 c0             	test   rax,rax
  316403:	74 13                	je     0x316418
  316405:	48 8d 90 38 01 00 00 	lea    rdx,[rax+0x138]
  31640c:	48 8b ca             	mov    rcx,rdx
  31640f:	e8 f4 4a fb ff       	call   0x2caf08
  316414:	84 c0                	test   al,al
  316416:	75 1e                	jne    0x316436
  316418:	32 c0                	xor    al,al
  31641a:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  31641f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  316424:	48 83 c4 20          	add    rsp,0x20
  316428:	5f                   	pop    rdi
  316429:	c3                   	ret
  31642a:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  31642d:	48 3b c6             	cmp    rax,rsi
  316430:	74 12                	je     0x316444
  316432:	48 83 c2 10          	add    rdx,0x10
  316436:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  316439:	e8 ca 4a fb ff       	call   0x2caf08
  31643e:	84 c0                	test   al,al
  316440:	74 e8                	je     0x31642a
  316442:	eb d4                	jmp    0x316418
  316444:	48 89 03             	mov    QWORD PTR [rbx],rax
  316447:	b0 01                	mov    al,0x1
  316449:	48 89 3a             	mov    QWORD PTR [rdx],rdi
  31644c:	c7 43 30 03 00 00 00 	mov    DWORD PTR [rbx+0x30],0x3
  316453:	eb c5                	jmp    0x31641a
  316455:	cc                   	int3
  316456:	cc                   	int3
  316457:	cc                   	int3
  316458:	40 53                	rex push rbx
  31645a:	55                   	push   rbp
  31645b:	56                   	push   rsi
  31645c:	57                   	push   rdi
  31645d:	48 83 ec 28          	sub    rsp,0x28
  316461:	49 8b f1             	mov    rsi,r9
  316464:	49 8b e8             	mov    rbp,r8
  316467:	48 8b da             	mov    rbx,rdx
  31646a:	48 8b f9             	mov    rdi,rcx
  31646d:	e8 8a 00 00 00       	call   0x3164fc
  316472:	84 c0                	test   al,al
  316474:	74 04                	je     0x31647a
  316476:	b0 01                	mov    al,0x1
  316478:	eb 4b                	jmp    0x3164c5
  31647a:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
  31647f:	48 8b cb             	mov    rcx,rbx
  316482:	e8 9d dd 01 00       	call   0x334224
  316487:	4c 8b c0             	mov    r8,rax
  31648a:	48 85 c0             	test   rax,rax
  31648d:	74 34                	je     0x3164c3
  31648f:	48 8d 98 28 03 00 00 	lea    rbx,[rax+0x328]
  316496:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  316499:	48 85 d2             	test   rdx,rdx
  31649c:	74 25                	je     0x3164c3
  31649e:	48 8b cb             	mov    rcx,rbx
  3164a1:	e8 62 4a fb ff       	call   0x2caf08
  3164a6:	84 c0                	test   al,al
  3164a8:	74 19                	je     0x3164c3
  3164aa:	49 8b c8             	mov    rcx,r8
  3164ad:	e8 ae e4 01 00       	call   0x334960
  3164b2:	48 85 c0             	test   rax,rax
  3164b5:	74 0c                	je     0x3164c3
  3164b7:	48 8b c8             	mov    rcx,rax
  3164ba:	e8 45 a6 00 00       	call   0x320b04
  3164bf:	85 c0                	test   eax,eax
  3164c1:	74 17                	je     0x3164da
  3164c3:	32 c0                	xor    al,al
  3164c5:	48 83 c4 28          	add    rsp,0x28
  3164c9:	5f                   	pop    rdi
  3164ca:	5e                   	pop    rsi
  3164cb:	5d                   	pop    rbp
  3164cc:	5b                   	pop    rbx
  3164cd:	c3                   	ret
  3164ce:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  3164d1:	48 3b c5             	cmp    rax,rbp
  3164d4:	74 12                	je     0x3164e8
  3164d6:	48 83 c3 10          	add    rbx,0x10
  3164da:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  3164dd:	e8 26 4a fb ff       	call   0x2caf08
  3164e2:	84 c0                	test   al,al
  3164e4:	74 e8                	je     0x3164ce
  3164e6:	eb db                	jmp    0x3164c3
  3164e8:	48 89 07             	mov    QWORD PTR [rdi],rax
  3164eb:	48 89 33             	mov    QWORD PTR [rbx],rsi
  3164ee:	c7 47 30 03 00 00 00 	mov    DWORD PTR [rdi+0x30],0x3
  3164f5:	e9 7c ff ff ff       	jmp    0x316476
  3164fa:	cc                   	int3
  3164fb:	cc                   	int3
