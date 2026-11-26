2d7fb0	mov    QWORD PTR [rsp+0x8],rbx
2d7fb5	push   rdi
2d7fb6	sub    rsp,0x20
2d7fba	mov    rdi,QWORD PTR [rcx]
2d7fbd	mov    rbx,rcx
2d7fc0	cmp    rdi,QWORD PTR [rcx+0x8]
2d7fc4	je     0x2d7fe1
2d7fc6	call   0x2cd324
2d7fcb	mov    rdx,QWORD PTR [rbx+0x8]
2d7fcf	mov    r8,rax
2d7fd2	mov    rcx,rdi
2d7fd5	call   0x2cf84c
2d7fda	mov    rax,QWORD PTR [rbx]
2d7fdd	mov    QWORD PTR [rbx+0x8],rax
2d7fe1	mov    rbx,QWORD PTR [rsp+0x30]
2d7fe6	add    rsp,0x20
2d7fea	pop    rdi
2d7feb	ret
