
dump_analysis/semantic_reconstruction/font_atlas_input/362efc.bin:     file format binary


Disassembly of section .data:

0000000000362efc <.data>:
  362efc:	44 8b 49 04                                     	mov    r9d,DWORD PTR [rcx+0x4]
  362f00:	44 8b c2                                        	mov    r8d,edx
  362f03:	45 85 c9                                        	test   r9d,r9d
  362f06:	74 0d                                           	je     0x362f15
  362f08:	41 8b c1                                        	mov    eax,r9d
  362f0b:	99                                              	cdq
  362f0c:	2b c2                                           	sub    eax,edx
  362f0e:	d1 f8                                           	sar    eax,1
  362f10:	41 03 c1                                        	add    eax,r9d
  362f13:	eb 05                                           	jmp    0x362f1a
  362f15:	b8 08 00 00 00                                  	mov    eax,0x8
  362f1a:	41 3b c0                                        	cmp    eax,r8d
  362f1d:	44 0f 4f c0                                     	cmovg  r8d,eax
  362f21:	41 8b c0                                        	mov    eax,r8d
  362f24:	c3                                              	ret
