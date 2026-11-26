31a70c rex push rbx
31a70e push   rbp
31a70f push   rsi
31a710 push   rdi
31a711 push   r12
31a713 push   r13
31a715 push   r14
31a717 push   r15
31a719 sub    rsp,0x48
31a71d mov    rdi,r8
31a720 mov    rbx,rdx
31a723 mov    r13,rcx
31a726 cmp    rdx,r8
31a729 je     0x31a7cd
31a72f mov    rsi,QWORD PTR [rcx+0x18]
31a733 lea    rdx,[rcx+0x8]
31a737 mov    rbp,QWORD PTR [rdx]
31a73a lea    rcx,[rsp+0x20]
31a73f mov    r8,rbx
31a742 call   0x2d4914
31a747 mov    r12,QWORD PTR [rbx+0x8]
31a74b mov    rbx,QWORD PTR [rsp+0x30]
31a750 lea    rcx,[rbx+0x10]
31a754 call   0x2cb3a4
31a759 mov    rdx,rax
31a75c mov    rcx,r13
31a75f call   0x31a9dc
31a764 mov    r14,rax
31a767 add    r14,r14
31a76a cmp    QWORD PTR [rsi+r14*8],rbx
31a76e mov    rax,QWORD PTR [rsi+r14*8+0x8]
31a773 sete   r15b
31a777 mov    QWORD PTR [rsp+0x98],rax
31a77f cmp    rbx,rax
31a782 jmp    0x31a796
31a784 mov    rax,QWORD PTR [rsp+0x30]
31a789 cmp    rax,rdi
31a78c je     0x31a7ba
31a78e cmp    rax,QWORD PTR [rsp+0x98]
31a796 lea    rcx,[rsp+0x20]
31a79b sete   bl
31a79e call   0x31944c
31a7a3 test   bl,bl
31a7a5 je     0x31a784
31a7a7 test   r15b,r15b
31a7aa je     0x31a7b3
31a7ac mov    QWORD PTR [rsi+r14*8],rbp
31a7b0 mov    r12,rbp
31a7b3 mov    QWORD PTR [rsi+r14*8+0x8],r12
31a7b8 jmp    0x31a82c
31a7ba test   r15b,r15b
31a7bd je     0x31a7c3
31a7bf mov    QWORD PTR [rsi+r14*8],rax
31a7c3 lea    rcx,[rsp+0x20]
31a7c8 call   0x2d4a9c
31a7cd mov    rax,rdi
31a7d0 add    rsp,0x48
31a7d4 pop    r15
31a7d6 pop    r14
31a7d8 pop    r13
31a7da pop    r12
31a7dc pop    rdi
31a7dd pop    rsi
31a7de pop    rbp
31a7df pop    rbx
31a7e0 ret
31a7e1 lea    rcx,[rbx+0x10]
31a7e5 call   0x2cb3a4
31a7ea mov    rdx,rax
31a7ed mov    rcx,r13
31a7f0 call   0x31a9dc
31a7f5 mov    r14,rax
31a7f8 add    r14,r14
31a7fb mov    r15,QWORD PTR [rsi+r14*8+0x8]
31a800 cmp    rbx,r15
31a803 jmp    0x31a812
31a805 mov    rax,QWORD PTR [rsp+0x30]
31a80a cmp    rax,rdi
31a80d je     0x31a7bf
31a80f cmp    rax,r15
31a812 lea    rcx,[rsp+0x20]
31a817 sete   bl
31a81a call   0x31944c
31a81f test   bl,bl
31a821 je     0x31a805
31a823 mov    QWORD PTR [rsi+r14*8],rbp
31a827 mov    QWORD PTR [rsi+r14*8+0x8],rbp
31a82c mov    rbx,QWORD PTR [rsp+0x30]
31a831 cmp    rbx,rdi
31a834 jne    0x31a7e1
31a836 jmp    0x31a7c3
