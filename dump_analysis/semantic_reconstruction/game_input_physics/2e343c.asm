
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e343c.bin:     file format binary


Disassembly of section .data:

00000000002e343c <.data>:
  2e343c:	4c 8b d2                                        	mov    r10,rdx
  2e343f:	45 33 c9                                        	xor    r9d,r9d
  2e3442:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2e3447:	41 f7 e1                                        	mul    r9d
  2e344a:	c1 ea 04                                        	shr    edx,0x4
  2e344d:	0f be c2                                        	movsx  eax,dl
  2e3450:	6b d0 34                                        	imul   edx,eax,0x34
  2e3453:	41 8a c1                                        	mov    al,r9b
  2e3456:	2a c2                                           	sub    al,dl
  2e3458:	04 37                                           	add    al,0x37
  2e345a:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2e345e:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2e3462:	41 ff c1                                        	inc    r9d
  2e3465:	41 83 f9 15                                     	cmp    r9d,0x15
  2e3469:	7c d7                                           	jl     0x2e3442
  2e346b:	c3                                              	ret
