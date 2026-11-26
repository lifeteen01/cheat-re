31a4b4 rex push rbx
31a4b6 push   rbp
31a4b7 push   rsi
31a4b8 push   rdi
31a4b9 push   r12
31a4bb push   r13
31a4bd push   r14
31a4bf push   r15
31a4c1 sub    rsp,0x48
31a4c5 mov    rdi,r8
31a4c8 mov    rbx,rdx
31a4cb mov    r13,rcx
31a4ce cmp    rdx,r8
31a4d1 je     0x31a575
31a4d7 mov    rsi,QWORD PTR [rcx+0x18]
31a4db lea    rdx,[rcx+0x8]
31a4df mov    rbp,QWORD PTR [rdx]
31a4e2 lea    rcx,[rsp+0x20]
31a4e7 mov    r8,rbx
31a4ea call   0x2d4914
31a4ef mov    r12,QWORD PTR [rbx+0x8]
31a4f3 mov    rbx,QWORD PTR [rsp+0x30]
31a4f8 lea    rcx,[rbx+0x10]
31a4fc call   0x2cb3a4
31a501 mov    rdx,rax
31a504 mov    rcx,r13
31a507 call   0x2d7df8
31a50c mov    r14,rax
31a50f add    r14,r14
31a512 cmp    QWORD PTR [rsi+r14*8],rbx
31a516 mov    rax,QWORD PTR [rsi+r14*8+0x8]
31a51b sete   r15b
31a51f mov    QWORD PTR [rsp+0x98],rax
31a527 cmp    rbx,rax
31a52a jmp    0x31a53e
31a52c mov    rax,QWORD PTR [rsp+0x30]
31a531 cmp    rax,rdi
31a534 je     0x31a562
31a536 cmp    rax,QWORD PTR [rsp+0x98]
31a53e lea    rcx,[rsp+0x20]
31a543 sete   bl
31a546 call   0x3193cc
31a54b test   bl,bl
31a54d je     0x31a52c
31a54f test   r15b,r15b
31a552 je     0x31a55b
31a554 mov    QWORD PTR [rsi+r14*8],rbp
31a558 mov    r12,rbp
31a55b mov    QWORD PTR [rsi+r14*8+0x8],r12
31a560 jmp    0x31a5d4
31a562 test   r15b,r15b
31a565 je     0x31a56b
31a567 mov    QWORD PTR [rsi+r14*8],rax
31a56b lea    rcx,[rsp+0x20]
31a570 call   0x2d4a9c
31a575 mov    rax,rdi
31a578 add    rsp,0x48
31a57c pop    r15
31a57e pop    r14
31a580 pop    r13
31a582 pop    r12
31a584 pop    rdi
31a585 pop    rsi
31a586 pop    rbp
31a587 pop    rbx
31a588 ret
31a589 lea    rcx,[rbx+0x10]
31a58d call   0x2cb3a4
31a592 mov    rdx,rax
31a595 mov    rcx,r13
31a598 call   0x2d7df8
31a59d mov    r14,rax
31a5a0 add    r14,r14
31a5a3 mov    r15,QWORD PTR [rsi+r14*8+0x8]
31a5a8 cmp    rbx,r15
31a5ab jmp    0x31a5ba
31a5ad mov    rax,QWORD PTR [rsp+0x30]
31a5b2 cmp    rax,rdi
31a5b5 je     0x31a567
31a5b7 cmp    rax,r15
31a5ba lea    rcx,[rsp+0x20]
31a5bf sete   bl
31a5c2 call   0x3193cc
31a5c7 test   bl,bl
31a5c9 je     0x31a5ad
31a5cb mov    QWORD PTR [rsi+r14*8],rbp
31a5cf mov    QWORD PTR [rsi+r14*8+0x8],rbp
31a5d4 mov    rbx,QWORD PTR [rsp+0x30]
31a5d9 cmp    rbx,rdi
31a5dc jne    0x31a589
31a5de jmp    0x31a56b
