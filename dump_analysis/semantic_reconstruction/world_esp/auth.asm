30bcfa cmp    DWORD PTR [rip+0xe3897],r15d        # 0x3ef598 ; CONFIG K.AutoAuthVirtual value(+0x48)
30bd01 je     0x30bda5
30bd07 cmp    DWORD PTR [rip+0xe388e],0x1        # 0x3ef59c
30bd0e jne    0x30bda5
30bd14 xor    r9d,r9d
30bd17 mov    DWORD PTR [rsp+0x20],r14d
30bd1c xor    r8d,r8d
30bd1f lea    rcx,[rbp-0x70]
30bd23 mov    edx,r14d
30bd26 call   0x2db318
30bd2b movaps xmm2,xmm7
30bd2e lea    rcx,[rbp+0x15b0]
30bd35 movaps xmm1,xmm13
30bd39 movdqu xmm6,XMMWORD PTR [rax]
30bd3d call   0x2cc340
30bd42 lea    rdx,[rbp+0x8]
30bd46 mov    rbx,rax
30bd49 lea    rcx,[rbp+0x15a8]
30bd50 call   0x2f4190 ; STRING getter=0x2f4190 Auto Auth
30bd55 mov    rcx,rax
30bd58 call   0x2cdd44
30bd5d mov    rdx,rax
30bd60 lea    rcx,[rbp-0x28]
30bd64 call   0x2cc2cc
30bd69 mov    rdx,QWORD PTR [r13+0x10]
30bd6d lea    rax,[rsp+0x70]
30bd72 mov    DWORD PTR [rsp+0x28],0x2
30bd7a lea    r8,[rbp-0x28]
30bd7e mov    r9,rbx
30bd81 mov    QWORD PTR [rsp+0x20],rax
30bd86 mov    rcx,r13
30bd89 movdqa XMMWORD PTR [rsp+0x70],xmm6
30bd8f call   0x36135c
30bd94 lea    rcx,[rbp-0x28]
30bd98 call   0x2cc4f4
30bd9d addss  xmm7,DWORD PTR [rip+0xfffffffffff3d12f]        # 0x248ed4 ; f32=16
30bda5 cmp    BYTE PTR [rip+0xcc4f5],r15b        # 0x3d82a1
30bdac lea    rdi,[r13+0x10]
30bdb0 je     0x30be59
30bdb6 cmp    DWORD PTR [rip+0xcc4df],0x1        # 0x3d829c
30bdbd jne    0x30be59
30bdc3 xor    r9d,r9d
30bdc6 mov    DWORD PTR [rsp+0x20],r14d
30bdcb xor    r8d,r8d
30bdce lea    rcx,[rbp-0x70]
30bdd2 mov    edx,r14d
30bdd5 call   0x2db318
30bdda movaps xmm2,xmm7
30bddd lea    rcx,[rbp+0x15b0]
30bde4 movaps xmm1,xmm13
30bde8 movdqu xmm6,XMMWORD PTR [rax]
30bdec call   0x2cc340
30bdf1 lea    rdx,[rbp-0x50]
30bdf5 mov    rbx,rax
30bdf8 lea    rcx,[rbp+0x15a8]
30bdff call   0x2f43c8 ; STRING getter=0x2f43c8 Interactive
30be04 mov    rcx,rax
30be07 call   0x2cde34
30be0c mov    rdx,rax
30be0f lea    rcx,[rbp-0x28]
30be13 call   0x2cc2cc
30be18 mov    rdx,QWORD PTR [rdi]
30be1b lea    rax,[rsp+0x70]
30be20 mov    DWORD PTR [rsp+0x28],0x2
30be28 lea    r8,[rbp-0x28]
30be2c mov    r9,rbx
30be2f mov    QWORD PTR [rsp+0x20],rax
30be34 mov    rcx,r13
30be37 movdqa XMMWORD PTR [rsp+0x70],xmm6
30be3d call   0x36135c
30be42 lea    rcx,[rbp-0x28]
30be46 call   0x2cc4f4
30be4b addss  xmm7,DWORD PTR [rip+0xfffffffffff3d081]        # 0x248ed4 ; f32=16
30be53 lea    rsi,[r13+0x10]
30be57 jmp    0x30be5c
30be59 mov    rsi,rdi
30be5c cmp    BYTE PTR [rip+0xd9f81],r15b        # 0x3e5de4
30be63 mov    al,BYTE PTR [rip+0xdd72f]        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
30be69 je     0x30bec3
30be6b test   al,al
30be6d je     0x30bec0
30be6f lea    rcx,[rip+0xfffffffffff0c9f2]        # 0x218868
30be76 call   0x2cd7ec
30be7b lea    rdx,[rbp+0x15a8]
30be82 mov    rbx,rax
30be85 lea    rcx,[rbp+0x15a8]
30be8c call   0x2f4470
30be91 mov    rcx,rax
30be94 call   0x2e3614
30be99 mov    rdx,rax
30be9c lea    rcx,[rbp+0xd8]
30bea3 call   0x2cc2cc
30bea8 mov    rdx,rax
30beab lea    rcx,[rbp-0x28]
30beaf mov    r8,rbx
30beb2 call   0x2cad38
30beb7 lea    rcx,[rbp+0xd8]
30bebe jmp    0x30bf2c
30bec0 mov    rdi,rsi
30bec3 test   al,al
30bec5 je     0x30bf9a
30becb mov    edx,DWORD PTR [rip+0xd9f17]        # 0x3e5de8
30bed1 lea    rcx,[rbp+0x1f0]
30bed8 call   0x2d9510
30bedd lea    rdx,[rbp+0x388]
30bee4 mov    rbx,rax
30bee7 lea    rcx,[rbp+0x15a8]
30beee call   0x2f44f0 ; STRING getter=0x2f44f0 Failed Attempts : 
30bef3 mov    rcx,rax
30bef6 call   0x2cdd94
30befb mov    rdx,rax
30befe lea    rcx,[rbp+0xd8]
30bf05 call   0x2cc2cc
30bf0a mov    rdx,rax
30bf0d lea    rcx,[rbp-0x28]
30bf11 mov    r8,rbx
30bf14 call   0x2cef40
30bf19 lea    rcx,[rbp+0xd8]
30bf20 call   0x2cc4f4
30bf25 lea    rcx,[rbp+0x1f0]
30bf2c call   0x2cc4f4
30bf31 xor    r9d,r9d
30bf34 mov    DWORD PTR [rsp+0x20],r14d
30bf39 xor    r8d,r8d
30bf3c lea    rcx,[rbp-0x70]
30bf40 mov    edx,r14d
30bf43 call   0x2db318
30bf48 movaps xmm2,xmm7
30bf4b lea    rcx,[rbp+0x15a8]
30bf52 movaps xmm1,xmm13
30bf56 movdqu xmm0,XMMWORD PTR [rax]
30bf5a movdqa XMMWORD PTR [rsp+0x70],xmm0
30bf60 call   0x2cc340
30bf65 mov    rdx,QWORD PTR [rdi]
30bf68 lea    r8,[rbp-0x28]
30bf6c mov    r9,rax
30bf6f mov    DWORD PTR [rsp+0x28],0x2
30bf77 lea    rax,[rsp+0x70]
30bf7c mov    rcx,r13
30bf7f mov    QWORD PTR [rsp+0x20],rax
30bf84 call   0x36135c
30bf89 addss  xmm7,DWORD PTR [rip+0xfffffffffff3cf43]        # 0x248ed4 ; f32=16
30bf91 lea    rcx,[rbp-0x28]
30bf95 call   0x2cc4f4
30bf9a cmp    BYTE PTR [rip+0xe38a0],r15b        # 0x3ef841
30bfa1 je     0x30c047
30bfa7 cmp    BYTE PTR [rip+0xe3ad3],r15b        # 0x3efa81
30bfae je     0x30c047
30bfb4 xor    r9d,r9d
30bfb7 mov    DWORD PTR [rsp+0x20],r14d
30bfbc xor    r8d,r8d
30bfbf lea    rcx,[rbp-0x70]
30bfc3 mov    edx,r14d
30bfc6 call   0x2db318
30bfcb movaps xmm2,xmm7
30bfce lea    rcx,[rbp+0x15b0]
30bfd5 movaps xmm1,xmm13
30bfd9 movdqu xmm6,XMMWORD PTR [rax]
30bfdd call   0x2cc340
30bfe2 lea    rdx,[rbp+0x388]
30bfe9 mov    rbx,rax
30bfec lea    rcx,[rbp+0x15a8]
30bff3 call   0x2f45dc ; STRING getter=0x2f45dc Noclip  Collision
30bff8 mov    rcx,rax
30bffb call   0x2e9bdc
30c000 mov    rdx,rax
30c003 lea    rcx,[rbp-0x28]
30c007 call   0x2cc2cc
30c00c mov    rdx,QWORD PTR [rsi]
30c00f lea    rax,[rsp+0x70]
30c014 mov    DWORD PTR [rsp+0x28],0x2
30c01c lea    r8,[rbp-0x28]
30c020 mov    r9,rbx
30c023 mov    QWORD PTR [rsp+0x20],rax
30c028 mov    rcx,r13
30c02b movdqa XMMWORD PTR [rsp+0x70],xmm6
30c031 call   0x36135c
30c036 lea    rcx,[rbp-0x28]
30c03a call   0x2cc4f4
30c03f addss  xmm7,DWORD PTR [rip+0xfffffffffff3ce8d]        # 0x248ed4 ; f32=16
30c047 cmp    BYTE PTR [rip+0xe3a93],r15b        # 0x3efae1
30c04e movaps xmm8,xmm7
30c052 je     0x30c104
30c058 cmp    DWORD PTR [rip+0xe3a7d],0x1        # 0x3efadc
30c05f jne    0x30c104
30c065 xor    r9d,r9d
30c068 mov    DWORD PTR [rsp+0x20],r14d
30c06d xor    r8d,r8d
30c070 lea    rcx,[rbp-0x70]
30c074 mov    edx,r14d
30c077 call   0x2db318
30c07c movaps xmm2,xmm7
30c07f lea    rcx,[rbp+0x15b8]
30c086 movaps xmm1,xmm13
30c08a movdqu xmm6,XMMWORD PTR [rax]
30c08e call   0x2cc340
30c093 lea    rdx,[rbp+0x15b0]
30c09a mov    rbx,rax
30c09d lea    rcx,[rbp+0x15a8]
30c0a4 call   0x2f4670 ; STRING getter=0x2f4670 Spider
30c0a9 mov    rcx,rax
30c0ac call   0x2cdcf4
30c0b1 mov    rdx,rax
30c0b4 lea    rcx,[rbp-0x28]
30c0b8 call   0x2cc2cc
30c0bd mov    rdx,QWORD PTR [rsi]
30c0c0 lea    rax,[rsp+0x70]
30c0c5 mov    DWORD PTR [rsp+0x28],0x2
30c0cd lea    r8,[rbp-0x28]
30c0d1 mov    r9,rbx
30c0d4 mov    QWORD PTR [rsp+0x20],rax
30c0d9 mov    rcx,r13
30c0dc movdqa XMMWORD PTR [rsp+0x70],xmm6
30c0e2 call   0x36135c
30c0e7 lea    rcx,[rbp-0x28]
30c0eb call   0x2cc4f4
30c0f0 movss  xmm7,DWORD PTR [rip+0xfffffffffff3cddc]        # 0x248ed4 ; f32=16
30c0f8 addss  xmm7,xmm9
30c0fd addss  xmm7,xmm8
30c102 jmp    0x30c108
30c104 movaps xmm7,xmm8
30c108 cmp    BYTE PTR [rip+0xd9d62],r15b        # 0x3e5e71
30c10f je     0x30c1a6
30c115 xor    r9d,r9d
30c118 mov    DWORD PTR [rsp+0x20],r14d
30c11d xor    r8d,r8d
30c120 lea    rcx,[rbp-0x70]
30c124 mov    edx,r14d
30c127 call   0x2db318
30c12c movaps xmm2,xmm7
30c12f lea    rcx,[rbp+0x15b0]
30c136 movaps xmm1,xmm13
30c13a movdqu xmm6,XMMWORD PTR [rax]
30c13e call   0x2cc340
30c143 lea    rdx,[rbp+0x8]
30c147 mov    rbx,rax
30c14a lea    rcx,[rbp+0x15a8]
30c151 call   0x2f46fc ; STRING getter=0x2f46fc Debugging
30c156 mov    rcx,rax
30c159 call   0x2cdd44
30c15e mov    rdx,rax
30c161 lea    rcx,[rbp-0x28]
30c165 call   0x2cc2cc
30c16a mov    rdx,QWORD PTR [r13+0x10]
30c16e lea    rax,[rsp+0x70]
30c173 mov    DWORD PTR [rsp+0x28],0x2
30c17b lea    r8,[rbp-0x28]
30c17f mov    r9,rbx
30c182 mov    QWORD PTR [rsp+0x20],rax
30c187 mov    rcx,r13
30c18a movdqa XMMWORD PTR [rsp+0x70],xmm6
30c190 call   0x36135c
30c195 lea    rcx,[rbp-0x28]
30c199 call   0x2cc4f4
30c19e addss  xmm7,DWORD PTR [rip+0xfffffffffff3cd2e]        # 0x248ed4 ; f32=16
30c1a6 cmp    BYTE PTR [rip+0xe3394],r15b        # 0x3ef541
30c1ad je     0x30c253
30c1b3 cmp    DWORD PTR [rip+0xe3382],0x1        # 0x3ef53c
30c1ba jne    0x30c253
30c1c0 xor    r9d,r9d
30c1c3 mov    DWORD PTR [rsp+0x20],r14d
30c1c8 xor    r8d,r8d
30c1cb lea    rcx,[rbp-0x70]
30c1cf mov    edx,r14d
30c1d2 call   0x2db318
30c1d7 movaps xmm2,xmm7
30c1da lea    rcx,[rbp+0x15b0]
30c1e1 movaps xmm1,xmm13
30c1e5 movdqu xmm6,XMMWORD PTR [rax]
30c1e9 call   0x2cc340
30c1ee lea    rdx,[rbp+0x388]
30c1f5 mov    rbx,rax
30c1f8 lea    rcx,[rbp+0x15a8]
30c1ff call   0x2f47a4 ; STRING getter=0x2f47a4 Resetting Crafting
30c204 mov    rcx,rax
30c207 call   0x2cdd94
30c20c mov    rdx,rax
30c20f lea    rcx,[rbp-0x28]
30c213 call   0x2cc2cc
30c218 mov    rdx,QWORD PTR [rsi]
30c21b lea    rax,[rsp+0x70]
30c220 mov    DWORD PTR [rsp+0x28],0x2
30c228 lea    r8,[rbp-0x28]
30c22c mov    r9,rbx
30c22f mov    QWORD PTR [rsp+0x20],rax
30c234 mov    rcx,r13
30c237 movdqa XMMWORD PTR [rsp+0x70],xmm6
30c23d call   0x36135c
30c242 lea    rcx,[rbp-0x28]
30c246 call   0x2cc4f4
30c24b addss  xmm7,DWORD PTR [rip+0xfffffffffff3cc81]        # 0x248ed4 ; f32=16
30c253 movss  xmm8,DWORD PTR [rip+0xfffffffffff818c0]        # 0x28db1c ; f32=10
