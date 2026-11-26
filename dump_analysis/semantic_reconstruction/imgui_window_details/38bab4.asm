38bab4	mov    QWORD PTR [rsp+0x8],rbx
38bab9	push   rdi
38baba	sub    rsp,0x20
38babe	movss  xmm2,DWORD PTR [rdx+0x4]
38bac3	mov    rbx,rdx
38bac6	movss  xmm1,DWORD PTR [rdx]
38baca	mov    rdi,rcx
38bacd	call   0x2cc340
38bad2	movss  xmm2,DWORD PTR [rbx+0xc]
38bad7	lea    rcx,[rdi+0x8]
38badb	movss  xmm1,DWORD PTR [rbx+0x8]
38bae0	call   0x2cc340
38bae5	mov    rbx,QWORD PTR [rsp+0x30]
38baea	mov    rax,rdi
38baed	add    rsp,0x20
38baf1	pop    rdi
38baf2	ret
