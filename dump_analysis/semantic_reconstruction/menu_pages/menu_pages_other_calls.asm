; 39233c caller 3457e7
3457b7 mov    rcx,rax
3457ba call   0x3bd114
3457bf xor    r12d,r12d
3457c2 cmp    BYTE PTR [rip+0xad9df],r12b        # 0x3f31a8 ; CONFIG Bools.DemoRecord value(+0x48)
3457c9 je     0x3458f7
3457cf lea    rdx,[rip+0xaede2]        # 0x3f45b8
3457d6 lea    rcx,[rsp+0x58]
3457db call   0x2d4194
3457e0 lea    rcx,[rbp+0x1d8]
3457e7 call   0x39233c
3457ec movss  xmm6,DWORD PTR [rax]
3457f0 mulss  xmm6,DWORD PTR [rip+0xfffffffffff47a58]        # 0x28d250 ; f32=0.5
3457f8 subss  xmm6,DWORD PTR [rip+0xfffffffffff48324]        # 0x28db24 ; f32=30
345800 call   0x3925cc
345805 movaps xmm2,xmm0
345808 lea    rcx,[rbp+0x1d0]
34580f movaps xmm1,xmm6
345812 call   0x2cc340
345817 lea    rcx,[rsp+0x58]
34581c call   0x2d8ad8
345821 lea    rcx,[rsp+0x58]
; 39233c caller 346255
346225 xor    r8d,r8d
346228 mov    rcx,rax
34622b call   0x3bd114
346230 cmp    BYTE PTR [rip+0xa3361],r12b        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
346237 je     0x346412
34623d lea    rdx,[rip+0xb7014]        # 0x3fd258 ; CONFIG S.BruteForceStart value(+0x48)
346244 lea    rcx,[rsp+0x58]
346249 call   0x2d4194
34624e lea    rcx,[rbp+0x1d8]
346255 call   0x39233c
34625a movss  xmm6,DWORD PTR [rax]
34625e mulss  xmm6,DWORD PTR [rip+0xfffffffffff46fea]        # 0x28d250 ; f32=0.5
346266 subss  xmm6,DWORD PTR [rip+0xfffffffffff478b6]        # 0x28db24 ; f32=30
34626e call   0x3925cc
346273 movaps xmm2,xmm0
346276 lea    rcx,[rbp+0x1d0]
34627d movaps xmm1,xmm6
346280 call   0x2cc340
346285 lea    rcx,[rsp+0x58]
34628a call   0x2d8ad8
34628f lea    rcx,[rsp+0x58]
; 39233c caller 344a13
3449e4 xor    r8d,r8d
3449e7 mov    rcx,rax
3449ea call   0x3bd114
3449ef cmp    BYTE PTR [rip+0xa53c2],r13b        # 0x3e9db8 ; CONFIG Bools.Autolock value(+0x48)
3449f6 je     0x344bc0
3449fc lea    rdx,[rip+0xafc95]        # 0x3f4698
344a03 lea    rcx,[rbp-0x80]
344a07 call   0x2d4194
344a0c lea    rcx,[rbp+0x338]
344a13 call   0x39233c
344a18 movss  xmm6,DWORD PTR [rax]
344a1c mulss  xmm6,DWORD PTR [rip+0xfffffffffff4882c]        # 0x28d250 ; f32=0.5
344a24 subss  xmm6,DWORD PTR [rip+0xfffffffffff490f8]        # 0x28db24 ; f32=30
344a2c call   0x3925cc
344a31 movaps xmm2,xmm0
344a34 lea    rcx,[rbp+0x330]
344a3b movaps xmm1,xmm6
344a3e call   0x2cc340
344a43 lea    rcx,[rbp-0x80]
344a47 call   0x2d8ad8
344a4c lea    rcx,[rbp-0x80]
; 39233c caller 344c89
344c56 lea    rdx,[rip+0xaeefb]        # 0x3f3b58 ; CONFIG Bools.autoauth value(+0x48)
344c5d mov    rcx,rax
344c60 call   0x3bd114
344c65 cmp    BYTE PTR [rip+0xaeeec],r13b        # 0x3f3b58 ; CONFIG Bools.autoauth value(+0x48)
344c6c je     0x344d96
344c72 lea    rdx,[rip+0xaf9af]        # 0x3f4628
344c79 lea    rcx,[rbp-0x80]
344c7d call   0x2d4194
344c82 lea    rcx,[rbp+0x338]
344c89 call   0x39233c
344c8e movss  xmm6,DWORD PTR [rax]
344c92 mulss  xmm6,DWORD PTR [rip+0xfffffffffff485b6]        # 0x28d250 ; f32=0.5
344c9a subss  xmm6,DWORD PTR [rip+0xfffffffffff48e82]        # 0x28db24 ; f32=30
344ca2 call   0x3925cc
344ca7 movaps xmm2,xmm0
344caa lea    rcx,[rbp+0x330]
344cb1 movaps xmm1,xmm6
344cb4 call   0x2cc340
344cb9 lea    rcx,[rbp-0x80]
344cbd call   0x2d8ad8
344cc2 lea    rcx,[rbp-0x80]
; 39233c caller 34c507
34c4dd mov    ecx,0x4
34c4e2 call   0x392298
34c4e7 mov    edx,eax
34c4e9 mov    ecx,0x8
34c4ee call   0x398bec
34c4f3 lea    rdx,[rip+0xb0e3e]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
34c4fa lea    rcx,[rbp-0x20]
34c4fe call   0x2d4194
34c503 lea    rcx,[rbp+0x78]
34c507 call   0x39233c
34c50c movss  xmm7,DWORD PTR [rip+0xfffffffffff41610]        # 0x28db24 ; f32=30
34c514 movss  xmm6,DWORD PTR [rax]
34c518 mulss  xmm6,DWORD PTR [rip+0xfffffffffff40d30]        # 0x28d250 ; f32=0.5
34c520 subss  xmm6,xmm7
34c524 call   0x3925cc
34c529 movaps xmm2,xmm0
34c52c lea    rcx,[rbp+0x70]
34c530 movaps xmm1,xmm6
34c533 call   0x2cc340
34c538 lea    rcx,[rbp-0x20]
34c53c call   0x2d8ad8
; 39233c caller 34c63b
34c611 call   0x2cd32c
34c616 movss  xmm1,DWORD PTR [rip+0xfffffffffff46b9e]        # 0x2931bc ; f32=16
34c61e lea    rcx,[rbp+0x68]
34c622 movaps xmm2,xmm1
34c625 call   0x2cc340
34c62a lea    rdx,[rbp+0x68]
34c62e mov    ecx,r15d
34c631 call   0x398c60
34c636 lea    rcx,[rsp+0x40]
34c63b call   0x39233c
34c640 lea    rcx,[rbp+0x78]
34c644 movss  xmm1,DWORD PTR [rax]
34c648 mulss  xmm1,DWORD PTR [rip+0xfffffffffff40c00]        # 0x28d250 ; f32=0.5
34c650 subss  xmm1,xmm7
34c654 movss  xmm7,DWORD PTR [rip+0xfffffffffff46c04]        # 0x293260 ; f32=-1
34c65c movaps xmm2,xmm7
34c65f call   0x2cc340
34c664 lea    rdx,[rbp+0x70]
34c668 lea    rcx,[rbp+0x68]
34c66c call   0x354d0c ; STRING getter=0x354d0c list
34c671 mov    rcx,rax
; 392298 caller 34c4e2
34c4b9 push   r14
34c4bb push   r15
34c4bd lea    rbp,[rax-0x58]
34c4c1 sub    rsp,0x120
34c4c8 movaps XMMWORD PTR [rax-0x48],xmm6
34c4cc movaps XMMWORD PTR [rax-0x58],xmm7
34c4d0 call   0x38ec90
34c4d5 movss  xmm1,DWORD PTR [rip+0xfffffffffff40d77]        # 0x28d254 ; f32=1
34c4dd mov    ecx,0x4
34c4e2 call   0x392298
34c4e7 mov    edx,eax
34c4e9 mov    ecx,0x8
34c4ee call   0x398bec
34c4f3 lea    rdx,[rip+0xb0e3e]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
34c4fa lea    rcx,[rbp-0x20]
34c4fe call   0x2d4194
34c503 lea    rcx,[rbp+0x78]
34c507 call   0x39233c
34c50c movss  xmm7,DWORD PTR [rip+0xfffffffffff41610]        # 0x28db24 ; f32=30
34c514 movss  xmm6,DWORD PTR [rax]
34c518 mulss  xmm6,DWORD PTR [rip+0xfffffffffff40d30]        # 0x28d250 ; f32=0.5
; 2e98f0 caller 3470c8
34709f mov    rcx,rax
3470a2 call   0x2e9c54
3470a7 lea    r8,[rip+0xa91ba]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470ae mov    rdx,rbx
3470b1 mov    rcx,rax
3470b4 call   0x387d18
3470b9 mov    r8,rsi
3470bc lea    rdx,[rsp+0x58]
3470c1 lea    rcx,[rip+0xa91a0]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470c8 call   0x2e98f0
3470cd mov    rcx,rax
3470d0 call   0x2d4d70
3470d5 test   al,al
3470d7 jne    0x347100
3470d9 mov    r8d,0x4
3470df lea    rdx,[rsp+0x58]
3470e4 lea    rcx,[rip+0xa917d]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470eb call   0x2e98f0
3470f0 mov    rcx,rax
3470f3 call   0x2d4d70
3470f8 test   al,al
; 2e98f0 caller 3470eb
3470c1 lea    rcx,[rip+0xa91a0]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470c8 call   0x2e98f0
3470cd mov    rcx,rax
3470d0 call   0x2d4d70
3470d5 test   al,al
3470d7 jne    0x347100
3470d9 mov    r8d,0x4
3470df lea    rdx,[rsp+0x58]
3470e4 lea    rcx,[rip+0xa917d]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470eb call   0x2e98f0
3470f0 mov    rcx,rax
3470f3 call   0x2d4d70
3470f8 test   al,al
3470fa je     0x3472d3
347100 lea    rcx,[rbp+0x168]
347107 call   0x2cb3a4
34710c mov    ecx,DWORD PTR [rip+0xb5fd6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347112 mov    rbx,rax
347115 cmp    ecx,esi
347117 jne    0x347122
347119 lea    rcx,[rip+0xfffffffffff5bea8]        # 0x2a2fc8
; 2d4d70 caller 3470d0
3470a7 lea    r8,[rip+0xa91ba]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470ae mov    rdx,rbx
3470b1 mov    rcx,rax
3470b4 call   0x387d18
3470b9 mov    r8,rsi
3470bc lea    rdx,[rsp+0x58]
3470c1 lea    rcx,[rip+0xa91a0]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470c8 call   0x2e98f0
3470cd mov    rcx,rax
3470d0 call   0x2d4d70
3470d5 test   al,al
3470d7 jne    0x347100
3470d9 mov    r8d,0x4
3470df lea    rdx,[rsp+0x58]
3470e4 lea    rcx,[rip+0xa917d]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470eb call   0x2e98f0
3470f0 mov    rcx,rax
3470f3 call   0x2d4d70
3470f8 test   al,al
3470fa je     0x3472d3
347100 lea    rcx,[rbp+0x168]
; 2d4d70 caller 3470f3
3470cd mov    rcx,rax
3470d0 call   0x2d4d70
3470d5 test   al,al
3470d7 jne    0x347100
3470d9 mov    r8d,0x4
3470df lea    rdx,[rsp+0x58]
3470e4 lea    rcx,[rip+0xa917d]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470eb call   0x2e98f0
3470f0 mov    rcx,rax
3470f3 call   0x2d4d70
3470f8 test   al,al
3470fa je     0x3472d3
347100 lea    rcx,[rbp+0x168]
347107 call   0x2cb3a4
34710c mov    ecx,DWORD PTR [rip+0xb5fd6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347112 mov    rbx,rax
347115 cmp    ecx,esi
347117 jne    0x347122
347119 lea    rcx,[rip+0xfffffffffff5bea8]        # 0x2a2fc8
347120 jmp    0x34712d
347122 cmp    ecx,edi
