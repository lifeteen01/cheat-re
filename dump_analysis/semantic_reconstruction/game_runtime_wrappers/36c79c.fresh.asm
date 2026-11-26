
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/36c79c.bin:     file format binary


Disassembly of section .data:

000000000036c79c <.data>:
  36c79c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  36c7a1:	55                   	push   rbp
  36c7a2:	56                   	push   rsi
  36c7a3:	57                   	push   rdi
  36c7a4:	48 83 ec 50          	sub    rsp,0x50
  36c7a8:	48 8b e9             	mov    rbp,rcx
  36c7ab:	e8 58 e7 f5 ff       	call   0x2caf08
  36c7b0:	84 c0                	test   al,al
  36c7b2:	75 07                	jne    0x36c7bb
  36c7b4:	33 c0                	xor    eax,eax
  36c7b6:	e9 fc 00 00 00       	jmp    0x36c8b7
  36c7bb:	8b 05 7f 34 09 00    	mov    eax,DWORD PTR [rip+0x9347f]        # 0x3ffc40
  36c7c1:	a8 01                	test   al,0x1
  36c7c3:	0f 85 ae 00 00 00    	jne    0x36c877
  36c7c9:	83 c8 01             	or     eax,0x1
  36c7cc:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  36c7d1:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  36c7d6:	89 05 64 34 09 00    	mov    DWORD PTR [rip+0x93464],eax        # 0x3ffc40
  36c7dc:	e8 4f ff f5 ff       	call   0x2cc730
  36c7e1:	48 8b c8             	mov    rcx,rax
  36c7e4:	e8 bb 14 f6 ff       	call   0x2cdca4
  36c7e9:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  36c7ee:	48 8b f0             	mov    rsi,rax
  36c7f1:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  36c7f8:	00 
  36c7f9:	e8 da fd ff ff       	call   0x36c5d8
  36c7fe:	48 8b c8             	mov    rcx,rax
  36c801:	e8 5a 09 f7 ff       	call   0x2dd160
  36c806:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  36c80b:	48 8b f8             	mov    rdi,rax
  36c80e:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  36c815:	00 
  36c816:	e8 31 fd ff ff       	call   0x36c54c
  36c81b:	48 8b c8             	mov    rcx,rax
  36c81e:	e8 11 16 f6 ff       	call   0x2cde34
  36c823:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  36c82a:	00 
  36c82b:	48 8b d8             	mov    rbx,rax
  36c82e:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  36c835:	00 
  36c836:	e8 75 fc ff ff       	call   0x36c4b0
  36c83b:	48 8b c8             	mov    rcx,rax
  36c83e:	e8 b1 14 f6 ff       	call   0x2cdcf4
  36c843:	48 8b c8             	mov    rcx,rax
  36c846:	48 8b d3             	mov    rdx,rbx
  36c849:	e8 d6 79 fc ff       	call   0x334224
  36c84e:	41 83 c8 ff          	or     r8d,0xffffffff
  36c852:	48 8b c8             	mov    rcx,rax
  36c855:	4c 8b ce             	mov    r9,rsi
  36c858:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  36c85d:	48 8b d7             	mov    rdx,rdi
  36c860:	e8 47 81 fc ff       	call   0x3349ac
  36c865:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  36c868:	8b 05 d2 33 09 00    	mov    eax,DWORD PTR [rip+0x933d2]        # 0x3ffc40
  36c86e:	4c 89 05 c3 33 09 00 	mov    QWORD PTR [rip+0x933c3],r8        # 0x3ffc38
  36c875:	eb 07                	jmp    0x36c87e
  36c877:	4c 8b 05 ba 33 09 00 	mov    r8,QWORD PTR [rip+0x933ba]        # 0x3ffc38
  36c87e:	a8 02                	test   al,0x2
  36c880:	75 1f                	jne    0x36c8a1
  36c882:	48 8b 0d d7 95 06 00 	mov    rcx,QWORD PTR [rip+0x695d7]        # 0x3d5e60
  36c889:	48 8d 15 c0 33 09 00 	lea    rdx,[rip+0x933c0]        # 0x3ffc50
  36c890:	83 c8 02             	or     eax,0x2
  36c893:	45 33 c9             	xor    r9d,r9d
  36c896:	89 05 a4 33 09 00    	mov    DWORD PTR [rip+0x933a4],eax        # 0x3ffc40
  36c89c:	e8 83 f4 f5 ff       	call   0x2cbd24
  36c8a1:	48 8b 0d b8 95 06 00 	mov    rcx,QWORD PTR [rip+0x695b8]        # 0x3d5e60
  36c8a8:	48 8d 15 a1 33 09 00 	lea    rdx,[rip+0x933a1]        # 0x3ffc50
  36c8af:	4c 8b c5             	mov    r8,rbp
  36c8b2:	e8 45 f1 f5 ff       	call   0x2cb9fc
  36c8b7:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  36c8bc:	48 83 c4 50          	add    rsp,0x50
  36c8c0:	5f                   	pop    rdi
  36c8c1:	5e                   	pop    rsi
  36c8c2:	5d                   	pop    rbp
  36c8c3:	c3                   	ret
