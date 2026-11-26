
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/3a4750.audit.bin:     file format binary


Disassembly of section .data:

00000000003a4750 <.data>:
  3a4750:	48 83 ec 28                                     	sub    rsp,0x28
  3a4754:	66 83 3d e4 19 06 00 00                         	cmp    WORD PTR [rip+0x619e4],0x0        # 0x406140
  3a475c:	75 4a                                           	jne    0x3a47a8
  3a475e:	0f b7 05 c3 b2 ed ff                            	movzx  eax,WORD PTR [rip+0xffffffffffedb2c3]        # 0x27fa28
  3a4765:	4c 8d 0d ec 19 06 00                            	lea    r9,[rip+0x619ec]        # 0x406158
  3a476c:	0f 10 05 b7 b2 ed ff                            	movups xmm0,XMMWORD PTR [rip+0xffffffffffedb2b7]        # 0x27fa2a
  3a4773:	48 8d 15 b6 5b f0 ff                            	lea    rdx,[rip+0xfffffffffff05bb6]        # 0x2aa330
  3a477a:	41 b8 c4 09 00 00                               	mov    r8d,0x9c4
  3a4780:	f2 0f 10 0d b0 b2 ed ff                         	movsd  xmm1,QWORD PTR [rip+0xffffffffffedb2b0]        # 0x27fa38
  3a4788:	b9 00 4e 00 00                                  	mov    ecx,0x4e00
  3a478d:	0f 11 05 ae 19 06 00                            	movups XMMWORD PTR [rip+0x619ae],xmm0        # 0x406142
  3a4794:	66 89 05 a5 19 06 00                            	mov    WORD PTR [rip+0x619a5],ax        # 0x406140
  3a479b:	f2 0f 11 0d ad 19 06 00                         	movsd  QWORD PTR [rip+0x619ad],xmm1        # 0x406150
  3a47a3:	e8 44 44 00 00                                  	call   0x3a8bec
  3a47a8:	48 8d 05 91 19 06 00                            	lea    rax,[rip+0x61991]        # 0x406140
  3a47af:	48 83 c4 28                                     	add    rsp,0x28
  3a47b3:	c3                                              	ret
