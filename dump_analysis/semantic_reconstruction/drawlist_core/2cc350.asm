
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cc350 <.data+0x2cc350>:
  2cc350:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [rsp+0x28]
  2cc356:	48 8b c1                                        	mov    rax,rcx
  2cc359:	f3 0f 11 41 0c                                  	movss  DWORD PTR [rcx+0xc],xmm0
  2cc35e:	f3 0f 11 09                                     	movss  DWORD PTR [rcx],xmm1
  2cc362:	f3 0f 11 51 04                                  	movss  DWORD PTR [rcx+0x4],xmm2
  2cc367:	f3 0f 11 59 08                                  	movss  DWORD PTR [rcx+0x8],xmm3
  2cc36c:	c3                                              	ret
