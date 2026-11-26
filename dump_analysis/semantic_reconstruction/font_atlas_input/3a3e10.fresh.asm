
dump_analysis/semantic_reconstruction/font_atlas_input/3a3e10.bin:     file format binary


Disassembly of section .data:

00000000003a3e10 <.data>:
  3a3e10:	40 53                                           	rex push rbx
  3a3e12:	48 83 ec 20                                     	sub    rsp,0x20
  3a3e16:	48 8b d9                                        	mov    rbx,rcx
  3a3e19:	48 c7 41 10 00 00 00 00                         	mov    QWORD PTR [rcx+0x10],0x0
  3a3e21:	48 83 c1 28                                     	add    rcx,0x28
  3a3e25:	e8 4e 57 fd ff                                  	call   0x379578
  3a3e2a:	48 8b cb                                        	mov    rcx,rbx
  3a3e2d:	e8 46 57 fd ff                                  	call   0x379578
  3a3e32:	48 8d 4b 18                                     	lea    rcx,[rbx+0x18]
  3a3e36:	e8 3d 57 fd ff                                  	call   0x379578
  3a3e3b:	48 c7 43 38 00 00 00 00                         	mov    QWORD PTR [rbx+0x38],0x0
  3a3e43:	48 c7 43 40 00 00 00 00                         	mov    QWORD PTR [rbx+0x40],0x0
  3a3e4b:	c6 43 60 01                                     	mov    BYTE PTR [rbx+0x60],0x1
  3a3e4f:	48 c7 43 68 00 00 00 00                         	mov    QWORD PTR [rbx+0x68],0x0
  3a3e57:	c7 43 70 00 00 00 00                            	mov    DWORD PTR [rbx+0x70],0x0
  3a3e5e:	48 83 c4 20                                     	add    rsp,0x20
  3a3e62:	5b                                              	pop    rbx
  3a3e63:	c3                                              	ret
