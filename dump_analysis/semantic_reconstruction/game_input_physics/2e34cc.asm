
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e34cc.bin:     file format binary


Disassembly of section .data:

00000000002e34cc <.data>:
  2e34cc:	4c 8b d2                                        	mov    r10,rdx
  2e34cf:	45 33 c9                                        	xor    r9d,r9d
  2e34d2:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2e34d7:	41 f7 e1                                        	mul    r9d
  2e34da:	c1 ea 04                                        	shr    edx,0x4
  2e34dd:	0f be c2                                        	movsx  eax,dl
  2e34e0:	6b d0 34                                        	imul   edx,eax,0x34
  2e34e3:	41 8a c1                                        	mov    al,r9b
  2e34e6:	2a c2                                           	sub    al,dl
  2e34e8:	04 37                                           	add    al,0x37
  2e34ea:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2e34ee:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2e34f2:	41 ff c1                                        	inc    r9d
  2e34f5:	41 83 f9 18                                     	cmp    r9d,0x18
  2e34f9:	7c d7                                           	jl     0x2e34d2
  2e34fb:	c3                                              	ret
