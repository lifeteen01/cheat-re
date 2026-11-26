30b6b3 cmp    BYTE PTR [rip+0xde92e],r15b        # 0x3e9fe8 ; CONFIG Bools.signpainter value(+0x48)
30b6ba je     0x30bb85
30b6c0 mov    rcx,QWORD PTR [rbp+0x1a0]
30b6c7 call   0x36a2f4
30b6cc mov    rcx,rax
30b6cf mov    r15,rax
30b6d2 call   0x2caf08
30b6d7 test   al,al
30b6d9 je     0x30bb82
30b6df mov    rcx,r15
30b6e2 call   0x2e5a54
30b6e7 mov    rcx,rax
30b6ea mov    rdx,rax
30b6ed call   0x2caf08
30b6f2 test   al,al
30b6f4 je     0x30bb82
30b6fa mov    rcx,rdx
30b6fd call   0x2d6354
30b702 lea    rdx,[rbp-0x8]
30b706 mov    QWORD PTR [rbp+0x15b8],rax
30b70d lea    rcx,[rbp+0x15a8]
30b714 mov    rbx,rax
30b717 call   0x2f325c ; STRING getter=0x2f325c PhotoFrame
30b71c mov    rcx,rax
30b71f call   0x2e9c54
30b724 movabs rsi,0xcbf29ce484222325
30b72e mov    rcx,rax
30b731 mov    rdx,rsi
30b734 call   0x2e5b4c
30b739 cmp    rbx,rax
30b73c jne    0x30b9ec
30b742 mov    rcx,r15
30b745 call   0x370508
30b74a mov    rcx,rax
30b74d mov    rdx,rax
30b750 call   0x2caf08
30b755 test   al,al
30b757 je     0x30b9ec
30b75d mov    rcx,rdx
30b760 call   0x37361c
30b765 mov    rcx,rax
30b768 mov    rdi,rax
30b76b call   0x2caf08
30b770 test   al,al
30b772 je     0x30b9ec
30b778 lea    rdx,[rbp+0x15b0]
30b77f lea    rcx,[rbp+0x15a8]
30b786 call   0x2f33dc ; STRING getter=0x2f33dc large
30b78b mov    rcx,rax
30b78e call   0x2d84dc
30b793 lea    rdx,[rbp+0x1f0]
30b79a mov    rcx,rdi
30b79d mov    rbx,rax
30b7a0 mov    esi,0x1
30b7a5 call   0x2d7e18
30b7aa mov    rcx,rax
30b7ad call   0x2cd7ec
30b7b2 mov    rcx,rax
30b7b5 mov    rdx,rbx
30b7b8 call   0x3ca960
30b7bd test   rax,rax
30b7c0 jne    0x30b80d
30b7c2 lea    rdx,[rbp+0x8]
30b7c6 lea    rcx,[rbp+0x15a8]
30b7cd call   0x2f3588 ; STRING getter=0x2f3588 landscape
30b7d2 mov    rcx,rax
30b7d5 call   0x2cdd44
30b7da lea    rdx,[rbp+0xd8]
30b7e1 mov    rcx,rdi
30b7e4 mov    rbx,rax
30b7e7 mov    esi,0x3
30b7ec call   0x2d7e18
30b7f1 mov    rcx,rax
30b7f4 call   0x2cd7ec
30b7f9 mov    rcx,rax
30b7fc mov    rdx,rbx
30b7ff call   0x3ca960
30b804 test   rax,rax
30b807 jne    0x30b80d
30b809 xor    bl,bl
30b80b jmp    0x30b816
30b80d mov    eax,esi
30b80f mov    bl,0x1
30b811 and    eax,r14d
30b814 je     0x30b825
30b816 and    esi,0xfffffffd
30b819 lea    rcx,[rbp+0xd8]
30b820 call   0x2cc4f4
30b825 and    esi,0xfffffffe
30b828 lea    rcx,[rbp+0x1f0]
30b82f mov    DWORD PTR [rbp-0x30],esi
30b832 call   0x2cc4f4
30b837 mov    al,bl
30b839 lea    rdx,[rbp+0x1e0]
30b840 neg    al
30b842 lea    rcx,[rbp+0x15a8]
30b849 sbb    esi,esi
30b84b and    esi,0xf0
30b851 neg    bl
30b853 sbb    r14d,r14d
30b856 and    r14d,0x140
30b85d call   0x2f38d8 ; STRING getter=0x2f38d8 portrait
30b862 mov    rcx,rax
30b865 call   0x2e9b8c
30b86a lea    rdx,[rbp+0xd8]
30b871 mov    rcx,rdi
30b874 mov    rbx,rax
30b877 call   0x2d7e18
30b87c mov    rcx,rax
30b87f call   0x2cd7ec
30b884 mov    rcx,rax
30b887 mov    rdx,rbx
30b88a call   0x3ca960
30b88f lea    rcx,[rbp+0xd8]
30b896 mov    rbx,rax
30b899 call   0x2cc4f4
30b89e test   rbx,rbx
30b8a1 je     0x30b8ad
30b8a3 mov    esi,0x180
30b8a8 lea    ebx,[rsi-0x40]
30b8ab jmp    0x30b8b0
30b8ad mov    ebx,r14d
30b8b0 mov    edx,0xff
30b8b5 lea    rcx,[rbp-0x70]
30b8b9 xor    r9d,r9d
30b8bc mov    DWORD PTR [rsp+0x20],edx
30b8c0 xor    r8d,r8d
30b8c3 call   0x2db318
30b8c8 movaps xmm2,xmm7
30b8cb lea    rcx,[rbp+0x2c0]
30b8d2 movaps xmm1,xmm13
30b8d6 movdqu xmm6,XMMWORD PTR [rax]
30b8da call   0x2cc340
30b8df mov    edx,esi
30b8e1 lea    rcx,[rbp+0x2f0]
30b8e8 mov    r14,rax
30b8eb call   0x2d9510
30b8f0 lea    rdx,[rbp+0x15b0]
30b8f7 mov    rsi,rax
30b8fa lea    rcx,[rbp+0x15a8]
30b901 call   0x2f3b44 ; STRING getter=0x2f3b44 x
30b906 mov    rcx,rax
30b909 call   0x2d8464
30b90e mov    edx,ebx
30b910 lea    rcx,[rbp+0x210]
30b917 mov    rdi,rax
30b91a call   0x2d9510
30b91f lea    rdx,[rbp+0x388]
30b926 mov    rbx,rax
30b929 lea    rcx,[rbp+0x15a8]
30b930 call   0x2f3a14 ; STRING getter=0x2f3a14 PhotoFrame must be 
30b935 mov    rcx,rax
30b938 call   0x320494
30b93d mov    rdx,rax
30b940 lea    rcx,[rbp-0x28]
30b944 mov    r8,rbx
30b947 call   0x2ea6dc
30b94c mov    rdx,rax
30b94f lea    rcx,[rbp+0x1f0]
30b956 mov    r8,rdi
30b959 call   0x2cad38
30b95e mov    rdx,rax
30b961 lea    rcx,[rbp+0xd8]
30b968 mov    r8,rsi
30b96b call   0x2cef40
30b970 mov    rdx,QWORD PTR [r13+0x10]
30b974 lea    rcx,[rsp+0x70]
30b979 mov    DWORD PTR [rsp+0x28],0x2
30b981 mov    r9,r14
30b984 mov    QWORD PTR [rsp+0x20],rcx
30b989 mov    r8,rax
30b98c mov    rcx,r13
30b98f movdqa XMMWORD PTR [rsp+0x70],xmm6
30b995 call   0x36135c
30b99a lea    rcx,[rbp+0xd8]
30b9a1 call   0x2cc4f4
30b9a6 lea    rcx,[rbp+0x1f0]
30b9ad call   0x2cc4f4
30b9b2 lea    rcx,[rbp-0x28]
30b9b6 call   0x2cc4f4
30b9bb lea    rcx,[rbp+0x210]
30b9c2 call   0x2cc4f4
30b9c7 lea    rcx,[rbp+0x2f0]
30b9ce call   0x2cc4f4
30b9d3 addss  xmm7,DWORD PTR [rip+0xfffffffffff3d4f9]        # 0x248ed4 ; f32=16
30b9db mov    rbx,QWORD PTR [rbp+0x15b8]
30b9e2 movabs rsi,0xcbf29ce484222325
30b9ec lea    rdx,[rbp+0x1e0]
30b9f3 lea    rcx,[rbp+0x15a8]
30b9fa call   0x2f3c38 ; STRING getter=0x2f3c38 NeonSign
30b9ff mov    rcx,rax
30ba02 call   0x2e9b8c
30ba07 mov    rcx,rax
30ba0a mov    rdx,rsi
30ba0d call   0x2e5b4c
30ba12 cmp    rbx,rax
30ba15 je     0x30ba46
30ba17 lea    rdx,[rbp+0x15a8]
30ba1e lea    rcx,[rbp+0x15a8]
30ba25 call   0x2f3d6c
30ba2a mov    rcx,rax
30ba2d call   0x2e3614
30ba32 mov    rcx,rax
30ba35 mov    rdx,rsi
30ba38 call   0x2e5b4c
30ba3d cmp    rbx,rax
30ba40 jne    0x30bb82
30ba46 mov    r14d,DWORD PTR [r15+0x388]
30ba4d lea    rcx,[rbp-0x70]
30ba51 mov    ebx,DWORD PTR [r15+0x38c]
30ba58 mov    eax,0xff
30ba5d mov    edx,eax
30ba5f mov    DWORD PTR [rsp+0x20],eax
30ba63 xor    r9d,r9d
30ba66 xor    r8d,r8d
30ba69 call   0x2db318
30ba6e movaps xmm2,xmm7
30ba71 lea    rcx,[rbp+0x15b8]
30ba78 movaps xmm1,xmm13
30ba7c movdqu xmm6,XMMWORD PTR [rax]
30ba80 call   0x2cc340
30ba85 mov    edx,ebx
30ba87 lea    rcx,[rbp+0x2f0]
30ba8e mov    r15,rax
30ba91 call   0x2d9510
30ba96 lea    rdx,[rbp+0x15b0]
30ba9d mov    rsi,rax
30baa0 lea    rcx,[rbp+0x15a8]
30baa7 call   0x2f3b44 ; STRING getter=0x2f3b44 x
30baac mov    rcx,rax
30baaf call   0x2d8464
30bab4 mov    edx,r14d
30bab7 lea    rcx,[rbp+0x210]
30babe mov    rdi,rax
30bac1 call   0x2d9510
30bac6 lea    rdx,[rbp+0x378]
30bacd mov    rbx,rax
30bad0 lea    rcx,[rbp+0x15a8]
30bad7 call   0x2f3ec4 ; STRING getter=0x2f3ec4 Sign must be 
30badc mov    rcx,rax
30badf call   0x2dd188
30bae4 mov    rdx,rax
30bae7 lea    rcx,[rbp-0x28]
30baeb mov    r8,rbx
30baee call   0x2ea6dc
30baf3 mov    rdx,rax
30baf6 lea    rcx,[rbp+0x1f0]
30bafd mov    r8,rdi
30bb00 call   0x2cad38
30bb05 mov    rdx,rax
30bb08 lea    rcx,[rbp+0xd8]
30bb0f mov    r8,rsi
30bb12 call   0x2cef40
30bb17 mov    rdx,QWORD PTR [r13+0x10]
30bb1b lea    rcx,[rsp+0x70]
30bb20 mov    DWORD PTR [rsp+0x28],0x2
30bb28 mov    r9,r15
30bb2b mov    QWORD PTR [rsp+0x20],rcx
30bb30 mov    r8,rax
30bb33 mov    rcx,r13
30bb36 movdqa XMMWORD PTR [rsp+0x70],xmm6
30bb3c call   0x36135c
30bb41 lea    rcx,[rbp+0xd8]
30bb48 call   0x2cc4f4
30bb4d lea    rcx,[rbp+0x1f0]
30bb54 call   0x2cc4f4
30bb59 lea    rcx,[rbp-0x28]
30bb5d call   0x2cc4f4
30bb62 lea    rcx,[rbp+0x210]
30bb69 call   0x2cc4f4
30bb6e lea    rcx,[rbp+0x2f0]
30bb75 call   0x2cc4f4
30bb7a addss  xmm7,DWORD PTR [rip+0xfffffffffff3d352]        # 0x248ed4 ; f32=16
30bb82 xor    r15d,r15d
30bb85 cmp    BYTE PTR [rip+0xe3ef5],r15b        # 0x3efa81
30bb8c je     0x30bc36
30bb92 cmp    DWORD PTR [rip+0xe3ee3],0x1        # 0x3efa7c
30bb99 jne    0x30bc36
30bb9f mov    eax,0xff
30bba4 lea    rcx,[rbp-0x70]
30bba8 mov    edx,eax
30bbaa mov    DWORD PTR [rsp+0x20],eax
30bbae xor    r9d,r9d
30bbb1 xor    r8d,r8d
30bbb4 call   0x2db318
30bbb9 movaps xmm2,xmm7
30bbbc lea    rcx,[rbp+0x15b0]
30bbc3 movaps xmm1,xmm13
30bbc7 movdqu xmm6,XMMWORD PTR [rax]
30bbcb call   0x2cc340
30bbd0 lea    rdx,[rbp+0x15b8]
30bbd7 mov    rbx,rax
30bbda lea    rcx,[rbp+0x15a8]
30bbe1 call   0x2f40d0
30bbe6 mov    rcx,rax
30bbe9 call   0x2e3614
30bbee mov    rdx,rax
30bbf1 lea    rcx,[rbp-0x28]
30bbf5 call   0x2cc2cc
30bbfa mov    rdx,QWORD PTR [r13+0x10]
30bbfe lea    rax,[rsp+0x70]
30bc03 mov    DWORD PTR [rsp+0x28],0x2
30bc0b lea    r8,[rbp-0x28]
30bc0f mov    r9,rbx
30bc12 mov    QWORD PTR [rsp+0x20],rax
30bc17 mov    rcx,r13
30bc1a movdqa XMMWORD PTR [rsp+0x70],xmm6
30bc20 call   0x36135c
30bc25 lea    rcx,[rbp-0x28]
30bc29 call   0x2cc4f4
30bc2e addss  xmm7,DWORD PTR [rip+0xfffffffffff3d29e]        # 0x248ed4 ; f32=16
30bc36 cmp    BYTE PTR [rip+0xe39c4],r15b        # 0x3ef601
30bc3d je     0x30bce7
30bc43 cmp    DWORD PTR [rip+0xe39b2],0x1        # 0x3ef5fc
30bc4a jne    0x30bce7
30bc50 mov    eax,0xff
30bc55 lea    rcx,[rbp-0x70]
30bc59 mov    edx,eax
30bc5b mov    DWORD PTR [rsp+0x20],eax
30bc5f xor    r9d,r9d
30bc62 xor    r8d,r8d
30bc65 call   0x2db318
30bc6a movaps xmm2,xmm7
30bc6d lea    rcx,[rbp+0x15b8]
30bc74 movaps xmm1,xmm13
30bc78 movdqu xmm6,XMMWORD PTR [rax]
30bc7c call   0x2cc340
30bc81 lea    rdx,[rbp+0x15b0]
30bc88 mov    rbx,rax
30bc8b lea    rcx,[rbp+0x15a8]
30bc92 call   0x2f413c ; STRING getter=0x2f413c LTW
30bc97 mov    rcx,rax
30bc9a call   0x32041c
30bc9f mov    rdx,rax
30bca2 lea    rcx,[rbp-0x28]
30bca6 call   0x2cc2cc
30bcab mov    rdx,QWORD PTR [r13+0x10]
30bcaf lea    rax,[rsp+0x70]
30bcb4 mov    DWORD PTR [rsp+0x28],0x2
30bcbc lea    r8,[rbp-0x28]
30bcc0 mov    r9,rbx
30bcc3 mov    QWORD PTR [rsp+0x20],rax
30bcc8 mov    rcx,r13
30bccb movdqa XMMWORD PTR [rsp+0x70],xmm6
30bcd1 call   0x36135c
30bcd6 lea    rcx,[rbp-0x28]
30bcda call   0x2cc4f4
30bcdf addss  xmm7,DWORD PTR [rip+0xfffffffffff3d1ed]        # 0x248ed4 ; f32=16
30bce7 cmp    BYTE PTR [rip+0xe38b3],r15b        # 0x3ef5a1
30bcee mov    r14d,0xff
30bcf4 je     0x30bda5
