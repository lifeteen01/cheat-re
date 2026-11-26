2cbd24	rex push rbp
2cbd26	push   rbx
2cbd27	push   rsi
2cbd28	push   rdi
2cbd29	push   r12
2cbd2b	push   r13
2cbd2d	push   r14
2cbd2f	push   r15
2cbd31	lea    rbp,[rsp-0x1f]
2cbd36	sub    rsp,0x98
2cbd3d	mov    r13,r8
2cbd40	mov    DWORD PTR [rbp+0x67],0x0
2cbd47	mov    r8,rdx
2cbd4a	mov    r12,rdx
2cbd4d	mov    rdx,QWORD PTR [rcx]
2cbd50	mov    r15,rcx
2cbd53	lea    rcx,[rbp-0x21]
2cbd57	mov    rdi,r9
2cbd5a	call   0x2cc46c
2cbd5f	test   rdi,rdi
2cbd62	jne    0x2cbd7e
2cbd64	lea    rdx,[rbp-0x11]
2cbd68	mov    rcx,r15
2cbd6b	call   0x2ce130
2cbd70	mov    rdi,rax
2cbd73	mov    r14,rax
2cbd76	mov    rbx,rax
2cbd79	mov    rsi,rax
2cbd7c	jmp    0x2cbd87
2cbd7e	mov    r14,rdi
2cbd81	mov    rbx,rdi
2cbd84	mov    rsi,rdi
2cbd87	mov    rsi,QWORD PTR [rsi+0x18]
2cbd8b	xor    edx,edx
2cbd8d	mov    rbx,QWORD PTR [rbx+0x10]
2cbd91	mov    r8d,0xd8
2cbd97	mov    r14,QWORD PTR [r14+0x8]
2cbd9b	mov    rcx,r12
2cbd9e	mov    rdi,QWORD PTR [rdi]
2cbda1	call   0x3c8d70
2cbda6	mov    QWORD PTR [r12+0x8],rbx
2cbdab	mov    rcx,rdi
2cbdae	sub    rbx,rdi
2cbdb1	mov    QWORD PTR [r12+0x70],r13
2cbdb6	mov    rdx,rbx
2cbdb9	mov    QWORD PTR [r12],rsi
2cbdbd	call   0x2ce1f0
2cbdc2	lea    r8,[rbp+0x67]
2cbdc6	mov    rcx,rdi
2cbdc9	mov    edx,DWORD PTR [rax+0x8]
2cbdcc	add    rdx,rdi
2cbdcf	call   0x2ce3dc
2cbdd4	mov    r8d,DWORD PTR [rbp+0x67]
2cbdd8	sub    rsi,r14
2cbddb	mov    rdx,rsi
2cbdde	mov    QWORD PTR [r12+0x58],r8
2cbde3	mov    rcx,r14
2cbde6	call   0x2ce1f0
2cbdeb	lea    r8,[rbp+0x67]
2cbdef	mov    rcx,r14
2cbdf2	mov    edx,DWORD PTR [rax+0x8]
2cbdf5	add    rdx,r14
2cbdf8	call   0x2ce3dc
2cbdfd	mov    r8d,DWORD PTR [rbp+0x67]
2cbe01	lea    r9,[rbp+0x77]
2cbe05	xor    esi,esi
2cbe07	mov    QWORD PTR [r12+0x50],r8
2cbe0c	mov    eax,0xaaaaaaab
2cbe11	mov    DWORD PTR [rbp+0x6f],esi
2cbe14	mul    DWORD PTR [r15+0x8]
2cbe18	lea    rax,[rbp-0x29]
2cbe1c	mov    DWORD PTR [rbp+0x7f],esi
2cbe1f	mov    QWORD PTR [rsp+0x30],rax
2cbe24	lea    edi,[rsi+0x1]
2cbe27	mov    ebx,edx
2cbe29	mov    DWORD PTR [rbp-0x39],esi
2cbe2c	mov    rdx,QWORD PTR [r15+0x10]
2cbe30	lea    rax,[rbp+0x7f]
2cbe34	mov    QWORD PTR [rsp+0x28],rax
2cbe39	lea    rcx,[rbp-0x21]
2cbe3d	lea    rax,[rbp+0x6f]
2cbe41	shr    ebx,0x3
2cbe44	mov    r8d,ebx
2cbe47	mov    DWORD PTR [rbp-0x35],esi
2cbe4a	mov    DWORD PTR [rbp-0x31],edi
2cbe4d	mov    DWORD PTR [rbp+0x77],esi
2cbe50	mov    QWORD PTR [rbp-0x29],rsi
2cbe54	mov    QWORD PTR [rsp+0x20],rax
2cbe59	call   0x2cdfc4
2cbe5e	mov    rdx,QWORD PTR [r15+0x10]
2cbe62	lea    rax,[rbp-0x29]
2cbe66	mov    QWORD PTR [rsp+0x30],rax
2cbe6b	lea    r9,[rbp+0x77]
2cbe6f	lea    rax,[rbp-0x39]
2cbe73	mov    r8d,ebx
2cbe76	mov    QWORD PTR [rsp+0x28],rax
2cbe7b	lea    rcx,[rbp-0x21]
2cbe7f	lea    rax,[rbp+0x6f]
2cbe83	mov    QWORD PTR [rsp+0x20],rax
2cbe88	call   0x2ce074
2cbe8d	mov    rdx,QWORD PTR [r15+0x10]
2cbe91	lea    rax,[rbp-0x35]
2cbe95	mov    DWORD PTR [rsp+0x30],esi
2cbe99	lea    r9,[rbp+0x77]
2cbe9d	mov    QWORD PTR [rsp+0x28],rax
2cbea2	lea    rcx,[rbp-0x21]
2cbea6	lea    rax,[rbp+0x6f]
2cbeaa	mov    r8d,ebx
2cbead	mov    QWORD PTR [rsp+0x20],rax
2cbeb2	call   0x2cdea8
2cbeb7	lea    rax,[rbp-0x31]
2cbebb	mov    DWORD PTR [rsp+0x30],edi
2cbebf	mov    QWORD PTR [rsp+0x28],rax
2cbec4	mov    rdx,QWORD PTR [r15+0x10]
2cbec8	lea    rax,[rbp+0x6f]
2cbecc	lea    r9,[rbp+0x77]
2cbed0	mov    QWORD PTR [rsp+0x20],rax
2cbed5	mov    r8d,ebx
2cbed8	lea    rcx,[rbp-0x21]
2cbedc	call   0x2cdea8
2cbee1	mov    rax,r12
2cbee4	add    rsp,0x98
2cbeeb	pop    r15
2cbeed	pop    r14
2cbeef	pop    r13
2cbef1	pop    r12
2cbef3	pop    rdi
2cbef4	pop    rsi
2cbef5	pop    rbx
2cbef6	pop    rbp
2cbef7	ret
