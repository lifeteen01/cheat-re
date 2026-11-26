
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/3a931c.audit.bin:     file format binary


Disassembly of section .data:

00000000003a931c <.data>:
  3a931c:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3a931e:	ff c8                                           	dec    eax
  3a9320:	48 98                                           	cdqe
  3a9322:	48 69 c0 88 00 00 00                            	imul   rax,rax,0x88
  3a9329:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  3a932d:	c3                                              	ret
