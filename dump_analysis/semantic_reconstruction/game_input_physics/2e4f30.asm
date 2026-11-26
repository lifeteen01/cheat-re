
dump_analysis/semantic_reconstruction/game_input_physics/2e4f30.bin:     file format binary


Disassembly of section .data:

00000000002e4f30 <.data>:
  2e4f30:	48 83 ec 28                                     	sub    rsp,0x28
  2e4f34:	48 8b 51 08                                     	mov    rdx,QWORD PTR [rcx+0x8]
  2e4f38:	48 85 d2                                        	test   rdx,rdx
  2e4f3b:	74 0e                                           	je     0x2e4f4b
  2e4f3d:	48 8b 09                                        	mov    rcx,QWORD PTR [rcx]
  2e4f40:	41 b8 01 00 00 00                               	mov    r8d,0x1
  2e4f46:	e8 31 4c 00 00                                  	call   0x2e9b7c
  2e4f4b:	48 83 c4 28                                     	add    rsp,0x28
  2e4f4f:	c3                                              	ret
