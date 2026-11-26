
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036c638 <.data+0x36c638>:
  36c638:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  36c63c:	f3 0f 10 0a          	movss  xmm1,DWORD PTR [rdx]
  36c640:	0f 2f c8             	comiss xmm1,xmm0
  36c643:	72 26                	jb     0x36c66b
  36c645:	f3 0f 58 41 08       	addss  xmm0,DWORD PTR [rcx+0x8]
  36c64a:	0f 2f c1             	comiss xmm0,xmm1
  36c64d:	76 1c                	jbe    0x36c66b
  36c64f:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  36c654:	f3 0f 10 4a 04       	movss  xmm1,DWORD PTR [rdx+0x4]
  36c659:	0f 2f c8             	comiss xmm1,xmm0
  36c65c:	72 0d                	jb     0x36c66b
  36c65e:	f3 0f 58 41 0c       	addss  xmm0,DWORD PTR [rcx+0xc]
  36c663:	0f 2f c1             	comiss xmm0,xmm1
  36c666:	76 03                	jbe    0x36c66b
  36c668:	b0 01                	mov    al,0x1
  36c66a:	c3                   	ret
  36c66b:	32 c0                	xor    al,al
  36c66d:	c3                   	ret
  36c66e:	cc                   	int3
  36c66f:	cc                   	int3
  36c670:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
