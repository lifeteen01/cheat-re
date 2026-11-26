322580	rex push rbx
322582	sub    rsp,0x30
322586	mov    edx,DWORD PTR [rip+0xcfbb4]        # 0x3f2140
32258c	mov    rbx,rcx
32258f	movaps XMMWORD PTR [rsp+0x20],xmm6
322594	movaps xmm6,xmm1
322597	test   dl,0x1
32259a	jne    0x3225bc
32259c	mov    r8,QWORD PTR [rip+0xb495d]        # 0x3d6f00
3225a3	or     edx,0x1
3225a6	add    r8,0x59dede0
3225ad	mov    DWORD PTR [rip+0xcfb8d],edx        # 0x3f2140
3225b3	mov    QWORD PTR [rip+0xcfb7e],r8        # 0x3f2138
3225ba	jmp    0x3225c3
3225bc	mov    r8,QWORD PTR [rip+0xcfb75]        # 0x3f2138
3225c3	test   dl,0x2
3225c6	jne    0x3225e7
3225c8	mov    rcx,QWORD PTR [rip+0xb3891]        # 0x3d5e60
3225cf	or     edx,0x2
3225d2	mov    DWORD PTR [rip+0xcfb68],edx        # 0x3f2140
3225d8	xor    r9d,r9d
3225db	lea    rdx,[rip+0xcfb6e]        # 0x3f2150
3225e2	call   0x2cbd24
3225e7	mov    rcx,QWORD PTR [rip+0xb3872]        # 0x3d5e60
3225ee	lea    rdx,[rip+0xcfb5b]        # 0x3f2150
3225f5	movaps xmm3,xmm6
3225f8	mov    r8,rbx
3225fb	call   0x32225c
322600	movaps xmm6,XMMWORD PTR [rsp+0x20]
322605	add    rsp,0x30
322609	pop    rbx
32260a	ret
