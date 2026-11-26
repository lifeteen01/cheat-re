378940	rex push rbx
378942	sub    rsp,0x20
378946	movss  xmm2,DWORD PTR [rcx+0xc]
37894b	mov    rbx,rdx
37894e	movss  xmm1,DWORD PTR [rcx+0x8]
378953	subss  xmm2,DWORD PTR [rcx+0x4]
378958	subss  xmm1,DWORD PTR [rcx]
37895c	mov    rcx,rdx
37895f	call   0x2cc340
378964	mov    rax,rbx
378967	add    rsp,0x20
37896b	pop    rbx
37896c	ret
