
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d6068.bin:     file format binary


Disassembly of section .data:

00000000002d6068 <.data>:
  2d6068:	48 83 ec 68          	sub    rsp,0x68
  2d606c:	48 85 d2             	test   rdx,rdx
  2d606f:	74 23                	je     0x2d6094
  2d6071:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  2d6074:	74 1e                	je     0x2d6094
  2d6076:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d607b:	e8 4c 62 ff ff       	call   0x2cc2cc
  2d6080:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d6085:	e8 3a 04 00 00       	call   0x2d64c4
  2d608a:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d608f:	e8 60 64 ff ff       	call   0x2cc4f4
  2d6094:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d6099:	e8 62 fd ff ff       	call   0x2d5e00
  2d609e:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d60a3:	e8 44 77 ff ff       	call   0x2cd7ec
  2d60a8:	48 8b c8             	mov    rcx,rax
  2d60ab:	e8 34 fb ff ff       	call   0x2d5be4
  2d60b0:	84 c0                	test   al,al
  2d60b2:	74 05                	je     0x2d60b9
  2d60b4:	e8 33 72 00 00       	call   0x2dd2ec
  2d60b9:	e8 06 31 00 00       	call   0x2d91c4
  2d60be:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2d60c3:	e8 2c 64 ff ff       	call   0x2cc4f4
  2d60c8:	48 83 c4 68          	add    rsp,0x68
  2d60cc:	c3                   	ret
