
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e9abc.audit.bin:     file format binary


Disassembly of section .data:

00000000002e9abc <.data>:
  2e9abc:	4c 8b d2                                        	mov    r10,rdx
  2e9abf:	45 33 c9                                        	xor    r9d,r9d
  2e9ac2:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2e9ac7:	41 f7 e1                                        	mul    r9d
  2e9aca:	c1 ea 04                                        	shr    edx,0x4
  2e9acd:	0f be c2                                        	movsx  eax,dl
  2e9ad0:	6b d0 34                                        	imul   edx,eax,0x34
  2e9ad3:	41 8a c1                                        	mov    al,r9b
  2e9ad6:	2a c2                                           	sub    al,dl
  2e9ad8:	04 37                                           	add    al,0x37
  2e9ada:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2e9ade:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2e9ae2:	41 ff c1                                        	inc    r9d
  2e9ae5:	41 83 f9 21                                     	cmp    r9d,0x21
  2e9ae9:	7c d7                                           	jl     0x2e9ac2
  2e9aeb:	c3                                              	ret
