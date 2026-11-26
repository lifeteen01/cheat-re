
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d8114 <.data+0x2d8114>:
  2d8114:	4c 8b d2                                        	mov    r10,rdx
  2d8117:	45 33 c9                                        	xor    r9d,r9d
  2d811a:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2d811f:	41 f7 e1                                        	mul    r9d
  2d8122:	c1 ea 04                                        	shr    edx,0x4
  2d8125:	0f be c2                                        	movsx  eax,dl
  2d8128:	6b d0 34                                        	imul   edx,eax,0x34
  2d812b:	41 8a c1                                        	mov    al,r9b
  2d812e:	2a c2                                           	sub    al,dl
  2d8130:	04 37                                           	add    al,0x37
  2d8132:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2d8136:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2d813a:	41 ff c1                                        	inc    r9d
  2d813d:	41 83 f9 06                                     	cmp    r9d,0x6
  2d8141:	7c d7                                           	jl     0x2d811a
  2d8143:	c3                                              	ret
