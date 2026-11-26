39c044	movss  xmm0,DWORD PTR [rdx]
39c048	addss  xmm0,DWORD PTR [rcx]
39c04c	movss  xmm1,DWORD PTR [rcx+0x8]
39c051	movss  DWORD PTR [rcx],xmm0
39c055	movss  xmm0,DWORD PTR [rdx+0x4]
39c05a	addss  xmm0,DWORD PTR [rcx+0x4]
39c05f	movss  DWORD PTR [rcx+0x4],xmm0
39c064	addss  xmm1,DWORD PTR [rdx]
39c068	movss  DWORD PTR [rcx+0x8],xmm1
39c06d	movss  xmm0,DWORD PTR [rdx+0x4]
39c072	addss  xmm0,DWORD PTR [rcx+0xc]
39c077	movss  DWORD PTR [rcx+0xc],xmm0
39c07c	ret
