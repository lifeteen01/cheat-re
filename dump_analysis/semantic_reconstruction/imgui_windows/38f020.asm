38f020	rex push rbx
38f022	push   rbp
38f023	push   rsi
38f024	push   rdi
38f025	sub    rsp,0x28
38f029	mov    rbp,QWORD PTR [rcx+0x378]
38f030	mov    rbx,rdx
38f033	mov    rdi,QWORD PTR [rip+0x76aee]        # 0x405b28
38f03a	mov    rcx,rbp
38f03d	call   0x391ce0
38f042	mov    rcx,QWORD PTR [rbx+0x378]
38f049	movsxd rsi,eax
38f04c	call   0x391ce0
38f051	mov    r10,QWORD PTR [rdi+0x3eb0]
38f058	movsxd rbx,eax
38f05b	cmp    esi,ebx
38f05d	jge    0x38f084
38f05f	mov    edx,ebx
38f061	lea    rcx,[r10+rsi*8]
38f065	sub    edx,esi
38f067	dec    edx
38f069	movsxd r8,edx
38f06c	lea    edx,[rsi+0x1]
38f06f	movsxd r9,edx
38f072	shl    r8,0x3
38f076	lea    rdx,[r10+r9*8]
38f07a	call   0x3c8d4c
38f07f	lea    edx,[rbx-0x1]
38f082	jmp    0x38f0a2
38f084	lea    eax,[rbx+0x1]
38f087	sub    esi,ebx
38f089	movsxd rcx,eax
38f08c	lea    rdx,[r10+rbx*8]
38f090	movsxd r8,esi
38f093	shl    r8,0x3
38f097	lea    rcx,[r10+rcx*8]
38f09b	call   0x3c8d4c
38f0a0	mov    edx,ebx
38f0a2	lea    rcx,[rdi+0x3ea8]
38f0a9	call   0x38bb84
38f0ae	mov    QWORD PTR [rax],rbp
38f0b1	add    rsp,0x28
38f0b5	pop    rdi
38f0b6	pop    rsi
38f0b7	pop    rbp
38f0b8	pop    rbx
38f0b9	ret
