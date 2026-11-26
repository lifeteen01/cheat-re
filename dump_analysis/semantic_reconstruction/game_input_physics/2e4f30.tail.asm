
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e4f30.tail.bin:     file format binary


Disassembly of section .data:

00000000002e4f50 <.data>:
  2e4f50:	48 83 ec 28                                     	sub    rsp,0x28
  2e4f54:	48 8b 09                                        	mov    rcx,QWORD PTR [rcx]
  2e4f57:	48 85 c9                                        	test   rcx,rcx
  2e4f5a:	74 05                                           	je     0x2e4f61
  2e4f5c:	e8                                              	.byte 0xe8
  2e4f5d:	db 49 00                                        	fisttp DWORD PTR [rcx+0x0]
