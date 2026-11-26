
dump_analysis/semantic_reconstruction/game_input_physics/2e49ec.bin:     file format binary


Disassembly of section .data:

00000000002e49ec <.data>:
  2e49ec:	48 83 ec 28                                     	sub    rsp,0x28
  2e49f0:	48 8d 44 24 28                                  	lea    rax,[rsp+0x28]
  2e49f5:	48 c7 82 80 00 00 00 00 00 00 00                	mov    QWORD PTR [rdx+0x80],0x0
  2e4a00:	48 8b ca                                        	mov    rcx,rdx
  2e4a03:	48 89 42 78                                     	mov    QWORD PTR [rdx+0x78],rax
  2e4a07:	e8 c8 91 0e 00                                  	call   0x3cdbd4
  2e4a0c:	48 85 c0                                        	test   rax,rax
  2e4a0f:	0f 95 c0                                        	setne  al
  2e4a12:	48 83 c4 28                                     	add    rsp,0x28
  2e4a16:	c3                                              	ret
