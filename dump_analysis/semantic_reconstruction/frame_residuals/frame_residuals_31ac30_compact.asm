31ac30 rex push rbx
31ac32 sub    rsp,0x20
31ac36 mov    rbx,rcx
31ac39 call   0x2cd324
31ac3e mov    rdx,QWORD PTR [rbx]
31ac41 mov    rcx,rax
31ac44 call   0x2ebf1c
31ac49 mov    rax,QWORD PTR [rbx]
31ac4c mov    QWORD PTR [rax],rax
31ac4f mov    rax,QWORD PTR [rbx]
31ac52 mov    QWORD PTR [rax+0x8],rax
31ac56 mov    QWORD PTR [rbx+0x8],0x0
31ac5e add    rsp,0x20
31ac62 pop    rbx
31ac63 ret
