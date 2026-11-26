3349ac	rex push rbx
3349ae	push   rsi
3349af	push   rdi
3349b0	push   r12
3349b2	push   r14
3349b4	push   r15
3349b6	sub    rsp,0x38
3349ba	mov    r15,r9
3349bd	mov    edi,r8d
3349c0	mov    r12,rdx
3349c3	mov    rsi,rcx
3349c6	test   rcx,rcx
3349c9	je     0x334a78
3349cf	mov    QWORD PTR [rsp+0x28],0x0
3349d8	jmp    0x334a62
3349dd	mov    rcx,QWORD PTR [rbx+0x18]
3349e1	mov    rdx,r12
3349e4	call   0x334ff4
3349e9	test   al,al
3349eb	je     0x334a5f
3349ed	test   edi,edi
3349ef	js     0x334a88
3349f5	test   r15,r15
3349f8	je     0x334a88
3349fe	mov    r14,QWORD PTR [rbx+0x28]
334a02	mov    rcx,rbx
334a05	call   0x335140
334a0a	cmp    edi,eax
334a0c	jg     0x334a5f
334a0e	cmp    DWORD PTR [rsp+0x90],0x0
334a16	jl     0x334a21
334a18	cmp    eax,DWORD PTR [rsp+0x90]
334a1f	jne    0x334a5f
334a21	test   eax,eax
334a23	jle    0x334a34
334a25	lea    eax,[rdi+rdi*2]
334a28	shl    eax,0x3
334a2b	cdqe
334a2d	mov    rax,QWORD PTR [r14+rax*1-0x18]
334a32	jmp    0x334a4b
334a34	lea    rdx,[rsp+0x20]
334a39	lea    rcx,[rsp+0x70]
334a3e	call   0x333b40   ; STR "-"
334a43	mov    rcx,rax
334a46	call   0x2d8464
334a4b	test   rax,rax
334a4e	je     0x334a5f
334a50	mov    rdx,r15
334a53	mov    rcx,rax
334a56	call   0x334ff4
334a5b	test   al,al
334a5d	jne    0x334a88
334a5f	mov    rcx,rsi
334a62	lea    rdx,[rsp+0x28]
334a67	call   0x334660
334a6c	mov    rbx,rax
334a6f	test   rax,rax
334a72	jne    0x3349dd
334a78	xor    eax,eax
334a7a	add    rsp,0x38
334a7e	pop    r15
334a80	pop    r14
334a82	pop    r12
334a84	pop    rdi
334a85	pop    rsi
334a86	pop    rbx
334a87	ret
334a88	mov    rax,rbx
334a8b	jmp    0x334a7a
