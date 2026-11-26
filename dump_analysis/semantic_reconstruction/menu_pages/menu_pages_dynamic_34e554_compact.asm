; pdata function 0x34e554..0x34f21d unwind=0x3d3d14
34e554 mov    rax,rsp
34e557 push   rbp
34e558 push   rbx
34e559 push   rsi
34e55a push   rdi
34e55b push   r13
34e55d push   r14
34e55f push   r15
34e561 lea    rbp,[rax-0x178]
34e568 sub    rsp,0x240
34e56f movaps XMMWORD PTR [rax-0x48],xmm6
34e573 movaps XMMWORD PTR [rax-0x58],xmm7
34e577 movaps XMMWORD PTR [rax-0x68],xmm8
34e57c movaps XMMWORD PTR [rax-0x78],xmm11
34e581 call   0x38ec90
34e586 movss  xmm11,DWORD PTR [rip+0xfffffffffff3ecc5]        # 0x28d254 ; f32=1
34e58f mov    ecx,0x4
34e594 movaps xmm1,xmm11
34e598 call   0x392298
34e59d mov    edx,eax
34e59f mov    ecx,0x8
34e5a4 call   0x398bec
34e5a9 lea    rdx,[rip+0xaed18]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34e5b0 lea    rcx,[rbp+0x40]
34e5b4 call   0x2d4194
34e5b9 lea    rcx,[rbp+0x198]
34e5c0 call   0x39233c
34e5c5 movss  xmm8,DWORD PTR [rip+0xfffffffffff3f556]        # 0x28db24 ; f32=30
34e5ce movss  xmm6,DWORD PTR [rax]
34e5d2 mulss  xmm6,DWORD PTR [rip+0xfffffffffff3ec76]        # 0x28d250 ; f32=0.5
34e5da subss  xmm6,xmm8
34e5df call   0x3925cc
34e5e4 movaps xmm2,xmm0
34e5e7 lea    rcx,[rbp+0x190]
34e5ee movaps xmm1,xmm6
34e5f1 call   0x2cc340
34e5f6 lea    rcx,[rbp+0x40]
34e5fa call   0x2d8ad8
34e5ff lea    rcx,[rbp+0x40]
34e603 mov    rdi,rax
34e606 call   0x2cd7ec
34e60b mov    ecx,DWORD PTR [rip+0xaead7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e611 mov    r15d,0x1
34e617 mov    rsi,rax
34e61a cmp    ecx,r15d
34e61d jne    0x34e62d
34e61f lea    rcx,[rip+0xfffffffffff5965a]        # 0x2a7c80
34e626 call   0x365004
34e62b jmp    0x34e654
34e62d cmp    ecx,0x2
34e630 jne    0x34e63b
34e632 lea    rcx,[rip+0xfffffffffff59657]        # 0x2a7c90
34e639 jmp    0x34e626
34e63b lea    rdx,[rsp+0x40]
34e640 lea    rcx,[rbp+0x188]
34e647 call   0x353908 ; STRING getter=0x353908 Search..
34e64c mov    rcx,rax
34e64f call   0x2e9b8c
34e654 lea    rdx,[rbp-0x50]
34e658 mov    rbx,rax
34e65b lea    rcx,[rbp+0x188]
34e662 call   0x352240 ; STRING getter=0x352240 ##search
34e667 mov    rcx,rax
34e66a call   0x2e9b8c
34e66f mov    QWORD PTR [rsp+0x38],0x0
34e678 mov    rcx,rax
34e67b lea    rax,[rbp+0x190]
34e682 mov    QWORD PTR [rsp+0x30],0x0
34e68b mov    DWORD PTR [rsp+0x28],0x5000
34e693 mov    r9d,edi
34e696 mov    r8,rsi
34e699 mov    QWORD PTR [rsp+0x20],rax
34e69e mov    rdx,rbx
34e6a1 call   0x3c0538
34e6a6 call   0x39408c
34e6ab mov    ecx,r15d
34e6ae mov    BYTE PTR [rip+0xaee41],al        # 0x3fd4f5
34e6b4 call   0x39890c
34e6b9 mov    eax,DWORD PTR [rip+0xaf219]        # 0x3fd8d8
34e6bf test   r15b,al
34e6c2 jne    0x34e6d9
34e6c4 or     eax,r15d
34e6c7 lea    rcx,[rip+0x824e2]        # 0x3d0bb0
34e6ce mov    DWORD PTR [rip+0xaf204],eax        # 0x3fd8d8
34e6d4 call   0x2cd32c
34e6d9 movss  xmm1,DWORD PTR [rip+0xfffffffffff44adb]        # 0x2931bc ; f32=16
34e6e1 lea    rcx,[rbp+0x188]
34e6e8 movaps xmm2,xmm1
34e6eb call   0x2cc340
34e6f0 lea    rdx,[rbp+0x188]
34e6f7 mov    ecx,0x2
34e6fc call   0x398c60
34e701 lea    rcx,[rsp+0x58]
34e706 call   0x39233c
34e70b movss  xmm2,DWORD PTR [rip+0xfffffffffff44b4d]        # 0x293260 ; f32=-1
34e713 lea    rcx,[rbp+0x198]
34e71a movss  xmm1,DWORD PTR [rax]
34e71e mulss  xmm1,DWORD PTR [rip+0xfffffffffff3eb2a]        # 0x28d250 ; f32=0.5
34e726 subss  xmm1,xmm8
34e72b call   0x2cc340
34e730 lea    rdx,[rbp+0x190]
34e737 lea    rcx,[rbp+0x188]
34e73e call   0x354d3c ; STRING getter=0x354d3c list
34e743 mov    rcx,rax
34e746 call   0x2cdccc
34e74b mov    rcx,rax
34e74e lea    rdx,[rbp+0x198]
34e755 mov    r9d,0x10000
34e75b xor    r8d,r8d
34e75e call   0x38e97c
34e763 lea    r13,[rip+0xad946]        # 0x3fc0b0
34e76a mov    rcx,r13
34e76d call   0x2dcf98
34e772 lea    rcx,[rip+0xffffffffffeca0d7]        # 0x218850
34e779 call   0x2d79c0
34e77e lea    rcx,[rip+0xffffffffffeca0cb]        # 0x218850
34e785 mov    r14,rax
34e788 call   0x2d1978
34e78d mov    rsi,rax
34e790 cmp    rax,r14
34e793 je     0x34e953
34e799 lea    rdx,[rbp+0x198]
34e7a0 lea    rcx,[rsi+0x48]
34e7a4 call   0x364a48
34e7a9 lea    rdx,[rsp+0x58]
34e7ae lea    rcx,[rsi+0x48]
34e7b2 mov    rbx,QWORD PTR [rax]
34e7b5 call   0x362f58
34e7ba lea    rcx,[rbp+0x188]
34e7c1 mov    rdi,rax
34e7c4 call   0x2cb3a4
34e7c9 mov    rdx,QWORD PTR [rdi]
34e7cc lea    rcx,[rsp+0x60]
34e7d1 mov    r9,rax
34e7d4 mov    r8,rbx
34e7d7 call   0x335520
34e7dc lea    rdx,[rsp+0x60]
34e7e1 lea    rcx,[rip+0x88a78]        # 0x3d7260
34e7e8 call   0x2ef794
34e7ed cmp    DWORD PTR [rax+0x24],r15d
34e7f1 jne    0x34e939
34e7f7 lea    rdi,[rip+0xaeaca]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34e7fe mov    rcx,rdi
34e801 call   0x3360f0
34e806 test   al,al
34e808 jne    0x34e92d
34e80e lea    rdx,[rsi+0x28]
34e812 lea    rcx,[rbp-0x18]
34e816 call   0x2d4194
34e81b mov    edx,DWORD PTR [rsi+0x90]
34e821 lea    rcx,[rbp-0x38]
34e825 call   0x2d9510
34e82a lea    rdx,[rbp+0x28]
34e82e mov    rcx,rdi
34e831 call   0x2d86d4
34e836 lea    rdx,[rbp+0x30]
34e83a mov    rcx,rdi
34e83d mov    rbx,QWORD PTR [rax]
34e840 call   0x2d7cf0
34e845 lea    rcx,[rbp+0x190]
34e84c mov    rdi,rax
34e84f call   0x2cb3a4
34e854 mov    rdx,QWORD PTR [rdi]
34e857 lea    rcx,[rbp-0x80]
34e85b mov    r9,rax
34e85e mov    r8,rbx
34e861 call   0x335520
34e866 lea    rdx,[rbp-0x60]
34e86a lea    rcx,[rbp-0x18]
34e86e call   0x2d7cf0
34e873 lea    rdx,[rbp+0x10]
34e877 lea    rcx,[rbp-0x18]
34e87b mov    rdi,QWORD PTR [rax]
34e87e call   0x2d86d4
34e883 lea    rdx,[rbp-0x50]
34e887 lea    rcx,[rbp-0x18]
34e88b mov    rbx,QWORD PTR [rax]
34e88e call   0x2d7cf0
34e893 lea    rcx,[rip+0xfffffffffff87c76]        # 0x2d6510
34e89a mov    r9,rdi
34e89d mov    QWORD PTR [rsp+0x20],rcx
34e8a2 mov    r8,rbx
34e8a5 lea    rcx,[rsp+0x40]
34e8aa mov    rdx,QWORD PTR [rax]
34e8ad call   0x3362d0
34e8b2 xor    r8d,r8d
34e8b5 lea    rdx,[rbp-0x80]
34e8b9 lea    rcx,[rbp-0x18]
34e8bd call   0x2d88e0
34e8c2 cmp    rax,0xffffffffffffffff
34e8c6 jne    0x34e912
34e8c8 xor    r8d,r8d
34e8cb lea    rdx,[rbp-0x80]
34e8cf lea    rcx,[rsp+0x60]
34e8d4 call   0x2d88e0
34e8d9 cmp    rax,0xffffffffffffffff
34e8dd jne    0x34e912
34e8df xor    r8d,r8d
34e8e2 lea    rdx,[rbp-0x80]
34e8e6 lea    rcx,[rbp-0x38]
34e8ea call   0x2d88e0
34e8ef cmp    rax,0xffffffffffffffff
34e8f3 jne    0x34e912
34e8f5 lea    rcx,[rbp-0x80]
34e8f9 call   0x2cc4f4
34e8fe lea    rcx,[rbp-0x38]
34e902 call   0x2cc4f4
34e907 lea    rcx,[rbp-0x18]
34e90b call   0x2cc4f4
34e910 jmp    0x34e939
34e912 lea    rcx,[rbp-0x80]
34e916 call   0x2cc4f4
34e91b lea    rcx,[rbp-0x38]
34e91f call   0x2cc4f4
34e924 lea    rcx,[rbp-0x18]
34e928 call   0x2cc4f4
34e92d lea    rdx,[rsi+0x28]
34e931 mov    rcx,r13
34e934 call   0x2d901c
34e939 lea    rcx,[rsp+0x60]
34e93e call   0x2cc4f4
34e943 add    rsi,0x98
34e94a cmp    rsi,r14
34e94d jne    0x34e799
34e953 mov    rcx,r13
34e956 call   0x2d86a0
34e95b test   al,al
34e95d je     0x34e96b
34e95f mov    DWORD PTR [rip+0xaef73],0xffffffff        # 0x3fd8dc
34e969 jmp    0x34e994
34e96b movsxd rbx,DWORD PTR [rip+0xaef6a]        # 0x3fd8dc
34e972 test   ebx,ebx
34e974 js     0x34e983
34e976 mov    rcx,r13
34e979 call   0x2d93e8
34e97e cmp    rbx,rax
34e981 jb     0x34e994
34e983 mov    rcx,r13
34e986 call   0x2d93e8
34e98b sub    eax,r15d
34e98e mov    DWORD PTR [rip+0xaef48],eax        # 0x3fd8dc
34e994 mov    rcx,r13
34e997 call   0x2d86a0
34e99c xorps  xmm7,xmm7
34e99f test   al,al
34e9a1 jne    0x34ea1f
34e9a3 lea    rcx,[rbp+0x188]
34e9aa call   0x39233c
34e9af xorps  xmm2,xmm2
34e9b2 lea    rcx,[rbp+0x188]
34e9b9 movss  xmm1,DWORD PTR [rax]
34e9bd call   0x2cc340
34e9c2 mov    rdx,r13
34e9c5 lea    rcx,[rsp+0x40]
34e9ca call   0x2db2bc
34e9cf mov    rdx,r13
34e9d2 lea    rcx,[rbp-0x50]
34e9d6 mov    rdi,rax
34e9d9 call   0x2db2bc
34e9de lea    rdx,[rbp+0x190]
34e9e5 mov    rbx,rax
34e9e8 lea    rcx,[rbp+0x188]
34e9ef call   0x3565a0 ; STRING getter=0x3565a0 Player
34e9f4 mov    rcx,rax
34e9f7 call   0x2cdcf4
34e9fc mov    rdx,QWORD PTR [rbp+0x188]
34ea03 lea    r8,[rip+0xaeed2]        # 0x3fd8dc
34ea0a mov    rcx,rax
34ea0d mov    BYTE PTR [rsp+0x28],r15b
34ea12 mov    r9,rbx
34ea15 mov    QWORD PTR [rsp+0x20],rdi
34ea1a call   0x387a4c
34ea1f call   0x390a88
34ea24 mov    ecx,r15d
34ea27 call   0x39896c
34ea2c call   0x390efc
34ea31 movss  xmm1,DWORD PTR [rip+0xfffffffffff44827]        # 0x293260 ; f32=-1
34ea39 xorps  xmm0,xmm0
34ea3c call   0x39ac04
34ea41 movss  xmm2,DWORD PTR [rip+0xfffffffffff44817]        # 0x293260 ; f32=-1
34ea49 lea    rcx,[rbp+0x198]
34ea50 xorps  xmm1,xmm1
34ea53 call   0x2cc340
34ea58 lea    rdx,[rsp+0x40]
34ea5d lea    rcx,[rbp+0x188]
34ea64 movsd  xmm6,QWORD PTR [rax]
34ea68 call   0x357f84 ; STRING getter=0x357f84 Friend Options
34ea6d mov    rcx,rax
34ea70 call   0x2d866c
34ea75 lea    rdx,[rbp+0x190]
34ea7c mov    rbx,rax
34ea7f lea    rcx,[rbp+0x188]
34ea86 call   0x35073c ; STRING getter=0x35073c H
34ea8b mov    rcx,rax
34ea8e call   0x2d8464
34ea93 mov    rdx,rax
34ea96 lea    rcx,[rbp+0x60]
34ea9a call   0x2cc2cc
34ea9f mov    rcx,rax
34eaa2 mov    r9b,r15b
34eaa5 movq   r8,xmm6
34eaaa mov    rdx,rbx
34eaad call   0x384df0
34eab2 movsxd rbx,DWORD PTR [rip+0xaee23]        # 0x3fd8dc
34eab9 test   ebx,ebx
34eabb js     0x34f1e5
34eac1 mov    rcx,r13
34eac4 call   0x2d93e8
34eac9 cmp    rbx,rax
34eacc jae    0x34f1e5
34ead2 lea    rdi,[rip+0xffffffffffec9d77]        # 0x218850
34ead9 mov    rcx,rdi
34eadc lea    rdx,[rbp+0x188]
34eae3 call   0x2d87b0
34eae8 lea    rdx,[rbp+0x190]
34eaef mov    rcx,rdi
34eaf2 mov    rbx,QWORD PTR [rax]
34eaf5 call   0x2d7d90
34eafa mov    r9b,BYTE PTR [rbp+0x188]
34eb01 lea    rcx,[rbp+0x198]
34eb08 mov    r8,rbx
34eb0b mov    rdx,QWORD PTR [rax]
34eb0e call   0x3361d8
34eb13 lea    rdx,[rsp+0x40]
34eb18 mov    rcx,rdi
34eb1b mov    rbx,rax
34eb1e call   0x2d7d90
34eb23 mov    rdx,rax
34eb26 mov    rcx,rbx
34eb29 call   0x3367c0
34eb2e mov    rcx,rdi
34eb31 movsxd rbx,eax
34eb34 call   0x364fe0
34eb39 cmp    rbx,rax
34eb3c jae    0x34f1e5
34eb42 mov    rdx,rbx
34eb45 mov    rcx,rdi
34eb48 call   0x3367a4
34eb4d xor    ecx,ecx
34eb4f mov    r14,rax
34eb52 call   0x2caf08
34eb57 test   al,al
34eb59 je     0x34ec4c
34eb5f movss  xmm1,DWORD PTR [rip+0xfffffffffff3efdd]        # 0x28db44 ; f32=100
34eb67 lea    rcx,[rbp+0x188]
34eb6e movaps xmm2,xmm1
34eb71 call   0x2cc340
34eb76 lea    rcx,[rbp+0x190]
34eb7d call   0x39233c
34eb82 movss  xmm1,DWORD PTR [rbp+0x190]
34eb8a lea    rcx,[rbp+0x198]
34eb91 subss  xmm1,DWORD PTR [rbp+0x188]
34eb99 xorps  xmm2,xmm2
34eb9c addss  xmm1,DWORD PTR [rip+0xfffffffffff44638]        # 0x2931dc ; f32=28
34eba4 call   0x2cc340
34eba9 lea    rcx,[rsp+0x58]
34ebae call   0x3923d8
34ebb3 lea    rcx,[rbp+0x198]
34ebba call   0x39b3b8
34ebbf xorps  xmm3,xmm3
34ebc2 movss  DWORD PTR [rsp+0x20],xmm7
34ebc8 xorps  xmm2,xmm2
34ebcb lea    rcx,[rbp+0x10]
34ebcf xorps  xmm1,xmm1
34ebd2 call   0x2cc350
34ebd7 movaps xmm3,xmm11
34ebdb movss  DWORD PTR [rsp+0x20],xmm11
34ebe2 movaps xmm2,xmm11
34ebe6 lea    rcx,[rbp-0x60]
34ebea movaps xmm1,xmm11
34ebee mov    rsi,rax
34ebf1 call   0x2cc350
34ebf6 movaps xmm2,xmm11
34ebfa lea    rcx,[rsp+0x40]
34ebff movaps xmm1,xmm11
34ec03 mov    rdi,rax
34ec06 call   0x2cc340
34ec0b xorps  xmm2,xmm2
34ec0e lea    rcx,[rbp-0x50]
34ec12 xorps  xmm1,xmm1
34ec15 mov    rbx,rax
34ec18 call   0x2cc340
34ec1d mov    r8,rax
34ec20 mov    QWORD PTR [rsp+0x28],rsi
34ec25 mov    r9,rbx
34ec28 mov    QWORD PTR [rsp+0x20],rdi
34ec2d lea    rdx,[rbp+0x188]
34ec34 xor    ecx,ecx
34ec36 call   0x3c01ac
34ec3b lea    rcx,[rsp+0x58]
34ec40 call   0x39b3b8
34ec45 lea    rdi,[rip+0xffffffffffec9c04]        # 0x218850
34ec4c lea    rdx,[r14+0x48]
34ec50 lea    rcx,[rsp+0x60]
34ec55 call   0x2d4194
34ec5a lea    rdx,[r14+0x28]
34ec5e lea    rcx,[rbp-0x38]
34ec62 call   0x2d4194
34ec67 mov    edx,DWORD PTR [r14+0x90]
34ec6e lea    rcx,[rbp+0x60]
34ec72 call   0x2d9510
34ec77 lea    rdx,[r14+0x68]
34ec7b lea    rcx,[rbp+0x80]
34ec82 call   0x2d4194
34ec87 lea    rcx,[rsp+0x60]
34ec8c call   0x2d8694
34ec91 test   al,al
34ec93 jne    0x34f1bd
34ec99 lea    rcx,[rbp-0x38]
34ec9d call   0x2d8694
34eca2 test   al,al
34eca4 jne    0x34f1bd
34ecaa call   0x392f34
34ecaf mulss  xmm0,DWORD PTR [rip+0xfffffffffff3e599]        # 0x28d250 ; f32=0.5
34ecb7 lea    rcx,[rbp+0x190]
34ecbe movaps xmm2,xmm8
34ecc2 subss  xmm0,xmm8
34ecc7 movaps xmm1,xmm0
34ecca call   0x2cc340
34eccf lea    rdx,[rsp+0x40]
34ecd4 lea    rcx,[rbp+0x188]
34ecdb call   0x358c84 ; STRING getter=0x358c84 Refresh Player List
34ece0 mov    rcx,rax
34ece3 call   0x320494
34ece8 mov    rcx,rax
34eceb lea    rdx,[rbp+0x190]
34ecf2 call   0x3bc7d8
34ecf7 test   al,al
34ecf9 je     0x34ed0d
34ecfb mov    rcx,rdi
34ecfe mov    DWORD PTR [rip+0xaebd4],0xffffffff        # 0x3fd8dc
34ed08 call   0x36306c
34ed0d movss  xmm1,DWORD PTR [rip+0xfffffffffff4454b]        # 0x293260 ; f32=-1
34ed15 xorps  xmm0,xmm0
34ed18 call   0x39ac04
34ed1d call   0x392f34
34ed22 mulss  xmm0,DWORD PTR [rip+0xfffffffffff3e526]        # 0x28d250 ; f32=0.5
34ed2a lea    rcx,[rbp+0x190]
34ed31 movaps xmm2,xmm8
34ed35 subss  xmm0,xmm8
34ed3a movaps xmm1,xmm0
34ed3d call   0x2cc340
34ed42 lea    rdx,[rsp+0x40]
34ed47 lea    rcx,[rbp+0x188]
34ed4e call   0x35a6b4 ; STRING getter=0x35a6b4 Copy Steam Link
34ed53 mov    rcx,rax
34ed56 call   0x2dd160
34ed5b mov    rcx,rax
34ed5e lea    rdx,[rbp+0x190]
34ed65 call   0x3bc7d8
34ed6a test   al,al
34ed6c je     0x34eeb0
34ed72 lea    rdx,[rbp-0x18]
34ed76 lea    rcx,[rbp+0x188]
34ed7d call   0x3454b8 ; STRING getter=0x3454b8 https://steamcommunity.com/profiles/
34ed82 mov    rcx,rax
34ed85 call   0x363cfc
34ed8a mov    rdx,rax
34ed8d lea    r8,[rsp+0x60]
34ed92 lea    rcx,[rbp-0x80]
34ed96 call   0x2ea714
34ed9b mov    eax,DWORD PTR [rip+0xaeb37]        # 0x3fd8d8
34eda1 test   al,0x2
34eda3 jne    0x34ee56
34eda9 or     eax,0x2
34edac lea    rdx,[rbp+0x188]
34edb3 lea    rcx,[rbp+0x188]
34edba mov    DWORD PTR [rip+0xaeb18],eax        # 0x3fd8d8
34edc0 call   0x2cc730
34edc5 mov    rcx,rax
34edc8 call   0x2cdca4
34edcd lea    rdx,[rbp+0x10]
34edd1 mov    rsi,rax
34edd4 lea    rcx,[rbp+0x190]
34eddb call   0x351304 ; STRING getter=0x351304 set_systemCopyBuffer
34ede0 mov    rcx,rax
34ede3 call   0x3204bc
34ede8 lea    rdx,[rbp-0x50]
34edec mov    rdi,rax
34edef lea    rcx,[rbp+0x190]
34edf6 call   0x350e50 ; STRING getter=0x350e50 UnityEngine
34edfb mov    rcx,rax
34edfe call   0x2cde34
34ee03 lea    rdx,[rsp+0x40]
34ee08 mov    rbx,rax
34ee0b lea    rcx,[rbp+0x190]
34ee12 call   0x3506b8 ; STRING getter=0x3506b8 GUIUtility
34ee17 mov    rcx,rax
34ee1a call   0x2e9c54
34ee1f mov    rcx,rax
34ee22 mov    rdx,rbx
34ee25 call   0x334224
34ee2a mov    rcx,rax
34ee2d mov    DWORD PTR [rsp+0x20],0xffffffff
34ee35 mov    r9,rsi
34ee38 or     r8d,0xffffffff
34ee3c mov    rdx,rdi
34ee3f call   0x3349ac
34ee44 mov    r8,QWORD PTR [rax]
34ee47 mov    eax,DWORD PTR [rip+0xaea8b]        # 0x3fd8d8
34ee4d mov    QWORD PTR [rip+0xaea8c],r8        # 0x3fd8e0
34ee54 jmp    0x34ee5d
34ee56 mov    r8,QWORD PTR [rip+0xaea83]        # 0x3fd8e0
34ee5d test   al,0x4
34ee5f jne    0x34ee80
34ee61 mov    rcx,QWORD PTR [rip+0x86ff8]        # 0x3d5e60
34ee68 lea    rdx,[rip+0xaea81]        # 0x3fd8f0
34ee6f or     eax,0x4
34ee72 xor    r9d,r9d
34ee75 mov    DWORD PTR [rip+0xaea5d],eax        # 0x3fd8d8
34ee7b call   0x2cbd24
34ee80 lea    rcx,[rbp-0x80]
34ee84 call   0x2cd7ec
34ee89 mov    rcx,rax
34ee8c call   0x2ce5dc
34ee91 mov    rcx,QWORD PTR [rip+0x86fc8]        # 0x3d5e60
34ee98 lea    rdx,[rip+0xaea51]        # 0x3fd8f0
34ee9f mov    r8,rax
34eea2 call   0x2cb9fc
34eea7 lea    rcx,[rbp-0x80]
34eeab call   0x2cc4f4
34eeb0 lea    rcx,[rbp+0x188]
34eeb7 call   0x2cb3a4
34eebc mov    ecx,DWORD PTR [rip+0xae226]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34eec2 mov    rbx,rax
34eec5 cmp    ecx,r15d
34eec8 jne    0x34eed3
34eeca lea    rcx,[rip+0xfffffffffff58dcf]        # 0x2a7ca0
34eed1 jmp    0x34eedf
34eed3 cmp    ecx,0x2
34eed6 jne    0x34eee6
34eed8 lea    rcx,[rip+0xfffffffffff58dd9]        # 0x2a7cb8
34eedf call   0x365004
34eee4 jmp    0x34eeff
34eee6 lea    rdx,[rsp+0x40]
34eeeb lea    rcx,[rbp+0x188]
34eef2 call   0x3517cc
34eef7 mov    rcx,rax
34eefa call   0x2e3614
34eeff mov    rdx,rax
34ef02 lea    rcx,[rbp+0xa0]
34ef09 call   0x2cc2cc
34ef0e mov    eax,DWORD PTR [rip+0xae1d4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ef14 cmp    eax,r15d
34ef17 jne    0x34ef22
34ef19 lea    rcx,[rip+0xfffffffffff58da0]        # 0x2a7cc0
34ef20 jmp    0x34ef2e
34ef22 cmp    eax,0x2
34ef25 jne    0x34ef35
34ef27 lea    rcx,[rip+0xfffffffffff58daa]        # 0x2a7cd8
34ef2e call   0x365004
34ef33 jmp    0x34ef4d
34ef35 lea    rdx,[rbp-0x50]
34ef39 lea    rcx,[rbp+0x190]
34ef40 call   0x351a90 ; STRING getter=0x351a90 Friendly
34ef45 mov    rcx,rax
34ef48 call   0x2e9b8c
34ef4d mov    rdx,rax
34ef50 lea    rcx,[rbp+0xc0]
34ef57 call   0x2cc2cc
34ef5c mov    eax,DWORD PTR [rip+0xae186]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ef62 cmp    eax,r15d
34ef65 jne    0x34ef70
34ef67 lea    rcx,[rip+0xfffffffffff498e2]        # 0x298850
34ef6e jmp    0x34ef7c
34ef70 cmp    eax,0x2
34ef73 jne    0x34ef83
34ef75 lea    rcx,[rip+0xfffffffffff498e0]        # 0x29885c
34ef7c call   0x365004
34ef81 jmp    0x34ef9e
34ef83 lea    rdx,[rbp+0x198]
34ef8a lea    rcx,[rbp+0x190]
34ef91 call   0x351ca0 ; STRING getter=0x351ca0 Enemy
34ef96 mov    rcx,rax
34ef99 call   0x2d84dc
34ef9e mov    rdx,rax
34efa1 lea    rcx,[rbp+0xe0]
34efa8 call   0x2cc2cc
34efad lea    r8,[rbp+0x100]
34efb4 lea    rdx,[rbp+0xa0]
34efbb lea    rcx,[rbp+0x30]
34efbf call   0x2cc46c
34efc4 mov    r8,rbx
34efc7 lea    rdx,[rbp-0x60]
34efcb lea    rcx,[rbp-0x18]
34efcf movups xmm0,XMMWORD PTR [rax]
34efd2 movdqu XMMWORD PTR [rbp-0x60],xmm0
34efd7 call   0x336438
34efdc lea    rdx,[rsp+0x60]
34efe1 mov    rbx,rax
34efe4 lea    rcx,[rip+0x88275]        # 0x3d7260
34efeb call   0x2ef794
34eff0 mov    ecx,DWORD PTR [rip+0xae0f2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34eff6 lea    rdi,[rax+0x24]
34effa cmp    ecx,r15d
34effd jne    0x34f008
34efff lea    rcx,[rip+0xfffffffffff58cda]        # 0x2a7ce0
34f006 jmp    0x34f014
34f008 cmp    ecx,0x2
34f00b jne    0x34f01b
34f00d lea    rcx,[rip+0xfffffffffff58cfc]        # 0x2a7d10
34f014 call   0x365004
34f019 jmp    0x34f033
34f01b lea    rdx,[rbp+0x10]
34f01f lea    rcx,[rbp+0x190]
34f026 call   0x351560 ; STRING getter=0x351560 Custom status
34f02b mov    rcx,rax
34f02e call   0x2dd188
34f033 mov    r8,rbx
34f036 mov    rdx,rdi
34f039 mov    rcx,rax
34f03c call   0x3bf008
34f041 mov    edx,0x20
34f046 lea    r9,[rip+0xfffffffffff7d4a7]        # 0x2cc4f4
34f04d lea    rcx,[rbp+0xa0]
34f054 lea    r8d,[rdx-0x1d]
34f058 call   0x2dbac8
34f05d lea    rcx,[rbp-0x38]
34f061 call   0x2cd7ec
34f066 mov    ecx,DWORD PTR [rip+0xae07c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f06c mov    rbx,rax
34f06f cmp    ecx,r15d
34f072 jne    0x34f07d
34f074 lea    rcx,[rip+0xfffffffffff58ca5]        # 0x2a7d20
34f07b jmp    0x34f089
34f07d cmp    ecx,0x2
34f080 jne    0x34f090
34f082 lea    rcx,[rip+0xfffffffffff58ca7]        # 0x2a7d30
34f089 call   0x365004
34f08e jmp    0x34f0a9
34f090 lea    rdx,[rsp+0x40]
34f095 lea    rcx,[rbp+0x188]
34f09c call   0x351ed0 ; STRING getter=0x351ed0 Name: %s
34f0a1 mov    rcx,rax
34f0a4 call   0x2e9b8c
34f0a9 mov    rdx,rbx
34f0ac mov    rcx,rax
34f0af call   0x3c4e90
34f0b4 lea    rcx,[rsp+0x60]
34f0b9 call   0x2cd7ec
34f0be mov    ecx,DWORD PTR [rip+0xae024]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f0c4 mov    rbx,rax
34f0c7 cmp    ecx,r15d
34f0ca jne    0x34f0d5
34f0cc lea    rcx,[rip+0xfffffffffff58c6d]        # 0x2a7d40
34f0d3 jmp    0x34f0e1
34f0d5 cmp    ecx,0x2
34f0d8 jne    0x34f0e8
34f0da lea    rcx,[rip+0xfffffffffff58c77]        # 0x2a7d58
34f0e1 call   0x365004
34f0e6 jmp    0x34f101
34f0e8 lea    rdx,[rsp+0x40]
34f0ed lea    rcx,[rbp+0x188]
34f0f4 call   0x3521a8 ; STRING getter=0x3521a8 Steam ID: %s
34f0f9 mov    rcx,rax
34f0fc call   0x2d85f4
34f101 mov    rdx,rbx
34f104 mov    rcx,rax
34f107 call   0x3c4e90
34f10c lea    rcx,[rbp+0x60]
34f110 call   0x2cd7ec
34f115 mov    ecx,DWORD PTR [rip+0xadfcd]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f11b mov    rbx,rax
34f11e cmp    ecx,r15d
34f121 jne    0x34f12c
34f123 lea    rcx,[rip+0xfffffffffff58c46]        # 0x2a7d70
34f12a jmp    0x34f138
34f12c cmp    ecx,0x2
34f12f jne    0x34f13f
34f131 lea    rcx,[rip+0xfffffffffff58c58]        # 0x2a7d90
34f138 call   0x365004
34f13d jmp    0x34f158
34f13f lea    rdx,[rsp+0x40]
34f144 lea    rcx,[rbp+0x188]
34f14b call   0x352510 ; STRING getter=0x352510 Team ID: %s
34f150 mov    rcx,rax
34f153 call   0x2cde34
34f158 mov    rdx,rbx
34f15b mov    rcx,rax
34f15e call   0x3c4e90
34f163 lea    rcx,[rbp+0x80]
34f16a call   0x2cd7ec
34f16f mov    ecx,DWORD PTR [rip+0xadf73]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f175 mov    rbx,rax
34f178 cmp    ecx,r15d
34f17b jne    0x34f186
34f17d lea    rcx,[rip+0xfffffffffff58c24]        # 0x2a7da8
34f184 jmp    0x34f192
34f186 cmp    ecx,0x2
34f189 jne    0x34f199
34f18b lea    rcx,[rip+0xfffffffffff58c56]        # 0x2a7de8
34f192 call   0x365004
34f197 jmp    0x34f1b2
34f199 lea    rdx,[rsp+0x40]
34f19e lea    rcx,[rbp+0x188]
34f1a5 call   0x352720 ; STRING getter=0x352720 Last Known Grid : %s
34f1aa mov    rcx,rax
34f1ad call   0x3204bc
34f1b2 mov    rdx,rbx
34f1b5 mov    rcx,rax
34f1b8 call   0x3c4e90
34f1bd lea    rcx,[rbp+0x80]
34f1c4 call   0x2cc4f4
34f1c9 lea    rcx,[rbp+0x60]
34f1cd call   0x2cc4f4
34f1d2 lea    rcx,[rbp-0x38]
34f1d6 call   0x2cc4f4
34f1db lea    rcx,[rsp+0x60]
34f1e0 call   0x2cc4f4
34f1e5 call   0x38724c
34f1ea lea    rcx,[rbp+0x40]
34f1ee call   0x2cc4f4
34f1f3 lea    r11,[rsp+0x240]
34f1fb movaps xmm6,XMMWORD PTR [r11-0x10]
34f200 movaps xmm7,XMMWORD PTR [r11-0x20]
34f205 movaps xmm8,XMMWORD PTR [r11-0x30]
34f20a movaps xmm11,XMMWORD PTR [r11-0x40]
34f20f mov    rsp,r11
34f212 pop    r15
34f214 pop    r14
34f216 pop    r13
34f218 pop    rdi
34f219 pop    rsi
34f21a pop    rbx
34f21b pop    rbp
34f21c ret
