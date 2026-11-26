
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/373f0c.bin:     file format binary


Disassembly of section .data:

0000000000373f0c <.data>:
  373f0c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  373f11:	55                   	push   rbp
  373f12:	56                   	push   rsi
  373f13:	57                   	push   rdi
  373f14:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  373f1b:	0f 29 74 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm6
  373f20:	48 8b e9             	mov    rbp,rcx
  373f23:	0f 28 f1             	movaps xmm6,xmm1
  373f26:	e8 dd 6f f5 ff       	call   0x2caf08
  373f2b:	84 c0                	test   al,al
  373f2d:	0f 84 02 01 00 00    	je     0x374035
  373f33:	8b 05 07 dc 08 00    	mov    eax,DWORD PTR [rip+0x8dc07]        # 0x401b40
  373f39:	a8 01                	test   al,0x1
  373f3b:	0f 85 b1 00 00 00    	jne    0x373ff2
  373f41:	83 c8 01             	or     eax,0x1
  373f44:	48 8d 94 24 b0 00 00 	lea    rdx,[rsp+0xb0]
  373f4b:	00 
  373f4c:	48 8d 8c 24 b0 00 00 	lea    rcx,[rsp+0xb0]
  373f53:	00 
  373f54:	89 05 e6 db 08 00    	mov    DWORD PTR [rip+0x8dbe6],eax        # 0x401b40
  373f5a:	e8 d1 87 f5 ff       	call   0x2cc730
  373f5f:	48 8b c8             	mov    rcx,rax
  373f62:	e8 3d 9d f5 ff       	call   0x2cdca4
  373f67:	48 8d 54 24 44       	lea    rdx,[rsp+0x44]
  373f6c:	48 8b f0             	mov    rsi,rax
  373f6f:	48 8d 8c 24 b8 00 00 	lea    rcx,[rsp+0xb8]
  373f76:	00 
  373f77:	e8 14 ff ff ff       	call   0x373e90
  373f7c:	48 8b c8             	mov    rcx,rax
  373f7f:	e8 80 f7 f6 ff       	call   0x2e3704
  373f84:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  373f89:	48 8b f8             	mov    rdi,rax
  373f8c:	48 8d 8c 24 b8 00 00 	lea    rcx,[rsp+0xb8]
  373f93:	00 
  373f94:	e8 97 87 f5 ff       	call   0x2cc730
  373f99:	48 8b c8             	mov    rcx,rax
  373f9c:	e8 03 9d f5 ff       	call   0x2cdca4
  373fa1:	48 8d 54 24 31       	lea    rdx,[rsp+0x31]
  373fa6:	48 8b d8             	mov    rbx,rax
  373fa9:	48 8d 8c 24 b8 00 00 	lea    rcx,[rsp+0xb8]
  373fb0:	00 
  373fb1:	e8 c2 fe ff ff       	call   0x373e78
  373fb6:	48 8b c8             	mov    rcx,rax
  373fb9:	e8 d6 9d f5 ff       	call   0x2cdd94
  373fbe:	48 8b c8             	mov    rcx,rax
  373fc1:	48 8b d3             	mov    rdx,rbx
  373fc4:	e8 5b 02 fc ff       	call   0x334224
  373fc9:	41 83 c8 ff          	or     r8d,0xffffffff
  373fcd:	48 8b c8             	mov    rcx,rax
  373fd0:	4c 8b ce             	mov    r9,rsi
  373fd3:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  373fd8:	48 8b d7             	mov    rdx,rdi
  373fdb:	e8 cc 09 fc ff       	call   0x3349ac
  373fe0:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  373fe3:	8b 05 57 db 08 00    	mov    eax,DWORD PTR [rip+0x8db57]        # 0x401b40
  373fe9:	4c 89 05 48 db 08 00 	mov    QWORD PTR [rip+0x8db48],r8        # 0x401b38
  373ff0:	eb 07                	jmp    0x373ff9
  373ff2:	4c 8b 05 3f db 08 00 	mov    r8,QWORD PTR [rip+0x8db3f]        # 0x401b38
  373ff9:	a8 02                	test   al,0x2
  373ffb:	75 1f                	jne    0x37401c
  373ffd:	48 8b 0d 5c 1e 06 00 	mov    rcx,QWORD PTR [rip+0x61e5c]        # 0x3d5e60
  374004:	48 8d 15 45 db 08 00 	lea    rdx,[rip+0x8db45]        # 0x401b50
  37400b:	83 c8 02             	or     eax,0x2
  37400e:	45 33 c9             	xor    r9d,r9d
  374011:	89 05 29 db 08 00    	mov    DWORD PTR [rip+0x8db29],eax        # 0x401b40
  374017:	e8 08 7d f5 ff       	call   0x2cbd24
  37401c:	48 8b 0d 3d 1e 06 00 	mov    rcx,QWORD PTR [rip+0x61e3d]        # 0x3d5e60
  374023:	48 8d 15 26 db 08 00 	lea    rdx,[rip+0x8db26]        # 0x401b50
  37402a:	0f 28 de             	movaps xmm3,xmm6
  37402d:	4c 8b c5             	mov    r8,rbp
  374030:	e8 27 e2 fa ff       	call   0x32225c
  374035:	48 8b 9c 24 a0 00 00 	mov    rbx,QWORD PTR [rsp+0xa0]
  37403c:	00 
  37403d:	0f 28 74 24 70       	movaps xmm6,XMMWORD PTR [rsp+0x70]
  374042:	48 81 c4 80 00 00 00 	add    rsp,0x80
  374049:	5f                   	pop    rdi
  37404a:	5e                   	pop    rsi
  37404b:	5d                   	pop    rbp
  37404c:	c3                   	ret
