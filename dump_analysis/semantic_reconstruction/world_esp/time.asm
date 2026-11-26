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
30b085 movss  xmm1,DWORD PTR [rip+0xfffffffffff82ab7]        # 0x28db44 ; f32=100
30b08d movaps xmm2,xmm8
30b091 call   0x2cc340
30b096 lea    r8,[rbp+0xa0]
30b09d mov    rbx,rax
30b0a0 lea    rdx,[rbp+0x80]
30b0a7 lea    rcx,[rbp+0xd8]
30b0ae call   0x2ea650
30b0b3 mov    rdx,QWORD PTR [r13+0x10]
30b0b7 lea    rcx,[rsp+0x70]
30b0bc mov    r14d,0x2
30b0c2 movdqa XMMWORD PTR [rsp+0x70],xmm6
30b0c8 mov    DWORD PTR [rsp+0x28],r14d
30b0cd mov    r9,rbx
30b0d0 mov    QWORD PTR [rsp+0x20],rcx
30b0d5 mov    r8,rax
30b0d8 mov    rcx,r13
30b0db call   0x36135c
30b0e0 lea    rcx,[rbp+0xd8]
30b0e7 call   0x2cc4f4
30b0ec lea    rcx,[rbp+0x80]
30b0f3 call   0x2cc4f4
30b0f8 lea    rcx,[rbp+0xa0]
30b0ff call   0x2cc4f4
30b104 jmp    0x30b11a
30b106 movss  xmm8,DWORD PTR [rip+0xfffffffffff82a0d]        # 0x28db1c ; f32=10
30b10f mov    esi,0xff
30b114 mov    r14d,0x2
30b11a movaps xmm7,xmm10
30b11e addss  xmm7,xmm8
30b123 call   0x2e6844
30b128 movss  xmm1,DWORD PTR [rip+0xfffffffffff829fc]        # 0x28db2c ; f32=50
30b130 movss  xmm2,DWORD PTR [rip+0xfffffffffff88070]        # 0x2931a8 ; f32=12
30b138 test   al,al
30b13a jne    0x30c25c
