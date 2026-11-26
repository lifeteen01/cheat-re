30c27d movss  xmm1,DWORD PTR [rip+0xe3ad3]        # 0x3efd58 ; CONFIG V2.ViolationsPosition value(+0x48)
30c285 mov    rbx,rax
30c288 call   0x2cc340
30c28d mov    rcx,rax
30c290 mov    r8,rbx
30c293 mov    edx,0x2
30c298 call   0x39b734
30c29d cmp    BYTE PTR [rip+0xd9a1a],r15b        # 0x3e5cbe
30c2a4 je     0x30c2f2
30c2a6 xorps  xmm2,xmm2
30c2a9 lea    rcx,[rbp+0x15a8]
30c2b0 xorps  xmm1,xmm1
30c2b3 call   0x2cc340
30c2b8 movss  xmm2,DWORD PTR [rip+0xe3a9c]        # 0x3efd5c
30c2c0 lea    rcx,[rbp+0x15b8]
30c2c7 movss  xmm1,DWORD PTR [rip+0xe3a89]        # 0x3efd58 ; CONFIG V2.ViolationsPosition value(+0x48)
30c2cf mov    rbx,rax
30c2d2 call   0x2cc340
30c2d7 mov    esi,0x1
30c2dc mov    rcx,rax
30c2df mov    edx,esi
30c2e1 mov    r8,rbx
30c2e4 call   0x39b734
30c2e9 mov    BYTE PTR [rip+0xd99ce],r15b        # 0x3e5cbe
30c2f0 jmp    0x30c2f7
30c2f2 mov    esi,0x1
30c2f7 xorps  xmm3,xmm3
30c2fa movss  DWORD PTR [rsp+0x20],xmm11
30c301 xorps  xmm2,xmm2
30c304 lea    rcx,[rsp+0x70]
30c309 xorps  xmm1,xmm1
30c30c call   0x2cc350
30c311 call   0x392ca4
30c316 movups xmm0,XMMWORD PTR [rsp+0x70]
30c31b lea    rcx,[rbp+0x15a8]
30c322 movss  xmm14,DWORD PTR [rip+0xfffffffffff86f11]        # 0x29323c ; f32=240
30c32b movss  xmm2,DWORD PTR [rip+0xfffffffffff86ed5]        # 0x293208 ; f32=84.615
30c333 movaps xmm1,xmm14
30c337 movdqu XMMWORD PTR [rax+0x118],xmm0
30c33f call   0x2cc340
30c344 mov    rcx,rax
30c347 xor    edx,edx
30c349 call   0x39b770
30c34e movzx  ebx,BYTE PTR [rip+0xfffffffffff0c4c3]        # 0x218818
30c355 lea    rdx,[rbp+0x388]
30c35c lea    rcx,[rbp+0x15a8]
30c363 call   0x2f4858 ; STRING getter=0x2f4858 Anti Violations Bar
30c368 mov    rcx,rax
30c36b call   0x320494
30c370 neg    ebx
30c372 mov    rcx,rax
30c375 sbb    r8d,r8d
30c378 xor    edx,edx
30c37a and    r8d,0xfffffffc
30c37e add    r8d,0x2f
30c382 call   0x38cfa4
30c387 lea    rcx,[rbp+0x15b0]
30c38e call   0x39246c
30c393 movss  xmm2,DWORD PTR [rbp+0x15b4]
30c39b lea    rcx,[rbp+0x15b8]
30c3a2 movss  xmm1,DWORD PTR [rbp+0x15b0]
30c3aa call   0x2cc340
30c3af movss  xmm0,DWORD PTR [rbp+0x15b8]
30c3b7 lea    rbx,[rip+0xe3eaa]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
30c3be movss  xmm1,DWORD PTR [rbp+0x15bc]
30c3c6 lea    rdx,[rbp-0x70]
30c3ca mov    rcx,rbx
30c3cd movss  DWORD PTR [rip+0xe3983],xmm0        # 0x3efd58 ; CONFIG V2.ViolationsPosition value(+0x48)
30c3d5 mov    r8,rsi
30c3d8 movss  DWORD PTR [rip+0xe397c],xmm1        # 0x3efd5c
30c3e0 call   0x2e98f0
30c3e5 mov    rcx,rax
30c3e8 call   0x2d4d70
30c3ed movss  xmm10,DWORD PTR [rip+0xfffffffffff86dc6]        # 0x2931bc ; f32=16
30c3f6 mov    edi,0xa
30c3fb movss  xmm6,DWORD PTR [rip+0xfffffffffff86d8d]        # 0x293190 ; f32=6.5
30c403 movss  xmm9,DWORD PTR [rip+0xfffffffffff86d24]        # 0x293130 ; f32=1.9
30c40c test   al,al
30c40e je     0x30c5cc
30c414 cmp    BYTE PTR [rip+0xdda8d],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c41b je     0x30c5cc
30c421 mov    eax,DWORD PTR [rip+0xe28c1]        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c427 test   eax,eax
30c429 jne    0x30c4c2
30c42f movss  xmm2,DWORD PTR [rbp+0x15b4]
30c437 mov    rcx,r13
30c43a movss  xmm1,DWORD PTR [rbp+0x15b0]
30c442 addss  xmm2,xmm8
30c447 addss  xmm1,DWORD PTR [rip+0xfffffffffff86dc9]        # 0x293218 ; f32=119.231
30c44f movss  xmm3,DWORD PTR [rip+0xd9c3d]        # 0x3e6094
30c457 movss  DWORD PTR [rsp+0x30],xmm10
30c45e movss  DWORD PTR [rsp+0x28],xmm14
30c465 movss  DWORD PTR [rbp+0x15b4],xmm2
30c46d movss  DWORD PTR [rbp+0x15b0],xmm1
30c475 movss  DWORD PTR [rsp+0x20],xmm6
30c47b call   0x35b0fc
30c480 movss  xmm2,DWORD PTR [rbp+0x15b4]
30c488 mov    rcx,r13
30c48b addss  xmm2,DWORD PTR [rip+0xfffffffffff81691]        # 0x28db24 ; f32=30
30c493 movss  xmm3,DWORD PTR [rip+0xd9bf5]        # 0x3e6090
30c49b movss  xmm1,DWORD PTR [rbp+0x15b0]
30c4a3 movss  DWORD PTR [rsp+0x30],xmm10
30c4aa movss  DWORD PTR [rsp+0x28],xmm14
30c4b1 movss  DWORD PTR [rsp+0x20],xmm9
30c4b8 call   0x35b0fc
30c4bd jmp    0x30c5cc
30c4c2 cmp    eax,esi
30c4c4 jne    0x30c543
30c4c6 cvttss2si r8d,DWORD PTR [rbp+0x15b4]
30c4cf mov    DWORD PTR [rsp+0x30],0x8
30c4d7 mov    rcx,r13
30c4da mov    DWORD PTR [rsp+0x28],0xf0
30c4e2 cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c4ea movss  xmm3,DWORD PTR [rip+0xd9ba2]        # 0x3e6094
30c4f2 movss  DWORD PTR [rsp+0x20],xmm6
30c4f8 call   0x35bab8
30c4fd movss  xmm0,DWORD PTR [rbp+0x15b4]
30c505 mov    rcx,r13
30c508 cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c510 mov    DWORD PTR [rsp+0x30],0x8
30c518 mov    DWORD PTR [rsp+0x28],0xf0
30c520 movss  xmm3,DWORD PTR [rip+0xd9b68]        # 0x3e6090
30c528 addss  xmm0,xmm15
30c52d movss  DWORD PTR [rsp+0x20],xmm9
30c534 cvttss2si r8d,xmm0
30c539 call   0x35bab8
30c53e jmp    0x30c5cc
30c543 cmp    eax,0x2
30c546 jne    0x30c5cc
30c54c cvttss2si r8d,DWORD PTR [rbp+0x15b4]
30c555 mov    DWORD PTR [rsp+0x38],edi
30c559 mov    rcx,r13
30c55c mov    DWORD PTR [rsp+0x30],0x8
30c564 mov    DWORD PTR [rsp+0x28],0xf0
30c56c cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c574 movss  xmm3,DWORD PTR [rip+0xd9b18]        # 0x3e6094
30c57c movss  DWORD PTR [rsp+0x20],xmm6
30c582 call   0x36232c
30c587 movss  xmm0,DWORD PTR [rbp+0x15b4]
30c58f mov    rcx,r13
30c592 cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c59a mov    DWORD PTR [rsp+0x38],edi
30c59e mov    DWORD PTR [rsp+0x30],0x8
30c5a6 mov    DWORD PTR [rsp+0x28],0xf0
30c5ae movss  xmm3,DWORD PTR [rip+0xd9ada]        # 0x3e6090
30c5b6 addss  xmm0,xmm15
30c5bb movss  DWORD PTR [rsp+0x20],xmm9
30c5c2 cvttss2si r8d,xmm0
30c5c7 call   0x36232c
30c5cc mov    r8d,0x4
30c5d2 lea    rdx,[rsp+0x70]
30c5d7 mov    rcx,rbx
30c5da call   0x2e98f0
30c5df mov    rcx,rax
30c5e2 call   0x2d4d70
30c5e7 movss  xmm8,DWORD PTR [rip+0xfffffffffff86b98]        # 0x293188 ; f32=6
30c5f0 movss  xmm15,DWORD PTR [rip+0xfffffffffff86b7f]        # 0x293178 ; f32=4
30c5f9 test   al,al
30c5fb je     0x30c6e6
30c601 cmp    BYTE PTR [rip+0xdd8a0],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c608 je     0x30c6e6
30c60e movss  xmm3,DWORD PTR [rip+0xd9a82]        # 0x3e6098
30c616 mov    eax,DWORD PTR [rip+0xe26cc]        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c61c addss  xmm3,xmm15
30c621 test   eax,eax
30c623 jne    0x30c65f
30c625 movss  xmm2,DWORD PTR [rbp+0x15b4]
30c62d mov    rcx,r13
30c630 addss  xmm2,DWORD PTR [rip+0xfffffffffff814f8]        # 0x28db30 ; f32=60
30c638 movss  xmm1,DWORD PTR [rbp+0x15b0]
30c640 movss  DWORD PTR [rsp+0x30],xmm10
30c647 movss  DWORD PTR [rsp+0x28],xmm14
30c64e movss  DWORD PTR [rsp+0x20],xmm8
30c655 call   0x35b0fc
30c65a jmp    0x30c6e6
30c65f cmp    eax,esi
30c661 jne    0x30c6a1
30c663 movss  xmm0,DWORD PTR [rbp+0x15b4]
30c66b mov    rcx,r13
30c66e addss  xmm0,DWORD PTR [rip+0xfffffffffff814b2]        # 0x28db28 ; f32=40
30c676 cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c67e mov    DWORD PTR [rsp+0x30],0x8
30c686 mov    DWORD PTR [rsp+0x28],0xf0
30c68e cvttss2si r8d,xmm0
30c693 movss  DWORD PTR [rsp+0x20],xmm8
30c69a call   0x35bab8
30c69f jmp    0x30c6e6
30c6a1 cmp    eax,0x2
30c6a4 jne    0x30c6e6
30c6a6 movss  xmm0,DWORD PTR [rbp+0x15b4]
30c6ae mov    rcx,r13
30c6b1 addss  xmm0,DWORD PTR [rip+0xfffffffffff8146f]        # 0x28db28 ; f32=40
30c6b9 cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c6c1 mov    DWORD PTR [rsp+0x38],edi
30c6c5 mov    DWORD PTR [rsp+0x30],0x8
30c6cd mov    DWORD PTR [rsp+0x28],0xf0
30c6d5 cvttss2si r8d,xmm0
30c6da movss  DWORD PTR [rsp+0x20],xmm8
30c6e1 call   0x36232c
30c6e6 call   0x390994
30c6eb mov    r8,rsi
30c6ee lea    rdx,[rsp+0x70]
30c6f3 mov    rcx,rbx
30c6f6 call   0x2e98f0
30c6fb mov    rcx,rax
30c6fe call   0x2d4d70
30c703 test   al,al
30c705 je     0x30c76f
30c707 cmp    BYTE PTR [rip+0xdd79a],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c70e je     0x30c76f
30c710 cmp    DWORD PTR [rip+0xe25d1],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c717 jne    0x30c76f
30c719 mov    r8d,0x4
30c71f lea    rdx,[rsp+0x70]
30c724 mov    rcx,rbx
30c727 call   0x2e98f0
30c72c mov    rcx,rax
30c72f call   0x2d4d70
30c734 test   al,al
30c736 jne    0x30c76f
30c738 movss  xmm0,DWORD PTR [rip+0xd9954]        # 0x3e6094
30c740 movaps xmm1,xmm13
30c744 movss  xmm3,DWORD PTR [rip+0xd9944]        # 0x3e6090
30c74c mov    rcx,r13
30c74f movss  xmm2,DWORD PTR [rbp+0x100]
30c757 movss  DWORD PTR [rsp+0x30],xmm6
30c75d movss  DWORD PTR [rsp+0x28],xmm0
30c763 movss  DWORD PTR [rsp+0x20],xmm9
30c76a call   0x35b508
30c76f mov    r8d,0x4
30c775 lea    rdx,[rsp+0x70]
30c77a mov    rcx,rbx
30c77d call   0x2e98f0
30c782 mov    rcx,rax
30c785 call   0x2d4d70
30c78a test   al,al
30c78c je     0x30c8d0
30c792 cmp    BYTE PTR [rip+0xdd70f],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c799 je     0x30c8d0
30c79f cmp    DWORD PTR [rip+0xe2542],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c7a6 jne    0x30c8d0
30c7ac movss  xmm10,DWORD PTR [rip+0xd98e3]        # 0x3e6098
30c7b5 lea    rdx,[rsp+0x70]
30c7ba mov    r8,rsi
30c7bd addss  xmm10,xmm15
30c7c2 mov    rcx,rbx
30c7c5 call   0x2e98f0
30c7ca mov    rcx,rax
30c7cd call   0x2d4d70
30c7d2 test   al,al
30c7d4 je     0x30c820
30c7d6 movss  xmm0,DWORD PTR [rip+0xd98b6]        # 0x3e6094
30c7de movaps xmm1,xmm13
30c7e2 movss  xmm3,DWORD PTR [rip+0xd98a6]        # 0x3e6090
30c7ea mov    rcx,r13
30c7ed movss  xmm2,DWORD PTR [rbp+0x100]
30c7f5 movss  DWORD PTR [rsp+0x40],xmm8
30c7fc movss  DWORD PTR [rsp+0x38],xmm10
30c803 movss  DWORD PTR [rsp+0x30],xmm6
30c809 movss  DWORD PTR [rsp+0x28],xmm0
30c80f movss  DWORD PTR [rsp+0x20],xmm9
30c816 call   0x35c938
30c81b jmp    0x30c8d0
30c820 cmp    DWORD PTR [rip+0xe24c1],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c827 jne    0x30c8d0
30c82d mov    r8,rsi
30c830 lea    rdx,[rsp+0x70]
30c835 mov    rcx,rbx
30c838 call   0x2e98f0
30c83d mov    rcx,rax
30c840 call   0x2d4d70
30c845 test   al,al
30c847 jne    0x30c8d0
30c84d movss  xmm6,DWORD PTR [rip+0xe0e13]        # 0x3ed668 ; CONFIG F.outerRadius value(+0x48)
30c855 lea    rcx,[rsp+0x70]
30c85a mulss  xmm6,DWORD PTR [rip+0xfffffffffff869e6]        # 0x293248 ; f32=485.47
30c862 mov    edx,0xff
30c867 xor    r9d,r9d
30c86a mov    DWORD PTR [rsp+0x20],0xff
30c872 lea    r8d,[rdx-0x5a]
30c876 call   0x2db318
30c87b movups xmm0,XMMWORD PTR [rsp+0x70]
30c880 lea    rax,[rsp+0x70]
30c885 mov    BYTE PTR [rsp+0x40],sil
30c88a movss  xmm2,DWORD PTR [rbp+0x100]
30c892 movaps xmm1,xmm6
30c895 subss  xmm1,DWORD PTR [rip+0xfffffffffff868ff]        # 0x29319c ; f32=8.44568
30c89d mov    QWORD PTR [rsp+0x38],rax
30c8a2 movaps xmm3,xmm10
30c8a6 mov    rcx,r13
30c8a9 movdqa XMMWORD PTR [rsp+0x70],xmm0
30c8af maxss  xmm1,xmm11
30c8b4 movss  DWORD PTR [rsp+0x30],xmm1
30c8ba movaps xmm1,xmm13
30c8be movss  DWORD PTR [rsp+0x28],xmm6
30c8c4 movss  DWORD PTR [rsp+0x20],xmm8
30c8cb call   0x35ac38
30c8d0 cmp    BYTE PTR [rip+0xe326a],r15b        # 0x3efb41
30c8d7 je     0x30cd4e
30c8dd movss  xmm0,DWORD PTR [rip+0xe0dd3]        # 0x3ed6b8 ; CONFIG F.teleportdistance value(+0x48)
30c8e5 movsd  xmm6,QWORD PTR [rip+0xfffffffffff86873]        # 0x293160
30c8ed cvtps2pd xmm0,xmm0
30c8f0 mulsd  xmm0,xmm6
30c8f4 cvtpd2ps xmm0,xmm0
30c8f8 call   0x314a68
30c8fd xorps  xmm1,xmm1
30c900 lea    rcx,[rbp+0x80]
30c907 cvtss2sd xmm1,xmm0
30c90b divsd  xmm1,xmm6
30c90f call   0x2d955c
30c914 xor    r8d,r8d
30c917 lea    rcx,[rbp+0x80]
30c91e mov    dl,0x2e
30c920 call   0x2d892c
30c925 cmp    rax,0xffffffffffffffff
30c929 je     0x30c960
30c92b lea    r9,[rax+0x3]
30c92f xor    r8d,r8d
30c932 lea    rdx,[rbp+0xd8]
30c939 lea    rcx,[rbp+0x80]
30c940 call   0x2d9498
30c945 mov    rdx,rax
30c948 lea    rcx,[rbp+0x80]
30c94f call   0x2d4be4
30c954 lea    rcx,[rbp+0xd8]
30c95b call   0x2cc4f4
30c960 lea    rdx,[rbp+0x15b0]
30c967 lea    rcx,[rbp+0x15a8]
30c96e call   0x2f48fc ; STRING getter=0x2f48fc /5.0m
30c973 mov    rcx,rax
30c976 call   0x2d84dc
30c97b lea    rdx,[rbp+0x20]
30c97f mov    rbx,rax
30c982 lea    rcx,[rbp+0x15a8]
30c989 call   0x2f48a0 ; STRING getter=0x2f48a0 Teleport Distance : 
30c98e mov    rcx,rax
30c991 call   0x3204bc
30c996 mov    rdx,rax
30c999 lea    rcx,[rbp+0x1f0]
30c9a0 call   0x2cc2cc
30c9a5 mov    rdx,rax
30c9a8 lea    r8,[rbp+0x80]
30c9af lea    rcx,[rbp+0xd8]
30c9b6 call   0x2cef64
30c9bb mov    rdx,rax
30c9be lea    rcx,[rbp+0x210]
30c9c5 mov    r8,rbx
30c9c8 call   0x2cad38
30c9cd lea    rcx,[rbp+0xd8]
30c9d4 call   0x2cc4f4
30c9d9 lea    rcx,[rbp+0x1f0]
30c9e0 call   0x2cc4f4
30c9e5 xor    r9d,r9d
30c9e8 mov    DWORD PTR [rsp+0x20],0xff
30c9f0 xor    r8d,r8d
30c9f3 lea    rcx,[rbp-0x70]
30c9f7 mov    edx,0xff
30c9fc call   0x2db318
30ca01 movaps xmm2,xmm7
30ca04 lea    rcx,[rbp+0x15a8]
30ca0b movaps xmm1,xmm13
30ca0f movdqu xmm0,XMMWORD PTR [rax]
30ca13 movdqa XMMWORD PTR [rsp+0x70],xmm0
30ca19 call   0x2cc340
30ca1e mov    rdx,QWORD PTR [r13+0x10]
30ca22 lea    r8,[rbp+0x210]
30ca29 mov    r9,rax
30ca2c mov    DWORD PTR [rsp+0x28],0x2
30ca34 lea    rax,[rsp+0x70]
30ca39 mov    rcx,r13
30ca3c mov    QWORD PTR [rsp+0x20],rax
30ca41 call   0x36135c
30ca46 lea    rcx,[rip+0xfffffffffff0bf13]        # 0x218960
30ca4d call   0x2d86a0
30ca52 test   al,al
30ca54 jne    0x30cb71
30ca5a addss  xmm7,DWORD PTR [rip+0xfffffffffff3c472]        # 0x248ed4 ; f32=16
30ca62 lea    rdx,[rbp+0x378]
30ca69 lea    rcx,[rbp+0x15a8]
30ca70 call   0x2f4b8c ; STRING getter=0x2f4b8c /66 Positions
30ca75 mov    rcx,rax
30ca78 call   0x2dd188
30ca7d lea    rcx,[rip+0xfffffffffff0bedc]        # 0x218960
30ca84 mov    rdi,rax
30ca87 call   0x320f64
30ca8c mov    rdx,rax
30ca8f lea    rcx,[rbp+0x2f0]
30ca96 call   0x2d9510
30ca9b lea    rdx,[rbp-0x50]
30ca9f mov    rbx,rax
30caa2 lea    rcx,[rbp+0x15a8]
30caa9 call   0x2f4b3c ; STRING getter=0x2f4b3c Simulating 
30caae mov    rcx,rax
30cab1 call   0x2cde34
30cab6 mov    rdx,rax
30cab9 lea    rcx,[rbp+0x1f0]
30cac0 call   0x2cc2cc
30cac5 mov    rdx,rax
30cac8 lea    rcx,[rbp+0xd8]
30cacf mov    r8,rbx
30cad2 call   0x2cef40
30cad7 mov    rdx,rax
30cada lea    rcx,[rbp-0x28]
30cade mov    r8,rdi
30cae1 call   0x2cad38
30cae6 lea    rcx,[rbp+0xd8]
30caed call   0x2cc4f4
30caf2 lea    rcx,[rbp+0x1f0]
30caf9 call   0x2cc4f4
30cafe lea    rcx,[rbp+0x2f0]
30cb05 call   0x2cc4f4
30cb0a xor    r9d,r9d
30cb0d mov    DWORD PTR [rsp+0x20],0xff
30cb15 xor    r8d,r8d
30cb18 lea    rcx,[rbp-0x70]
30cb1c mov    edx,0xff
30cb21 call   0x2db318
30cb26 movaps xmm2,xmm7
30cb29 lea    rcx,[rbp+0x15a8]
30cb30 movaps xmm1,xmm13
30cb34 movdqu xmm0,XMMWORD PTR [rax]
30cb38 movdqa XMMWORD PTR [rsp+0x70],xmm0
30cb3e call   0x2cc340
30cb43 mov    rdx,QWORD PTR [r13+0x10]
30cb47 lea    r8,[rbp-0x28]
30cb4b mov    r9,rax
30cb4e mov    DWORD PTR [rsp+0x28],0x2
30cb56 lea    rax,[rsp+0x70]
30cb5b mov    rcx,r13
30cb5e mov    QWORD PTR [rsp+0x20],rax
30cb63 call   0x36135c
30cb68 lea    rcx,[rbp-0x28]
30cb6c call   0x2cc4f4
30cb71 lea    rcx,[rbp+0x210]
30cb78 call   0x2cc4f4
30cb7d lea    rcx,[rbp+0x80]
30cb84 call   0x2cc4f4
30cb89 cmp    BYTE PTR [rip+0xe2fb1],r15b        # 0x3efb41
30cb90 je     0x30cd4e
30cb96 lea    rcx,[rip+0xfffffffffff0bdc3]        # 0x218960
30cb9d call   0x320f64
30cba2 cmp    rax,rsi
30cba5 jbe    0x30cd4e
30cbab lea    rcx,[rbp+0x15b0]
30cbb2 call   0x2cb3a4
30cbb7 lea    rcx,[rbp+0x15a8]
30cbbe call   0x2cb3a4
30cbc3 lea    rcx,[rip+0xfffffffffff0bd96]        # 0x218960
30cbca mov    r14d,r15d
30cbcd call   0x320f64
30cbd2 cmp    rax,rsi
30cbd5 je     0x30cd4e
30cbdb movss  xmm7,DWORD PTR [rip+0xfffffffffff86569]        # 0x29314c ; f32=2.571
30cbe3 movss  xmm8,DWORD PTR [rip+0xfffffffffff86514]        # 0x293100 ; f32=1.45
30cbec movss  xmm9,DWORD PTR [rip+0xfffffffffff80f27]        # 0x28db1c ; f32=10
30cbf5 movsxd rbx,r14d
30cbf8 lea    rcx,[rip+0xfffffffffff0bd61]        # 0x218960
30cbff lea    rdx,[rbx+0x1]
30cc03 call   0x2ef7d0
30cc08 mov    rdx,rbx
30cc0b lea    rcx,[rip+0xfffffffffff0bd4e]        # 0x218960
30cc12 movsd  xmm6,QWORD PTR [rax]
30cc16 mov    edi,DWORD PTR [rax+0x8]
30cc19 call   0x2ef7d0
30cc1e lea    r9,[rip+0xca683]        # 0x3d72a8
30cc25 mov    rcx,r12
30cc28 lea    r8,[rbp+0x15b0]
30cc2f lea    rdx,[rbp-0x80]
30cc33 movsd  xmm0,QWORD PTR [rax]
30cc37 mov    eax,DWORD PTR [rax+0x8]
30cc3a movsd  QWORD PTR [rbp-0x80],xmm0
30cc3f mov    DWORD PTR [rbp-0x78],eax
30cc42 call   0x36cd20
30cc47 test   al,al
30cc49 je     0x30cd30
30cc4f lea    r9,[rip+0xca652]        # 0x3d72a8
30cc56 movsd  QWORD PTR [rbp+0x50],xmm6
30cc5b lea    r8,[rbp+0x15a8]
30cc62 mov    DWORD PTR [rbp+0x58],edi
30cc65 lea    rdx,[rbp+0x50]
30cc69 mov    rcx,r12
30cc6c call   0x36cd20
30cc71 test   al,al
30cc73 je     0x30cd30
30cc79 mov    ebx,0xff
30cc7e lea    rcx,[rsp+0x70]
30cc83 mov    edx,ebx
30cc85 mov    DWORD PTR [rsp+0x20],ebx
30cc89 xor    r9d,r9d
30cc8c xor    r8d,r8d
30cc8f call   0x2db318
30cc94 mov    rcx,rax
30cc97 call   0x2ef80c
30cc9c xor    r9d,r9d
30cc9f mov    DWORD PTR [rsp+0x20],ebx
30cca3 xor    r8d,r8d
30cca6 lea    rcx,[rbp-0x70]
30ccaa mov    edx,ebx
30ccac mov    esi,eax
30ccae call   0x2db318
30ccb3 mov    rcx,rax
30ccb6 call   0x2ef80c
30ccbb movss  xmm2,DWORD PTR [rbp+0x15ac]
30ccc3 lea    rcx,[rbp+0x15b8]
30ccca movss  xmm1,DWORD PTR [rbp+0x15a8]
30ccd2 mov    edi,eax
30ccd4 call   0x2cc340
30ccd9 movss  xmm2,DWORD PTR [rbp+0x15b4]
30cce1 lea    rcx,[rbp+0x2c0]
30cce8 movss  xmm1,DWORD PTR [rbp+0x15b0]
30ccf0 mov    rbx,rax
30ccf3 call   0x2cc340
30ccf8 movss  DWORD PTR [rsp+0x48],xmm9
30ccff mov    rdx,rax
30cd02 mov    DWORD PTR [rsp+0x40],esi
30cd06 mov    r9d,edi
30cd09 movss  DWORD PTR [rsp+0x38],xmm7
30cd0f mov    esi,0x1
30cd14 mov    BYTE PTR [rsp+0x30],sil
30cd19 mov    r8,rbx
30cd1c mov    BYTE PTR [rsp+0x28],sil
30cd21 mov    rcx,r13
30cd24 movss  DWORD PTR [rsp+0x20],xmm8
30cd2b call   0x35c30c
30cd30 lea    rcx,[rip+0xfffffffffff0bc29]        # 0x218960
30cd37 add    r14d,esi
30cd3a call   0x320f64
30cd3f sub    rax,rsi
30cd42 movsxd rcx,r14d
30cd45 cmp    rcx,rax
30cd48 jb     0x30cbf5
30cd4e xorps  xmm2,xmm2
30cd51 lea    rcx,[rbp+0x15a8]
30cd58 xorps  xmm1,xmm1
30cd5b call   0x2cc340
30cd60 movss  xmm2,DWORD PTR [rip+0xe2fa4]        # 0x3efd0c
30cd68 lea    rcx,[rbp+0x15b0]
