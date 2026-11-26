
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/379578.audit.bin:     file format binary


Disassembly of section .data:

0000000000379578 <.data>:
  379578:	40 53                                           	rex push rbx
  37957a:	48 83 ec 20                                     	sub    rsp,0x20
  37957e:	48 8b d9                                        	mov    rbx,rcx
  379581:	48 8b 49 08                                     	mov    rcx,QWORD PTR [rcx+0x8]
  379585:	48 85 c9                                        	test   rcx,rcx
  379588:	74 14                                           	je     0x37959e
  37958a:	48 c7 03 00 00 00 00                            	mov    QWORD PTR [rbx],0x0
  379591:	e8 e6 bb 01 00                                  	call   0x39517c
  379596:	48 c7 43 08 00 00 00 00                         	mov    QWORD PTR [rbx+0x8],0x0
  37959e:	48 83 c4 20                                     	add    rsp,0x20
  3795a2:	5b                                              	pop    rbx
  3795a3:	c3                                              	ret
