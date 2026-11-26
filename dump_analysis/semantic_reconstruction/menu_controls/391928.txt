391928	rex push rbx
39192a	push   rbp
39192b	push   rsi
39192c	push   rdi
39192d	push   r14
39192f	sub    rsp,0x20
391933	mov    rax,QWORD PTR [rip+0x741ee]        # 0x405b28
39193a	mov    rbp,rcx
39193d	mov    edx,DWORD PTR [rax+0x48b0]
391943	test   edx,edx
391945	jle    0x3919c0
391947	mov    r14,QWORD PTR [rax+0x48b8]
39194e	lea    esi,[rdx-0x1]
391951	mov    eax,esi
391953	imul   rdx,rax,0x38
391957	mov    rbx,QWORD PTR [r14+rdx*1+0x8]
39195c	test   rbx,rbx
39195f	je     0x3919bb
391961	test   DWORD PTR [rbx+0x14],0x8000000
391968	je     0x3919bb
39196a	cmp    BYTE PTR [rbx+0xb6],0x0
391971	jne    0x39197c
391973	cmp    BYTE PTR [rbx+0xb7],0x0
39197a	je     0x3919bb
39197c	test   rbp,rbp
39197f	je     0x3919cd
391981	mov    rdx,rbx
391984	mov    rcx,rbp
391987	call   0x3948bc
39198c	test   al,al
39198e	jne    0x3919c0
391990	mov    rax,QWORD PTR [rbx+0x370]
391997	jmp    0x3919af
391999	mov    rdx,rdi
39199c	mov    rcx,rbp
39199f	call   0x3948bc
3919a4	test   al,al
3919a6	jne    0x3919cd
3919a8	mov    rax,QWORD PTR [rdi+0x370]
3919af	mov    rdi,QWORD PTR [rax+0x378]
3919b6	test   rdi,rdi
3919b9	jne    0x391999
3919bb	sub    esi,0x1
3919be	jns    0x391951
3919c0	xor    eax,eax
3919c2	add    rsp,0x20
3919c6	pop    r14
3919c8	pop    rdi
3919c9	pop    rsi
3919ca	pop    rbp
3919cb	pop    rbx
3919cc	ret
3919cd	mov    rax,rbx
3919d0	jmp    0x3919c2
