
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2ddc4c.bin:     file format binary


Disassembly of section .data:

00000000002ddc4c <.data>:
  2ddc4c:	48 83 ec 38          	sub    rsp,0x38
  2ddc50:	f2 0f 10 41 48       	movsd  xmm0,QWORD PTR [rcx+0x48]
  2ddc55:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  2ddc59:	8b 41 50             	mov    eax,DWORD PTR [rcx+0x50]
  2ddc5c:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  2ddc61:	48 8d 0d 68 91 0f 00 	lea    rcx,[rip+0xf9168]        # 0x3d6dd0
  2ddc68:	f2 0f 11 44 24 20    	movsd  QWORD PTR [rsp+0x20],xmm0
  2ddc6e:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  2ddc72:	e8 0d 60 ff ff       	call   0x2d3c84
  2ddc77:	48 83 c4 38          	add    rsp,0x38
  2ddc7b:	c3                   	ret
