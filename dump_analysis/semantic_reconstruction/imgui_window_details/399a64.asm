399a64	rex push rbx
399a66	push   rbp
399a67	push   rsi
399a68	push   rdi
399a69	push   r14
399a6b	sub    rsp,0x40
399a6f	mov    r14,rdx
399a72	mov    rbp,rcx
399a75	mov    rdx,r9
399a78	mov    rcx,r8
399a7b	mov    rdi,r8
399a7e	call   0x391c50
399a83	mov    rsi,rax
399a86	cmp    eax,edi
399a88	je     0x399af0
399a8a	mov    rbx,QWORD PTR [rip+0x6c097]        # 0x405b28
399a91	mov    r9,rdi
399a94	mov    r8,QWORD PTR [rsp+0xa0]
399a9c	mov    rdx,QWORD PTR [rsp+0x98]
399aa4	mov    QWORD PTR [rsp+0x38],r8
399aa9	mov    r8,r14
399aac	mov    rcx,QWORD PTR [rbx+0x3f08]
399ab3	mov    QWORD PTR [rsp+0x30],rdx
399ab8	mov    rdx,QWORD PTR [rsp+0x90]
399ac0	mov    QWORD PTR [rsp+0x28],rdx
399ac5	mov    rdx,rbp
399ac8	mov    rcx,QWORD PTR [rcx+0x298]
399acf	mov    QWORD PTR [rsp+0x20],rax
399ad4	call   0x399afc
399ad9	cmp    BYTE PTR [rbx+0x5c90],0x0
399ae0	je     0x399af0
399ae2	mov    r8,rsi
399ae5	mov    rdx,rdi
399ae8	mov    rcx,rbp
399aeb	call   0x394e5c
399af0	add    rsp,0x40
399af4	pop    r14
399af6	pop    rdi
399af7	pop    rsi
399af8	pop    rbp
399af9	pop    rbx
399afa	ret
