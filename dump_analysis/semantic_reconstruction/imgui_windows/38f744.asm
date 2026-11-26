38f744	sub    rsp,0x48
38f748	movaps XMMWORD PTR [rsp+0x30],xmm6
38f74d	movaps xmm4,xmm1
38f750	addss  xmm4,xmm3
38f754	movaps XMMWORD PTR [rsp+0x20],xmm7
38f759	movaps xmm5,xmm0
38f75c	movaps xmm6,xmm2
38f75f	movaps xmm7,xmm1
38f762	comiss xmm4,xmm5
38f765	jb     0x38f76f
38f767	movaps xmm1,xmm0
38f76a	movaps xmm0,xmm7
38f76d	jmp    0x38f781
38f76f	movaps xmm0,xmm6
38f772	subss  xmm0,xmm3
38f776	comiss xmm5,xmm0
38f779	movaps xmm0,xmm5
38f77c	jb     0x38f78c
38f77e	movaps xmm1,xmm6
38f781	movss  xmm2,DWORD PTR [rsp+0x70]
38f787	call   0x33565c
38f78c	movaps xmm6,XMMWORD PTR [rsp+0x30]
38f791	movaps xmm7,XMMWORD PTR [rsp+0x20]
38f796	add    rsp,0x48
38f79a	ret
