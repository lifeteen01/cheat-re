
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d3c84.bin:     file format binary


Disassembly of section .data:

00000000002d3c84 <.data>:
  2d3c84:	40 55                	rex push rbp
  2d3c86:	53                   	push   rbx
  2d3c87:	56                   	push   rsi
  2d3c88:	57                   	push   rdi
  2d3c89:	41 54                	push   r12
  2d3c8b:	41 56                	push   r14
  2d3c8d:	41 57                	push   r15
  2d3c8f:	48 8d 6c 24 a0       	lea    rbp,[rsp-0x60]
  2d3c94:	48 81 ec 60 01 00 00 	sub    rsp,0x160
  2d3c9b:	4c 8b e1             	mov    r12,rcx
  2d3c9e:	49 8b f0             	mov    rsi,r8
  2d3ca1:	48 8b ca             	mov    rcx,rdx
  2d3ca4:	e8 43 9b ff ff       	call   0x2cd7ec
  2d3ca9:	48 8b c8             	mov    rcx,rax
  2d3cac:	e8 a3 26 00 00       	call   0x2d6354
  2d3cb1:	0f b6 56 09          	movzx  edx,BYTE PTR [rsi+0x9]
  2d3cb5:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2d3cb9:	4c 8b f8             	mov    r15,rax
  2d3cbc:	e8 4f 58 00 00       	call   0x2d9510
  2d3cc1:	8b 56 04             	mov    edx,DWORD PTR [rsi+0x4]
  2d3cc4:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  2d3cc8:	4c 8b f0             	mov    r14,rax
  2d3ccb:	e8 40 58 00 00       	call   0x2d9510
  2d3cd0:	0f b6 56 08          	movzx  edx,BYTE PTR [rsi+0x8]
  2d3cd4:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  2d3cd8:	48 8b f8             	mov    rdi,rax
  2d3cdb:	e8 30 58 00 00       	call   0x2d9510
  2d3ce0:	8b 16                	mov    edx,DWORD PTR [rsi]
  2d3ce2:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d3ce6:	48 8b d8             	mov    rbx,rax
  2d3ce9:	e8 22 58 00 00       	call   0x2d9510
  2d3cee:	48 8d 35 eb 98 fb ff 	lea    rsi,[rip+0xfffffffffffb98eb]        # 0x28d5e0
  2d3cf5:	48 8b d0             	mov    rdx,rax
  2d3cf8:	4c 8b c6             	mov    r8,rsi
  2d3cfb:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  2d3cff:	e8 34 70 ff ff       	call   0x2cad38
  2d3d04:	48 8b d0             	mov    rdx,rax
  2d3d07:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  2d3d0b:	4c 8b c3             	mov    r8,rbx
  2d3d0e:	e8 2d b2 ff ff       	call   0x2cef40
  2d3d13:	48 8b d0             	mov    rdx,rax
  2d3d16:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  2d3d1a:	4c 8b c6             	mov    r8,rsi
  2d3d1d:	e8 16 70 ff ff       	call   0x2cad38
  2d3d22:	48 8b d0             	mov    rdx,rax
  2d3d25:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2d3d2a:	4c 8b c7             	mov    r8,rdi
  2d3d2d:	e8 0e b2 ff ff       	call   0x2cef40
  2d3d32:	48 8b d0             	mov    rdx,rax
  2d3d35:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d3d3a:	4c 8b c6             	mov    r8,rsi
  2d3d3d:	e8 f6 6f ff ff       	call   0x2cad38
  2d3d42:	48 8b d0             	mov    rdx,rax
  2d3d45:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d3d4a:	4d 8b c6             	mov    r8,r14
  2d3d4d:	e8 ee b1 ff ff       	call   0x2cef40
  2d3d52:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d3d57:	e8 98 87 ff ff       	call   0x2cc4f4
  2d3d5c:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2d3d61:	e8 8e 87 ff ff       	call   0x2cc4f4
  2d3d66:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  2d3d6a:	e8 85 87 ff ff       	call   0x2cc4f4
  2d3d6f:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  2d3d73:	e8 7c 87 ff ff       	call   0x2cc4f4
  2d3d78:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  2d3d7c:	e8 73 87 ff ff       	call   0x2cc4f4
  2d3d81:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d3d85:	e8 6a 87 ff ff       	call   0x2cc4f4
  2d3d8a:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  2d3d8e:	e8 61 87 ff ff       	call   0x2cc4f4
  2d3d93:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  2d3d97:	e8 58 87 ff ff       	call   0x2cc4f4
  2d3d9c:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2d3da0:	e8 4f 87 ff ff       	call   0x2cc4f4
  2d3da5:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  2d3daa:	41 8b d7             	mov    edx,r15d
  2d3dad:	49 8b cc             	mov    rcx,r12
  2d3db0:	e8 73 55 00 00       	call   0x2d9328
  2d3db5:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d3dba:	e8 35 87 ff ff       	call   0x2cc4f4
  2d3dbf:	48 81 c4 60 01 00 00 	add    rsp,0x160
  2d3dc6:	41 5f                	pop    r15
  2d3dc8:	41 5e                	pop    r14
  2d3dca:	41 5c                	pop    r12
  2d3dcc:	5f                   	pop    rdi
  2d3dcd:	5e                   	pop    rsi
  2d3dce:	5b                   	pop    rbx
  2d3dcf:	5d                   	pop    rbp
  2d3dd0:	c3                   	ret
