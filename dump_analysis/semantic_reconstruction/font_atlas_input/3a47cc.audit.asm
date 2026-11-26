
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/3a47cc.audit.bin:     file format binary


Disassembly of section .data:

00000000003a47cc <.data>:
  3a47cc:	48 83 ec 28                                     	sub    rsp,0x28
  3a47d0:	66 83 3d 98 40 06 00 00                         	cmp    WORD PTR [rip+0x64098],0x0        # 0x408870
  3a47d8:	75 48                                           	jne    0x3a4822
  3a47da:	0f b7 05 5f b2 ed ff                            	movzx  eax,WORD PTR [rip+0xffffffffffedb25f]        # 0x27fa40
  3a47e1:	4c 8d 0d 9c 40 06 00                            	lea    r9,[rip+0x6409c]        # 0x408884
  3a47e8:	0f 10 05 53 b2 ed ff                            	movups xmm0,XMMWORD PTR [rip+0xffffffffffedb253]        # 0x27fa42
  3a47ef:	66 89 05 7a 40 06 00                            	mov    WORD PTR [rip+0x6407a],ax        # 0x408870
  3a47f6:	48 8d 15 c3 6e f0 ff                            	lea    rdx,[rip+0xfffffffffff06ec3]        # 0x2ab6c0
  3a47fd:	0f b7 05 4e b2 ed ff                            	movzx  eax,WORD PTR [rip+0xffffffffffedb24e]        # 0x27fa52
  3a4804:	41 b8 b7 0b 00 00                               	mov    r8d,0xbb7
  3a480a:	b9 00 4e 00 00                                  	mov    ecx,0x4e00
  3a480f:	66 89 05 6c 40 06 00                            	mov    WORD PTR [rip+0x6406c],ax        # 0x408882
  3a4816:	0f 11 05 55 40 06 00                            	movups XMMWORD PTR [rip+0x64055],xmm0        # 0x408872
  3a481d:	e8 ca 43 00 00                                  	call   0x3a8bec
  3a4822:	48 8d 05 47 40 06 00                            	lea    rax,[rip+0x64047]        # 0x408870
  3a4829:	48 83 c4 28                                     	add    rsp,0x28
  3a482d:	c3                                              	ret
