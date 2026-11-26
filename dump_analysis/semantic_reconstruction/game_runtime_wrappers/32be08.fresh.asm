
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/32be08.bin:     file format binary


Disassembly of section .data:

000000000032be08 <.data>:
  32be08:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  32be0d:	55                   	push   rbp
  32be0e:	56                   	push   rsi
  32be0f:	57                   	push   rdi
  32be10:	48 83 ec 60          	sub    rsp,0x60
  32be14:	48 8b e9             	mov    rbp,rcx
  32be17:	e8 ec f0 f9 ff       	call   0x2caf08
  32be1c:	84 c0                	test   al,al
  32be1e:	75 07                	jne    0x32be27
  32be20:	33 c0                	xor    eax,eax
  32be22:	e9 ff 00 00 00       	jmp    0x32bf26
  32be27:	8b 05 b3 bc 0c 00    	mov    eax,DWORD PTR [rip+0xcbcb3]        # 0x3f7ae0
  32be2d:	a8 01                	test   al,0x1
  32be2f:	0f 85 b1 00 00 00    	jne    0x32bee6
  32be35:	83 c8 01             	or     eax,0x1
  32be38:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  32be3f:	00 
  32be40:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  32be47:	00 
  32be48:	89 05 92 bc 0c 00    	mov    DWORD PTR [rip+0xcbc92],eax        # 0x3f7ae0
  32be4e:	e8 dd 08 fa ff       	call   0x2cc730
  32be53:	48 8b c8             	mov    rcx,rax
  32be56:	e8 49 1e fa ff       	call   0x2cdca4
  32be5b:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  32be60:	48 8b f0             	mov    rsi,rax
  32be63:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  32be6a:	00 
  32be6b:	e8 7c fb ff ff       	call   0x32b9ec
  32be70:	48 8b c8             	mov    rcx,rax
  32be73:	e8 a4 c7 fa ff       	call   0x2d861c
  32be78:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  32be7d:	48 8b f8             	mov    rdi,rax
  32be80:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  32be87:	00 
  32be88:	e8 af fa ff ff       	call   0x32b93c
  32be8d:	48 8b c8             	mov    rcx,rax
  32be90:	e8 77 1f fa ff       	call   0x2cde0c
  32be95:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  32be9a:	48 8b d8             	mov    rbx,rax
  32be9d:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  32bea4:	00 
  32bea5:	e8 2a fa ff ff       	call   0x32b8d4
  32beaa:	48 8b c8             	mov    rcx,rax
  32bead:	e8 6a 1e fa ff       	call   0x2cdd1c
  32beb2:	48 8b c8             	mov    rcx,rax
  32beb5:	48 8b d3             	mov    rdx,rbx
  32beb8:	e8 67 83 00 00       	call   0x334224
  32bebd:	41 83 c8 ff          	or     r8d,0xffffffff
  32bec1:	48 8b c8             	mov    rcx,rax
  32bec4:	4c 8b ce             	mov    r9,rsi
  32bec7:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  32becc:	48 8b d7             	mov    rdx,rdi
  32becf:	e8 d8 8a 00 00       	call   0x3349ac
  32bed4:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32bed7:	8b 05 03 bc 0c 00    	mov    eax,DWORD PTR [rip+0xcbc03]        # 0x3f7ae0
  32bedd:	4c 89 05 f4 bb 0c 00 	mov    QWORD PTR [rip+0xcbbf4],r8        # 0x3f7ad8
  32bee4:	eb 07                	jmp    0x32beed
  32bee6:	4c 8b 05 eb bb 0c 00 	mov    r8,QWORD PTR [rip+0xcbbeb]        # 0x3f7ad8
  32beed:	a8 02                	test   al,0x2
  32beef:	75 1f                	jne    0x32bf10
  32bef1:	48 8b 0d 68 9f 0a 00 	mov    rcx,QWORD PTR [rip+0xa9f68]        # 0x3d5e60
  32bef8:	48 8d 15 f1 bb 0c 00 	lea    rdx,[rip+0xcbbf1]        # 0x3f7af0
  32beff:	83 c8 02             	or     eax,0x2
  32bf02:	45 33 c9             	xor    r9d,r9d
  32bf05:	89 05 d5 bb 0c 00    	mov    DWORD PTR [rip+0xcbbd5],eax        # 0x3f7ae0
  32bf0b:	e8 14 fe f9 ff       	call   0x2cbd24
  32bf10:	48 8b 0d 49 9f 0a 00 	mov    rcx,QWORD PTR [rip+0xa9f49]        # 0x3d5e60
  32bf17:	48 8d 15 d2 bb 0c 00 	lea    rdx,[rip+0xcbbd2]        # 0x3f7af0
  32bf1e:	4c 8b c5             	mov    r8,rbp
  32bf21:	e8 d6 fa f9 ff       	call   0x2cb9fc
  32bf26:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  32bf2d:	00 
  32bf2e:	48 83 c4 60          	add    rsp,0x60
  32bf32:	5f                   	pop    rdi
  32bf33:	5e                   	pop    rsi
  32bf34:	5d                   	pop    rbp
  32bf35:	c3                   	ret
