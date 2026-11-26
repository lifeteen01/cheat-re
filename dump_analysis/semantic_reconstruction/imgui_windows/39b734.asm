39b734	mov    r9,QWORD PTR [rip+0x6a3ed]        # 0x405b28
39b73b	mov    eax,0x1
39b740	or     DWORD PTR [r9+0x47e0],eax
39b747	movsd  xmm0,QWORD PTR [rcx]
39b74b	test   edx,edx
39b74d	movsd  QWORD PTR [r9+0x47f0],xmm0
39b756	movsd  xmm1,QWORD PTR [r8]
39b75b	cmovne eax,edx
39b75e	mov    DWORD PTR [r9+0x47e4],eax
39b765	movsd  QWORD PTR [r9+0x47f8],xmm1
39b76e	ret
