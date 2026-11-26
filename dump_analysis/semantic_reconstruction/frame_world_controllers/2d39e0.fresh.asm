
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d39e0.bin:     file format binary


Disassembly of section .data:

00000000002d39e0 <.data>:
  2d39e0:	40 53                	rex push rbx
  2d39e2:	55                   	push   rbp
  2d39e3:	56                   	push   rsi
  2d39e4:	57                   	push   rdi
  2d39e5:	48 83 ec 78          	sub    rsp,0x78
  2d39e9:	48 8b f1             	mov    rsi,rcx
  2d39ec:	49 8b f8             	mov    rdi,r8
  2d39ef:	48 8b ca             	mov    rcx,rdx
  2d39f2:	e8 f5 9d ff ff       	call   0x2cd7ec
  2d39f7:	48 8b c8             	mov    rcx,rax
  2d39fa:	e8 55 29 00 00       	call   0x2d6354
  2d39ff:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2d3a04:	48 8b e8             	mov    rbp,rax
  2d3a07:	e8 54 0b 00 00       	call   0x2d4560
  2d3a0c:	48 8b cf             	mov    rcx,rdi
  2d3a0f:	33 db                	xor    ebx,ebx
  2d3a11:	e8 de 59 00 00       	call   0x2d93f4
  2d3a16:	48 85 c0             	test   rax,rax
  2d3a19:	74 6d                	je     0x2d3a88
  2d3a1b:	4c 8b c3             	mov    r8,rbx
  2d3a1e:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d3a23:	48 8b cf             	mov    rcx,rdi
  2d3a26:	e8 01 13 00 00       	call   0x2d4d2c
  2d3a2b:	48 8b c8             	mov    rcx,rax
  2d3a2e:	e8 3d 13 00 00       	call   0x2d4d70
  2d3a33:	0f b6 d0             	movzx  edx,al
  2d3a36:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d3a3b:	e8 d0 5a 00 00       	call   0x2d9510
  2d3a40:	48 8b d0             	mov    rdx,rax
  2d3a43:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2d3a48:	e8 97 1b 00 00       	call   0x2d55e4
  2d3a4d:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d3a52:	e8 9d 8a ff ff       	call   0x2cc4f4
  2d3a57:	48 8b cf             	mov    rcx,rdi
  2d3a5a:	e8 95 59 00 00       	call   0x2d93f4
  2d3a5f:	48 ff c8             	dec    rax
  2d3a62:	48 3b d8             	cmp    rbx,rax
  2d3a65:	74 11                	je     0x2d3a78
  2d3a67:	48 8d 15 66 9b fb ff 	lea    rdx,[rip+0xfffffffffffb9b66]        # 0x28d5d4
  2d3a6e:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2d3a73:	e8 8c 1b 00 00       	call   0x2d5604
  2d3a78:	48 8b cf             	mov    rcx,rdi
  2d3a7b:	48 ff c3             	inc    rbx
  2d3a7e:	e8 71 59 00 00       	call   0x2d93f4
  2d3a83:	48 3b d8             	cmp    rbx,rax
  2d3a86:	72 93                	jb     0x2d3a1b
  2d3a88:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  2d3a8d:	8b d5                	mov    edx,ebp
  2d3a8f:	48 8b ce             	mov    rcx,rsi
  2d3a92:	e8 91 58 00 00       	call   0x2d9328
  2d3a97:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2d3a9c:	e8 53 8a ff ff       	call   0x2cc4f4
  2d3aa1:	48 8b cf             	mov    rcx,rdi
  2d3aa4:	e8 df 0f 00 00       	call   0x2d4a88
  2d3aa9:	48 83 c4 78          	add    rsp,0x78
  2d3aad:	5f                   	pop    rdi
  2d3aae:	5e                   	pop    rsi
  2d3aaf:	5d                   	pop    rbp
  2d3ab0:	5b                   	pop    rbx
  2d3ab1:	c3                   	ret
