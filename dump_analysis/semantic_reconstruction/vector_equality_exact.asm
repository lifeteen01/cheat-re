
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df5b0 <.data+0x2df5b0>:
  2df5b0:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  2df5b4:	0f 2e 02             	ucomiss xmm0,DWORD PTR [rdx]
  2df5b7:	7a 1f                	jp     0x2df5d8
  2df5b9:	75 1d                	jne    0x2df5d8
  2df5bb:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2df5c0:	0f 2e 42 04          	ucomiss xmm0,DWORD PTR [rdx+0x4]
  2df5c4:	7a 12                	jp     0x2df5d8
  2df5c6:	75 10                	jne    0x2df5d8
  2df5c8:	f3 0f 10 41 08       	movss  xmm0,DWORD PTR [rcx+0x8]
  2df5cd:	0f 2e 42 08          	ucomiss xmm0,DWORD PTR [rdx+0x8]
  2df5d1:	7a 05                	jp     0x2df5d8
  2df5d3:	75 03                	jne    0x2df5d8
  2df5d5:	b0 01                	mov    al,0x1
  2df5d7:	c3                   	ret
  2df5d8:	32 c0                	xor    al,al
  2df5da:	c3                   	ret
  2df5db:	cc                   	int3
