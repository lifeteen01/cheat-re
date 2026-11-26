
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d5be4.bin:     file format binary


Disassembly of section .data:

00000000002d5be4 <.data>:
  2d5be4:	40 53                	rex push rbx
  2d5be6:	56                   	push   rsi
  2d5be7:	57                   	push   rdi
  2d5be8:	48 83 ec 30          	sub    rsp,0x30
  2d5bec:	8b 05 de 10 10 00    	mov    eax,DWORD PTR [rip+0x1010de]        # 0x3d6cd0
  2d5bf2:	48 8b f1             	mov    rsi,rcx
  2d5bf5:	a8 01                	test   al,0x1
  2d5bf7:	0f 85 83 00 00 00    	jne    0x2d5c80
  2d5bfd:	83 c8 01             	or     eax,0x1
  2d5c00:	48 8d 54 24 68       	lea    rdx,[rsp+0x68]
  2d5c05:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2d5c0a:	89 05 c0 10 10 00    	mov    DWORD PTR [rip+0x1010c0],eax        # 0x3d6cd0
  2d5c10:	e8 9b f7 ff ff       	call   0x2d53b0
  2d5c15:	48 8b c8             	mov    rcx,rax
  2d5c18:	e8 d7 80 ff ff       	call   0x2cdcf4
  2d5c1d:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d5c22:	48 8b f8             	mov    rdi,rax
  2d5c25:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2d5c2a:	e8 35 f6 ff ff       	call   0x2d5264
  2d5c2f:	48 8b c8             	mov    rcx,rax
  2d5c32:	e8 0d 81 ff ff       	call   0x2cdd44
  2d5c37:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  2d5c3c:	48 8b d8             	mov    rbx,rax
  2d5c3f:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2d5c44:	e8 2f f4 ff ff       	call   0x2d5078
  2d5c49:	48 8b c8             	mov    rcx,rax
  2d5c4c:	e8 7b 80 ff ff       	call   0x2cdccc
  2d5c51:	48 8b c8             	mov    rcx,rax
  2d5c54:	48 8b d3             	mov    rdx,rbx
  2d5c57:	e8 c8 e5 05 00       	call   0x334224
  2d5c5c:	45 33 c9             	xor    r9d,r9d
  2d5c5f:	48 8b c8             	mov    rcx,rax
  2d5c62:	48 8b d7             	mov    rdx,rdi
  2d5c65:	45 8d 41 01          	lea    r8d,[r9+0x1]
  2d5c69:	e8 22 ee 05 00       	call   0x334a90
  2d5c6e:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2d5c71:	8b 05 59 10 10 00    	mov    eax,DWORD PTR [rip+0x101059]        # 0x3d6cd0
  2d5c77:	4c 89 05 4a 10 10 00 	mov    QWORD PTR [rip+0x10104a],r8        # 0x3d6cc8
  2d5c7e:	eb 07                	jmp    0x2d5c87
  2d5c80:	4c 8b 05 41 10 10 00 	mov    r8,QWORD PTR [rip+0x101041]        # 0x3d6cc8
  2d5c87:	a8 02                	test   al,0x2
  2d5c89:	75 1f                	jne    0x2d5caa
  2d5c8b:	48 8b 0d ce 01 10 00 	mov    rcx,QWORD PTR [rip+0x1001ce]        # 0x3d5e60
  2d5c92:	48 8d 15 47 10 10 00 	lea    rdx,[rip+0x101047]        # 0x3d6ce0
  2d5c99:	83 c8 02             	or     eax,0x2
  2d5c9c:	45 33 c9             	xor    r9d,r9d
  2d5c9f:	89 05 2b 10 10 00    	mov    DWORD PTR [rip+0x10102b],eax        # 0x3d6cd0
  2d5ca5:	e8 7a 60 ff ff       	call   0x2cbd24
  2d5caa:	48 8b ce             	mov    rcx,rsi
  2d5cad:	e8 2a 89 ff ff       	call   0x2ce5dc
  2d5cb2:	48 8b 0d a7 01 10 00 	mov    rcx,QWORD PTR [rip+0x1001a7]        # 0x3d5e60
  2d5cb9:	48 8d 15 20 10 10 00 	lea    rdx,[rip+0x101020]        # 0x3d6ce0
  2d5cc0:	4c 8b c0             	mov    r8,rax
  2d5cc3:	e8 34 5d ff ff       	call   0x2cb9fc
  2d5cc8:	84 c0                	test   al,al
  2d5cca:	0f 95 c0             	setne  al
  2d5ccd:	48 83 c4 30          	add    rsp,0x30
  2d5cd1:	5f                   	pop    rdi
  2d5cd2:	5e                   	pop    rsi
  2d5cd3:	5b                   	pop    rbx
  2d5cd4:	c3                   	ret
