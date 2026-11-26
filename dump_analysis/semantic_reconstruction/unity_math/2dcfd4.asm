
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dcfd4 <.data+0x2dcfd4>:
  2dcfd4:	4c 8b d2                                        	mov    r10,rdx
  2dcfd7:	45 33 c9                                        	xor    r9d,r9d
  2dcfda:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2dcfdf:	41 f7 e1                                        	mul    r9d
  2dcfe2:	c1 ea 04                                        	shr    edx,0x4
  2dcfe5:	0f be c2                                        	movsx  eax,dl
  2dcfe8:	6b d0 34                                        	imul   edx,eax,0x34
  2dcfeb:	41 8a c1                                        	mov    al,r9b
  2dcfee:	2a c2                                           	sub    al,dl
  2dcff0:	04 37                                           	add    al,0x37
  2dcff2:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2dcff6:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2dcffa:	41 ff c1                                        	inc    r9d
  2dcffd:	41 83 f9 04                                     	cmp    r9d,0x4
  2dd001:	7c d7                                           	jl     0x2dcfda
  2dd003:	c3                                              	ret
  2dd004:	4c 8b d2                                        	mov    r10,rdx
  2dd007:	45 33 c9                                        	xor    r9d,r9d
  2dd00a:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  2dd00f:	41 f7 e1                                        	mul    r9d
  2dd012:	c1 ea 04                                        	shr    edx,0x4
  2dd015:	0f be c2                                        	movsx  eax,dl
  2dd018:	6b d0 34                                        	imul   edx,eax,0x34
  2dd01b:	41 8a c1                                        	mov    al,r9b
  2dd01e:	2a c2                                           	sub    al,dl
  2dd020:	04 37                                           	add    al,0x37
  2dd022:	43 32 04 0a                                     	xor    al,BYTE PTR [r10+r9*1]
  2dd026:	42 88 04 09                                     	mov    BYTE PTR [rcx+r9*1],al
  2dd02a:	41 ff c1                                        	inc    r9d
  2dd02d:	41 83 f9 07                                     	cmp    r9d,0x7
  2dd031:	7c d7                                           	jl     0x2dd00a
  2dd033:	c3                                              	ret
