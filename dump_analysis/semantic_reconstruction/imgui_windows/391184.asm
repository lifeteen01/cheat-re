391184	rex push rbx
391186	sub    rsp,0x20
39118a	mov    rax,QWORD PTR [rip+0x74997]        # 0x405b28
391191	lea    rcx,[rsp+0x30]
391196	mov    r8,QWORD PTR [rax+0x3f08]
39119d	lea    rbx,[r8+0x118]
3911a4	mov    BYTE PTR [r8+0x141],0x0
3911ac	mov    rdx,rbx
3911af	add    r8,0x100
3911b6	call   0x383044
3911bb	movsd  xmm0,QWORD PTR [rax]
3911bf	movsd  QWORD PTR [rbx],xmm0
3911c3	add    rsp,0x20
3911c7	pop    rbx
3911c8	ret
