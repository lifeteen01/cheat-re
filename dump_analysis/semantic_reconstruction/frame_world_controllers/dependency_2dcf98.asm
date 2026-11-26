2dcf98	mov    QWORD PTR [rsp+0x8],rbx
2dcf9d	push   rdi
2dcf9e	sub    rsp,0x20
2dcfa2	mov    rdi,QWORD PTR [rcx]
2dcfa5	mov    rbx,rcx
2dcfa8	cmp    rdi,QWORD PTR [rcx+0x8]
2dcfac	je     0x2dcfc9
2dcfae	call   0x2cd324
2dcfb3	mov    rdx,QWORD PTR [rbx+0x8]
2dcfb7	mov    r8,rax
2dcfba	mov    rcx,rdi
2dcfbd	call   0x2cf898
2dcfc2	mov    rax,QWORD PTR [rbx]
2dcfc5	mov    QWORD PTR [rbx+0x8],rax
2dcfc9	mov    rbx,QWORD PTR [rsp+0x30]
2dcfce	add    rsp,0x20
2dcfd2	pop    rdi
2dcfd3	ret
