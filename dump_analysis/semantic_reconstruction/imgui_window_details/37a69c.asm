37a69c	mov    QWORD PTR [rsp+0x8],rbx
37a6a1	mov    QWORD PTR [rsp+0x10],rsi
37a6a6	push   rdi
37a6a7	sub    rsp,0x20
37a6ab	movsxd rdi,edx
37a6ae	mov    rbx,rcx
37a6b1	cmp    edi,DWORD PTR [rcx+0x4]
37a6b4	jle    0x37a6e5
37a6b6	mov    rcx,rdi
37a6b9	call   0x395158
37a6be	mov    rdx,QWORD PTR [rbx+0x8]
37a6c2	mov    rsi,rax
37a6c5	test   rdx,rdx
37a6c8	je     0x37a6de
37a6ca	movsxd r8,DWORD PTR [rbx]
37a6cd	mov    rcx,rax
37a6d0	call   0x3c8d4c
37a6d5	mov    rcx,QWORD PTR [rbx+0x8]
37a6d9	call   0x39517c
37a6de	mov    QWORD PTR [rbx+0x8],rsi
37a6e2	mov    DWORD PTR [rbx+0x4],edi
37a6e5	mov    rbx,QWORD PTR [rsp+0x30]
37a6ea	mov    rsi,QWORD PTR [rsp+0x38]
37a6ef	add    rsp,0x20
37a6f3	pop    rdi
37a6f4	ret
