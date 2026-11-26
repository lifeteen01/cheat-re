
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2fb2f4.bin:     file format binary


Disassembly of section .data:

00000000002fb2f4 <.data>:
  2fb2f4:	40 55                	rex push rbp
  2fb2f6:	53                   	push   rbx
  2fb2f7:	56                   	push   rsi
  2fb2f8:	57                   	push   rdi
  2fb2f9:	41 54                	push   r12
  2fb2fb:	41 55                	push   r13
  2fb2fd:	41 56                	push   r14
  2fb2ff:	41 57                	push   r15
  2fb301:	48 8d 6c 24 e1       	lea    rbp,[rsp-0x1f]
  2fb306:	48 81 ec f8 00 00 00 	sub    rsp,0xf8
  2fb30d:	80 3d 44 be 0e 00 00 	cmp    BYTE PTR [rip+0xebe44],0x0        # 0x3e7158
  2fb314:	0f 84 fe 03 00 00    	je     0x2fb718
  2fb31a:	e8 8d 9d 01 00       	call   0x3150ac
  2fb31f:	48 8b c8             	mov    rcx,rax
  2fb322:	48 8b f8             	mov    rdi,rax
  2fb325:	e8 de fb fc ff       	call   0x2caf08
  2fb32a:	84 c0                	test   al,al
  2fb32c:	0f 84 e6 03 00 00    	je     0x2fb718
  2fb332:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  2fb336:	c6 47 40 00          	mov    BYTE PTR [rdi+0x40],0x0
  2fb33a:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb33e:	e8 21 84 ff ff       	call   0x2f3764
  2fb343:	48 8b c8             	mov    rcx,rax
  2fb346:	e8 e9 2a fd ff       	call   0x2cde34
  2fb34b:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  2fb350:	48 8b d8             	mov    rbx,rax
  2fb353:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb357:	e8 48 6f ff ff       	call   0x2f22a4
  2fb35c:	48 8b c8             	mov    rcx,rax
  2fb35f:	e8 30 51 02 00       	call   0x320494
  2fb364:	48 8b c8             	mov    rcx,rax
  2fb367:	48 8b d3             	mov    rdx,rbx
  2fb36a:	e8 95 8e 03 00       	call   0x334204
  2fb36f:	48 8b c8             	mov    rcx,rax
  2fb372:	48 8b d0             	mov    rdx,rax
  2fb375:	e8 8e fb fc ff       	call   0x2caf08
  2fb37a:	84 c0                	test   al,al
  2fb37c:	0f 84 96 03 00 00    	je     0x2fb718
  2fb382:	48 8b cf             	mov    rcx,rdi
  2fb385:	e8 32 9e 01 00       	call   0x3151bc
  2fb38a:	48 8b c8             	mov    rcx,rax
  2fb38d:	4c 8b e8             	mov    r13,rax
  2fb390:	e8 73 fb fc ff       	call   0x2caf08
  2fb395:	84 c0                	test   al,al
  2fb397:	0f 84 7b 03 00 00    	je     0x2fb718
  2fb39d:	41 8b 45 18          	mov    eax,DWORD PTR [r13+0x18]
  2fb3a1:	45 33 f6             	xor    r14d,r14d
  2fb3a4:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  2fb3a8:	85 c0                	test   eax,eax
  2fb3aa:	0f 8e 68 03 00 00    	jle    0x2fb718
  2fb3b0:	48 8d 1d 49 4c d0 ff 	lea    rbx,[rip+0xffffffffffd04c49]        # 0x0
  2fb3b7:	42 8d 04 f5 00 00 00 	lea    eax,[r14*8+0x0]
  2fb3be:	00 
  2fb3bf:	48 63 c8             	movsxd rcx,eax
  2fb3c2:	4a 8b 54 29 20       	mov    rdx,QWORD PTR [rcx+r13*1+0x20]
  2fb3c7:	48 8b ca             	mov    rcx,rdx
  2fb3ca:	e8 39 fb fc ff       	call   0x2caf08
  2fb3cf:	84 c0                	test   al,al
  2fb3d1:	0f 84 2c 03 00 00    	je     0x2fb703
  2fb3d7:	48 8b ca             	mov    rcx,rdx
  2fb3da:	e8 cd 5b 07 00       	call   0x370fac
  2fb3df:	48 8b c8             	mov    rcx,rax
  2fb3e2:	4c 8b f8             	mov    r15,rax
  2fb3e5:	e8 1e fb fc ff       	call   0x2caf08
  2fb3ea:	84 c0                	test   al,al
  2fb3ec:	0f 84 11 03 00 00    	je     0x2fb703
  2fb3f2:	49 8b cf             	mov    rcx,r15
  2fb3f5:	e8 8a 5a 07 00       	call   0x370e84
  2fb3fa:	48 8b c8             	mov    rcx,rax
  2fb3fd:	e8 06 fb fc ff       	call   0x2caf08
  2fb402:	84 c0                	test   al,al
  2fb404:	0f 84 f9 02 00 00    	je     0x2fb703
  2fb40a:	49 8b cf             	mov    rcx,r15
  2fb40d:	e8 0a 82 07 00       	call   0x37361c
  2fb412:	48 8b c8             	mov    rcx,rax
  2fb415:	e8 ee fa fc ff       	call   0x2caf08
  2fb41a:	84 c0                	test   al,al
  2fb41c:	0f 84 e1 02 00 00    	je     0x2fb703
  2fb422:	48 63 0d 8f 3b 0f 00 	movsxd rcx,DWORD PTR [rip+0xf3b8f]        # 0x3eefb8
  2fb429:	4c 8b a4 cb 88 5e 3e 	mov    r12,QWORD PTR [rbx+rcx*8+0x3e5e88]
  2fb430:	00 
  2fb431:	4d 85 e4             	test   r12,r12
  2fb434:	0f 84 c9 02 00 00    	je     0x2fb703
  2fb43a:	48 8d 34 cd c0 5e 3e 	lea    rsi,[rcx*8+0x3e5ec0]
  2fb441:	00 
  2fb442:	48 03 f3             	add    rsi,rbx
  2fb445:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  2fb448:	48 85 c0             	test   rax,rax
  2fb44b:	0f 85 31 02 00 00    	jne    0x2fb682
  2fb451:	85 c9                	test   ecx,ecx
  2fb453:	0f 84 bb 01 00 00    	je     0x2fb614
  2fb459:	83 e9 01             	sub    ecx,0x1
  2fb45c:	0f 84 72 01 00 00    	je     0x2fb5d4
  2fb462:	83 e9 01             	sub    ecx,0x1
  2fb465:	0f 84 29 01 00 00    	je     0x2fb594
  2fb46b:	83 e9 01             	sub    ecx,0x1
  2fb46e:	0f 84 dd 00 00 00    	je     0x2fb551
  2fb474:	83 e9 01             	sub    ecx,0x1
  2fb477:	0f 84 92 00 00 00    	je     0x2fb50f
  2fb47d:	83 e9 01             	sub    ecx,0x1
  2fb480:	74 4b                	je     0x2fb4cd
  2fb482:	83 f9 01             	cmp    ecx,0x1
  2fb485:	0f 85 78 02 00 00    	jne    0x2fb703
  2fb48b:	48 8d 55 bd          	lea    rdx,[rbp-0x43]
  2fb48f:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb493:	e8 70 75 ff ff       	call   0x2f2a08
  2fb498:	48 8b c8             	mov    rcx,rax
  2fb49b:	e8 94 29 fd ff       	call   0x2cde34
  2fb4a0:	48 8d 55 93          	lea    rdx,[rbp-0x6d]
  2fb4a4:	48 8b f8             	mov    rdi,rax
  2fb4a7:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb4ab:	e8 90 73 ff ff       	call   0x2f2840
  2fb4b0:	48 8b c8             	mov    rcx,rax
  2fb4b3:	e8 3c 28 fd ff       	call   0x2cdcf4
  2fb4b8:	48 8d 55 6f          	lea    rdx,[rbp+0x6f]
  2fb4bc:	48 8b d8             	mov    rbx,rax
  2fb4bf:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb4c3:	e8 7c 61 ff ff       	call   0x2f1644
  2fb4c8:	e9 85 01 00 00       	jmp    0x2fb652
  2fb4cd:	48 8d 55 c9          	lea    rdx,[rbp-0x37]
  2fb4d1:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb4d5:	e8 fe 6f ff ff       	call   0x2f24d8
  2fb4da:	48 8b c8             	mov    rcx,rax
  2fb4dd:	e8 52 29 fd ff       	call   0x2cde34
  2fb4e2:	48 8d 55 9a          	lea    rdx,[rbp-0x66]
  2fb4e6:	48 8b f8             	mov    rdi,rax
  2fb4e9:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb4ed:	e8 ce 69 ff ff       	call   0x2f1ec0
  2fb4f2:	48 8b c8             	mov    rcx,rax
  2fb4f5:	e8 fa 27 fd ff       	call   0x2cdcf4
  2fb4fa:	48 8d 55 77          	lea    rdx,[rbp+0x77]
  2fb4fe:	48 8b d8             	mov    rbx,rax
  2fb501:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb505:	e8 ce 5f ff ff       	call   0x2f14d8
  2fb50a:	e9 43 01 00 00       	jmp    0x2fb652
  2fb50f:	48 8d 55 d5          	lea    rdx,[rbp-0x2b]
  2fb513:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb517:	e8 e8 65 ff ff       	call   0x2f1b04
  2fb51c:	48 8b c8             	mov    rcx,rax
  2fb51f:	e8 10 29 fd ff       	call   0x2cde34
  2fb524:	48 8d 55 a1          	lea    rdx,[rbp-0x5f]
  2fb528:	48 8b f8             	mov    rdi,rax
  2fb52b:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb52f:	e8 44 63 ff ff       	call   0x2f1878
  2fb534:	48 8b c8             	mov    rcx,rax
  2fb537:	e8 b8 27 fd ff       	call   0x2cdcf4
  2fb53c:	48 8d 55 7f          	lea    rdx,[rbp+0x7f]
  2fb540:	48 8b d8             	mov    rbx,rax
  2fb543:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb547:	e8 9c 5e ff ff       	call   0x2f13e8
  2fb54c:	e9 01 01 00 00       	jmp    0x2fb652
  2fb551:	48 8d 55 e1          	lea    rdx,[rbp-0x1f]
  2fb555:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb559:	e8 5e 5c ff ff       	call   0x2f11bc
  2fb55e:	48 8b c8             	mov    rcx,rax
  2fb561:	e8 ce 28 fd ff       	call   0x2cde34
  2fb566:	48 8d 55 a8          	lea    rdx,[rbp-0x58]
  2fb56a:	48 8b f8             	mov    rdi,rax
  2fb56d:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb571:	e8 0e 59 ff ff       	call   0x2f0e84
  2fb576:	48 8b c8             	mov    rcx,rax
  2fb579:	e8 76 27 fd ff       	call   0x2cdcf4
  2fb57e:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2fb583:	48 8b d8             	mov    rbx,rax
  2fb586:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb58a:	e8 45 56 ff ff       	call   0x2f0bd4
  2fb58f:	e9 be 00 00 00       	jmp    0x2fb652
  2fb594:	48 8d 55 ed          	lea    rdx,[rbp-0x13]
  2fb598:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb59c:	e8 07 53 ff ff       	call   0x2f08a8
  2fb5a1:	48 8b c8             	mov    rcx,rax
  2fb5a4:	e8 8b 28 fd ff       	call   0x2cde34
  2fb5a9:	48 8d 55 af          	lea    rdx,[rbp-0x51]
  2fb5ad:	48 8b f8             	mov    rdi,rax
  2fb5b0:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb5b4:	e8 9f 4d ff ff       	call   0x2f0358
  2fb5b9:	48 8b c8             	mov    rcx,rax
  2fb5bc:	e8 33 27 fd ff       	call   0x2cdcf4
  2fb5c1:	48 8d 54 24 22       	lea    rdx,[rsp+0x22]
  2fb5c6:	48 8b d8             	mov    rbx,rax
  2fb5c9:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb5cd:	e8 7e 5c ff ff       	call   0x2f1250
  2fb5d2:	eb 7e                	jmp    0x2fb652
  2fb5d4:	48 8d 55 f9          	lea    rdx,[rbp-0x7]
  2fb5d8:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb5dc:	e8 37 bd ff ff       	call   0x2f7318
  2fb5e1:	48 8b c8             	mov    rcx,rax
  2fb5e4:	e8 4b 28 fd ff       	call   0x2cde34
  2fb5e9:	48 8d 55 b6          	lea    rdx,[rbp-0x4a]
  2fb5ed:	48 8b f8             	mov    rdi,rax
  2fb5f0:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb5f4:	e8 bb b5 ff ff       	call   0x2f6bb4
  2fb5f9:	48 8b c8             	mov    rcx,rax
  2fb5fc:	e8 f3 26 fd ff       	call   0x2cdcf4
  2fb601:	48 8d 54 24 24       	lea    rdx,[rsp+0x24]
  2fb606:	48 8b d8             	mov    rbx,rax
  2fb609:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb60d:	e8 ba 5a ff ff       	call   0x2f10cc
  2fb612:	eb 3e                	jmp    0x2fb652
  2fb614:	48 8d 55 05          	lea    rdx,[rbp+0x5]
  2fb618:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb61c:	e8 53 9c ff ff       	call   0x2f5274
  2fb621:	48 8b c8             	mov    rcx,rax
  2fb624:	e8 0b 28 fd ff       	call   0x2cde34
  2fb629:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  2fb62d:	48 8b f8             	mov    rdi,rax
  2fb630:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb634:	e8 13 94 ff ff       	call   0x2f4a4c
  2fb639:	48 8b c8             	mov    rcx,rax
  2fb63c:	e8 b3 26 fd ff       	call   0x2cdcf4
  2fb641:	48 8d 54 24 26       	lea    rdx,[rsp+0x26]
  2fb646:	48 8b d8             	mov    rbx,rax
  2fb649:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb64d:	e8 b2 59 ff ff       	call   0x2f1004
  2fb652:	48 8b c8             	mov    rcx,rax
  2fb655:	e8 0a ce fd ff       	call   0x2d8464
  2fb65a:	48 8b c8             	mov    rcx,rax
  2fb65d:	e8 7a 2f fd ff       	call   0x2ce5dc
  2fb662:	4c 8b cf             	mov    r9,rdi
  2fb665:	4c 8b c3             	mov    r8,rbx
  2fb668:	48 8b d0             	mov    rdx,rax
  2fb66b:	49 8b cc             	mov    rcx,r12
  2fb66e:	e8 49 a4 07 00       	call   0x375abc
  2fb673:	48 89 06             	mov    QWORD PTR [rsi],rax
  2fb676:	48 8b c8             	mov    rcx,rax
  2fb679:	48 85 c0             	test   rax,rax
  2fb67c:	0f 84 81 00 00 00    	je     0x2fb703
  2fb682:	48 8b d0             	mov    rdx,rax
  2fb685:	49 8b cf             	mov    rcx,r15
  2fb688:	e8 4f 5a 07 00       	call   0x3710dc
  2fb68d:	0f 10 05 04 16 0f 00 	movups xmm0,XMMWORD PTR [rip+0xf1604]        # 0x3ecc98
  2fb694:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
  2fb699:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb69d:	66 0f 7f 44 24 40    	movdqa XMMWORD PTR [rsp+0x40],xmm0
  2fb6a3:	e8 a8 75 ff ff       	call   0x2f2c50
  2fb6a8:	48 8b c8             	mov    rcx,rax
  2fb6ab:	e8 44 4d 02 00       	call   0x3203f4
  2fb6b0:	48 8b c8             	mov    rcx,rax
  2fb6b3:	e8 24 2f fd ff       	call   0x2ce5dc
  2fb6b8:	48 8b d0             	mov    rdx,rax
  2fb6bb:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  2fb6c0:	49 8b cf             	mov    rcx,r15
  2fb6c3:	e8 9c 56 07 00       	call   0x370d64
  2fb6c8:	0f 10 05 29 16 0f 00 	movups xmm0,XMMWORD PTR [rip+0xf1629]        # 0x3eccf8
  2fb6cf:	48 8d 54 24 2f       	lea    rdx,[rsp+0x2f]
  2fb6d4:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  2fb6d8:	66 0f 7f 44 24 40    	movdqa XMMWORD PTR [rsp+0x40],xmm0
  2fb6de:	e8 21 78 ff ff       	call   0x2f2f04
  2fb6e3:	48 8b c8             	mov    rcx,rax
  2fb6e6:	e8 09 4d 02 00       	call   0x3203f4
  2fb6eb:	48 8b c8             	mov    rcx,rax
  2fb6ee:	e8 e9 2e fd ff       	call   0x2ce5dc
  2fb6f3:	48 8b d0             	mov    rdx,rax
  2fb6f6:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  2fb6fb:	49 8b cf             	mov    rcx,r15
  2fb6fe:	e8 61 56 07 00       	call   0x370d64
  2fb703:	41 ff c6             	inc    r14d
  2fb706:	48 8d 1d f3 48 d0 ff 	lea    rbx,[rip+0xffffffffffd048f3]        # 0x0
  2fb70d:	44 3b 74 24 28       	cmp    r14d,DWORD PTR [rsp+0x28]
  2fb712:	0f 8c 9f fc ff ff    	jl     0x2fb3b7
  2fb718:	48 81 c4 f8 00 00 00 	add    rsp,0xf8
  2fb71f:	41 5f                	pop    r15
  2fb721:	41 5e                	pop    r14
  2fb723:	41 5d                	pop    r13
  2fb725:	41 5c                	pop    r12
  2fb727:	5f                   	pop    rdi
  2fb728:	5e                   	pop    rsi
  2fb729:	5b                   	pop    rbx
  2fb72a:	5d                   	pop    rbp
  2fb72b:	c3                   	ret
