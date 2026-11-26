
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cdba0.bin:     file format binary


Disassembly of section .data:

00000000002cdba0 <.data>:
  2cdba0:	4c 8b d2                                        	mov    r10,rdx
  2cdba3:	45 33 c9                                        	xor    r9d,r9d
  2cdba6:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2cdbab:	41 f7 e1                                        	mul    r9d
  2cdbae:	c1 ea 04                                        	shr    edx,0x4
  2cdbb1:	0f be c2                                        	movsx  eax,dl
  2cdbb4:	6b d0 34                                        	imul   edx,eax,0x34
  2cdbb7:	41 8a c1                                        	mov    al,r9b
  2cdbba:	2a c2                                           	sub    al,dl
  2cdbbc:	04 37                                           	add    al,0x37
  2cdbbe:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2cdbc2:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2cdbc6:	41 ff c1                                        	inc    r9d
  2cdbc9:	41 83 f9 0c                                     	cmp    r9d,0xc
  2cdbcd:	7c d7                                           	jl     0x2cdba6
  2cdbcf:	c3                                              	ret
