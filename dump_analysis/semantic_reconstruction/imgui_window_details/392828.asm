392828	rex push rbx
39282a	sub    rsp,0x30
39282e	movss  xmm0,DWORD PTR [rcx+0x8]
392833	mov    rbx,rdx
392836	movss  xmm3,DWORD PTR [rcx+0x4]
39283b	addss  xmm0,DWORD PTR [rcx+0x10]
392840	addss  xmm3,DWORD PTR [rcx+0xc]
392845	movss  xmm2,DWORD PTR [rcx+0x8]
39284a	movss  xmm1,DWORD PTR [rcx+0x4]
39284f	mov    rcx,rdx
392852	movss  DWORD PTR [rsp+0x20],xmm0
392858	call   0x38baf4
39285d	mov    rax,rbx
392860	add    rsp,0x30
392864	pop    rbx
392865	ret
