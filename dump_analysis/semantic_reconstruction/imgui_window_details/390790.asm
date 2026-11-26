390790	movss  xmm0,DWORD PTR [rdx]
390794	comiss xmm0,DWORD PTR [rcx]
390797	jb     0x3907bd
390799	movss  xmm0,DWORD PTR [rdx+0x4]
39079e	comiss xmm0,DWORD PTR [rcx+0x4]
3907a2	jb     0x3907bd
3907a4	movss  xmm0,DWORD PTR [rcx+0x8]
3907a9	comiss xmm0,DWORD PTR [rdx+0x8]
3907ad	jb     0x3907bd
3907af	movss  xmm0,DWORD PTR [rcx+0xc]
3907b4	comiss xmm0,DWORD PTR [rdx+0xc]
3907b8	jb     0x3907bd
3907ba	mov    al,0x1
3907bc	ret
3907bd	xor    al,al
3907bf	ret
