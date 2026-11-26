
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/39f550.audit.bin:     file format binary


Disassembly of section .data:

000000000039f550 <.data>:
  39f550:	40 53                                           	rex push rbx
  39f552:	48 83 ec 20                                     	sub    rsp,0x20
  39f556:	48 8b d9                                        	mov    rbx,rcx
  39f559:	48 83 c1 24                                     	add    rcx,0x24
  39f55d:	e8 0e 53 f3 ff                                  	call   0x2d4870
  39f562:	48 8d 4b 2c                                     	lea    rcx,[rbx+0x2c]
  39f566:	e8 05 53 f3 ff                                  	call   0x2d4870
  39f56b:	33 d2                                           	xor    edx,edx
  39f56d:	41 b8 88 00 00 00                               	mov    r8d,0x88
  39f573:	48 8b cb                                        	mov    rcx,rbx
  39f576:	e8 f5 97 02 00                                  	call   0x3c8d70
  39f57b:	48 8b c3                                        	mov    rax,rbx
  39f57e:	c6 43 0c 01                                     	mov    BYTE PTR [rbx+0xc],0x1
  39f582:	c7 43 18 03 00 00 00                            	mov    DWORD PTR [rbx+0x18],0x3
  39f589:	c7 43 1c 01 00 00 00                            	mov    DWORD PTR [rbx+0x1c],0x1
  39f590:	c7 43 44 ff ff 7f 7f                            	mov    DWORD PTR [rbx+0x44],0x7f7fffff
  39f597:	c7 43 50 00 00 80 3f                            	mov    DWORD PTR [rbx+0x50],0x3f800000
  39f59e:	66 c7 43 54 ff ff                               	mov    WORD PTR [rbx+0x54],0xffff
  39f5a4:	48 83 c4 20                                     	add    rsp,0x20
  39f5a8:	5b                                              	pop    rbx
  39f5a9:	c3                                              	ret
