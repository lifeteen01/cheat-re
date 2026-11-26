
dump_analysis/semantic_reconstruction/game_input_physics/2d7e10.bin:     file format binary


Disassembly of section .data:

00000000002d7e10 <.data>:
  2d7e10:	48 8b 41 38                                     	mov    rax,QWORD PTR [rcx+0x38]
  2d7e14:	c3                                              	ret
  2d7e15:	cc                                              	int3
  2d7e16:	cc                                              	int3
  2d7e17:	cc                                              	int3
  2d7e18:	40 53                                           	rex push rbx
  2d7e1a:	56                                              	push   rsi
  2d7e1b:	57                                              	push   rdi
  2d7e1c:	48 83 ec 40                                     	sub    rsp,0x40
  2d7e20:	48 8b f2                                        	mov    rsi,rdx
  2d7e23:	48 8d 51 14                                     	lea    rdx,[rcx+0x14]
  2d7e27:	48 8b ca                                        	mov    rcx,rdx
  2d7e2a:	e8 d9 30 ff ff                                  	call   0x2caf08
  2d7e2f:	84 c0                                           	test   al,al
  2d7e31:	75 24                                           	jne    0x2d7e57
  2d7e33:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2d7e38:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  2d7e3d:	e8 ee 48 ff ff                                  	call   0x2cc730
  2d7e42:	48 8b c8                                        	mov    rcx,rax
  2d7e45:	e8 5a 5e ff ff                                  	call   0x2cdca4
  2d7e4a:	48 8b d0                                        	mov    rdx,rax
  2d7e4d:	48 8b ce                                        	mov    rcx,rsi
