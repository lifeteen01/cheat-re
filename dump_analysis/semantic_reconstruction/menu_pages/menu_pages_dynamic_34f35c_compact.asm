; pdata function 0x34f35c..0x350033 unwind=0x3d3d3c
34f35c mov    rax,rsp
34f35f mov    QWORD PTR [rax+0x8],rbx
34f363 push   rbp
34f364 push   rsi
34f365 push   rdi
34f366 push   r12
34f368 push   r13
34f36a push   r14
34f36c push   r15
34f36e lea    rbp,[rax-0x178]
34f375 sub    rsp,0x240
34f37c movaps XMMWORD PTR [rax-0x48],xmm6
34f380 movaps XMMWORD PTR [rax-0x58],xmm7
34f384 movaps XMMWORD PTR [rax-0x68],xmm8
34f389 movaps XMMWORD PTR [rax-0x78],xmm11
34f38e call   0x38ec90
34f393 movss  xmm11,DWORD PTR [rip+0xfffffffffff3deb8]        # 0x28d254 ; f32=1
34f39c mov    ecx,0x4
34f3a1 movaps xmm1,xmm11
34f3a5 call   0x392298
34f3aa mov    edx,eax
34f3ac mov    ecx,0x8
34f3b1 call   0x398bec
34f3b6 lea    rdx,[rip+0xadf0b]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34f3bd lea    rcx,[rbp+0x40]
34f3c1 call   0x2d4194
34f3c6 lea    rcx,[rbp+0x198]
34f3cd call   0x39233c
34f3d2 movss  xmm8,DWORD PTR [rip+0xfffffffffff3e749]        # 0x28db24 ; f32=30
34f3db movss  xmm6,DWORD PTR [rax]
34f3df mulss  xmm6,DWORD PTR [rip+0xfffffffffff3de69]        # 0x28d250 ; f32=0.5
34f3e7 subss  xmm6,xmm8
34f3ec call   0x3925cc
34f3f1 movaps xmm2,xmm0
34f3f4 lea    rcx,[rbp+0x190]
34f3fb movaps xmm1,xmm6
34f3fe call   0x2cc340
34f403 lea    rcx,[rbp+0x40]
34f407 call   0x2d8ad8
34f40c lea    rcx,[rbp+0x40]
34f410 mov    rdi,rax
34f413 call   0x2cd7ec
34f418 mov    ecx,DWORD PTR [rip+0xadcca]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f41e mov    r12d,0x2
34f424 mov    rsi,rax
34f427 lea    r15d,[r12-0x1]
34f42c cmp    ecx,r15d
34f42f jne    0x34f43f
34f431 lea    rcx,[rip+0xfffffffffff58848]        # 0x2a7c80
34f438 call   0x365004
34f43d jmp    0x34f466
34f43f cmp    ecx,r12d
34f442 jne    0x34f44d
34f444 lea    rcx,[rip+0xfffffffffff58845]        # 0x2a7c90
34f44b jmp    0x34f438
34f44d lea    rdx,[rsp+0x40]
34f452 lea    rcx,[rbp+0x188]
34f459 call   0x353924 ; STRING getter=0x353924 Search..
34f45e mov    rcx,rax
34f461 call   0x2e9b8c
34f466 lea    rdx,[rbp-0x50]
34f46a mov    rbx,rax
34f46d lea    rcx,[rbp+0x188]
34f474 call   0x35225c ; STRING getter=0x35225c ##search
34f479 mov    rcx,rax
34f47c call   0x2e9b8c
34f481 mov    QWORD PTR [rsp+0x38],0x0
34f48a mov    rcx,rax
34f48d lea    rax,[rbp+0x190]
34f494 mov    QWORD PTR [rsp+0x30],0x0
34f49d mov    DWORD PTR [rsp+0x28],0x5000
34f4a5 mov    r9d,edi
34f4a8 mov    r8,rsi
34f4ab mov    QWORD PTR [rsp+0x20],rax
34f4b0 mov    rdx,rbx
34f4b3 call   0x3c0538
34f4b8 call   0x39408c
34f4bd mov    ecx,r15d
34f4c0 mov    BYTE PTR [rip+0xae02f],al        # 0x3fd4f5
34f4c6 call   0x39890c
34f4cb mov    eax,DWORD PTR [rip+0xae4f7]        # 0x3fd9c8
34f4d1 test   r15b,al
34f4d4 jne    0x34f4eb
34f4d6 or     eax,r15d
34f4d9 lea    rcx,[rip+0x816dc]        # 0x3d0bbc
34f4e0 mov    DWORD PTR [rip+0xae4e2],eax        # 0x3fd9c8
34f4e6 call   0x2cd32c
34f4eb movss  xmm1,DWORD PTR [rip+0xfffffffffff43cc9]        # 0x2931bc ; f32=16
34f4f3 lea    rcx,[rbp+0x188]
34f4fa movaps xmm2,xmm1
34f4fd call   0x2cc340
34f502 lea    rdx,[rbp+0x188]
34f509 mov    ecx,r12d
34f50c call   0x398c60
34f511 lea    rcx,[rsp+0x58]
34f516 call   0x39233c
34f51b movss  xmm2,DWORD PTR [rip+0xfffffffffff43d3d]        # 0x293260 ; f32=-1
34f523 lea    rcx,[rbp+0x198]
34f52a movss  xmm1,DWORD PTR [rax]
34f52e mulss  xmm1,DWORD PTR [rip+0xfffffffffff3dd1a]        # 0x28d250 ; f32=0.5
34f536 subss  xmm1,xmm8
34f53b call   0x2cc340
34f540 lea    rdx,[rbp+0x190]
34f547 lea    rcx,[rbp+0x188]
34f54e call   0x354d54 ; STRING getter=0x354d54 list
34f553 mov    rcx,rax
34f556 call   0x2cdccc
34f55b mov    rcx,rax
34f55e lea    rdx,[rbp+0x198]
34f565 mov    r9d,0x10000
34f56b xor    r8d,r8d
34f56e call   0x38e97c
34f573 lea    r13,[rip+0xacb4e]        # 0x3fc0c8
34f57a mov    rcx,r13
34f57d call   0x2dcf98
34f582 lea    rcx,[rip+0xffffffffffec92c7]        # 0x218850
34f589 call   0x2d79c0
34f58e lea    rcx,[rip+0xffffffffffec92bb]        # 0x218850
34f595 mov    r14,rax
34f598 call   0x2d1978
34f59d mov    rsi,rax
34f5a0 cmp    rax,r14
34f5a3 je     0x34f763
34f5a9 lea    rdx,[rbp+0x198]
34f5b0 lea    rcx,[rsi+0x48]
34f5b4 call   0x364a48
34f5b9 lea    rdx,[rsp+0x58]
34f5be lea    rcx,[rsi+0x48]
34f5c2 mov    rbx,QWORD PTR [rax]
34f5c5 call   0x362f58
34f5ca lea    rcx,[rbp+0x188]
34f5d1 mov    rdi,rax
34f5d4 call   0x2cb3a4
34f5d9 mov    rdx,QWORD PTR [rdi]
34f5dc lea    rcx,[rsp+0x60]
34f5e1 mov    r9,rax
34f5e4 mov    r8,rbx
34f5e7 call   0x335520
34f5ec lea    rdx,[rsp+0x60]
34f5f1 lea    rcx,[rip+0x87c68]        # 0x3d7260
34f5f8 call   0x2ef794
34f5fd cmp    DWORD PTR [rax+0x24],r12d
34f601 jne    0x34f749
34f607 lea    rdi,[rip+0xadcba]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34f60e mov    rcx,rdi
34f611 call   0x3360f0
34f616 test   al,al
34f618 jne    0x34f73d
34f61e lea    rdx,[rsi+0x28]
34f622 lea    rcx,[rbp-0x18]
34f626 call   0x2d4194
34f62b mov    edx,DWORD PTR [rsi+0x90]
34f631 lea    rcx,[rbp-0x38]
34f635 call   0x2d9510
34f63a lea    rdx,[rbp+0x28]
34f63e mov    rcx,rdi
34f641 call   0x2d86d4
34f646 lea    rdx,[rbp+0x30]
34f64a mov    rcx,rdi
34f64d mov    rbx,QWORD PTR [rax]
34f650 call   0x2d7cf0
34f655 lea    rcx,[rbp+0x190]
34f65c mov    rdi,rax
34f65f call   0x2cb3a4
34f664 mov    rdx,QWORD PTR [rdi]
34f667 lea    rcx,[rbp-0x80]
34f66b mov    r9,rax
34f66e mov    r8,rbx
34f671 call   0x335520
34f676 lea    rdx,[rbp-0x60]
34f67a lea    rcx,[rbp-0x18]
34f67e call   0x2d7cf0
34f683 lea    rdx,[rbp+0x10]
34f687 lea    rcx,[rbp-0x18]
34f68b mov    rdi,QWORD PTR [rax]
34f68e call   0x2d86d4
34f693 lea    rdx,[rbp-0x50]
34f697 lea    rcx,[rbp-0x18]
34f69b mov    rbx,QWORD PTR [rax]
34f69e call   0x2d7cf0
34f6a3 lea    rcx,[rip+0xfffffffffff86e66]        # 0x2d6510
34f6aa mov    r9,rdi
34f6ad mov    QWORD PTR [rsp+0x20],rcx
34f6b2 mov    r8,rbx
34f6b5 lea    rcx,[rsp+0x40]
34f6ba mov    rdx,QWORD PTR [rax]
34f6bd call   0x3362d0
34f6c2 xor    r8d,r8d
34f6c5 lea    rdx,[rbp-0x80]
34f6c9 lea    rcx,[rbp-0x18]
34f6cd call   0x2d88e0
34f6d2 cmp    rax,0xffffffffffffffff
34f6d6 jne    0x34f722
34f6d8 xor    r8d,r8d
34f6db lea    rdx,[rbp-0x80]
34f6df lea    rcx,[rsp+0x60]
34f6e4 call   0x2d88e0
34f6e9 cmp    rax,0xffffffffffffffff
34f6ed jne    0x34f722
34f6ef xor    r8d,r8d
34f6f2 lea    rdx,[rbp-0x80]
34f6f6 lea    rcx,[rbp-0x38]
34f6fa call   0x2d88e0
34f6ff cmp    rax,0xffffffffffffffff
34f703 jne    0x34f722
34f705 lea    rcx,[rbp-0x80]
34f709 call   0x2cc4f4
34f70e lea    rcx,[rbp-0x38]
34f712 call   0x2cc4f4
34f717 lea    rcx,[rbp-0x18]
34f71b call   0x2cc4f4
34f720 jmp    0x34f749
34f722 lea    rcx,[rbp-0x80]
34f726 call   0x2cc4f4
34f72b lea    rcx,[rbp-0x38]
34f72f call   0x2cc4f4
34f734 lea    rcx,[rbp-0x18]
34f738 call   0x2cc4f4
34f73d lea    rdx,[rsi+0x28]
34f741 mov    rcx,r13
34f744 call   0x2d901c
34f749 lea    rcx,[rsp+0x60]
34f74e call   0x2cc4f4
34f753 add    rsi,0x98
34f75a cmp    rsi,r14
34f75d jne    0x34f5a9
34f763 mov    rcx,r13
34f766 call   0x2d86a0
34f76b test   al,al
34f76d je     0x34f77b
34f76f mov    DWORD PTR [rip+0xae253],0xffffffff        # 0x3fd9cc
34f779 jmp    0x34f7a4
34f77b movsxd rbx,DWORD PTR [rip+0xae24a]        # 0x3fd9cc
34f782 test   ebx,ebx
34f784 js     0x34f793
34f786 mov    rcx,r13
34f789 call   0x2d93e8
34f78e cmp    rbx,rax
34f791 jb     0x34f7a4
34f793 mov    rcx,r13
34f796 call   0x2d93e8
34f79b sub    eax,r15d
34f79e mov    DWORD PTR [rip+0xae228],eax        # 0x3fd9cc
34f7a4 mov    rcx,r13
34f7a7 call   0x2d86a0
34f7ac xorps  xmm7,xmm7
34f7af test   al,al
34f7b1 jne    0x34f82f
34f7b3 lea    rcx,[rbp+0x188]
34f7ba call   0x39233c
34f7bf xorps  xmm2,xmm2
34f7c2 lea    rcx,[rbp+0x188]
34f7c9 movss  xmm1,DWORD PTR [rax]
34f7cd call   0x2cc340
34f7d2 mov    rdx,r13
34f7d5 lea    rcx,[rsp+0x40]
34f7da call   0x2db2bc
34f7df mov    rdx,r13
34f7e2 lea    rcx,[rbp-0x50]
34f7e6 mov    rdi,rax
34f7e9 call   0x2db2bc
34f7ee lea    rdx,[rbp+0x190]
34f7f5 mov    rbx,rax
34f7f8 lea    rcx,[rbp+0x188]
34f7ff call   0x3565c0 ; STRING getter=0x3565c0 Player
34f804 mov    rcx,rax
34f807 call   0x2cdcf4
34f80c mov    rdx,QWORD PTR [rbp+0x188]
34f813 lea    r8,[rip+0xae1b2]        # 0x3fd9cc
34f81a mov    rcx,rax
34f81d mov    BYTE PTR [rsp+0x28],r15b
34f822 mov    r9,rbx
34f825 mov    QWORD PTR [rsp+0x20],rdi
34f82a call   0x387a4c
34f82f call   0x390a88
34f834 mov    ecx,r15d
34f837 call   0x39896c
34f83c call   0x390efc
34f841 movss  xmm1,DWORD PTR [rip+0xfffffffffff43a17]        # 0x293260 ; f32=-1
34f849 xorps  xmm0,xmm0
34f84c call   0x39ac04
34f851 movss  xmm2,DWORD PTR [rip+0xfffffffffff43a07]        # 0x293260 ; f32=-1
34f859 lea    rcx,[rbp+0x198]
34f860 xorps  xmm1,xmm1
34f863 call   0x2cc340
34f868 lea    rdx,[rsp+0x40]
34f86d lea    rcx,[rbp+0x188]
34f874 movsd  xmm6,QWORD PTR [rax]
34f878 call   0x357fb4 ; STRING getter=0x357fb4 Enemy Options
34f87d mov    rcx,rax
34f880 call   0x2dd188
34f885 lea    rdx,[rbp+0x190]
34f88c mov    rbx,rax
34f88f lea    rcx,[rbp+0x188]
34f896 call   0x35073c ; STRING getter=0x35073c H
34f89b mov    rcx,rax
34f89e call   0x2d8464
34f8a3 mov    rdx,rax
34f8a6 lea    rcx,[rbp+0x60]
34f8aa call   0x2cc2cc
34f8af mov    rcx,rax
34f8b2 mov    r9b,r15b
34f8b5 movq   r8,xmm6
34f8ba mov    rdx,rbx
34f8bd call   0x384df0
34f8c2 movsxd rbx,DWORD PTR [rip+0xae103]        # 0x3fd9cc
34f8c9 test   ebx,ebx
34f8cb js     0x34fff6
34f8d1 mov    rcx,r13
34f8d4 call   0x2d93e8
34f8d9 cmp    rbx,rax
34f8dc jae    0x34fff6
34f8e2 lea    rdi,[rip+0xffffffffffec8f67]        # 0x218850
34f8e9 mov    rcx,rdi
34f8ec lea    rdx,[rbp+0x188]
34f8f3 call   0x2d87b0
34f8f8 lea    rdx,[rbp+0x190]
34f8ff mov    rcx,rdi
34f902 mov    rbx,QWORD PTR [rax]
34f905 call   0x2d7d90
34f90a mov    r9b,BYTE PTR [rbp+0x188]
34f911 lea    rcx,[rbp+0x198]
34f918 mov    r8,rbx
34f91b mov    rdx,QWORD PTR [rax]
34f91e call   0x336254
34f923 lea    rdx,[rsp+0x40]
34f928 mov    rcx,rdi
34f92b mov    rbx,rax
34f92e call   0x2d7d90
34f933 mov    rdx,rax
34f936 mov    rcx,rbx
34f939 call   0x3367c0
34f93e mov    rcx,rdi
34f941 movsxd rbx,eax
34f944 call   0x364fe0
34f949 cmp    rbx,rax
34f94c jae    0x34fff6
34f952 mov    rdx,rbx
34f955 mov    rcx,rdi
34f958 call   0x3367a4
34f95d xor    ecx,ecx
34f95f mov    r14,rax
34f962 call   0x2caf08
34f967 test   al,al
34f969 je     0x34fa5c
34f96f movss  xmm1,DWORD PTR [rip+0xfffffffffff3e1cd]        # 0x28db44 ; f32=100
34f977 lea    rcx,[rbp+0x188]
34f97e movaps xmm2,xmm1
34f981 call   0x2cc340
34f986 lea    rcx,[rbp+0x190]
34f98d call   0x39233c
34f992 movss  xmm1,DWORD PTR [rbp+0x190]
34f99a lea    rcx,[rbp+0x198]
34f9a1 subss  xmm1,DWORD PTR [rbp+0x188]
34f9a9 xorps  xmm2,xmm2
34f9ac addss  xmm1,DWORD PTR [rip+0xfffffffffff43828]        # 0x2931dc ; f32=28
34f9b4 call   0x2cc340
34f9b9 lea    rcx,[rsp+0x58]
34f9be call   0x3923d8
34f9c3 lea    rcx,[rbp+0x198]
34f9ca call   0x39b3b8
34f9cf xorps  xmm3,xmm3
34f9d2 movss  DWORD PTR [rsp+0x20],xmm7
34f9d8 xorps  xmm2,xmm2
34f9db lea    rcx,[rbp+0x10]
34f9df xorps  xmm1,xmm1
34f9e2 call   0x2cc350
34f9e7 movaps xmm3,xmm11
34f9eb movss  DWORD PTR [rsp+0x20],xmm11
34f9f2 movaps xmm2,xmm11
34f9f6 lea    rcx,[rbp-0x60]
34f9fa movaps xmm1,xmm11
34f9fe mov    rsi,rax
34fa01 call   0x2cc350
34fa06 movaps xmm2,xmm11
34fa0a lea    rcx,[rsp+0x40]
34fa0f movaps xmm1,xmm11
34fa13 mov    rdi,rax
34fa16 call   0x2cc340
34fa1b xorps  xmm2,xmm2
34fa1e lea    rcx,[rbp-0x50]
34fa22 xorps  xmm1,xmm1
34fa25 mov    rbx,rax
34fa28 call   0x2cc340
34fa2d mov    r8,rax
34fa30 mov    QWORD PTR [rsp+0x28],rsi
34fa35 mov    r9,rbx
34fa38 mov    QWORD PTR [rsp+0x20],rdi
34fa3d lea    rdx,[rbp+0x188]
34fa44 xor    ecx,ecx
34fa46 call   0x3c01ac
34fa4b lea    rcx,[rsp+0x58]
34fa50 call   0x39b3b8
34fa55 lea    rdi,[rip+0xffffffffffec8df4]        # 0x218850
34fa5c lea    rdx,[r14+0x48]
34fa60 lea    rcx,[rsp+0x60]
34fa65 call   0x2d4194
34fa6a lea    rdx,[r14+0x28]
34fa6e lea    rcx,[rbp-0x38]
34fa72 call   0x2d4194
34fa77 mov    edx,DWORD PTR [r14+0x90]
34fa7e lea    rcx,[rbp+0x60]
34fa82 call   0x2d9510
34fa87 lea    rdx,[r14+0x68]
34fa8b lea    rcx,[rbp+0x80]
34fa92 call   0x2d4194
34fa97 lea    rcx,[rsp+0x60]
34fa9c call   0x2d8694
34faa1 test   al,al
34faa3 jne    0x34ffce
34faa9 lea    rcx,[rbp-0x38]
34faad call   0x2d8694
34fab2 test   al,al
34fab4 jne    0x34ffce
34faba call   0x392f34
34fabf mulss  xmm0,DWORD PTR [rip+0xfffffffffff3d789]        # 0x28d250 ; f32=0.5
34fac7 lea    rcx,[rbp+0x190]
34face movaps xmm2,xmm8
34fad2 subss  xmm0,xmm8
34fad7 movaps xmm1,xmm0
34fada call   0x2cc340
34fadf lea    rdx,[rsp+0x40]
34fae4 lea    rcx,[rbp+0x188]
34faeb call   0x358c9c ; STRING getter=0x358c9c Refresh Player List
34faf0 mov    rcx,rax
34faf3 call   0x320494
34faf8 mov    rcx,rax
34fafb lea    rdx,[rbp+0x190]
34fb02 call   0x3bc7d8
34fb07 test   al,al
34fb09 je     0x34fb1d
34fb0b mov    rcx,rdi
34fb0e mov    DWORD PTR [rip+0xadeb4],0xffffffff        # 0x3fd9cc
34fb18 call   0x36306c
34fb1d movss  xmm1,DWORD PTR [rip+0xfffffffffff4373b]        # 0x293260 ; f32=-1
34fb25 xorps  xmm0,xmm0
34fb28 call   0x39ac04
34fb2d call   0x392f34
34fb32 mulss  xmm0,DWORD PTR [rip+0xfffffffffff3d716]        # 0x28d250 ; f32=0.5
34fb3a lea    rcx,[rbp+0x190]
34fb41 movaps xmm2,xmm8
34fb45 subss  xmm0,xmm8
34fb4a movaps xmm1,xmm0
34fb4d call   0x2cc340
34fb52 lea    rdx,[rsp+0x40]
34fb57 lea    rcx,[rbp+0x188]
34fb5e call   0x35a6c4 ; STRING getter=0x35a6c4 Copy Steam Link
34fb63 mov    rcx,rax
34fb66 call   0x2dd160
34fb6b mov    rcx,rax
34fb6e lea    rdx,[rbp+0x190]
34fb75 call   0x3bc7d8
34fb7a test   al,al
34fb7c je     0x34fcc1
34fb82 lea    rdx,[rbp-0x18]
34fb86 lea    rcx,[rbp+0x188]
34fb8d call   0x3454e0 ; STRING getter=0x3454e0 https://steamcommunity.com/profiles/
34fb92 mov    rcx,rax
34fb95 call   0x363cfc
34fb9a mov    rdx,rax
34fb9d lea    r8,[rsp+0x60]
34fba2 lea    rcx,[rbp-0x80]
34fba6 call   0x2ea714
34fbab mov    eax,DWORD PTR [rip+0xade17]        # 0x3fd9c8
34fbb1 test   r12b,al
34fbb4 jne    0x34fc67
34fbba or     eax,r12d
34fbbd lea    rdx,[rbp+0x188]
34fbc4 lea    rcx,[rbp+0x188]
34fbcb mov    DWORD PTR [rip+0xaddf7],eax        # 0x3fd9c8
34fbd1 call   0x2cc730
34fbd6 mov    rcx,rax
34fbd9 call   0x2cdca4
34fbde lea    rdx,[rbp+0x10]
34fbe2 mov    rsi,rax
34fbe5 lea    rcx,[rbp+0x190]
34fbec call   0x351320 ; STRING getter=0x351320 set_systemCopyBuffer
34fbf1 mov    rcx,rax
34fbf4 call   0x3204bc
34fbf9 lea    rdx,[rbp-0x50]
34fbfd mov    rdi,rax
34fc00 lea    rcx,[rbp+0x190]
34fc07 call   0x350e6c ; STRING getter=0x350e6c UnityEngine
34fc0c mov    rcx,rax
34fc0f call   0x2cde34
34fc14 lea    rdx,[rsp+0x40]
34fc19 mov    rbx,rax
34fc1c lea    rcx,[rbp+0x190]
34fc23 call   0x3506d4 ; STRING getter=0x3506d4 GUIUtility
34fc28 mov    rcx,rax
34fc2b call   0x2e9c54
34fc30 mov    rcx,rax
34fc33 mov    rdx,rbx
34fc36 call   0x334224
34fc3b mov    rcx,rax
34fc3e mov    DWORD PTR [rsp+0x20],0xffffffff
34fc46 mov    r9,rsi
34fc49 or     r8d,0xffffffff
34fc4d mov    rdx,rdi
34fc50 call   0x3349ac
34fc55 mov    r8,QWORD PTR [rax]
34fc58 mov    eax,DWORD PTR [rip+0xadd6a]        # 0x3fd9c8
34fc5e mov    QWORD PTR [rip+0xadd6b],r8        # 0x3fd9d0
34fc65 jmp    0x34fc6e
34fc67 mov    r8,QWORD PTR [rip+0xadd62]        # 0x3fd9d0
34fc6e test   al,0x4
34fc70 jne    0x34fc91
34fc72 mov    rcx,QWORD PTR [rip+0x861e7]        # 0x3d5e60
34fc79 lea    rdx,[rip+0xadd60]        # 0x3fd9e0
34fc80 or     eax,0x4
34fc83 xor    r9d,r9d
34fc86 mov    DWORD PTR [rip+0xadd3c],eax        # 0x3fd9c8
34fc8c call   0x2cbd24
34fc91 lea    rcx,[rbp-0x80]
34fc95 call   0x2cd7ec
34fc9a mov    rcx,rax
34fc9d call   0x2ce5dc
34fca2 mov    rcx,QWORD PTR [rip+0x861b7]        # 0x3d5e60
34fca9 lea    rdx,[rip+0xadd30]        # 0x3fd9e0
34fcb0 mov    r8,rax
34fcb3 call   0x2cb9fc
34fcb8 lea    rcx,[rbp-0x80]
34fcbc call   0x2cc4f4
34fcc1 lea    rcx,[rbp+0x188]
34fcc8 call   0x2cb3a4
34fccd mov    ecx,DWORD PTR [rip+0xad415]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fcd3 mov    rbx,rax
34fcd6 cmp    ecx,r15d
34fcd9 jne    0x34fce4
34fcdb lea    rcx,[rip+0xfffffffffff57fbe]        # 0x2a7ca0
34fce2 jmp    0x34fcf0
34fce4 cmp    ecx,r12d
34fce7 jne    0x34fcf7
34fce9 lea    rcx,[rip+0xfffffffffff57fc8]        # 0x2a7cb8
34fcf0 call   0x365004
34fcf5 jmp    0x34fd10
34fcf7 lea    rdx,[rsp+0x40]
34fcfc lea    rcx,[rbp+0x188]
34fd03 call   0x3517cc
34fd08 mov    rcx,rax
34fd0b call   0x2e3614
34fd10 mov    rdx,rax
34fd13 lea    rcx,[rbp+0xa0]
34fd1a call   0x2cc2cc
34fd1f mov    eax,DWORD PTR [rip+0xad3c3]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fd25 cmp    eax,r15d
34fd28 jne    0x34fd33
34fd2a lea    rcx,[rip+0xfffffffffff57f8f]        # 0x2a7cc0
34fd31 jmp    0x34fd3f
34fd33 cmp    eax,r12d
34fd36 jne    0x34fd46
34fd38 lea    rcx,[rip+0xfffffffffff57f99]        # 0x2a7cd8
34fd3f call   0x365004
34fd44 jmp    0x34fd5e
34fd46 lea    rdx,[rbp-0x50]
34fd4a lea    rcx,[rbp+0x190]
34fd51 call   0x351aac ; STRING getter=0x351aac Friendly
34fd56 mov    rcx,rax
34fd59 call   0x2e9b8c
34fd5e mov    rdx,rax
34fd61 lea    rcx,[rbp+0xc0]
34fd68 call   0x2cc2cc
34fd6d mov    eax,DWORD PTR [rip+0xad375]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fd73 cmp    eax,r15d
34fd76 jne    0x34fd81
34fd78 lea    rcx,[rip+0xfffffffffff48ad1]        # 0x298850
34fd7f jmp    0x34fd8d
34fd81 cmp    eax,r12d
34fd84 jne    0x34fd94
34fd86 lea    rcx,[rip+0xfffffffffff48acf]        # 0x29885c
34fd8d call   0x365004
34fd92 jmp    0x34fdaf
34fd94 lea    rdx,[rbp+0x198]
34fd9b lea    rcx,[rbp+0x190]
34fda2 call   0x351cb8 ; STRING getter=0x351cb8 Enemy
34fda7 mov    rcx,rax
34fdaa call   0x2d84dc
34fdaf mov    rdx,rax
34fdb2 lea    rcx,[rbp+0xe0]
34fdb9 call   0x2cc2cc
34fdbe lea    r8,[rbp+0x100]
34fdc5 lea    rdx,[rbp+0xa0]
34fdcc lea    rcx,[rbp+0x30]
34fdd0 call   0x2cc46c
34fdd5 mov    r8,rbx
34fdd8 lea    rdx,[rbp-0x60]
34fddc lea    rcx,[rbp-0x18]
34fde0 movups xmm0,XMMWORD PTR [rax]
34fde3 movdqu XMMWORD PTR [rbp-0x60],xmm0
34fde8 call   0x336438
34fded lea    rdx,[rsp+0x60]
34fdf2 mov    rbx,rax
34fdf5 lea    rcx,[rip+0x87464]        # 0x3d7260
34fdfc call   0x2ef794
34fe01 mov    ecx,DWORD PTR [rip+0xad2e1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fe07 lea    rdi,[rax+0x24]
34fe0b cmp    ecx,r15d
34fe0e jne    0x34fe19
34fe10 lea    rcx,[rip+0xfffffffffff57ec9]        # 0x2a7ce0
34fe17 jmp    0x34fe25
34fe19 cmp    ecx,r12d
34fe1c jne    0x34fe2c
34fe1e lea    rcx,[rip+0xfffffffffff57eeb]        # 0x2a7d10
34fe25 call   0x365004
34fe2a jmp    0x34fe44
34fe2c lea    rdx,[rbp+0x10]
34fe30 lea    rcx,[rbp+0x190]
34fe37 call   0x351584 ; STRING getter=0x351584 Custom status
34fe3c mov    rcx,rax
34fe3f call   0x2dd188
34fe44 mov    r8,rbx
34fe47 mov    rdx,rdi
34fe4a mov    rcx,rax
34fe4d call   0x3bf008
34fe52 mov    edx,0x20
34fe57 lea    r9,[rip+0xfffffffffff7c696]        # 0x2cc4f4
34fe5e lea    rcx,[rbp+0xa0]
34fe65 lea    r8d,[rdx-0x1d]
34fe69 call   0x2dbac8
34fe6e lea    rcx,[rbp-0x38]
34fe72 call   0x2cd7ec
34fe77 mov    ecx,DWORD PTR [rip+0xad26b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fe7d mov    rbx,rax
34fe80 cmp    ecx,r15d
34fe83 jne    0x34fe8e
34fe85 lea    rcx,[rip+0xfffffffffff57e94]        # 0x2a7d20
34fe8c jmp    0x34fe9a
34fe8e cmp    ecx,r12d
34fe91 jne    0x34fea1
34fe93 lea    rcx,[rip+0xfffffffffff57e96]        # 0x2a7d30
34fe9a call   0x365004
34fe9f jmp    0x34feba
34fea1 lea    rdx,[rsp+0x40]
34fea6 lea    rcx,[rbp+0x188]
34fead call   0x351eec ; STRING getter=0x351eec Name: %s
34feb2 mov    rcx,rax
34feb5 call   0x2e9b8c
34feba mov    rdx,rbx
34febd mov    rcx,rax
34fec0 call   0x3c4e90
34fec5 lea    rcx,[rsp+0x60]
34feca call   0x2cd7ec
34fecf mov    ecx,DWORD PTR [rip+0xad213]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fed5 mov    rbx,rax
34fed8 cmp    ecx,r15d
34fedb jne    0x34fee6
34fedd lea    rcx,[rip+0xfffffffffff57e5c]        # 0x2a7d40
34fee4 jmp    0x34fef2
34fee6 cmp    ecx,r12d
34fee9 jne    0x34fef9
34feeb lea    rcx,[rip+0xfffffffffff57e66]        # 0x2a7d58
34fef2 call   0x365004
34fef7 jmp    0x34ff12
34fef9 lea    rdx,[rsp+0x40]
34fefe lea    rcx,[rbp+0x188]
34ff05 call   0x3521cc ; STRING getter=0x3521cc Steam ID: %s
34ff0a mov    rcx,rax
34ff0d call   0x2d85f4
34ff12 mov    rdx,rbx
34ff15 mov    rcx,rax
34ff18 call   0x3c4e90
34ff1d lea    rcx,[rbp+0x60]
34ff21 call   0x2cd7ec
34ff26 mov    ecx,DWORD PTR [rip+0xad1bc]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ff2c mov    rbx,rax
34ff2f cmp    ecx,r15d
34ff32 jne    0x34ff3d
34ff34 lea    rcx,[rip+0xfffffffffff57e35]        # 0x2a7d70
34ff3b jmp    0x34ff49
34ff3d cmp    ecx,r12d
34ff40 jne    0x34ff50
34ff42 lea    rcx,[rip+0xfffffffffff57e47]        # 0x2a7d90
34ff49 call   0x365004
34ff4e jmp    0x34ff69
34ff50 lea    rdx,[rsp+0x40]
34ff55 lea    rcx,[rbp+0x188]
34ff5c call   0x35252c ; STRING getter=0x35252c Team ID: %s
34ff61 mov    rcx,rax
34ff64 call   0x2cde34
34ff69 mov    rdx,rbx
34ff6c mov    rcx,rax
34ff6f call   0x3c4e90
34ff74 lea    rcx,[rbp+0x80]
34ff7b call   0x2cd7ec
34ff80 mov    ecx,DWORD PTR [rip+0xad162]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ff86 mov    rbx,rax
34ff89 cmp    ecx,r15d
34ff8c jne    0x34ff97
34ff8e lea    rcx,[rip+0xfffffffffff57e13]        # 0x2a7da8
34ff95 jmp    0x34ffa3
34ff97 cmp    ecx,r12d
34ff9a jne    0x34ffaa
34ff9c lea    rcx,[rip+0xfffffffffff57e45]        # 0x2a7de8
34ffa3 call   0x365004
34ffa8 jmp    0x34ffc3
34ffaa lea    rdx,[rsp+0x40]
34ffaf lea    rcx,[rbp+0x188]
34ffb6 call   0x35273c ; STRING getter=0x35273c Last Known Grid : %s
34ffbb mov    rcx,rax
34ffbe call   0x3204bc
34ffc3 mov    rdx,rbx
34ffc6 mov    rcx,rax
34ffc9 call   0x3c4e90
34ffce lea    rcx,[rbp+0x80]
34ffd5 call   0x2cc4f4
34ffda lea    rcx,[rbp+0x60]
34ffde call   0x2cc4f4
34ffe3 lea    rcx,[rbp-0x38]
34ffe7 call   0x2cc4f4
34ffec lea    rcx,[rsp+0x60]
34fff1 call   0x2cc4f4
34fff6 call   0x38724c
34fffb lea    rcx,[rbp+0x40]
34ffff call   0x2cc4f4
350004 lea    r11,[rsp+0x240]
35000c mov    rbx,QWORD PTR [r11+0x40]
350010 movaps xmm6,XMMWORD PTR [r11-0x10]
350015 movaps xmm7,XMMWORD PTR [r11-0x20]
35001a movaps xmm8,XMMWORD PTR [r11-0x30]
35001f movaps xmm11,XMMWORD PTR [r11-0x40]
350024 mov    rsp,r11
350027 pop    r15
350029 pop    r14
35002b pop    r13
35002d pop    r12
35002f pop    rdi
350030 pop    rsi
350031 pop    rbp
350032 ret
