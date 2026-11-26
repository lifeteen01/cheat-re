39b770	mov    r8,QWORD PTR [rip+0x6a3b1]        # 0x405b28
39b777	mov    eax,0x1
39b77c	or     DWORD PTR [r8+0x47e0],0x2
39b784	movsd  xmm0,QWORD PTR [rcx]
39b788	test   edx,edx
39b78a	movsd  QWORD PTR [r8+0x4800],xmm0
39b793	cmovne eax,edx
39b796	mov    DWORD PTR [r8+0x47e8],eax
39b79d	ret
