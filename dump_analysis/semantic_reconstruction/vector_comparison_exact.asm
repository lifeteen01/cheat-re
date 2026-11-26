
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df5dc <.data+0x2df5dc>:
  2df5dc:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  2df5e0:	0f 2e 02             	ucomiss xmm0,DWORD PTR [rdx]
  2df5e3:	7a 1f                	jp     0x2df604
  2df5e5:	75 1d                	jne    0x2df604
  2df5e7:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2df5ec:	0f 2e 42 04          	ucomiss xmm0,DWORD PTR [rdx+0x4]
  2df5f0:	7a 12                	jp     0x2df604
  2df5f2:	75 10                	jne    0x2df604
  2df5f4:	f3 0f 10 41 08       	movss  xmm0,DWORD PTR [rcx+0x8]
  2df5f9:	0f 2e 42 08          	ucomiss xmm0,DWORD PTR [rdx+0x8]
  2df5fd:	7a 05                	jp     0x2df604
  2df5ff:	75 03                	jne    0x2df604
  2df601:	32 c0                	xor    al,al
  2df603:	c3                   	ret
  2df604:	b0 01                	mov    al,0x1
  2df606:	c3                   	ret
  2df607:	cc                   	int3
