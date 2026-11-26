
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a658c <.data+0x3a658c>:
  3a658c:	e9 17 28 02 00       	jmp    0x3c8da8
  3a6591:	cc                   	int3
  3a6592:	cc                   	int3
  3a6593:	cc                   	int3
  3a6594:	f3 0f 52 c0          	rsqrtss xmm0,xmm0
  3a6598:	c3                   	ret
  3a6599:	cc                   	int3
  3a659a:	cc                   	int3
  3a659b:	cc                   	int3
  3a659c:	ff c9                	dec    ecx
  3a659e:	8b c1                	mov    eax,ecx
  3a65a0:	d1 f8                	sar    eax,1
  3a65a2:	0b c1                	or     eax,ecx
  3a65a4:	8b c8                	mov    ecx,eax
  3a65a6:	c1 f9 02             	sar    ecx,0x2
  3a65a9:	0b c8                	or     ecx,eax
  3a65ab:	8b                 	mov    eax,ecx
