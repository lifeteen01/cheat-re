30ab62 cmp    BYTE PTR [rip+0xdf15f],r15b        # 0x3e9cc8 ; CONFIG Bools.tracers value(+0x48)
30ab69 je     0x30ae1d
30ab6f lea    rsi,[rip+0xdb49a]        # 0x3e6010
30ab76 mov    rcx,rsi
30ab79 call   0x320714
30ab7e test   al,al
30ab80 jne    0x30ae1d
30ab86 call   0x31581c
30ab8b lea    rdx,[rbp+0x15b8]
30ab92 movss  DWORD PTR [rbp+0x15a8],xmm0
30ab9a mov    rcx,rsi
30ab9d call   0x31a958
30aba2 lea    rdx,[rbp+0x78]
30aba6 mov    rcx,rsi
30aba9 call   0x2d86b8
30abae mov    rdx,rax
30abb1 lea    rcx,[rbp+0x15b8]
30abb8 call   0x2cc534
30abbd test   al,al
30abbf jne    0x30ae1d
30abc5 movss  xmm8,DWORD PTR [rip+0xfffffffffff8852a]        # 0x2930f8 ; f32=1.25
30abce lea    rcx,[rbp+0x15b8]
30abd5 call   0x2d4da0
30abda lea    rdx,[rbp+0x2c0]
30abe1 lea    r14,[rax+0x8]
30abe5 mov    rcx,r14
30abe8 call   0x2d87b0
30abed lea    rdx,[rbp+0x15a8]
30abf4 lea    rcx,[rbp+0x15b0]
30abfb mov    rdi,QWORD PTR [rax]
30abfe call   0x2d4060
30ac03 lea    rdx,[rbp+0x430]
30ac0a mov    rcx,r14
30ac0d movss  xmm6,DWORD PTR [rax]
30ac11 call   0x2d87b0
30ac16 lea    rdx,[rbp+0x538]
30ac1d mov    rcx,r14
30ac20 mov    rbx,QWORD PTR [rax]
30ac23 call   0x2d7d90
30ac28 movd   r9d,xmm6
30ac2d lea    rcx,[rbp+0x540]
30ac34 mov    r8,rbx
30ac37 mov    rdx,QWORD PTR [rax]
30ac3a call   0x2ee4e8
30ac3f mov    r9,rdi
30ac42 lea    rdx,[rbp+0x548]
30ac49 mov    rcx,r14
30ac4c mov    r8,QWORD PTR [rax]
30ac4f call   0x320760
30ac54 mov    rcx,r14
30ac57 mov    r15d,0x1
30ac5d call   0x320f58
30ac62 cmp    rax,r15
30ac65 jbe    0x30adbd
30ac6b lea    rdx,[r15-0x1]
30ac6f mov    rcx,r14
30ac72 call   0x2ef7bc
30ac77 mov    rdx,r15
30ac7a mov    rcx,r14
30ac7d mov    rbx,rax
30ac80 call   0x2ef7bc
30ac85 lea    rcx,[rbp+0xd0]
30ac8c mov    rdi,rax
30ac8f call   0x2cb3a4
30ac94 lea    rcx,[rbp+0xc8]
30ac9b call   0x2cb3a4
30aca0 mov    ecx,DWORD PTR [rbx+0x8]
30aca3 lea    r9,[rip+0xcc5fe]        # 0x3d72a8
30acaa movsd  xmm0,QWORD PTR [rbx]
30acae lea    r8,[rbp+0xd0]
30acb5 mov    DWORD PTR [rbp-0x78],ecx
30acb8 lea    rdx,[rbp-0x80]
30acbc mov    rcx,r12
30acbf movsd  QWORD PTR [rbp-0x80],xmm0
30acc4 call   0x36cd20
30acc9 test   al,al
30accb je     0x30ada2
30acd1 movsd  xmm0,QWORD PTR [rdi]
30acd5 lea    r9,[rip+0xcc5cc]        # 0x3d72a8
30acdc mov    eax,DWORD PTR [rdi+0x8]
30acdf lea    r8,[rbp+0xc8]
30ace6 lea    rdx,[rbp+0x50]
30acea movsd  QWORD PTR [rbp+0x50],xmm0
30acef mov    rcx,r12
30acf2 mov    DWORD PTR [rbp+0x58],eax
30acf5 call   0x36cd20
30acfa test   al,al
30acfc je     0x30ada2
30ad02 movss  xmm7,DWORD PTR [rip+0xe31ce]        # 0x3eded8 ; CONFIG F.GlowSmoothness value(+0x48)
30ad0a lea    rcx,[rip+0xdfa67]        # 0x3ea778 ; CONFIG C.GlowColor value(+0x48)
30ad11 call   0x2ef80c
30ad16 lea    rcx,[rip+0xe3033]        # 0x3edd50
30ad1d mov    edi,eax
30ad1f call   0x2ef7e0
30ad24 lea    rcx,[rip+0xdfaad]        # 0x3ea7d8 ; CONFIG C.TracerColor value(+0x48)
30ad2b movaps xmm6,xmm0
30ad2e call   0x2ef80c
30ad33 movss  xmm2,DWORD PTR [rbp+0xcc]
30ad3b lea    rcx,[rbp+0x518]
30ad42 movss  xmm1,DWORD PTR [rbp+0xc8]
30ad4a mov    esi,eax
30ad4c call   0x2cc340
30ad51 movss  xmm2,DWORD PTR [rbp+0xd4]
30ad59 lea    rcx,[rbp+0x520]
30ad60 movss  xmm1,DWORD PTR [rbp+0xd0]
30ad68 mov    rbx,rax
30ad6b call   0x2cc340
30ad70 movss  DWORD PTR [rsp+0x48],xmm7
30ad76 mov    rdx,rax
30ad79 mov    DWORD PTR [rsp+0x40],edi
30ad7d mov    r9d,esi
30ad80 movss  DWORD PTR [rsp+0x38],xmm6
30ad86 mov    r8,rbx
30ad89 mov    BYTE PTR [rsp+0x30],0x1
30ad8e mov    rcx,r13
30ad91 mov    BYTE PTR [rsp+0x28],0x1
30ad96 movss  DWORD PTR [rsp+0x20],xmm8
30ad9d call   0x35c30c
30ada2 mov    rcx,r14
30ada5 inc    r15
30ada8 call   0x320f58
30adad cmp    r15,rax
30adb0 jb     0x30ac6b
30adb6 lea    rsi,[rip+0xdb253]        # 0x3e6010
30adbd mov    rcx,r14
30adc0 call   0x2d86a0
30adc5 xor    r15d,r15d
30adc8 test   al,al
30adca je     0x30adee
30adcc mov    r8,QWORD PTR [rbp+0x15b8]
30add3 lea    rdx,[rbp+0x530]
30adda mov    rcx,rsi
30addd call   0x2edaf0
30ade2 mov    rcx,QWORD PTR [rax]
30ade5 mov    QWORD PTR [rbp+0x15b8],rcx
30adec jmp    0x30adfa
30adee lea    rcx,[rbp+0x15b8]
30adf5 call   0x2d4e00
30adfa lea    rdx,[rbp+0x78]
30adfe mov    rcx,rsi
30ae01 call   0x2d86b8
30ae06 mov    rdx,rax
30ae09 lea    rcx,[rbp+0x15b8]
30ae10 call   0x2cc534
30ae15 test   al,al
30ae17 je     0x30abce
