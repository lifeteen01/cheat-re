
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039e77c <.data+0x39e77c>:
  39e77c:	4c 8b d2                                        	mov    r10,rdx
  39e77f:	45 33 c9                                        	xor    r9d,r9d
  39e782:	b8 9d 82 97 53                                  	mov    eax,0x5397829d
  39e787:	41 f7 e1                                        	mul    r9d
  39e78a:	c1 ea 04                                        	shr    edx,0x4
  39e78d:	0f be c2                                        	movsx  eax,dl
  39e790:	6b d0 31                                        	imul   edx,eax,0x31
  39e793:	41 8a c1                                        	mov    al,r9b
  39e796:	2a c2                                           	sub    al,dl
  39e798:	04 37                                           	add    al,0x37
  39e79a:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  39e79e:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  39e7a2:	41 ff c1                                        	inc    r9d
  39e7a5:	41 83 f9 0d                                     	cmp    r9d,0xd
  39e7a9:	7c d7                                           	jl     0x39e782
  39e7ab:	c3                                              	ret
