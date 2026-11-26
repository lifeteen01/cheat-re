2cfc94	mov    QWORD PTR [rsp+0x8],rbx
2cfc99	push   rdi
2cfc9a	sub    rsp,0x20
2cfc9e	mov    rdi,QWORD PTR [rcx+0x8]
2cfca2	mov    rbx,rcx
2cfca5	mov    rcx,rdx
2cfca8	call   0x2cb3a4
2cfcad	mov    rcx,rbx
2cfcb0	cmp    rdi,QWORD PTR [rbx+0x10]
2cfcb4	je     0x2cfcc0
2cfcb6	mov    rdx,rax
2cfcb9	call   0x2cfaac
2cfcbe	jmp    0x2cfccb
2cfcc0	mov    r8,rax
2cfcc3	mov    rdx,rdi
2cfcc6	call   0x2cff7c
2cfccb	mov    rbx,QWORD PTR [rsp+0x30]
2cfcd0	add    rsp,0x20
2cfcd4	pop    rdi
2cfcd5	ret
