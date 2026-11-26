31aa90 mov    QWORD PTR [rsp+0x10],rbx
31aa95 push   rdi
31aa96 sub    rsp,0x20
31aa9a cmp    QWORD PTR [rcx+0x10],0x0
31aa9f mov    rbx,rcx
31aaa2 je     0x31aaed
31aaa4 call   0x2d7e10
31aaa9 shr    rax,0x3
31aaad cmp    rax,QWORD PTR [rbx+0x10]
31aab1 jbe    0x31aac7
31aab3 mov    rdx,QWORD PTR [rbx+0x8]
31aab7 mov    rcx,rbx
31aaba mov    r8,rdx
31aabd mov    rdx,QWORD PTR [rdx]
31aac0 call   0x31a4b4
31aac5 jmp    0x31aaed
31aac7 lea    rcx,[rbx+0x8]
31aacb call   0x31abc8
31aad0 lea    rdx,[rsp+0x30]
31aad5 mov    rcx,rbx
31aad8 call   0x2d796c
31aadd mov    rdx,QWORD PTR [rbx+0x20]
31aae1 mov    r8,rax
31aae4 mov    rcx,QWORD PTR [rbx+0x18]
31aae8 call   0x2d2aa4
31aaed mov    rbx,QWORD PTR [rsp+0x38]
31aaf2 add    rsp,0x20
31aaf6 pop    rdi
31aaf7 ret
