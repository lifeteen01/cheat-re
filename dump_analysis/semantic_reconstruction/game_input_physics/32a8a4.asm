
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/32a8a4.bin:     file format binary


Disassembly of section .data:

000000000032a8a4 <.data>:
  32a8a4:	4c 8b d2                                        	mov    r10,rdx
  32a8a7:	45 33 c9                                        	xor    r9d,r9d
  32a8aa:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  32a8af:	41 f7 e1                                        	mul    r9d
  32a8b2:	c1 ea 04                                        	shr    edx,0x4
  32a8b5:	0f be c2                                        	movsx  eax,dl
  32a8b8:	6b d0 34                                        	imul   edx,eax,0x34
  32a8bb:	41 8a c1                                        	mov    al,r9b
  32a8be:	2a c2                                           	sub    al,dl
  32a8c0:	04 37                                           	add    al,0x37
  32a8c2:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  32a8c6:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  32a8ca:	41 ff c1                                        	inc    r9d
  32a8cd:	41 83 f9 2c                                     	cmp    r9d,0x2c
  32a8d1:	7c d7                                           	jl     0x32a8aa
  32a8d3:	c3                                              	ret
