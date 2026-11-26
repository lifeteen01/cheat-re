
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2e9fac.bin:     file format binary


Disassembly of section .data:

00000000002e9fac <.data>:
  2e9fac:	48 83 ec 38          	sub    rsp,0x38
  2e9fb0:	f2 0f 10 41 48       	movsd  xmm0,QWORD PTR [rcx+0x48]
  2e9fb5:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  2e9fb9:	8b 41 50             	mov    eax,DWORD PTR [rcx+0x50]
  2e9fbc:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  2e9fc1:	48 8d 0d 08 ce 0e 00 	lea    rcx,[rip+0xece08]        # 0x3d6dd0
  2e9fc8:	f2 0f 11 44 24 20    	movsd  QWORD PTR [rsp+0x20],xmm0
  2e9fce:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  2e9fd2:	e8 ad 9b fe ff       	call   0x2d3b84
  2e9fd7:	48 83 c4 38          	add    rsp,0x38
  2e9fdb:	c3                   	ret
