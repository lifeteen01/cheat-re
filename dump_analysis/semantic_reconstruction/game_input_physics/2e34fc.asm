
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e34fc.bin:     file format binary


Disassembly of section .data:

00000000002e34fc <.data>:
  2e34fc:	4c 8b d2                                        	mov    r10,rdx
  2e34ff:	45 33 c9                                        	xor    r9d,r9d
  2e3502:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2e3507:	41 f7 e1                                        	mul    r9d
  2e350a:	c1 ea 04                                        	shr    edx,0x4
  2e350d:	0f be c2                                        	movsx  eax,dl
  2e3510:	6b d0 34                                        	imul   edx,eax,0x34
  2e3513:	41 8a c1                                        	mov    al,r9b
  2e3516:	2a c2                                           	sub    al,dl
  2e3518:	04 37                                           	add    al,0x37
  2e351a:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2e351e:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2e3522:	41 ff c1                                        	inc    r9d
  2e3525:	41 83 f9 19                                     	cmp    r9d,0x19
  2e3529:	7c d7                                           	jl     0x2e3502
  2e352b:	c3                                              	ret
