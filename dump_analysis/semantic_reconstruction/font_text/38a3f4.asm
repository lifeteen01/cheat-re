
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038a3f4 <.data+0x38a3f4>:
  38a3f4:	f3 0f 5f c1          	maxss  xmm0,xmm1
  38a3f8:	c3                   	ret
  38a3f9:	cc                   	int3
  38a3fa:	cc                   	int3
  38a3fb:	cc                   	int3
  38a3fc:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  38a400:	8b 02                	mov    eax,DWORD PTR [rdx]
  38a402:	89 01                	mov    DWORD PTR [rcx],eax
  38a404:	f3 0f 11 02          	movss  DWORD PTR [rdx],xmm0
  38a408:	c3                   	ret
  38a409:	cc                   	int3
  38a40a:	cc                   	int3
  38a40b:	cc                   	int3
