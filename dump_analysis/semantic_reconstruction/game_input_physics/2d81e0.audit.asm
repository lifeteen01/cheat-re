
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d81e0.audit.bin:     file format binary


Disassembly of section .data:

00000000002d81e0 <.data>:
  2d81e0:	4c 8b d2                                        	mov    r10,rdx
  2d81e3:	45 33 c9                                        	xor    r9d,r9d
  2d81e6:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2d81eb:	41 f7 e1                                        	mul    r9d
  2d81ee:	c1 ea 04                                        	shr    edx,0x4
  2d81f1:	0f be c2                                        	movsx  eax,dl
  2d81f4:	6b d0 34                                        	imul   edx,eax,0x34
  2d81f7:	41 8a c1                                        	mov    al,r9b
  2d81fa:	2a c2                                           	sub    al,dl
  2d81fc:	04 37                                           	add    al,0x37
  2d81fe:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2d8202:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2d8206:	41 ff c1                                        	inc    r9d
  2d8209:	41 83 f9 11                                     	cmp    r9d,0x11
  2d820d:	7c d7                                           	jl     0x2d81e6
  2d820f:	c3                                              	ret
