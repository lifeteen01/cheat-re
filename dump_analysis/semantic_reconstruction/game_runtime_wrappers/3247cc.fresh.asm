
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/3247cc.bin:     file format binary


Disassembly of section .data:

00000000003247cc <.data>:
  3247cc:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
  3247d1:	55                   	push   rbp
  3247d2:	56                   	push   rsi
  3247d3:	57                   	push   rdi
  3247d4:	48 83 ec 60          	sub    rsp,0x60
  3247d8:	e8 37 4f 00 00       	call   0x329714
  3247dd:	48 8b c8             	mov    rcx,rax
  3247e0:	48 8b e8             	mov    rbp,rax
  3247e3:	e8 20 67 fa ff       	call   0x2caf08
  3247e8:	84 c0                	test   al,al
  3247ea:	0f 84 04 01 00 00    	je     0x3248f4
  3247f0:	8b 05 0a e5 0c 00    	mov    eax,DWORD PTR [rip+0xce50a]        # 0x3f2d00
  3247f6:	a8 01                	test   al,0x1
  3247f8:	0f 85 b1 00 00 00    	jne    0x3248af
  3247fe:	83 c8 01             	or     eax,0x1
  324801:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  324808:	00 
  324809:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  324810:	00 
  324811:	89 05 e9 e4 0c 00    	mov    DWORD PTR [rip+0xce4e9],eax        # 0x3f2d00
  324817:	e8 14 7f fa ff       	call   0x2cc730
  32481c:	48 8b c8             	mov    rcx,rax
  32481f:	e8 80 94 fa ff       	call   0x2cdca4
  324824:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  324829:	48 8b f0             	mov    rsi,rax
  32482c:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  324833:	00 
  324834:	e8 27 f5 ff ff       	call   0x323d60
  324839:	48 8b c8             	mov    rcx,rax
  32483c:	e8 cb 95 fa ff       	call   0x2cde0c
  324841:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  324846:	48 8b f8             	mov    rdi,rax
  324849:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  324850:	00 
  324851:	e8 92 f2 ff ff       	call   0x323ae8
  324856:	48 8b c8             	mov    rcx,rax
  324859:	e8 ae 95 fa ff       	call   0x2cde0c
  32485e:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  324863:	48 8b d8             	mov    rbx,rax
  324866:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  32486d:	00 
  32486e:	e8 2d f0 ff ff       	call   0x3238a0
  324873:	48 8b c8             	mov    rcx,rax
  324876:	e8 a1 94 fa ff       	call   0x2cdd1c
  32487b:	48 8b c8             	mov    rcx,rax
  32487e:	48 8b d3             	mov    rdx,rbx
  324881:	e8 9e f9 00 00       	call   0x334224
  324886:	41 83 c8 ff          	or     r8d,0xffffffff
  32488a:	48 8b c8             	mov    rcx,rax
  32488d:	4c 8b ce             	mov    r9,rsi
  324890:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  324895:	48 8b d7             	mov    rdx,rdi
  324898:	e8 0f 01 01 00       	call   0x3349ac
  32489d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3248a0:	8b 05 5a e4 0c 00    	mov    eax,DWORD PTR [rip+0xce45a]        # 0x3f2d00
  3248a6:	4c 89 05 4b e4 0c 00 	mov    QWORD PTR [rip+0xce44b],r8        # 0x3f2cf8
  3248ad:	eb 07                	jmp    0x3248b6
  3248af:	4c 8b 05 42 e4 0c 00 	mov    r8,QWORD PTR [rip+0xce442]        # 0x3f2cf8
  3248b6:	a8 02                	test   al,0x2
  3248b8:	75 1f                	jne    0x3248d9
  3248ba:	48 8b 0d 9f 15 0b 00 	mov    rcx,QWORD PTR [rip+0xb159f]        # 0x3d5e60
  3248c1:	48 8d 15 48 e4 0c 00 	lea    rdx,[rip+0xce448]        # 0x3f2d10
  3248c8:	83 c8 02             	or     eax,0x2
  3248cb:	45 33 c9             	xor    r9d,r9d
  3248ce:	89 05 2c e4 0c 00    	mov    DWORD PTR [rip+0xce42c],eax        # 0x3f2d00
  3248d4:	e8 4b 74 fa ff       	call   0x2cbd24
  3248d9:	48 8b 0d 80 15 0b 00 	mov    rcx,QWORD PTR [rip+0xb1580]        # 0x3d5e60
  3248e0:	48 8d 15 29 e4 0c 00 	lea    rdx,[rip+0xce429]        # 0x3f2d10
  3248e7:	4c 8b c5             	mov    r8,rbp
  3248ea:	e8 0d 71 fa ff       	call   0x2cb9fc
  3248ef:	84 c0                	test   al,al
  3248f1:	0f 95 c0             	setne  al
  3248f4:	48 8b 9c 24 90 00 00 	mov    rbx,QWORD PTR [rsp+0x90]
  3248fb:	00 
  3248fc:	48 83 c4 60          	add    rsp,0x60
  324900:	5f                   	pop    rdi
  324901:	5e                   	pop    rsi
  324902:	5d                   	pop    rbp
  324903:	c3                   	ret
