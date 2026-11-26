39b690	mov    r10,QWORD PTR [rip+0x6a491]        # 0x405b28
39b697	mov    rax,QWORD PTR [r10+0x48e8]
39b69e	mov    DWORD PTR [r10+0x48f4],r8d
39b6a5	mov    DWORD PTR [r10+0x48f0],ecx
39b6ac	mov    DWORD PTR [r10+0x4920],edx
39b6b3	movsxd r8,edx
39b6b6	mov    DWORD PTR [rax+r8*4+0x3a0],ecx
39b6be	add    r8,r8
39b6c1	mov    rax,QWORD PTR [r10+0x48e8]
39b6c8	movups xmm0,XMMWORD PTR [r9]
39b6cc	movdqu XMMWORD PTR [rax+r8*8+0x3a8],xmm0
39b6d6	ret
