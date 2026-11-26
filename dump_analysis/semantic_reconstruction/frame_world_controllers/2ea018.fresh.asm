
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2ea018.bin:     file format binary


Disassembly of section .data:

00000000002ea018 <.data>:
  2ea018:	48 83 ec 38          	sub    rsp,0x38
  2ea01c:	0f 10 41 48          	movups xmm0,XMMWORD PTR [rcx+0x48]
  2ea020:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  2ea024:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  2ea029:	48 8d 0d a0 cd 0e 00 	lea    rcx,[rip+0xecda0]        # 0x3d6dd0
  2ea030:	f3 0f 7f 44 24 20    	movdqu XMMWORD PTR [rsp+0x20],xmm0
  2ea036:	e8 09 97 fe ff       	call   0x2d3744
  2ea03b:	48 83 c4 38          	add    rsp,0x38
  2ea03f:	c3                   	ret
