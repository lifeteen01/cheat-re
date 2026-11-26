
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/3297f0.bin:     file format binary


Disassembly of section .data:

00000000003297f0 <.data>:
  3297f0:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3297f5:	55                   	push   rbp
  3297f6:	56                   	push   rsi
  3297f7:	57                   	push   rdi
  3297f8:	48 83 ec 60          	sub    rsp,0x60
  3297fc:	48 8b e9             	mov    rbp,rcx
  3297ff:	e8 04 17 fa ff       	call   0x2caf08
  329804:	84 c0                	test   al,al
  329806:	75 07                	jne    0x32980f
  329808:	33 c0                	xor    eax,eax
  32980a:	e9 ff 00 00 00       	jmp    0x32990e
  32980f:	8b 05 fb 93 0c 00    	mov    eax,DWORD PTR [rip+0xc93fb]        # 0x3f2c10
  329815:	a8 01                	test   al,0x1
  329817:	0f 85 b1 00 00 00    	jne    0x3298ce
  32981d:	83 c8 01             	or     eax,0x1
  329820:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  329827:	00 
  329828:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  32982f:	00 
  329830:	89 05 da 93 0c 00    	mov    DWORD PTR [rip+0xc93da],eax        # 0x3f2c10
  329836:	e8 f5 2e fa ff       	call   0x2cc730
  32983b:	48 8b c8             	mov    rcx,rax
  32983e:	e8 61 44 fa ff       	call   0x2cdca4
  329843:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  329848:	48 8b f0             	mov    rsi,rax
  32984b:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  329852:	00 
  329853:	e8 24 a5 ff ff       	call   0x323d7c
  329858:	48 8b c8             	mov    rcx,rax
  32985b:	e8 bc ed fa ff       	call   0x2d861c
  329860:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  329865:	48 8b f8             	mov    rdi,rax
  329868:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  32986f:	00 
  329870:	e8 8f a2 ff ff       	call   0x323b04
  329875:	48 8b c8             	mov    rcx,rax
  329878:	e8 8f 45 fa ff       	call   0x2cde0c
  32987d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  329882:	48 8b d8             	mov    rbx,rax
  329885:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  32988c:	00 
  32988d:	e8 2a a0 ff ff       	call   0x3238bc
  329892:	48 8b c8             	mov    rcx,rax
  329895:	e8 82 44 fa ff       	call   0x2cdd1c
  32989a:	48 8b c8             	mov    rcx,rax
  32989d:	48 8b d3             	mov    rdx,rbx
  3298a0:	e8 7f a9 00 00       	call   0x334224
  3298a5:	41 83 c8 ff          	or     r8d,0xffffffff
  3298a9:	48 8b c8             	mov    rcx,rax
  3298ac:	4c 8b ce             	mov    r9,rsi
  3298af:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3298b4:	48 8b d7             	mov    rdx,rdi
  3298b7:	e8 f0 b0 00 00       	call   0x3349ac
  3298bc:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3298bf:	8b 05 4b 93 0c 00    	mov    eax,DWORD PTR [rip+0xc934b]        # 0x3f2c10
  3298c5:	4c 89 05 3c 93 0c 00 	mov    QWORD PTR [rip+0xc933c],r8        # 0x3f2c08
  3298cc:	eb 07                	jmp    0x3298d5
  3298ce:	4c 8b 05 33 93 0c 00 	mov    r8,QWORD PTR [rip+0xc9333]        # 0x3f2c08
  3298d5:	a8 02                	test   al,0x2
  3298d7:	75 1f                	jne    0x3298f8
  3298d9:	48 8b 0d 80 c5 0a 00 	mov    rcx,QWORD PTR [rip+0xac580]        # 0x3d5e60
  3298e0:	48 8d 15 39 93 0c 00 	lea    rdx,[rip+0xc9339]        # 0x3f2c20
  3298e7:	83 c8 02             	or     eax,0x2
  3298ea:	45 33 c9             	xor    r9d,r9d
  3298ed:	89 05 1d 93 0c 00    	mov    DWORD PTR [rip+0xc931d],eax        # 0x3f2c10
  3298f3:	e8 2c 24 fa ff       	call   0x2cbd24
  3298f8:	48 8b 0d 61 c5 0a 00 	mov    rcx,QWORD PTR [rip+0xac561]        # 0x3d5e60
  3298ff:	48 8d 15 1a 93 0c 00 	lea    rdx,[rip+0xc931a]        # 0x3f2c20
  329906:	4c 8b c5             	mov    r8,rbp
  329909:	e8 ee 20 fa ff       	call   0x2cb9fc
  32990e:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  329915:	00 
  329916:	48 83 c4 60          	add    rsp,0x60
  32991a:	5f                   	pop    rdi
  32991b:	5e                   	pop    rsi
  32991c:	5d                   	pop    rbp
  32991d:	c3                   	ret
