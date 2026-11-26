
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d82e8.bin:     file format binary


Disassembly of section .data:

00000000002d82e8 <.data>:
  2d82e8:	4c 8b d2                                        	mov    r10,rdx
  2d82eb:	45 33 c9                                        	xor    r9d,r9d
  2d82ee:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2d82f3:	41 f7 e1                                        	mul    r9d
  2d82f6:	c1 ea 04                                        	shr    edx,0x4
  2d82f9:	0f be c2                                        	movsx  eax,dl
  2d82fc:	6b d0 34                                        	imul   edx,eax,0x34
  2d82ff:	41 8a c1                                        	mov    al,r9b
  2d8302:	2a c2                                           	sub    al,dl
  2d8304:	04 37                                           	add    al,0x37
  2d8306:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2d830a:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2d830e:	41 ff c1                                        	inc    r9d
  2d8311:	41 83 f9 0e                                     	cmp    r9d,0xe
  2d8315:	7c d7                                           	jl     0x2d82ee
  2d8317:	c3                                              	ret
