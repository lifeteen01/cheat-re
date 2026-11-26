
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d07a4.audit.bin:     file format binary


Disassembly of section .data:

00000000002d07a4 <.data>:
  2d07a4:	40 53                                           	rex push rbx
  2d07a6:	48 83 ec 30                                     	sub    rsp,0x30
  2d07aa:	4d 8b c8                                        	mov    r9,r8
  2d07ad:	48 8b d9                                        	mov    rbx,rcx
  2d07b0:	4c 8b c2                                        	mov    r8,rdx
  2d07b3:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2d07b8:	e8 17 00 00 00                                  	call   0x2d07d4
  2d07bd:	48 83 78 08 00                                  	cmp    QWORD PTR [rax+0x8],0x0
  2d07c2:	48 0f 44 c3                                     	cmove  rax,rbx
  2d07c6:	48 8b 40 08                                     	mov    rax,QWORD PTR [rax+0x8]
  2d07ca:	48 83 c4 30                                     	add    rsp,0x30
  2d07ce:	5b                                              	pop    rbx
  2d07cf:	c3                                              	ret
