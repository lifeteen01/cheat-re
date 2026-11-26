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
30ae1d cmp    BYTE PTR [rip+0xdeae4],r15b        # 0x3e9908 ; CONFIG Bools.ShowTime value(+0x48)
30ae24 mov    r14d,0xe
30ae2a movsd  xmm6,QWORD PTR [rip+0xfffffffffff8832e]        # 0x293160
30ae32 movss  xmm8,DWORD PTR [rip+0xfffffffffff833a5]        # 0x28e1e0 ; f32=8
30ae3b movss  xmm15,DWORD PTR [rip+0xfffffffffff82cdc]        # 0x28db20 ; f32=20
30ae44 je     0x30b106
30ae4a movss  xmm0,DWORD PTR [rip+0xdb23a]        # 0x3e608c
30ae52 cvtps2pd xmm0,xmm0
30ae55 mulsd  xmm0,xmm6
30ae59 cvtpd2ps xmm0,xmm0
30ae5d call   0x314a68
30ae62 xorps  xmm1,xmm1
30ae65 lea    rcx,[rbp+0xa0]
30ae6c cvtss2sd xmm1,xmm0
30ae70 divsd  xmm1,xmm6
30ae74 call   0x2d955c
30ae79 xor    r8d,r8d
30ae7c lea    rcx,[rbp+0xa0]
30ae83 mov    dl,0x2e
30ae85 call   0x2d892c
30ae8a cmp    rax,0xffffffffffffffff
30ae8e je     0x30aec5
30ae90 lea    r9,[rax+0x3]
30ae94 xor    r8d,r8d
30ae97 lea    rdx,[rbp+0xd8]
30ae9e lea    rcx,[rbp+0xa0]
30aea5 call   0x2d9498
30aeaa mov    rdx,rax
30aead lea    rcx,[rbp+0xa0]
30aeb4 call   0x2d4be4
30aeb9 lea    rcx,[rbp+0xd8]
30aec0 call   0x2cc4f4
30aec5 mov    esi,0xff
30aeca lea    rcx,[rsp+0x70]
30aecf mov    r8d,esi
30aed2 mov    DWORD PTR [rsp+0x20],esi
30aed6 xor    r9d,r9d
30aed9 xor    edx,edx
30aedb call   0x2db318
30aee0 lea    rdx,[rbp+0x15a8]
30aee7 lea    rcx,[rbp+0x15a8]
30aeee call   0x2f11f4 ; STRING getter=0x2f11f4 Day : 
30aef3 mov    rcx,rax
30aef6 call   0x2cdcf4
30aefb mov    rdx,rax
30aefe lea    rcx,[rbp+0x80]
30af05 call   0x2cc2cc
30af0a movss  xmm0,DWORD PTR [rip+0xdb17a]        # 0x3e608c
30af12 movss  xmm7,DWORD PTR [rip+0xfffffffffff8827a]        # 0x293194 ; f32=7
30af1a comiss xmm7,xmm0
30af1d jb     0x30af6d
30af1f xor    r9d,r9d
30af22 mov    DWORD PTR [rsp+0x20],esi
30af26 xor    r8d,r8d
30af29 lea    rcx,[rsp+0x70]
30af2e mov    edx,esi
30af30 call   0x2db318
30af35 lea    rdx,[rbp+0x1e0]
30af3c lea    rcx,[rbp+0x15a8]
30af43 movdqu xmm6,XMMWORD PTR [rax]
30af47 call   0x2f1544 ; STRING getter=0x2f1544 Night : 
30af4c mov    rcx,rax
30af4f call   0x2e9b8c
30af54 mov    rdx,rax
30af57 lea    rcx,[rbp+0x80]
30af5e call   0x2d4c68
30af63 movss  xmm0,DWORD PTR [rip+0xdb121]        # 0x3e608c
30af6b jmp    0x30af72
30af6d movups xmm6,XMMWORD PTR [rsp+0x70]
30af72 comiss xmm0,xmm7
30af75 mov    ebx,0x69
30af7a mov    edi,0xf9
30af7f jbe    0x30afd0
30af81 comiss xmm8,xmm0
30af85 jb     0x30afd0
30af87 mov    r9d,r14d
30af8a mov    DWORD PTR [rsp+0x20],esi
30af8e mov    r8d,ebx
30af91 lea    rcx,[rsp+0x70]
30af96 mov    edx,edi
30af98 call   0x2db318
30af9d lea    rdx,[rbp-0x8]
30afa1 lea    rcx,[rbp+0x15a8]
30afa8 movdqu xmm6,XMMWORD PTR [rax]
30afac call   0x2f18b8 ; STRING getter=0x2f18b8 Morning : 
30afb1 mov    rcx,rax
30afb4 call   0x2e9c54
30afb9 mov    rdx,rax
30afbc lea    rcx,[rbp+0x80]
30afc3 call   0x2d4c68
30afc8 movss  xmm0,DWORD PTR [rip+0xdb0bc]        # 0x3e608c
30afd0 comiss xmm0,DWORD PTR [rip+0xfffffffffff881ed]        # 0x2931c4 ; f32=19
30afd7 jbe    0x30b02b
30afd9 comiss xmm15,xmm0
30afdd jbe    0x30b02b
30afdf mov    r9d,r14d
30afe2 mov    DWORD PTR [rsp+0x20],esi
30afe6 mov    r8d,ebx
30afe9 lea    rcx,[rsp+0x70]
30afee mov    edx,edi
30aff0 call   0x2db318
30aff5 lea    rdx,[rbp+0x378]
30affc lea    rcx,[rbp+0x15a8]
30b003 movdqu xmm6,XMMWORD PTR [rax]
30b007 call   0x2f1b6c ; STRING getter=0x2f1b6c Afternoon : 
30b00c mov    rcx,rax
30b00f call   0x2d85f4
30b014 mov    rdx,rax
30b017 lea    rcx,[rbp+0x80]
30b01e call   0x2d4c68
30b023 movss  xmm0,DWORD PTR [rip+0xdb061]        # 0x3e608c
30b02b comiss xmm0,xmm15
30b02f jbe    0x30b075
30b031 xor    r9d,r9d
30b034 mov    DWORD PTR [rsp+0x20],esi
30b038 xor    r8d,r8d
30b03b lea    rcx,[rsp+0x70]
30b040 mov    edx,esi
30b042 call   0x2db318
30b047 lea    rdx,[rbp+0x1e0]
30b04e lea    rcx,[rbp+0x15a8]
30b055 movdqu xmm6,XMMWORD PTR [rax]
30b059 call   0x2f1d08 ; STRING getter=0x2f1d08 Night : 
30b05e mov    rcx,rax
30b061 call   0x2e9b8c
30b066 mov    rdx,rax
30b069 lea    rcx,[rbp+0x80]
30b070 call   0x2d4c68
30b075 movss  xmm8,DWORD PTR [rip+0xfffffffffff82a9e]        # 0x28db1c ; f32=10
30b07e lea    rcx,[rbp+0x15a8]
