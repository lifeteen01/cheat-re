39be68	mov    QWORD PTR [rsp+0x10],rbx
39be6d	push   rdi
39be6e	sub    rsp,0x20
39be72	mov    rdi,QWORD PTR [rip+0x69caf]        # 0x405b28
39be79	xor    edx,edx
39be7b	mov    rbx,rcx
39be7e	call   0x391efc
39be83	mov    ecx,DWORD PTR [rbx+0x7c]
39be86	mov    rdx,rbx
39be89	call   0x39b0cc
39be8e	mov    BYTE PTR [rdi+0x4926],0x1
39be95	lea    rdx,[rdi+0x36f8]
39be9c	mov    r8,QWORD PTR [rbx+0x378]
39bea3	lea    rcx,[rsp+0x30]
39bea8	add    r8,0x20
39beac	call   0x3367e4
39beb1	movsd  xmm0,QWORD PTR [rax]
39beb5	movsd  QWORD PTR [rdi+0x3f7c],xmm0
39bebd	mov    BYTE PTR [rdi+0x3f76],0x1
39bec4	call   0x39b1d0
39bec9	test   BYTE PTR [rbx+0x14],0x4
39becd	jne    0x39bee3
39becf	mov    rax,QWORD PTR [rbx+0x378]
39bed6	test   BYTE PTR [rax+0x14],0x4
39beda	jne    0x39bee3
39bedc	mov    QWORD PTR [rdi+0x3f20],rbx
39bee3	mov    rbx,QWORD PTR [rsp+0x38]
39bee8	add    rsp,0x20
39beec	pop    rdi
39beed	ret
