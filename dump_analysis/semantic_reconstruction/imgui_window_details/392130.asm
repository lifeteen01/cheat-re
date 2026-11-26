392130	rex push rbx
392132	sub    rsp,0x20
392136	movss  xmm2,DWORD PTR [rcx+0xc]
39213b	mov    rbx,rdx
39213e	movss  xmm1,DWORD PTR [rcx]
392142	mov    rcx,rdx
392145	call   0x2cc340
39214a	mov    rax,rbx
39214d	add    rsp,0x20
392151	pop    rbx
392152	ret
