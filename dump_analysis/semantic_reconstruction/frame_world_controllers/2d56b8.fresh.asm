
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d56b8.bin:     file format binary


Disassembly of section .data:

00000000002d56b8 <.data>:
  2d56b8:	40 53                	rex push rbx
  2d56ba:	48 83 ec 60          	sub    rsp,0x60
  2d56be:	48 8b d9             	mov    rbx,rcx
  2d56c1:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d56c6:	e8 b9 0c 00 00       	call   0x2d6384
  2d56cb:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d56d0:	e8 bf 2f 00 00       	call   0x2d8694
  2d56d5:	84 c0                	test   al,al
  2d56d7:	74 0a                	je     0x2d56e3
  2d56d9:	48 8b cb             	mov    rcx,rbx
  2d56dc:	e8 7f ee ff ff       	call   0x2d4560
  2d56e1:	eb 4b                	jmp    0x2d572e
  2d56e3:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2d56ea:	00 
  2d56eb:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  2d56f2:	00 
  2d56f3:	e8 24 f9 ff ff       	call   0x2d501c
  2d56f8:	48 8b c8             	mov    rcx,rax
  2d56fb:	e8 3c 2d 00 00       	call   0x2d843c
  2d5700:	4c 8b c0             	mov    r8,rax
  2d5703:	48 8d 15 06 30 f4 ff 	lea    rdx,[rip+0xfffffffffff43006]        # 0x218710
  2d570a:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d570f:	e8 c0 98 ff ff       	call   0x2cefd4
  2d5714:	48 8b d0             	mov    rdx,rax
  2d5717:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  2d571c:	48 8b cb             	mov    rcx,rbx
  2d571f:	e8 40 98 ff ff       	call   0x2cef64
  2d5724:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d5729:	e8 c6 6d ff ff       	call   0x2cc4f4
  2d572e:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d5733:	e8 bc 6d ff ff       	call   0x2cc4f4
  2d5738:	48 8b c3             	mov    rax,rbx
  2d573b:	48 83 c4 60          	add    rsp,0x60
  2d573f:	5b                   	pop    rbx
  2d5740:	c3                   	ret
