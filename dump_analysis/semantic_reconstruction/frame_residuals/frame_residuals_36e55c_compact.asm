36e55c mov    rax,rsp
36e55f mov    QWORD PTR [rax+0x8],rbx
36e563 push   rbp
36e564 push   rsi
36e565 push   rdi
36e566 push   r12
36e568 push   r13
36e56a push   r14
36e56c push   r15
36e56e lea    rbp,[rax-0x288]
36e575 sub    rsp,0x350
36e57c movaps XMMWORD PTR [rax-0x48],xmm6
36e580 mov    r14,rcx
36e583 movaps XMMWORD PTR [rax-0x58],xmm7
36e587 movaps XMMWORD PTR [rax-0x68],xmm8
36e58c call   0x2e069c
36e591 mov    rcx,rax
36e594 mov    QWORD PTR [rsp+0x38],rax
36e599 mov    r12,rax
36e59c call   0x2caf08
36e5a1 test   al,al
36e5a3 je     0x36f5a1
36e5a9 call   0x35d31c
36e5ae lea    rcx,[rsp+0x30]
36e5b3 mov    r15,rax
36e5b6 call   0x2cb3a4
36e5bb lea    rcx,[rbp-0x28]
36e5bf call   0x3c7bbc
36e5c4 lea    rcx,[rbp-0x38]
36e5c8 call   0x3c7bbc
36e5cd call   0x2dda9c
36e5d2 mov    rcx,rax
36e5d5 mov    r9,rax
36e5d8 call   0x2caf08
36e5dd test   al,al
36e5df je     0x36f5a1
36e5e5 mov    r8d,0x34
36e5eb lea    rdx,[rbp+0x10]
36e5ef mov    rcx,r9
36e5f2 xor    r13b,r13b
36e5f5 call   0x368be8
36e5fa lea    rcx,[rbp+0x110]
36e601 call   0x36de40
36e606 mov    rcx,r14
36e609 xor    esi,esi
36e60b call   0x3701ac
36e610 test   rax,rax
36e613 je     0x36e9a6
36e619 movss  xmm8,DWORD PTR [rip+0xfffffffffff3a3d2]        # 0x2a89f4 ; f32=7500
36e622 movsxd rdx,esi
36e625 mov    rcx,r14
36e628 call   0x36e1fc
36e62d lea    rcx,[rbp-0x70]
36e631 movups xmm6,XMMWORD PTR [rax]
36e634 movsd  xmm0,QWORD PTR [rax+0x10]
36e639 movups XMMWORD PTR [rbp-0x18],xmm6
36e63d movsd  QWORD PTR [rbp-0x8],xmm0
36e642 call   0x36df3c
36e647 movd   edi,xmm6
36e64b test   edi,edi
36e64d jne    0x36e66f
36e64f lea    rdx,[rbp+0x193]
36e656 lea    rcx,[rbp+0x2a0]
36e65d call   0x36e31c ; STRING getter=0x36e31c Grenades
36e662 mov    rcx,rax
36e665 call   0x2e9b8c
36e66a jmp    0x36e848
36e66f cmp    edi,0x1
36e672 jne    0x36e689
36e674 lea    rdx,[rbp+0x18a]
36e67b lea    rcx,[rbp+0x2a0]
36e682 call   0x36e3e0 ; STRING getter=0x36e3e0 Molotovs
36e687 jmp    0x36e662
36e689 cmp    edi,0x2
36e68c jne    0x36e6a3
36e68e lea    rdx,[rbp+0x181]
36e695 lea    rcx,[rbp+0x2a0]
36e69c call   0x36e42c ; STRING getter=0x36e42c Beancans
36e6a1 jmp    0x36e662
36e6a3 cmp    edi,0x3
36e6a6 jne    0x36e6c6
36e6a8 lea    rdx,[rsp+0x40]
36e6ad lea    rcx,[rbp+0x2a0]
36e6b4 call   0x36e448 ; STRING getter=0x36e448 MLRS
36e6b9 mov    rcx,rax
36e6bc call   0x2cdccc
36e6c1 jmp    0x36e848
36e6c6 cmp    edi,0x4
36e6c9 jne    0x36e6e9
36e6cb lea    rdx,[rsp+0x60]
36e6d0 lea    rcx,[rbp+0x2a0]
36e6d7 call   0x36e460
36e6dc mov    rcx,rax
36e6df call   0x2e3614
36e6e4 jmp    0x36e848
36e6e9 cmp    edi,0x5
36e6ec jne    0x36e70e
36e6ee lea    rdx,[rbp+0x202]
36e6f5 lea    rcx,[rbp+0x2a0]
36e6fc call   0x36e474 ; STRING getter=0x36e474 Battering Ram
36e701 mov    rcx,rax
36e704 call   0x2dd188
36e709 jmp    0x36e848
36e70e cmp    edi,0x6
36e711 jne    0x36e728
36e713 lea    rdx,[rbp+0x210]
36e71a lea    rcx,[rbp+0x2a0]
36e721 call   0x36e498 ; STRING getter=0x36e498 Incen Rockets
36e726 jmp    0x36e701
36e728 cmp    edi,0x7
36e72b jne    0x36e745
36e72d lea    rdx,[rbp+0x1e0]
36e734 lea    rcx,[rbp+0x2a0]
36e73b call   0x36e4bc ; STRING getter=0x36e4bc HV Rockets
36e740 jmp    0x36e840
36e745 cmp    edi,0x8
36e748 jne    0x36e762
36e74a lea    rdx,[rbp+0x178]
36e751 lea    rcx,[rbp+0x2a0]
36e758 call   0x36e4d8 ; STRING getter=0x36e4d8 Satchels
36e75d jmp    0x36e662
36e762 cmp    edi,0x9
36e765 jne    0x36e787
36e767 lea    rdx,[rbp+0x2a8]
36e76e lea    rcx,[rbp+0x2a0]
36e775 call   0x36e208 ; STRING getter=0x36e208 C4s
36e77a mov    rcx,rax
36e77d call   0x32041c
36e782 jmp    0x36e848
36e787 cmp    edi,0xa
36e78a jne    0x36e7ac
36e78c lea    rdx,[rbp+0x1f6]
36e793 lea    rcx,[rbp+0x2a0]
36e79a call   0x36e214 ; STRING getter=0x36e214 HE Grenades
36e79f mov    rcx,rax
36e7a2 call   0x2cde34
36e7a7 jmp    0x36e848
36e7ac cmp    edi,0xb
36e7af jne    0x36e7cb
36e7b1 lea    rdx,[rbp+0x40]
36e7b5 lea    rcx,[rbp+0x2a0]
36e7bc call   0x36e230 ; STRING getter=0x36e230 Underwater Explosions
36e7c1 mov    rcx,rax
36e7c4 call   0x2d85a4
36e7c9 jmp    0x36e848
36e7cb cmp    edi,0xc
36e7ce jne    0x36e7ea
36e7d0 lea    rdx,[rbp+0x40]
36e7d4 lea    rcx,[rbp+0x2a0]
36e7db call   0x36e24c ; STRING getter=0x36e24c Catapult Scattershot
36e7e0 mov    rcx,rax
36e7e3 call   0x3204bc
36e7e8 jmp    0x36e848
36e7ea cmp    edi,0xd
36e7ed jne    0x36e809
36e7ef lea    rdx,[rbp+0x40]
36e7f3 lea    rcx,[rbp+0x2a0]
36e7fa call   0x36e268 ; STRING getter=0x36e268 Catapult FireBomb
36e7ff mov    rcx,rax
36e802 call   0x2e9bdc
36e807 jmp    0x36e848
36e809 cmp    edi,0xe
36e80c jne    0x36e824
36e80e lea    rdx,[rsp+0x70]
36e813 lea    rcx,[rbp+0x2a0]
36e81a call   0x36e284 ; STRING getter=0x36e284 Catapult Bomb
36e81f jmp    0x36e701
36e824 cmp    edi,0x10
36e827 jne    0x36e987
36e82d lea    rdx,[rbp+0x1eb]
36e834 lea    rcx,[rbp+0x2a0]
36e83b call   0x36e2a8 ; STRING getter=0x36e2a8 Explo Ammo
36e840 mov    rcx,rax
36e843 call   0x2e9c54
36e848 mov    rdx,rax
36e84b lea    rcx,[rbp-0x70]
36e84f call   0x2d4c68
36e854 lea    rcx,[rbp-0x70]
36e858 call   0x2d8ad8
36e85d test   rax,rax
36e860 je     0x36e987
36e866 movsxd r12,edi
36e869 lea    r8,[rbp+0x2a0]
36e870 lea    rdx,[rbp+0x170]
36e877 mov    QWORD PTR [rbp+0x2a0],r12
36e87e lea    rcx,[rbp+0x110]
36e885 call   0x370118
36e88a lea    rdx,[rbp+0x8]
36e88e mov    rbx,rax
36e891 lea    rcx,[rbp+0x110]
36e898 call   0x2d86b8
36e89d mov    rdx,rax
36e8a0 mov    rcx,rbx
36e8a3 call   0x2cc534
36e8a8 test   al,al
36e8aa jne    0x36e8cb
36e8ac lea    rdx,[rbp+0x2a0]
36e8b3 mov    QWORD PTR [rbp+0x2a0],r12
36e8ba lea    rcx,[rbp+0x110]
36e8c1 call   0x36e1cc
36e8c6 inc    DWORD PTR [rax+0x20]
36e8c9 jmp    0x36e90b
36e8cb lea    r8,[rbp-0x70]
36e8cf mov    DWORD PTR [rbp+0x2a0],edi
36e8d5 lea    rdx,[rbp+0x2a0]
36e8dc lea    rcx,[rbp+0xe0]
36e8e3 call   0x36cff8
36e8e8 lea    r8,[rbp+0xe0]
36e8ef lea    rdx,[rbp+0x40]
36e8f3 lea    rcx,[rbp+0x110]
36e8fa call   0x370168
36e8ff lea    rcx,[rbp+0xe0]
36e906 call   0x36e088
36e90b movsd  xmm7,QWORD PTR [rbp-0x14]
36e910 psrldq xmm6,0xc
36e915 movsd  QWORD PTR [rbp-0x38],xmm7
36e91a movd   DWORD PTR [rbp-0x30],xmm6
36e91f test   r13b,r13b
36e922 jne    0x36e982
36e924 lea    rdx,[rbp+0x10]
36e928 lea    rcx,[rbp-0x14]
36e92c call   0x2dff30
36e931 comiss xmm8,xmm0
36e935 mov    r12,QWORD PTR [rsp+0x38]
36e93a jbe    0x36e987
36e93c lea    r9,[rip+0x68965]        # 0x3d72a8
36e943 movsd  QWORD PTR [rsp+0x50],xmm7
36e949 lea    r8,[rsp+0x30]
36e94e movd   DWORD PTR [rsp+0x58],xmm6
36e954 lea    rdx,[rsp+0x50]
36e959 mov    rcx,r12
36e95c call   0x36cd20
36e961 test   al,al
36e963 je     0x36e987
36e965 mov    rcx,QWORD PTR [rsp+0x30]
36e96a call   0x317130
36e96f test   al,al
36e971 je     0x36e987
36e973 mov    r13b,0x1
36e976 movsd  QWORD PTR [rbp-0x28],xmm7
36e97b movd   DWORD PTR [rbp-0x20],xmm6
36e980 jmp    0x36e987
36e982 mov    r12,QWORD PTR [rsp+0x38]
36e987 lea    rcx,[rbp-0x70]
36e98b call   0x2cc504
36e990 mov    rcx,r14
36e993 inc    esi
36e995 call   0x3701ac
36e99a movsxd rcx,esi
36e99d cmp    rcx,rax
36e9a0 jb     0x36e622
36e9a6 call   0x2e0af0
36e9ab movd   xmm7,eax
36e9af cvtdq2ps xmm7,xmm7
36e9b2 mulss  xmm7,DWORD PTR [rip+0xfffffffffff1e896]        # 0x28d250 ; f32=0.5
36e9ba call   0x2e09f0
36e9bf cmp    BYTE PTR [rip+0x7b122],0x0        # 0x3e9ae8 ; CONFIG Bools.savehouse value(+0x48)
36e9c6 mov    ebx,0xff
36e9cb movss  xmm8,DWORD PTR [rip+0xfffffffffff1f170]        # 0x28db44 ; f32=100
36e9d4 movd   xmm6,eax
36e9d8 cvtdq2ps xmm6,xmm6
36e9db mulss  xmm6,DWORD PTR [rip+0xfffffffffff246b5]        # 0x293098 ; f32=0.05
36e9e3 addss  xmm6,DWORD PTR [rip+0xffffffffffeda4e9]        # 0x248ed4 ; f32=16
36e9eb je     0x36ea96
36e9f1 lea    rdx,[rip+0x81640]        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
36e9f8 lea    rcx,[rbp-0x38]
36e9fc call   0x2dff30
36ea01 comiss xmm8,xmm0
36ea05 jbe    0x36ea96
36ea0b lea    rdx,[rbp-0x70]
36ea0f lea    rcx,[rbp+0x2a0]
36ea16 call   0x36e2c4 ; STRING getter=0x36e2c4 YOUR HOUSE IS GETTING RAIDED!!!
36ea1b mov    rcx,rax
36ea1e call   0x32189c
36ea23 mov    rdx,rax
36ea26 lea    rcx,[rbp-0x18]
36ea2a call   0x2cc2cc
36ea2f xor    r9d,r9d
36ea32 mov    DWORD PTR [rsp+0x20],ebx
36ea36 xor    r8d,r8d
36ea39 lea    rcx,[rbp+0x40]
36ea3d mov    edx,ebx
36ea3f call   0x2db318
36ea44 movaps xmm2,xmm6
36ea47 lea    rcx,[rbp+0x2a0]
36ea4e movaps xmm1,xmm7
36ea51 movdqu xmm0,XMMWORD PTR [rax]
36ea55 movdqa XMMWORD PTR [rsp+0x70],xmm0
36ea5b call   0x2cc340
36ea60 mov    rdx,QWORD PTR [r15+0x10]
36ea64 lea    r8,[rbp-0x18]
36ea68 mov    r9,rax
36ea6b mov    DWORD PTR [rsp+0x28],0x2
36ea73 lea    rax,[rsp+0x70]
36ea78 mov    rcx,r15
36ea7b mov    QWORD PTR [rsp+0x20],rax
36ea80 call   0x36135c
36ea85 addss  xmm6,DWORD PTR [rip+0xffffffffffeda447]        # 0x248ed4 ; f32=16
36ea8d lea    rcx,[rbp-0x18]
36ea91 call   0x2cc4f4
36ea96 cmp    BYTE PTR [rip+0x7b72b],0x0        # 0x3ea1c8 ; CONFIG Bools.saveposition value(+0x48)
36ea9d je     0x36eb40
36eaa3 lea    rdx,[rip+0x8152e]        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
36eaaa lea    rcx,[rbp-0x38]
36eaae call   0x2dff30
36eab3 comiss xmm8,xmm0
36eab7 jbe    0x36eb40
36eabd lea    rdx,[rbp-0x70]
36eac1 lea    rcx,[rbp+0x2a0]
36eac8 call   0x36e2e0 ; STRING getter=0x36e2e0 YOUR SAVED POSITION HAS A RAID NEARBY!!!
36eacd mov    rcx,rax
36ead0 call   0x363d74
36ead5 mov    rdx,rax
36ead8 lea    rcx,[rbp-0x18]
36eadc call   0x2cc2cc
36eae1 xor    r9d,r9d
36eae4 mov    DWORD PTR [rsp+0x20],ebx
36eae8 xor    r8d,r8d
36eaeb lea    rcx,[rbp+0x40]
36eaef mov    edx,ebx
36eaf1 call   0x2db318
36eaf6 movaps xmm2,xmm6
36eaf9 lea    rcx,[rbp+0x2a0]
36eb00 movaps xmm1,xmm7
36eb03 movdqu xmm0,XMMWORD PTR [rax]
36eb07 movdqa XMMWORD PTR [rsp+0x70],xmm0
36eb0d call   0x2cc340
36eb12 mov    rdx,QWORD PTR [r15+0x10]
36eb16 lea    r8,[rbp-0x18]
36eb1a mov    r9,rax
36eb1d mov    DWORD PTR [rsp+0x28],0x2
36eb25 lea    rax,[rsp+0x70]
36eb2a mov    rcx,r15
36eb2d mov    QWORD PTR [rsp+0x20],rax
36eb32 call   0x36135c
36eb37 lea    rcx,[rbp-0x18]
36eb3b call   0x2cc4f4
36eb40 cmp    BYTE PTR [rip+0x85241],0x0        # 0x3f3d88 ; CONFIG Bools.DrawIngameRadarRaids value(+0x48)
36eb47 je     0x36efe9
36eb4d movsd  xmm0,QWORD PTR [rbp-0x38]
36eb52 lea    rdx,[rsp+0x50]
36eb57 mov    eax,DWORD PTR [rbp-0x30]
36eb5a lea    rcx,[rsp+0x38]
36eb5f movsd  QWORD PTR [rsp+0x50],xmm0
36eb65 mov    DWORD PTR [rsp+0x58],eax
36eb69 call   0x314f08
36eb6e xorps  xmm2,xmm2
36eb71 lea    rcx,[rbp+0x2a0]
36eb78 xorps  xmm1,xmm1
36eb7b xorps  xmm7,xmm7
36eb7e call   0x2cc340
36eb83 mov    rdx,rax
36eb86 lea    rcx,[rsp+0x38]
36eb8b call   0x2ef6c4
36eb90 test   al,al
36eb92 je     0x36efe9
36eb98 call   0x315778
36eb9d lea    rdx,[rbp+0x2a8]
36eba4 movaps xmm6,xmm0
36eba7 lea    rcx,[rbp+0x2a0]
36ebae call   0x36e338 ; STRING getter=0x36e338 m)
36ebb3 mov    rcx,rax
36ebb6 call   0x3203f4
36ebbb mov    rdx,rax
36ebbe lea    rcx,[rbp+0x20]
36ebc2 call   0x2cc2cc
36ebc7 lea    rdx,[rbp+0x10]
36ebcb mov    rdi,rax
36ebce lea    rcx,[rbp-0x38]
36ebd2 call   0x2dff30
36ebd7 cvttss2si edx,xmm0
36ebdb lea    rcx,[rbp+0x80]
36ebe2 call   0x2d9510
36ebe7 lea    rdx,[rsp+0x40]
36ebec mov    rbx,rax
36ebef lea    rcx,[rbp+0x2a0]
36ebf6 call   0x36e304 ; STRING getter=0x36e304 Raid(
36ebfb mov    rcx,rax
36ebfe call   0x2d84dc
36ec03 mov    rdx,rax
36ec06 lea    rcx,[rsp+0x70]
36ec0b call   0x2cc2cc
36ec10 mov    rdx,rax
36ec13 lea    rcx,[rbp-0x18]
36ec17 mov    r8,rbx
36ec1a call   0x2cef40
36ec1f mov    rdx,rax
36ec22 lea    rcx,[rbp+0xa0]
36ec29 mov    r8,rdi
36ec2c call   0x2cef40
36ec31 lea    rcx,[rbp-0x18]
36ec35 call   0x2cc4f4
36ec3a lea    rcx,[rsp+0x70]
36ec3f call   0x2cc4f4
36ec44 lea    rcx,[rbp+0x80]
36ec4b call   0x2cc4f4
36ec50 lea    rcx,[rbp+0x20]
36ec54 call   0x2cc4f4
36ec59 addss  xmm6,DWORD PTR [rip+0x7ee67]        # 0x3edac8 ; CONFIG F.IngameCircleSizeEntity value(+0x48)
36ec61 lea    rcx,[rip+0x8dc20]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36ec68 call   0x2ef80c
36ec6d movss  xmm2,DWORD PTR [rsp+0x3c]
36ec73 lea    rcx,[rbp+0x2a0]
36ec7a movss  xmm1,DWORD PTR [rsp+0x38]
36ec80 mov    ebx,eax
36ec82 call   0x2cc340
36ec87 movss  DWORD PTR [rsp+0x28],xmm7
36ec8d mov    rdx,rax
36ec90 mov    r9d,ebx
36ec93 mov    BYTE PTR [rsp+0x20],0x0
36ec98 movaps xmm2,xmm6
36ec9b mov    rcx,r15
36ec9e call   0x35c578
36eca3 movss  xmm7,DWORD PTR [rsp+0x3c]
36eca9 lea    rcx,[rbp+0x2a0]
36ecb0 movups xmm0,XMMWORD PTR [rip+0x8dbd1]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36ecb7 movss  xmm1,DWORD PTR [rsp+0x38]
36ecbd addss  xmm7,xmm6
36ecc1 movdqa XMMWORD PTR [rsp+0x70],xmm0
36ecc7 addss  xmm7,DWORD PTR [rip+0xfffffffffff244bd]        # 0x29318c ; f32=6.325
36eccf movaps xmm2,xmm7
36ecd2 call   0x2cc340
36ecd7 mov    rdx,QWORD PTR [r15+0x10]
36ecdb lea    r8,[rbp+0xa0]
36ece2 mov    r9,rax
36ece5 mov    esi,0x3
36ecea lea    rax,[rsp+0x70]
36ecef mov    DWORD PTR [rsp+0x28],esi
36ecf3 mov    rcx,r15
36ecf6 mov    QWORD PTR [rsp+0x20],rax
36ecfb call   0x36135c
36ed00 movss  xmm6,DWORD PTR [rip+0xfffffffffff244b4]        # 0x2931bc ; f32=16
36ed08 lea    rdx,[rsp+0x40]
36ed0d lea    rcx,[rbp+0x110]
36ed14 addss  xmm7,xmm6
36ed18 call   0x2d792c
36ed1d lea    rdx,[rsp+0x60]
36ed22 lea    rcx,[rbp+0x110]
36ed29 call   0x2d796c
36ed2e jmp    0x36ee0f
36ed33 lea    rcx,[rsp+0x40]
36ed38 call   0x2d4dc0
36ed3d lea    rcx,[rsp+0x70]
36ed42 mov    rdi,rax
36ed45 mov    edx,DWORD PTR [rax+0x28]
36ed48 call   0x2d9510
36ed4d lea    rdx,[rbp+0x2a8]
36ed54 mov    rbx,rax
36ed57 lea    rcx,[rbp+0x2a0]
36ed5e call   0x36e350 ; STRING getter=0x36e350  x
36ed63 mov    rcx,rax
36ed66 call   0x3203f4
36ed6b mov    rdx,rax
36ed6e lea    rcx,[rbp+0x80]
36ed75 call   0x2cc2cc
36ed7a mov    r8,rax
36ed7d lea    rdx,[rdi+0x8]
36ed81 lea    rcx,[rbp+0x20]
36ed85 call   0x2ea618
36ed8a mov    rdx,rax
36ed8d lea    rcx,[rbp-0x18]
36ed91 mov    r8,rbx
36ed94 call   0x2cef40
36ed99 lea    rcx,[rbp+0x20]
36ed9d call   0x2cc4f4
36eda2 lea    rcx,[rbp+0x80]
36eda9 call   0x2cc4f4
36edae lea    rcx,[rsp+0x70]
36edb3 call   0x2cc4f4
36edb8 movups xmm0,XMMWORD PTR [rip+0x8dac9]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36edbf lea    rcx,[rbp+0x8]
36edc3 movss  xmm1,DWORD PTR [rsp+0x38]
36edc9 movaps xmm2,xmm7
36edcc movdqa XMMWORD PTR [rsp+0x70],xmm0
36edd2 call   0x2cc340
36edd7 mov    rdx,QWORD PTR [r15+0x10]
36eddb lea    r8,[rbp-0x18]
36eddf mov    r9,rax
36ede2 mov    DWORD PTR [rsp+0x28],esi
36ede6 lea    rax,[rsp+0x70]
36edeb mov    rcx,r15
36edee mov    QWORD PTR [rsp+0x20],rax
36edf3 call   0x36135c
36edf8 lea    rcx,[rbp-0x18]
36edfc addss  xmm7,xmm6
36ee00 call   0x2cc4f4
36ee05 lea    rcx,[rsp+0x40]
36ee0a call   0x2d4e00
36ee0f lea    rdx,[rsp+0x60]
36ee14 lea    rcx,[rsp+0x40]
36ee19 call   0x2cc534
36ee1e test   al,al
36ee20 je     0x36ed33
36ee26 lea    rdx,[rbp-0x40]
36ee2a lea    rcx,[rbp+0x2a0]
36ee31 call   0x36e380 ; STRING getter=0x36e380 s]
36ee36 mov    rcx,rax
36ee39 call   0x3203f4
36ee3e mov    rdx,rax
36ee41 lea    rcx,[rbp-0x70]
36ee45 call   0x2cc2cc
36ee4a cvttss2si r8d,DWORD PTR [rip+0x911ad]        # 0x400000
36ee53 mov    r14,rax
36ee56 mov    ebx,0x88888889
36ee5b mov    eax,ebx
36ee5d imul   r8d
36ee60 add    edx,r8d
36ee63 sar    edx,0x5
36ee66 mov    ecx,edx
36ee68 shr    ecx,0x1f
36ee6b add    edx,ecx
36ee6d imul   ecx,edx,0x3c
36ee70 sub    r8d,ecx
36ee73 lea    rcx,[rbp+0xe0]
36ee7a mov    edx,r8d
36ee7d call   0x2d9510
36ee82 lea    rdx,[rsp+0x40]
36ee87 mov    rsi,rax
36ee8a lea    rcx,[rbp+0x2a0]
36ee91 call   0x36e368 ; STRING getter=0x36e368 m:
36ee96 mov    rcx,rax
36ee99 call   0x3203f4
36ee9e mov    rdx,rax
36eea1 lea    rcx,[rbp+0xc0]
36eea8 call   0x2cc2cc
36eead cvttss2si ecx,DWORD PTR [rip+0x9114b]        # 0x400000
36eeb5 mov    rdi,rax
36eeb8 mov    eax,ebx
36eeba imul   ecx
36eebc add    edx,ecx
36eebe sar    edx,0x5
36eec1 mov    ecx,edx
36eec3 shr    ecx,0x1f
36eec6 add    edx,ecx
36eec8 lea    rcx,[rbp+0x60]
36eecc call   0x2d9510
36eed1 lea    rdx,[rbp+0x2a8]
36eed8 mov    rbx,rax
36eedb lea    rcx,[rbp+0x2a0]
36eee2 call   0x2f00f8 ; STRING getter=0x2f00f8 [
36eee7 mov    rcx,rax
36eeea call   0x2d8464
36eeef mov    rdx,rax
36eef2 lea    rcx,[rsp+0x70]
36eef7 call   0x2cc2cc
36eefc mov    rdx,rax
36eeff lea    rcx,[rbp-0x18]
36ef03 mov    r8,rbx
36ef06 call   0x2cef40
36ef0b mov    rdx,rax
36ef0e lea    rcx,[rbp+0x80]
36ef15 mov    r8,rdi
36ef18 call   0x2cef40
36ef1d mov    rdx,rax
36ef20 lea    rcx,[rbp+0x20]
36ef24 mov    r8,rsi
36ef27 call   0x2cef40
36ef2c mov    rdx,rax
36ef2f lea    rcx,[rbp+0x40]
36ef33 mov    r8,r14
36ef36 call   0x2cef40
36ef3b lea    rcx,[rbp+0x20]
36ef3f call   0x2cc4f4
36ef44 lea    rcx,[rbp+0x80]
36ef4b call   0x2cc4f4
36ef50 lea    rcx,[rbp-0x18]
36ef54 call   0x2cc4f4
36ef59 lea    rcx,[rsp+0x70]
36ef5e call   0x2cc4f4
36ef63 lea    rcx,[rbp+0x60]
36ef67 call   0x2cc4f4
36ef6c lea    rcx,[rbp+0xc0]
36ef73 call   0x2cc4f4
36ef78 lea    rcx,[rbp+0xe0]
36ef7f call   0x2cc4f4
36ef84 lea    rcx,[rbp-0x70]
36ef88 call   0x2cc4f4
36ef8d movups xmm0,XMMWORD PTR [rip+0x8d8f4]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36ef94 lea    rcx,[rbp+0x2a0]
36ef9b movss  xmm1,DWORD PTR [rsp+0x38]
36efa1 movaps xmm2,xmm7
36efa4 movdqa XMMWORD PTR [rsp+0x70],xmm0
36efaa call   0x2cc340
36efaf mov    rdx,QWORD PTR [r15+0x10]
36efb3 lea    r8,[rbp+0x40]
36efb7 mov    r9,rax
36efba mov    DWORD PTR [rsp+0x28],0x3
36efc2 lea    rax,[rsp+0x70]
36efc7 mov    rcx,r15
36efca mov    QWORD PTR [rsp+0x20],rax
36efcf call   0x36135c
36efd4 lea    rcx,[rbp+0x40]
36efd8 call   0x2cc4f4
36efdd lea    rcx,[rbp+0xa0]
36efe4 call   0x2cc4f4
36efe9 test   r13b,r13b
36efec je     0x36f595
36eff2 cmp    BYTE PTR [rip+0x77e3f],0x0        # 0x3e6e38 ; CONFIG Bools.DisableESPMap value(+0x48)
36eff9 je     0x36f008
36effb call   0x315b84
36f000 test   al,al
36f002 jne    0x36f595
36f008 cmp    BYTE PTR [rip+0x84c39],0x0        # 0x3f3c48 ; CONFIG Bools.raidesp value(+0x48)
36f00f je     0x36f595
36f015 xor    r8d,r8d
36f018 lea    rdx,[rbp+0x40]
36f01c lea    rcx,[rip+0x81515]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
36f023 call   0x2e98f0
36f028 mov    rcx,rax
36f02b call   0x2d4d70
36f030 test   al,al
36f032 je     0x36f041
36f034 cmp    BYTE PTR [rip+0x76c7d],0x0        # 0x3e5cb8
36f03b jne    0x36f595
36f041 lea    rdx,[rbp+0x10]
36f045 lea    rcx,[rbp-0x28]
36f049 call   0x2dff30
36f04e movsd  xmm1,QWORD PTR [rbp-0x28]
36f053 lea    r9,[rip+0x6824e]        # 0x3d72a8
36f05a mov    eax,DWORD PTR [rbp-0x20]
36f05d lea    r8,[rsp+0x30]
36f062 lea    rdx,[rsp+0x50]
36f067 movsd  QWORD PTR [rsp+0x50],xmm1
36f06d mov    rcx,r12
36f070 mov    DWORD PTR [rsp+0x58],eax
36f074 movaps xmm6,xmm0
36f077 call   0x36cd20
36f07c test   al,al
36f07e je     0x36f595
36f084 lea    rdx,[rbp+0x2a8]
36f08b lea    rcx,[rbp+0x2a0]
36f092 call   0x36e3b0 ; STRING getter=0x36e3b0 m)
36f097 mov    rcx,rax
36f09a call   0x3203f4
36f09f mov    rdx,rax
36f0a2 lea    rcx,[rbp+0x60]
36f0a6 call   0x2cc2cc
36f0ab cvttss2si edx,xmm6
36f0af lea    rcx,[rbp+0xc0]
36f0b6 mov    rdi,rax
36f0b9 call   0x2d9510
36f0be lea    rdx,[rsp+0x40]
36f0c3 mov    rbx,rax
36f0c6 lea    rcx,[rbp+0x2a0]
36f0cd call   0x36e398 ; STRING getter=0x36e398 Raid(
36f0d2 mov    rcx,rax
36f0d5 call   0x2d84dc
36f0da mov    rdx,rax
36f0dd lea    rcx,[rbp+0xe0]
36f0e4 call   0x2cc2cc
36f0e9 mov    rdx,rax
36f0ec lea    rcx,[rbp-0x70]
36f0f0 mov    r8,rbx
36f0f3 call   0x2cef40
36f0f8 mov    rdx,rax
36f0fb lea    rcx,[rbp+0x1c0]
36f102 mov    r8,rdi
36f105 call   0x2cef40
36f10a lea    rcx,[rbp-0x70]
36f10e call   0x2cc4f4
36f113 lea    rcx,[rbp+0xe0]
36f11a call   0x2cc4f4
36f11f lea    rcx,[rbp+0xc0]
36f126 call   0x2cc4f4
36f12b lea    rcx,[rbp+0x60]
36f12f call   0x2cc4f4
36f134 movups xmm0,XMMWORD PTR [rip+0x8d74d]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f13b lea    rcx,[rbp+0x2a0]
36f142 movss  xmm2,DWORD PTR [rsp+0x34]
36f148 movss  xmm1,DWORD PTR [rsp+0x30]
36f14e movdqa XMMWORD PTR [rsp+0x70],xmm0
36f154 call   0x2cc340
36f159 mov    rdx,QWORD PTR [r15+0x10]
36f15d lea    r8,[rbp+0x1c0]
36f164 mov    r9,rax
36f167 mov    r12d,0x1
36f16d lea    rax,[rsp+0x70]
36f172 mov    DWORD PTR [rsp+0x28],r12d
36f177 mov    rcx,r15
36f17a mov    QWORD PTR [rsp+0x20],rax
36f17f call   0x36135c
36f184 movss  xmm0,DWORD PTR [rsp+0x34]
36f18a lea    rdx,[rsp+0x38]
36f18f addss  xmm0,DWORD PTR [rip+0xffffffffffed9d41]        # 0x248ed8 ; f32=16
36f197 lea    rcx,[rbp+0x110]
36f19e movss  DWORD PTR [rsp+0x34],xmm0
36f1a4 call   0x2d792c
36f1a9 lea    rdx,[rsp+0x60]
36f1ae lea    rcx,[rbp+0x110]
36f1b5 call   0x2d796c
36f1ba jmp    0x36f305
36f1bf lea    rcx,[rsp+0x38]
36f1c4 call   0x2d4dc0
36f1c9 lea    rdx,[rbp+0x2a0]
36f1d0 mov    rsi,rax
36f1d3 lea    rcx,[rbp+0x2a8]
36f1da call   0x2cc730
36f1df mov    rcx,rax
36f1e2 call   0x2cdca4
36f1e7 mov    rdx,rax
36f1ea lea    rcx,[rbp+0x20]
36f1ee call   0x2cc2cc
36f1f3 mov    edx,DWORD PTR [rsi+0x28]
36f1f6 lea    rcx,[rbp+0x60]
36f1fa mov    rdi,rax
36f1fd call   0x2d9510
36f202 lea    rdx,[rsp+0x40]
36f207 mov    rbx,rax
36f20a lea    rcx,[rbp+0x2a8]
36f211 call   0x36e3c8 ; STRING getter=0x36e3c8  x
36f216 mov    rcx,rax
36f219 call   0x3203f4
36f21e mov    rdx,rax
36f221 lea    rcx,[rbp+0xc0]
36f228 call   0x2cc2cc
36f22d mov    r8,rax
36f230 lea    rdx,[rsi+0x8]
36f234 lea    rcx,[rbp+0xe0]
36f23b call   0x2ea618
36f240 mov    rdx,rax
36f243 lea    rcx,[rbp-0x70]
36f247 mov    r8,rbx
36f24a call   0x2cef40
36f24f mov    rdx,rax
36f252 lea    rcx,[rbp+0xa0]
36f259 mov    r8,rdi
36f25c call   0x2cef40
36f261 lea    rcx,[rbp-0x70]
36f265 call   0x2cc4f4
36f26a lea    rcx,[rbp+0xe0]
36f271 call   0x2cc4f4
36f276 lea    rcx,[rbp+0xc0]
36f27d call   0x2cc4f4
36f282 lea    rcx,[rbp+0x60]
36f286 call   0x2cc4f4
36f28b lea    rcx,[rbp+0x20]
36f28f call   0x2cc4f4
36f294 movups xmm0,XMMWORD PTR [rip+0x8d5ed]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f29b lea    rcx,[rbp+0x8]
36f29f movss  xmm2,DWORD PTR [rsp+0x34]
36f2a5 movss  xmm1,DWORD PTR [rsp+0x30]
36f2ab movdqa XMMWORD PTR [rsp+0x70],xmm0
36f2b1 call   0x2cc340
36f2b6 mov    rdx,QWORD PTR [r15+0x10]
36f2ba lea    r8,[rbp+0xa0]
36f2c1 mov    r9,rax
36f2c4 mov    DWORD PTR [rsp+0x28],r12d
36f2c9 lea    rax,[rsp+0x70]
36f2ce mov    rcx,r15
36f2d1 mov    QWORD PTR [rsp+0x20],rax
36f2d6 call   0x36135c
36f2db movss  xmm0,DWORD PTR [rsp+0x34]
36f2e1 lea    rcx,[rbp+0xa0]
36f2e8 addss  xmm0,DWORD PTR [rip+0xffffffffffed9be8]        # 0x248ed8 ; f32=16
36f2f0 movss  DWORD PTR [rsp+0x34],xmm0
36f2f6 call   0x2cc4f4
36f2fb lea    rcx,[rsp+0x38]
36f300 call   0x2d4e00
36f305 lea    rdx,[rsp+0x60]
36f30a lea    rcx,[rsp+0x38]
36f30f call   0x2cc534
36f314 test   al,al
36f316 je     0x36f1bf
36f31c lea    rdx,[rsp+0x40]
36f321 lea    rcx,[rbp+0x2a0]
36f328 call   0x36e414 ; STRING getter=0x36e414 s]
36f32d mov    rcx,rax
36f330 call   0x3203f4
36f335 mov    rdx,rax
36f338 lea    rcx,[rbp-0x18]
36f33c call   0x2cc2cc
36f341 cvttss2si r8d,DWORD PTR [rip+0x90cb6]        # 0x400000
36f34a mov    r14,rax
36f34d mov    ebx,0x88888889
36f352 mov    eax,ebx
36f354 imul   r8d
36f357 add    edx,r8d
36f35a sar    edx,0x5
36f35d mov    ecx,edx
36f35f shr    ecx,0x1f
36f362 add    edx,ecx
36f364 imul   ecx,edx,0x3c
36f367 sub    r8d,ecx
36f36a lea    rcx,[rbp+0xa0]
36f371 mov    edx,r8d
36f374 call   0x2d9510
36f379 lea    rdx,[rbp-0x40]
36f37d mov    rsi,rax
36f380 lea    rcx,[rbp+0x2a0]
36f387 call   0x36e3fc ; STRING getter=0x36e3fc m:
36f38c mov    rcx,rax
36f38f call   0x3203f4
36f394 mov    rdx,rax
36f397 lea    rcx,[rbp+0x80]
36f39e call   0x2cc2cc
36f3a3 cvttss2si ecx,DWORD PTR [rip+0x90c55]        # 0x400000
36f3ab mov    rdi,rax
36f3ae mov    eax,ebx
36f3b0 imul   ecx
36f3b2 add    edx,ecx
36f3b4 sar    edx,0x5
36f3b7 mov    ecx,edx
36f3b9 shr    ecx,0x1f
36f3bc add    edx,ecx
36f3be lea    rcx,[rbp+0x20]
36f3c2 call   0x2d9510
36f3c7 lea    rdx,[rbp+0x2a8]
36f3ce mov    rbx,rax
36f3d1 lea    rcx,[rbp+0x2a0]
36f3d8 call   0x2f00f8 ; STRING getter=0x2f00f8 [
36f3dd mov    rcx,rax
36f3e0 call   0x2d8464
36f3e5 mov    rdx,rax
36f3e8 lea    rcx,[rbp+0x60]
36f3ec call   0x2cc2cc
36f3f1 mov    rdx,rax
36f3f4 lea    rcx,[rbp+0xc0]
36f3fb mov    r8,rbx
36f3fe call   0x2cef40
36f403 mov    rdx,rax
36f406 lea    rcx,[rbp+0xe0]
36f40d mov    r8,rdi
36f410 call   0x2cef40
36f415 mov    rdx,rax
36f418 lea    rcx,[rbp-0x70]
36f41c mov    r8,rsi
36f41f call   0x2cef40
36f424 mov    rdx,rax
36f427 lea    rcx,[rbp+0x1a0]
36f42e mov    r8,r14
36f431 call   0x2cef40
36f436 lea    rcx,[rbp-0x70]
36f43a call   0x2cc4f4
36f43f lea    rcx,[rbp+0xe0]
36f446 call   0x2cc4f4
36f44b lea    rcx,[rbp+0xc0]
36f452 call   0x2cc4f4
36f457 lea    rcx,[rbp+0x60]
36f45b call   0x2cc4f4
36f460 lea    rcx,[rbp+0x20]
36f464 call   0x2cc4f4
36f469 lea    rcx,[rbp+0x80]
36f470 call   0x2cc4f4
36f475 lea    rcx,[rbp+0xa0]
36f47c call   0x2cc4f4
36f481 lea    rcx,[rbp-0x18]
36f485 call   0x2cc4f4
36f48a movups xmm0,XMMWORD PTR [rip+0x8d3f7]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f491 lea    rcx,[rbp+0x2a0]
36f498 movss  xmm2,DWORD PTR [rsp+0x34]
36f49e movss  xmm1,DWORD PTR [rsp+0x30]
36f4a4 movdqa XMMWORD PTR [rsp+0x70],xmm0
36f4aa call   0x2cc340
36f4af mov    rdx,QWORD PTR [r15+0x10]
36f4b3 lea    r8,[rbp+0x1a0]
36f4ba mov    r9,rax
36f4bd mov    DWORD PTR [rsp+0x28],r12d
36f4c2 lea    rax,[rsp+0x70]
36f4c7 mov    rcx,r15
36f4ca mov    QWORD PTR [rsp+0x20],rax
36f4cf call   0x36135c
36f4d4 movss  xmm0,DWORD PTR [rsp+0x34]
36f4da lea    rdx,[rsp+0x50]
36f4df addss  xmm0,DWORD PTR [rip+0xffffffffffed99f1]        # 0x248ed8 ; f32=16
36f4e7 mov    eax,DWORD PTR [rbp-0x20]
36f4ea lea    rcx,[rbp+0x150]
36f4f1 mov    DWORD PTR [rsp+0x58],eax
36f4f5 movss  DWORD PTR [rsp+0x34],xmm0
36f4fb movsd  xmm0,QWORD PTR [rbp-0x28]
36f500 movsd  QWORD PTR [rsp+0x50],xmm0
36f506 call   0x315518
36f50b lea    rcx,[rbp+0x150]
36f512 call   0x2d8694
36f517 test   al,al
36f519 jne    0x36f565
36f51b movups xmm0,XMMWORD PTR [rip+0x8d366]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f522 lea    rcx,[rbp+0x2a0]
36f529 movss  xmm2,DWORD PTR [rsp+0x34]
36f52f movss  xmm1,DWORD PTR [rsp+0x30]
36f535 movdqa XMMWORD PTR [rsp+0x70],xmm0
36f53b call   0x2cc340
36f540 mov    rdx,QWORD PTR [r15+0x10]
36f544 lea    r8,[rbp+0x150]
36f54b mov    r9,rax
36f54e mov    DWORD PTR [rsp+0x28],r12d
36f553 lea    rax,[rsp+0x70]
36f558 mov    rcx,r15
36f55b mov    QWORD PTR [rsp+0x20],rax
36f560 call   0x36135c
36f565 lea    rcx,[rbp+0x110]
36f56c call   0x36ff84
36f571 lea    rcx,[rbp+0x150]
36f578 call   0x2cc4f4
36f57d lea    rcx,[rbp+0x1a0]
36f584 call   0x2cc4f4
36f589 lea    rcx,[rbp+0x1c0]
36f590 call   0x2cc4f4
36f595 lea    rcx,[rbp+0x110]
36f59c call   0x36e094
36f5a1 lea    r11,[rsp+0x350]
36f5a9 mov    rbx,QWORD PTR [r11+0x40]
36f5ad movaps xmm6,XMMWORD PTR [r11-0x10]
36f5b2 movaps xmm7,XMMWORD PTR [r11-0x20]
36f5b7 movaps xmm8,XMMWORD PTR [r11-0x30]
36f5bc mov    rsp,r11
36f5bf pop    r15
36f5c1 pop    r14
36f5c3 pop    r13
36f5c5 pop    r12
36f5c7 pop    rdi
36f5c8 pop    rsi
36f5c9 pop    rbp
36f5ca ret
