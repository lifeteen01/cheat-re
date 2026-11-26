31ab60 mov    QWORD PTR [rsp+0x10],rbx
31ab65 push   rdi
31ab66 sub    rsp,0x20
31ab6a cmp    QWORD PTR [rcx+0x10],0x0
31ab6f mov    rbx,rcx
31ab72 je     0x31abbd
31ab74 call   0x2d7e10
31ab79 shr    rax,0x3
31ab7d cmp    rax,QWORD PTR [rbx+0x10]
31ab81 jbe    0x31ab97
31ab83 mov    rdx,QWORD PTR [rbx+0x8]
31ab87 mov    rcx,rbx
31ab8a mov    r8,rdx
31ab8d mov    rdx,QWORD PTR [rdx]
31ab90 call   0x31a70c
31ab95 jmp    0x31abbd
31ab97 lea    rcx,[rbx+0x8]
31ab9b call   0x31ac30
31aba0 lea    rdx,[rsp+0x30]
31aba5 mov    rcx,rbx
31aba8 call   0x2d796c
31abad mov    rdx,QWORD PTR [rbx+0x20]
31abb1 mov    r8,rax
31abb4 mov    rcx,QWORD PTR [rbx+0x18]
31abb8 call   0x2d2aa4
31abbd mov    rbx,QWORD PTR [rsp+0x38]
31abc2 add    rsp,0x20
31abc6 pop    rdi
31abc7 ret
