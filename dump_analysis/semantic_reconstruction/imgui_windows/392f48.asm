392f48	rex push rbx
392f4a	sub    rsp,0x30
392f4e	movss  xmm0,DWORD PTR [rcx+0x18]
392f53	mov    rbx,rdx
392f56	movss  xmm3,DWORD PTR [rcx+0x14]
392f5b	addss  xmm0,DWORD PTR [rcx+0x20]
392f60	addss  xmm3,DWORD PTR [rcx+0x1c]
392f65	movss  xmm2,DWORD PTR [rcx+0x18]
392f6a	movss  xmm1,DWORD PTR [rcx+0x14]
392f6f	mov    rcx,rdx
392f72	movss  DWORD PTR [rsp+0x20],xmm0
392f78	call   0x38baf4
392f7d	mov    rax,rbx
392f80	add    rsp,0x30
392f84	pop    rbx
392f85	ret
