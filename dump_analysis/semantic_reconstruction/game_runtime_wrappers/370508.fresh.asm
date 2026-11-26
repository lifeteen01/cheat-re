
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/370508.bin:     file format binary


Disassembly of section .data:

0000000000370508 <.data>:
  370508:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  37050d:	55                   	push   rbp
  37050e:	56                   	push   rsi
  37050f:	57                   	push   rdi
  370510:	48 83 ec 60          	sub    rsp,0x60
  370514:	48 8b e9             	mov    rbp,rcx
  370517:	e8 ec a9 f5 ff       	call   0x2caf08
  37051c:	84 c0                	test   al,al
  37051e:	75 07                	jne    0x370527
  370520:	33 c0                	xor    eax,eax
  370522:	e9 ff 00 00 00       	jmp    0x370626
  370527:	8b 05 c3 fc 08 00    	mov    eax,DWORD PTR [rip+0x8fcc3]        # 0x4001f0
  37052d:	a8 01                	test   al,0x1
  37052f:	0f 85 b1 00 00 00    	jne    0x3705e6
  370535:	83 c8 01             	or     eax,0x1
  370538:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  37053f:	00 
  370540:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  370547:	00 
  370548:	89 05 a2 fc 08 00    	mov    DWORD PTR [rip+0x8fca2],eax        # 0x4001f0
  37054e:	e8 dd c1 f5 ff       	call   0x2cc730
  370553:	48 8b c8             	mov    rcx,rax
  370556:	e8 49 d7 f5 ff       	call   0x2cdca4
  37055b:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  370560:	48 8b f0             	mov    rsi,rax
  370563:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  37056a:	00 
  37056b:	e8 d0 fd ff ff       	call   0x370340
  370570:	48 8b c8             	mov    rcx,rax
  370573:	e8 f4 80 f6 ff       	call   0x2d866c
  370578:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  37057d:	48 8b f8             	mov    rdi,rax
  370580:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  370587:	00 
  370588:	e8 0b fd ff ff       	call   0x370298
  37058d:	48 8b c8             	mov    rcx,rax
  370590:	e8 9f d8 f5 ff       	call   0x2cde34
  370595:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  37059a:	48 8b d8             	mov    rbx,rax
  37059d:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3705a4:	00 
  3705a5:	e8 42 fc ff ff       	call   0x3701ec
  3705aa:	48 8b c8             	mov    rcx,rax
  3705ad:	e8 92 d7 f5 ff       	call   0x2cdd44
  3705b2:	48 8b c8             	mov    rcx,rax
  3705b5:	48 8b d3             	mov    rdx,rbx
  3705b8:	e8 67 3c fc ff       	call   0x334224
  3705bd:	41 83 c8 ff          	or     r8d,0xffffffff
  3705c1:	48 8b c8             	mov    rcx,rax
  3705c4:	4c 8b ce             	mov    r9,rsi
  3705c7:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3705cc:	48 8b d7             	mov    rdx,rdi
  3705cf:	e8 d8 43 fc ff       	call   0x3349ac
  3705d4:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3705d7:	8b 05 13 fc 08 00    	mov    eax,DWORD PTR [rip+0x8fc13]        # 0x4001f0
  3705dd:	4c 89 05 04 fc 08 00 	mov    QWORD PTR [rip+0x8fc04],r8        # 0x4001e8
  3705e4:	eb 07                	jmp    0x3705ed
  3705e6:	4c 8b 05 fb fb 08 00 	mov    r8,QWORD PTR [rip+0x8fbfb]        # 0x4001e8
  3705ed:	a8 02                	test   al,0x2
  3705ef:	75 1f                	jne    0x370610
  3705f1:	48 8b 0d 68 58 06 00 	mov    rcx,QWORD PTR [rip+0x65868]        # 0x3d5e60
  3705f8:	48 8d 15 01 fc 08 00 	lea    rdx,[rip+0x8fc01]        # 0x400200
  3705ff:	83 c8 02             	or     eax,0x2
  370602:	45 33 c9             	xor    r9d,r9d
  370605:	89 05 e5 fb 08 00    	mov    DWORD PTR [rip+0x8fbe5],eax        # 0x4001f0
  37060b:	e8 14 b7 f5 ff       	call   0x2cbd24
  370610:	48 8b 0d 49 58 06 00 	mov    rcx,QWORD PTR [rip+0x65849]        # 0x3d5e60
  370617:	48 8d 15 e2 fb 08 00 	lea    rdx,[rip+0x8fbe2]        # 0x400200
  37061e:	4c 8b c5             	mov    r8,rbp
  370621:	e8 d6 b3 f5 ff       	call   0x2cb9fc
  370626:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  37062d:	00 
  37062e:	48 83 c4 60          	add    rsp,0x60
  370632:	5f                   	pop    rdi
  370633:	5e                   	pop    rsi
  370634:	5d                   	pop    rbp
  370635:	c3                   	ret
