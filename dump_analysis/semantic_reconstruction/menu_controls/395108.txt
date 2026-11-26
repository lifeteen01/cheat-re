395108	test   DWORD PTR [rcx+0x14],0x100
39510f	jne    0x39512d
395111	mov    rcx,QWORD PTR [rip+0x70a10]        # 0x405b28
395118	xorps  xmm0,xmm0
39511b	comiss xmm0,DWORD PTR [rcx+0x5bfc]
395122	jb     0x39512d
395124	mov    eax,DWORD PTR [rcx+0x1c]
395127	mov    DWORD PTR [rcx+0x5bfc],eax
39512d	ret
