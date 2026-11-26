2d5b78	mov    QWORD PTR [rsp+0x8],rbx
2d5b7d	mov    QWORD PTR [rsp+0x10],rsi
2d5b82	push   rdi
2d5b83	sub    rsp,0x20
2d5b87	mov    rdi,rcx
2d5b8a	call   0x2d8ad8
2d5b8f	cmp    rax,0x4
2d5b93	jb     0x2d5bcf
2d5b95	mov    rcx,rdi
2d5b98	call   0x2d8ad8
2d5b9d	xor    ebx,ebx
2d5b9f	lea    rsi,[rax-0x4]
2d5ba3	lea    rdx,[rbx+rsi*1]
2d5ba7	mov    rcx,rdi
2d5baa	call   0x2d4ccc
2d5baf	mov    cl,BYTE PTR [rax]
2d5bb1	call   0x2d6510
2d5bb6	lea    rcx,[rip+0xfffffffffffb7873]        # 0x28d430
2d5bbd	cmp    al,BYTE PTR [rcx+rbx*1]
2d5bc0	jne    0x2d5bcf
2d5bc2	inc    rbx
2d5bc5	cmp    rbx,0x4
2d5bc9	jb     0x2d5ba3
2d5bcb	mov    al,0x1
2d5bcd	jmp    0x2d5bd1
2d5bcf	xor    al,al
2d5bd1	mov    rbx,QWORD PTR [rsp+0x30]
2d5bd6	mov    rsi,QWORD PTR [rsp+0x38]
2d5bdb	add    rsp,0x20
2d5bdf	pop    rdi
2d5be0	ret
