
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d5e00.bin:     file format binary


Disassembly of section .data:

00000000002d5e00 <.data>:
  2d5e00:	40 53                	rex push rbx
  2d5e02:	48 83 ec 50          	sub    rsp,0x50
  2d5e06:	48 8b d9             	mov    rbx,rcx
  2d5e09:	48 8d 0d 20 29 f4 ff 	lea    rcx,[rip+0xfffffffffff42920]        # 0x218730
  2d5e10:	e8 af 06 00 00       	call   0x2d64c4
  2d5e15:	84 c0                	test   al,al
  2d5e17:	75 26                	jne    0x2d5e3f
  2d5e19:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d5e1e:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2d5e23:	e8 28 f1 ff ff       	call   0x2d4f50
  2d5e28:	48 8b c8             	mov    rcx,rax
  2d5e2b:	e8 14 28 00 00       	call   0x2d8644
  2d5e30:	48 8b d0             	mov    rdx,rax
  2d5e33:	48 8d 0d f6 28 f4 ff 	lea    rcx,[rip+0xfffffffffff428f6]        # 0x218730
  2d5e3a:	e8 29 ee ff ff       	call   0x2d4c68
  2d5e3f:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  2d5e44:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2d5e49:	e8 ce f1 ff ff       	call   0x2d501c
  2d5e4e:	48 8b c8             	mov    rcx,rax
  2d5e51:	e8 e6 25 00 00       	call   0x2d843c
  2d5e56:	4c 8b c0             	mov    r8,rax
  2d5e59:	48 8d 15 b0 28 f4 ff 	lea    rdx,[rip+0xfffffffffff428b0]        # 0x218710
  2d5e60:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2d5e65:	e8 6a 91 ff ff       	call   0x2cefd4
  2d5e6a:	48 8b d0             	mov    rdx,rax
  2d5e6d:	4c 8d 05 bc 28 f4 ff 	lea    r8,[rip+0xfffffffffff428bc]        # 0x218730
  2d5e74:	48 8b cb             	mov    rcx,rbx
  2d5e77:	e8 e8 90 ff ff       	call   0x2cef64
  2d5e7c:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2d5e81:	e8 6e 66 ff ff       	call   0x2cc4f4
  2d5e86:	48 8b c3             	mov    rax,rbx
  2d5e89:	48 83 c4 50          	add    rsp,0x50
  2d5e8d:	5b                   	pop    rbx
  2d5e8e:	c3                   	ret
