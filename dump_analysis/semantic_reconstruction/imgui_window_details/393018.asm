393018	rex push rbx
39301a	sub    rsp,0x30
39301e	movss  xmm2,DWORD PTR [r8+0x4]
393024	mov    rbx,rcx
393027	comiss xmm2,DWORD PTR [rdx+0x4]
39302b	mov    QWORD PTR [rsp+0x20],r9
393030	ja     0x39303d
393032	movss  xmm2,DWORD PTR [rsp+0x24]
393038	minss  xmm2,DWORD PTR [rdx+0x4]
39303d	movss  xmm1,DWORD PTR [r8]
393042	comiss xmm1,DWORD PTR [rdx]
393045	ja     0x393050
393047	movq   xmm1,r9
39304c	minss  xmm1,DWORD PTR [rdx]
393050	call   0x2cc340
393055	mov    rax,rbx
393058	add    rsp,0x30
39305c	pop    rbx
39305d	ret
