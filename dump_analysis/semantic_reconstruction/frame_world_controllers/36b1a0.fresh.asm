
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/36b1a0.bin:     file format binary


Disassembly of section .data:

000000000036b1a0 <.data>:
  36b1a0:	40 53                	rex push rbx
  36b1a2:	48 83 ec 30          	sub    rsp,0x30
  36b1a6:	48 8b d9             	mov    rbx,rcx
  36b1a9:	e8 5a fd f5 ff       	call   0x2caf08
  36b1ae:	84 c0                	test   al,al
  36b1b0:	0f 84 85 00 00 00    	je     0x36b23b
  36b1b6:	48 8b cb             	mov    rcx,rbx
  36b1b9:	e8 de 5c f7 ff       	call   0x2e0e9c
  36b1be:	84 c0                	test   al,al
  36b1c0:	74 79                	je     0x36b23b
  36b1c2:	41 b8 01 00 00 00    	mov    r8d,0x1
  36b1c8:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  36b1cd:	48 8d 0d 74 4f 08 00 	lea    rcx,[rip+0x84f74]        # 0x3f0148
  36b1d4:	e8 17 e7 f7 ff       	call   0x2e98f0
  36b1d9:	48 8b c8             	mov    rcx,rax
  36b1dc:	e8 8f 9b f6 ff       	call   0x2d4d70
  36b1e1:	84 c0                	test   al,al
  36b1e3:	75 0c                	jne    0x36b1f1
  36b1e5:	48 8b cb             	mov    rcx,rbx
  36b1e8:	e8 8b ef ff ff       	call   0x36a178
  36b1ed:	84 c0                	test   al,al
  36b1ef:	75 4a                	jne    0x36b23b
  36b1f1:	48 8b cb             	mov    rcx,rbx
  36b1f4:	e8 bf fa ff ff       	call   0x36acb8
  36b1f9:	84 c0                	test   al,al
  36b1fb:	75 3e                	jne    0x36b23b
  36b1fd:	48 8b cb             	mov    rcx,rbx
  36b200:	e8 ab e1 ff ff       	call   0x3693b0
  36b205:	84 c0                	test   al,al
  36b207:	75 32                	jne    0x36b23b
  36b209:	38 05 a9 33 09 00    	cmp    BYTE PTR [rip+0x933a9],al        # 0x3fe5b8
  36b20f:	75 0c                	jne    0x36b21d
  36b211:	48 8b cb             	mov    rcx,rbx
  36b214:	e8 6f 00 00 00       	call   0x36b288
  36b219:	84 c0                	test   al,al
  36b21b:	75 1e                	jne    0x36b23b
  36b21d:	33 d2                	xor    edx,edx
  36b21f:	48 8b cb             	mov    rcx,rbx
  36b222:	e8 e5 ef ff ff       	call   0x36a20c
  36b227:	84 c0                	test   al,al
  36b229:	74 0c                	je     0x36b237
  36b22b:	80 3d 06 c1 07 00 00 	cmp    BYTE PTR [rip+0x7c106],0x0        # 0x3e7338
  36b232:	0f 95 c0             	setne  al
  36b235:	eb 06                	jmp    0x36b23d
  36b237:	b0 01                	mov    al,0x1
  36b239:	eb 02                	jmp    0x36b23d
  36b23b:	32 c0                	xor    al,al
  36b23d:	48 83 c4 30          	add    rsp,0x30
  36b241:	5b                   	pop    rbx
  36b242:	c3                   	ret
