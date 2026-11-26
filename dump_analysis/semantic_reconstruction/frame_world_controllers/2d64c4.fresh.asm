
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d64c4.bin:     file format binary


Disassembly of section .data:

00000000002d64c4 <.data>:
  2d64c4:	40 53                	rex push rbx
  2d64c6:	48 83 ec 40          	sub    rsp,0x40
  2d64ca:	48 8b d1             	mov    rdx,rcx
  2d64cd:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d64d2:	e8 ad fe ff ff       	call   0x2d6384
  2d64d7:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d64dc:	e8 b3 21 00 00       	call   0x2d8694
  2d64e1:	84 c0                	test   al,al
  2d64e3:	74 04                	je     0x2d64e9
  2d64e5:	32 db                	xor    bl,bl
  2d64e7:	eb 13                	jmp    0x2d64fc
  2d64e9:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d64ee:	48 8d 0d 3b 22 f4 ff 	lea    rcx,[rip+0xfffffffffff4223b]        # 0x218730
  2d64f5:	e8 2a e7 ff ff       	call   0x2d4c24
  2d64fa:	b3 01                	mov    bl,0x1
  2d64fc:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d6501:	e8 ee 5f ff ff       	call   0x2cc4f4
  2d6506:	8a c3                	mov    al,bl
  2d6508:	48 83 c4 40          	add    rsp,0x40
  2d650c:	5b                   	pop    rbx
  2d650d:	c3                   	ret
