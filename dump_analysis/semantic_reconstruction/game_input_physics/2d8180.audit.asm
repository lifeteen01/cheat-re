
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d8180.audit.bin:     file format binary


Disassembly of section .data:

00000000002d8180 <.data>:
  2d8180:	4c 8b d2                                        	mov    r10,rdx
  2d8183:	45 33 c9                                        	xor    r9d,r9d
  2d8186:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2d818b:	41 f7 e1                                        	mul    r9d
  2d818e:	c1 ea 04                                        	shr    edx,0x4
  2d8191:	0f be c2                                        	movsx  eax,dl
  2d8194:	6b d0 34                                        	imul   edx,eax,0x34
  2d8197:	41 8a c1                                        	mov    al,r9b
  2d819a:	2a c2                                           	sub    al,dl
  2d819c:	04 37                                           	add    al,0x37
  2d819e:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2d81a2:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2d81a6:	41 ff c1                                        	inc    r9d
  2d81a9:	41 83 f9 09                                     	cmp    r9d,0x9
  2d81ad:	7c d7                                           	jl     0x2d8186
  2d81af:	c3                                              	ret
