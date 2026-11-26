3911cc	movss  xmm0,DWORD PTR [rcx]
3911d0	subss  xmm0,DWORD PTR [rdx]
3911d4	movss  xmm1,DWORD PTR [rcx+0x8]
3911d9	movss  DWORD PTR [rcx],xmm0
3911dd	movss  xmm0,DWORD PTR [rcx+0x4]
3911e2	subss  xmm0,DWORD PTR [rdx+0x4]
3911e7	movss  DWORD PTR [rcx+0x4],xmm0
3911ec	addss  xmm1,DWORD PTR [rdx]
3911f0	movss  DWORD PTR [rcx+0x8],xmm1
3911f5	movss  xmm0,DWORD PTR [rdx+0x4]
3911fa	addss  xmm0,DWORD PTR [rcx+0xc]
3911ff	movss  DWORD PTR [rcx+0xc],xmm0
391204	ret
