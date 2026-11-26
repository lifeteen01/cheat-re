
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d5918.bin:     file format binary


Disassembly of section .data:

00000000002d5918 <.data>:
  2d5918:	48 85 d2             	test   rdx,rdx
  2d591b:	0f 84 f5 00 00 00    	je     0x2d5a16
  2d5921:	55                   	push   rbp
  2d5922:	48 8d 6c 24 a9       	lea    rbp,[rsp-0x57]
  2d5927:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  2d592e:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  2d5931:	0f 84 d7 00 00 00    	je     0x2d5a0e
  2d5937:	48 8d 4d 37          	lea    rcx,[rbp+0x37]
  2d593b:	e8 8c 69 ff ff       	call   0x2cc2cc
  2d5940:	48 8d 55 37          	lea    rdx,[rbp+0x37]
  2d5944:	48 8d 4d f7          	lea    rcx,[rbp-0x9]
  2d5948:	e8 37 0a 00 00       	call   0x2d6384
  2d594d:	48 8d 4d 37          	lea    rcx,[rbp+0x37]
  2d5951:	e8 9e 6b ff ff       	call   0x2cc4f4
  2d5956:	48 8d 4d f7          	lea    rcx,[rbp-0x9]
  2d595a:	e8 35 2d 00 00       	call   0x2d8694
  2d595f:	84 c0                	test   al,al
  2d5961:	0f 85 9e 00 00 00    	jne    0x2d5a05
  2d5967:	48 8d 55 f7          	lea    rdx,[rbp-0x9]
  2d596b:	48 8d 4d 17          	lea    rcx,[rbp+0x17]
  2d596f:	e8 44 fd ff ff       	call   0x2d56b8
  2d5974:	48 8d 4d 17          	lea    rcx,[rbp+0x17]
  2d5978:	e8 17 2d 00 00       	call   0x2d8694
  2d597d:	84 c0                	test   al,al
  2d597f:	75 7b                	jne    0x2d59fc
  2d5981:	48 8d 4d 17          	lea    rcx,[rbp+0x17]
  2d5985:	e8 62 7e ff ff       	call   0x2cd7ec
  2d598a:	48 8b c8             	mov    rcx,rax
  2d598d:	e8 86 00 00 00       	call   0x2d5a18
  2d5992:	e8 2d 38 00 00       	call   0x2d91c4
  2d5997:	48 8d 55 f7          	lea    rdx,[rbp-0x9]
  2d599b:	48 8d 0d 8e 2d f4 ff 	lea    rcx,[rip+0xfffffffffff42d8e]        # 0x218730
  2d59a2:	e8 89 95 ff ff       	call   0x2cef30
  2d59a7:	84 c0                	test   al,al
  2d59a9:	74 51                	je     0x2d59fc
  2d59ab:	48 8d 0d 9e 2d f4 ff 	lea    rcx,[rip+0xfffffffffff42d9e]        # 0x218750
  2d59b2:	e8 e9 2c 00 00       	call   0x2d86a0
  2d59b7:	84 c0                	test   al,al
  2d59b9:	75 1d                	jne    0x2d59d8
  2d59bb:	48 8d 0d 8e 2d f4 ff 	lea    rcx,[rip+0xfffffffffff42d8e]        # 0x218750
  2d59c2:	e8 11 8c ff ff       	call   0x2ce5d8
  2d59c7:	48 8b d0             	mov    rdx,rax
  2d59ca:	48 8d 0d 5f 2d f4 ff 	lea    rcx,[rip+0xfffffffffff42d5f]        # 0x218730
  2d59d1:	e8 4e f2 ff ff       	call   0x2d4c24
  2d59d6:	eb 24                	jmp    0x2d59fc
  2d59d8:	48 8d 55 e7          	lea    rdx,[rbp-0x19]
  2d59dc:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2d59e0:	e8 3b f5 ff ff       	call   0x2d4f20
  2d59e5:	48 8b c8             	mov    rcx,rax
  2d59e8:	e8 7f 2c 00 00       	call   0x2d866c
  2d59ed:	48 8b d0             	mov    rdx,rax
  2d59f0:	48 8d 0d 39 2d f4 ff 	lea    rcx,[rip+0xfffffffffff42d39]        # 0x218730
  2d59f7:	e8 6c f2 ff ff       	call   0x2d4c68
  2d59fc:	48 8d 4d 17          	lea    rcx,[rbp+0x17]
  2d5a00:	e8 ef 6a ff ff       	call   0x2cc4f4
  2d5a05:	48 8d 4d f7          	lea    rcx,[rbp-0x9]
  2d5a09:	e8 e6 6a ff ff       	call   0x2cc4f4
  2d5a0e:	48 81 c4 90 00 00 00 	add    rsp,0x90
  2d5a15:	5d                   	pop    rbp
  2d5a16:	c3                   	ret
