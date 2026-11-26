2e9fac	sub    rsp,0x38
2e9fb0	movsd  xmm0,QWORD PTR [rcx+0x48]
2e9fb5	lea    rdx,[rcx+0x8]
2e9fb9	mov    eax,DWORD PTR [rcx+0x50]
2e9fbc	lea    r8,[rsp+0x20]
2e9fc1	lea    rcx,[rip+0xece08]        # 0x3d6dd0
2e9fc8	movsd  QWORD PTR [rsp+0x20],xmm0
2e9fce	mov    DWORD PTR [rsp+0x28],eax
2e9fd2	call   0x2d3b84
2e9fd7	add    rsp,0x38
2e9fdb	ret
