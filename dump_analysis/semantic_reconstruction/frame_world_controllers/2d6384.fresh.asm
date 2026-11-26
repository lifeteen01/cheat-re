
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d6384.bin:     file format binary


Disassembly of section .data:

00000000002d6384 <.data>:
  2d6384:	40 55                	rex push rbp
  2d6386:	53                   	push   rbx
  2d6387:	56                   	push   rsi
  2d6388:	57                   	push   rdi
  2d6389:	48 8b ec             	mov    rbp,rsp
  2d638c:	48 83 ec 68          	sub    rsp,0x68
  2d6390:	48 8b d9             	mov    rbx,rcx
  2d6393:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  2d6397:	e8 84 01 00 00       	call   0x2d6520
  2d639c:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  2d63a0:	e8 ef 22 00 00       	call   0x2d8694
  2d63a5:	84 c0                	test   al,al
  2d63a7:	74 0d                	je     0x2d63b6
  2d63a9:	48 8b cb             	mov    rcx,rbx
  2d63ac:	e8 af e1 ff ff       	call   0x2d4560
  2d63b1:	e9 bc 00 00 00       	jmp    0x2d6472
  2d63b6:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d63ba:	e8 a1 e1 ff ff       	call   0x2d4560
  2d63bf:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  2d63c3:	e8 10 27 00 00       	call   0x2d8ad8
  2d63c8:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d63cc:	48 8d 50 04          	lea    rdx,[rax+0x4]
  2d63d0:	e8 17 2f 00 00       	call   0x2d92ec
  2d63d5:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  2d63d9:	e8 aa 15 00 00       	call   0x2d7988
  2d63de:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  2d63e2:	48 8b f0             	mov    rsi,rax
  2d63e5:	e8 02 74 ff ff       	call   0x2cd7ec
  2d63ea:	48 8b f8             	mov    rdi,rax
  2d63ed:	48 3b c6             	cmp    rax,rsi
  2d63f0:	74 37                	je     0x2d6429
  2d63f2:	80 3f 20             	cmp    BYTE PTR [rdi],0x20
  2d63f5:	72 2a                	jb     0x2d6421
  2d63f7:	8a 0f                	mov    cl,BYTE PTR [rdi]
  2d63f9:	80 e9 22             	sub    cl,0x22
  2d63fc:	80 f9 3a             	cmp    cl,0x3a
  2d63ff:	77 10                	ja     0x2d6411
  2d6401:	48 b8 01 21 00 35 00 	movabs rax,0x400000035002101
  2d6408:	00 00 04 
  2d640b:	48 0f a3 c8          	bt     rax,rcx
  2d640f:	72 10                	jb     0x2d6421
  2d6411:	80 3f 7c             	cmp    BYTE PTR [rdi],0x7c
  2d6414:	74 0b                	je     0x2d6421
  2d6416:	8a 17                	mov    dl,BYTE PTR [rdi]
  2d6418:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d641c:	e8 53 2b 00 00       	call   0x2d8f74
  2d6421:	48 ff c7             	inc    rdi
  2d6424:	48 3b fe             	cmp    rdi,rsi
  2d6427:	75 c9                	jne    0x2d63f2
  2d6429:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d642d:	e8 62 22 00 00       	call   0x2d8694
  2d6432:	84 c0                	test   al,al
  2d6434:	74 0a                	je     0x2d6440
  2d6436:	48 8b cb             	mov    rcx,rbx
  2d6439:	e8 22 e1 ff ff       	call   0x2d4560
  2d643e:	eb 29                	jmp    0x2d6469
  2d6440:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d6444:	e8 2f f7 ff ff       	call   0x2d5b78
  2d6449:	84 c0                	test   al,al
  2d644b:	75 10                	jne    0x2d645d
  2d644d:	48 8d 15 dc 6f fb ff 	lea    rdx,[rip+0xfffffffffffb6fdc]        # 0x28d430
  2d6454:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d6458:	e8 a7 f1 ff ff       	call   0x2d5604
  2d645d:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
  2d6461:	48 8b cb             	mov    rcx,rbx
  2d6464:	e8 1b 5e ff ff       	call   0x2cc284
  2d6469:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  2d646d:	e8 82 60 ff ff       	call   0x2cc4f4
  2d6472:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  2d6476:	e8 79 60 ff ff       	call   0x2cc4f4
  2d647b:	48 8b c3             	mov    rax,rbx
  2d647e:	48 83 c4 68          	add    rsp,0x68
  2d6482:	5f                   	pop    rdi
  2d6483:	5e                   	pop    rsi
  2d6484:	5b                   	pop    rbx
  2d6485:	5d                   	pop    rbp
  2d6486:	c3                   	ret
