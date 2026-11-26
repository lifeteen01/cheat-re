
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/330700.bin:     file format binary


Disassembly of section .data:

0000000000330700 <.data>:
  330700:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  330705:	55                   	push   rbp
  330706:	56                   	push   rsi
  330707:	57                   	push   rdi
  330708:	48 83 ec 60          	sub    rsp,0x60
  33070c:	48 8b e9             	mov    rbp,rcx
  33070f:	e8 f4 a7 f9 ff       	call   0x2caf08
  330714:	84 c0                	test   al,al
  330716:	75 07                	jne    0x33071f
  330718:	33 c0                	xor    eax,eax
  33071a:	e9 ff 00 00 00       	jmp    0x33081e
  33071f:	8b 05 2b 8c 0c 00    	mov    eax,DWORD PTR [rip+0xc8c2b]        # 0x3f9350
  330725:	a8 01                	test   al,0x1
  330727:	0f 85 b1 00 00 00    	jne    0x3307de
  33072d:	83 c8 01             	or     eax,0x1
  330730:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  330737:	00 
  330738:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  33073f:	00 
  330740:	89 05 0a 8c 0c 00    	mov    DWORD PTR [rip+0xc8c0a],eax        # 0x3f9350
  330746:	e8 e5 bf f9 ff       	call   0x2cc730
  33074b:	48 8b c8             	mov    rcx,rax
  33074e:	e8 51 d5 f9 ff       	call   0x2cdca4
  330753:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  330758:	48 8b f0             	mov    rsi,rax
  33075b:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  330762:	00 
  330763:	e8 9c fd ff ff       	call   0x330504
  330768:	48 8b c8             	mov    rcx,rax
  33076b:	e8 ac 7e fa ff       	call   0x2d861c
  330770:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  330775:	48 8b f8             	mov    rdi,rax
  330778:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  33077f:	00 
  330780:	e8 7f fc ff ff       	call   0x330404
  330785:	48 8b c8             	mov    rcx,rax
  330788:	e8 7f d6 f9 ff       	call   0x2cde0c
  33078d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  330792:	48 8b d8             	mov    rbx,rax
  330795:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  33079c:	00 
  33079d:	e8 f2 fa ff ff       	call   0x330294
  3307a2:	48 8b c8             	mov    rcx,rax
  3307a5:	e8 72 d5 f9 ff       	call   0x2cdd1c
  3307aa:	48 8b c8             	mov    rcx,rax
  3307ad:	48 8b d3             	mov    rdx,rbx
  3307b0:	e8 6f 3a 00 00       	call   0x334224
  3307b5:	41 83 c8 ff          	or     r8d,0xffffffff
  3307b9:	48 8b c8             	mov    rcx,rax
  3307bc:	4c 8b ce             	mov    r9,rsi
  3307bf:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3307c4:	48 8b d7             	mov    rdx,rdi
  3307c7:	e8 e0 41 00 00       	call   0x3349ac
  3307cc:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3307cf:	8b 05 7b 8b 0c 00    	mov    eax,DWORD PTR [rip+0xc8b7b]        # 0x3f9350
  3307d5:	4c 89 05 6c 8b 0c 00 	mov    QWORD PTR [rip+0xc8b6c],r8        # 0x3f9348
  3307dc:	eb 07                	jmp    0x3307e5
  3307de:	4c 8b 05 63 8b 0c 00 	mov    r8,QWORD PTR [rip+0xc8b63]        # 0x3f9348
  3307e5:	a8 02                	test   al,0x2
  3307e7:	75 1f                	jne    0x330808
  3307e9:	48 8b 0d 70 56 0a 00 	mov    rcx,QWORD PTR [rip+0xa5670]        # 0x3d5e60
  3307f0:	48 8d 15 69 8b 0c 00 	lea    rdx,[rip+0xc8b69]        # 0x3f9360
  3307f7:	83 c8 02             	or     eax,0x2
  3307fa:	45 33 c9             	xor    r9d,r9d
  3307fd:	89 05 4d 8b 0c 00    	mov    DWORD PTR [rip+0xc8b4d],eax        # 0x3f9350
  330803:	e8 1c b5 f9 ff       	call   0x2cbd24
  330808:	48 8b 0d 51 56 0a 00 	mov    rcx,QWORD PTR [rip+0xa5651]        # 0x3d5e60
  33080f:	48 8d 15 4a 8b 0c 00 	lea    rdx,[rip+0xc8b4a]        # 0x3f9360
  330816:	4c 8b c5             	mov    r8,rbp
  330819:	e8 de b1 f9 ff       	call   0x2cb9fc
  33081e:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  330825:	00 
  330826:	48 83 c4 60          	add    rsp,0x60
  33082a:	5f                   	pop    rdi
  33082b:	5e                   	pop    rsi
  33082c:	5d                   	pop    rbp
  33082d:	c3                   	ret
