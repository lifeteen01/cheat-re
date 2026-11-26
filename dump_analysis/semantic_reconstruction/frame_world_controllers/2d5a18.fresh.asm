
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d5a18.bin:     file format binary


Disassembly of section .data:

00000000002d5a18 <.data>:
  2d5a18:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d5a1d:	55                   	push   rbp
  2d5a1e:	56                   	push   rsi
  2d5a1f:	57                   	push   rdi
  2d5a20:	48 83 ec 50          	sub    rsp,0x50
  2d5a24:	e8 b3 8b ff ff       	call   0x2ce5dc
  2d5a29:	8b 0d 01 0d 10 00    	mov    ecx,DWORD PTR [rip+0x100d01]        # 0x3d6730
  2d5a2f:	48 8b e8             	mov    rbp,rax
  2d5a32:	f6 c1 01             	test   cl,0x1
  2d5a35:	0f 85 ab 00 00 00    	jne    0x2d5ae6
  2d5a3b:	83 c9 01             	or     ecx,0x1
  2d5a3e:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  2d5a43:	89 0d e7 0c 10 00    	mov    DWORD PTR [rip+0x100ce7],ecx        # 0x3d6730
  2d5a49:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2d5a4e:	e8 dd 6c ff ff       	call   0x2cc730
  2d5a53:	48 8b c8             	mov    rcx,rax
  2d5a56:	e8 49 82 ff ff       	call   0x2cdca4
  2d5a5b:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  2d5a60:	48 8b f0             	mov    rsi,rax
  2d5a63:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  2d5a6a:	00 
  2d5a6b:	e8 24 f9 ff ff       	call   0x2d5394
  2d5a70:	48 8b c8             	mov    rcx,rax
  2d5a73:	e8 54 2b 00 00       	call   0x2d85cc
  2d5a78:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2d5a7d:	48 8b f8             	mov    rdi,rax
  2d5a80:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  2d5a87:	00 
  2d5a88:	e8 bb f7 ff ff       	call   0x2d5248
  2d5a8d:	48 8b c8             	mov    rcx,rax
  2d5a90:	e8 87 82 ff ff       	call   0x2cdd1c
  2d5a95:	48 8d 54 24 45       	lea    rdx,[rsp+0x45]
  2d5a9a:	48 8b d8             	mov    rbx,rax
  2d5a9d:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  2d5aa4:	00 
  2d5aa5:	e8 b2 f5 ff ff       	call   0x2d505c
  2d5aaa:	48 8b c8             	mov    rcx,rax
  2d5aad:	e8 1a 2b 00 00       	call   0x2d85cc
  2d5ab2:	48 8b c8             	mov    rcx,rax
  2d5ab5:	48 8b d3             	mov    rdx,rbx
  2d5ab8:	e8 67 e7 05 00       	call   0x334224
  2d5abd:	41 83 c8 ff          	or     r8d,0xffffffff
  2d5ac1:	48 8b c8             	mov    rcx,rax
  2d5ac4:	4c 8b ce             	mov    r9,rsi
  2d5ac7:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2d5acc:	48 8b d7             	mov    rdx,rdi
  2d5acf:	e8 d8 ee 05 00       	call   0x3349ac
  2d5ad4:	8b 0d 56 0c 10 00    	mov    ecx,DWORD PTR [rip+0x100c56]        # 0x3d6730
  2d5ada:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2d5add:	4c 89 05 44 0c 10 00 	mov    QWORD PTR [rip+0x100c44],r8        # 0x3d6728
  2d5ae4:	eb 07                	jmp    0x2d5aed
  2d5ae6:	4c 8b 05 3b 0c 10 00 	mov    r8,QWORD PTR [rip+0x100c3b]        # 0x3d6728
  2d5aed:	f6 c1 02             	test   cl,0x2
  2d5af0:	75 1f                	jne    0x2d5b11
  2d5af2:	83 c9 02             	or     ecx,0x2
  2d5af5:	48 8d 15 44 0c 10 00 	lea    rdx,[rip+0x100c44]        # 0x3d6740
  2d5afc:	89 0d 2e 0c 10 00    	mov    DWORD PTR [rip+0x100c2e],ecx        # 0x3d6730
  2d5b02:	45 33 c9             	xor    r9d,r9d
  2d5b05:	48 8b 0d 54 03 10 00 	mov    rcx,QWORD PTR [rip+0x100354]        # 0x3d5e60
  2d5b0c:	e8 13 62 ff ff       	call   0x2cbd24
  2d5b11:	48 8b 0d 48 03 10 00 	mov    rcx,QWORD PTR [rip+0x100348]        # 0x3d5e60
  2d5b18:	48 8d 15 21 0c 10 00 	lea    rdx,[rip+0x100c21]        # 0x3d6740
  2d5b1f:	4c 8b c5             	mov    r8,rbp
  2d5b22:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  2d5b27:	48 83 c4 50          	add    rsp,0x50
  2d5b2b:	5f                   	pop    rdi
  2d5b2c:	5e                   	pop    rsi
  2d5b2d:	5d                   	pop    rbp
  2d5b2e:	e9 c9 5e ff ff       	jmp    0x2cb9fc
