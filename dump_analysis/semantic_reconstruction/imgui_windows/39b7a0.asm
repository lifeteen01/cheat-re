39b7a0	mov    QWORD PTR [rsp+0x8],rbx
39b7a5	mov    QWORD PTR [rsp+0x10],rsi
39b7aa	push   rdi
39b7ab	sub    rsp,0x30
39b7af	mov    rbx,QWORD PTR [rip+0x6a372]        # 0x405b28
39b7b6	mov    rdi,r8
39b7b9	mov    r8,rdx
39b7bc	mov    rsi,r9
39b7bf	mov    rdx,rcx
39b7c2	lea    rcx,[rsp+0x20]
39b7c7	or     DWORD PTR [rbx+0x47e0],0x10
39b7ce	call   0x2db388
39b7d3	movups xmm0,XMMWORD PTR [rax]
39b7d6	mov    QWORD PTR [rbx+0x4838],rsi
39b7dd	mov    rsi,QWORD PTR [rsp+0x48]
39b7e2	movdqu XMMWORD PTR [rbx+0x481c],xmm0
39b7ea	mov    QWORD PTR [rbx+0x4830],rdi
39b7f1	mov    rbx,QWORD PTR [rsp+0x40]
39b7f6	add    rsp,0x30
39b7fa	pop    rdi
39b7fb	ret
