
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4588 <.data+0x3a4588>:
  3a4588:	8b d1                                           	mov    edx,ecx
  3a458a:	83 f9 ff                                        	cmp    ecx,0xffffffff
  3a458d:	75 06                                           	jne    0x3a4595
  3a458f:	b8 f0 00 00 00                                  	mov    eax,0xf0
  3a4594:	c3                                              	ret
  3a4595:	8d 41 ff                                        	lea    eax,[rcx-0x1]
  3a4598:	83 f8 0e                                        	cmp    eax,0xe
  3a459b:	77 06                                           	ja     0x3a45a3
  3a459d:	c1 e2 04                                        	shl    edx,0x4
  3a45a0:	8b c2                                           	mov    eax,edx
  3a45a2:	c3                                              	ret
  3a45a3:	8b c2                                           	mov    eax,edx
  3a45a5:	0d f0 00 00 00                                  	or     eax,0xf0
  3a45aa:	f7 c2 f0 01 00 00                               	test   edx,0x1f0
  3a45b0:	0f 45 c2                                        	cmovne eax,edx
  3a45b3:	c3                                              	ret
