391e68	rex push rbx
391e6a	push   rbp
391e6b	push   rsi
391e6c	push   rdi
391e6d	sub    rsp,0x28
391e71	mov    r10,QWORD PTR [rip+0x73cb0]        # 0x405b28
391e78	mov    esi,r9d
391e7b	mov    rbp,rdx
391e7e	test   rcx,rcx
391e81	je     0x391ea8
391e83	or     r8d,0xffffffff
391e87	mov    eax,0x1000000
391e8c	jmp    0x391e98
391e8e	mov    rcx,QWORD PTR [rcx+0x368]
391e95	xor    r8d,r8d
391e98	test   DWORD PTR [rcx+0x14],eax
391e9b	jne    0x391e8e
391e9d	call   0x391d18
391ea2	lea    ebx,[r8+rax*1]
391ea6	jmp    0x391eb1
391ea8	mov    ebx,DWORD PTR [r10+0x3eb8]
391eaf	dec    ebx
391eb1	lea    rdi,[r10+0x3eb8]
391eb8	test   ebx,ebx
391eba	js     0x391eeb
391ebc	mov    edx,ebx
391ebe	mov    rcx,rdi
391ec1	call   0x38bb84
391ec6	mov    rcx,QWORD PTR [rax]
391ec9	cmp    rcx,rbp
391ecc	je     0x391ee6
391ece	cmp    BYTE PTR [rcx+0xb7],0x0
391ed5	je     0x391ee6
391ed7	mov    eax,DWORD PTR [rcx+0x14]
391eda	and    eax,0x40200
391edf	cmp    eax,0x40200
391ee4	jne    0x391eed
391ee6	sub    ebx,0x1
391ee9	jns    0x391ebc
391eeb	xor    ecx,ecx
391eed	mov    edx,esi
391eef	add    rsp,0x28
391ef3	pop    rdi
391ef4	pop    rsi
391ef5	pop    rbp
391ef6	pop    rbx
391ef7	jmp    0x391efc
