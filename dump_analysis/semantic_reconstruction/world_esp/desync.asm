30b140 cmp    BYTE PTR [rip+0xdf491],r15b        # 0x3ea5d8 ; CONFIG Bools.desyncnotvisible value(+0x48)
30b147 je     0x30b152
30b149 cmp    BYTE PTR [rip+0xcc150],r15b        # 0x3d72a0
30b150 jmp    0x30b162
30b152 cmp    BYTE PTR [rip+0xcc147],r15b        # 0x3d72a0
30b159 je     0x30b1a5
30b15b cmp    BYTE PTR [rip+0xdf4c6],r15b        # 0x3ea628 ; CONFIG Bools.ShouldAttempDesync value(+0x48)
30b162 je     0x30b1a5
30b164 movss  xmm3,DWORD PTR [rip+0xcc180]        # 0x3d72ec
30b16c movaps xmm0,xmm13
30b170 subss  xmm0,xmm1
30b174 mov    DWORD PTR [rsp+0x30],0x4
30b17c cvttss2si r8d,xmm7
30b181 mov    DWORD PTR [rsp+0x28],0x78
30b189 mov    rcx,r13
30b18c subss  xmm0,xmm2
30b190 movss  DWORD PTR [rsp+0x20],xmm12
30b197 cvttss2si edx,xmm0
30b19b call   0x35bab8
30b1a0 addss  xmm7,xmm8
30b1a5 cmp    BYTE PTR [rip+0xdaccd],r15b        # 0x3e5e79
30b1ac addss  xmm7,xmm14
30b1b1 movaps xmm8,xmm7
30b1b5 je     0x30b251
30b1bb xor    r9d,r9d
30b1be mov    DWORD PTR [rsp+0x20],esi
30b1c2 xor    r8d,r8d
30b1c5 lea    rcx,[rbp-0x70]
30b1c9 mov    edx,esi
30b1cb call   0x2db318
30b1d0 movaps xmm2,xmm7
30b1d3 lea    rcx,[rbp+0x15b0]
30b1da movaps xmm1,xmm13
30b1de movdqu xmm6,XMMWORD PTR [rax]
30b1e2 call   0x2cc340
30b1e7 lea    rdx,[rbp-0x50]
30b1eb mov    rbx,rax
30b1ee lea    rcx,[rbp+0x15a8]
30b1f5 call   0x2f1f00 ; STRING getter=0x2f1f00 Manipulated
30b1fa mov    rcx,rax
30b1fd call   0x2cde34
30b202 mov    rdx,rax
30b205 lea    rcx,[rbp-0x28]
30b209 call   0x2cc2cc
30b20e mov    rdx,QWORD PTR [r13+0x10]
30b212 lea    rax,[rsp+0x70]
30b217 mov    DWORD PTR [rsp+0x28],r14d
30b21c lea    r8,[rbp-0x28]
30b220 mov    r9,rbx
30b223 mov    QWORD PTR [rsp+0x20],rax
30b228 mov    rcx,r13
30b22b movdqa XMMWORD PTR [rsp+0x70],xmm6
30b231 call   0x36135c
30b236 lea    rcx,[rbp-0x28]
30b23a call   0x2cc4f4
30b23f movss  xmm7,DWORD PTR [rip+0xfffffffffff3dc8d]        # 0x248ed4 ; f32=16
30b247 addss  xmm7,xmm9
30b24c addss  xmm7,xmm8
30b251 cmp    BYTE PTR [rip+0xe49a9],r15b        # 0x3efc01
30b258 je     0x30b2fa
30b25e cmp    DWORD PTR [rip+0xe4997],0x1        # 0x3efbfc
30b265 jne    0x30b2fa
30b26b xor    r9d,r9d
30b26e mov    DWORD PTR [rsp+0x20],esi
30b272 xor    r8d,r8d
30b275 lea    rcx,[rbp-0x70]
30b279 mov    edx,esi
30b27b call   0x2db318
30b280 movaps xmm2,xmm7
30b283 lea    rcx,[rbp+0x15b8]
30b28a movaps xmm1,xmm13
30b28e movdqu xmm6,XMMWORD PTR [rax]
30b292 call   0x2cc340
30b297 lea    rdx,[rbp+0x15b0]
30b29e mov    rbx,rax
30b2a1 lea    rcx,[rbp+0x15a8]
30b2a8 call   0x2f2534 ; STRING getter=0x2f2534 Recoil
30b2ad mov    rcx,rax
30b2b0 call   0x2cdcf4
30b2b5 mov    rdx,rax
30b2b8 lea    rcx,[rbp-0x28]
30b2bc call   0x2cc2cc
30b2c1 mov    rdx,QWORD PTR [r13+0x10]
30b2c5 lea    rax,[rsp+0x70]
30b2ca mov    DWORD PTR [rsp+0x28],r14d
30b2cf lea    r8,[rbp-0x28]
30b2d3 mov    r9,rbx
30b2d6 mov    QWORD PTR [rsp+0x20],rax
30b2db mov    rcx,r13
30b2de movdqa XMMWORD PTR [rsp+0x70],xmm6
30b2e4 call   0x36135c
30b2e9 lea    rcx,[rbp-0x28]
30b2ed call   0x2cc4f4
30b2f2 addss  xmm7,DWORD PTR [rip+0xfffffffffff3dbda]        # 0x248ed4 ; f32=16
30b2fa cmp    BYTE PTR [rip+0xe48a0],r15b        # 0x3efba1
30b301 lea    rdi,[r13+0x10]
30b305 je     0x30b397
30b30b xor    r9d,r9d
30b30e mov    DWORD PTR [rsp+0x20],esi
30b312 xor    r8d,r8d
30b315 lea    rcx,[rbp-0x70]
30b319 mov    edx,esi
30b31b call   0x2db318
30b320 movaps xmm2,xmm7
30b323 lea    rcx,[rbp+0x15b0]
30b32a movaps xmm1,xmm13
30b32e movdqu xmm6,XMMWORD PTR [rax]
30b332 call   0x2cc340
30b337 lea    rdx,[rbp+0x8]
30b33b mov    rbx,rax
30b33e lea    rcx,[rbp+0x15a8]
30b345 call   0x2f26c8 ; STRING getter=0x2f26c8 On Ladder
30b34a mov    rcx,rax
30b34d call   0x2cdd44
30b352 mov    rdx,rax
30b355 lea    rcx,[rbp-0x28]
30b359 call   0x2cc2cc
30b35e mov    rdx,QWORD PTR [r13+0x10]
30b362 lea    rax,[rsp+0x70]
30b367 mov    DWORD PTR [rsp+0x28],r14d
30b36c lea    r8,[rbp-0x28]
30b370 mov    r9,rbx
30b373 mov    QWORD PTR [rsp+0x20],rax
30b378 mov    rcx,r13
30b37b movdqa XMMWORD PTR [rsp+0x70],xmm6
30b381 call   0x36135c
30b386 lea    rcx,[rbp-0x28]
30b38a call   0x2cc4f4
30b38f addss  xmm7,DWORD PTR [rip+0xfffffffffff3db3d]        # 0x248ed4 ; f32=16
30b397 cmp    BYTE PTR [rip+0xda0d3],r15b        # 0x3e5471
30b39e je     0x30b443
30b3a4 cmp    DWORD PTR [rip+0xda0c1],0x1        # 0x3e546c
30b3ab jne    0x30b443
30b3b1 xor    r9d,r9d
30b3b4 mov    DWORD PTR [rsp+0x20],esi
30b3b8 xor    r8d,r8d
30b3bb lea    rcx,[rbp-0x70]
30b3bf mov    edx,esi
30b3c1 call   0x2db318
30b3c6 movaps xmm2,xmm7
30b3c9 lea    rcx,[rbp+0x15b0]
30b3d0 movaps xmm1,xmm13
30b3d4 movdqu xmm6,XMMWORD PTR [rax]
30b3d8 call   0x2cc340
30b3dd lea    rdx,[rbp+0x378]
30b3e4 mov    rbx,rax
30b3e7 lea    rcx,[rbp+0x15a8]
30b3ee call   0x2f2880 ; STRING getter=0x2f2880 Auto Upgrade
30b3f3 mov    rcx,rax
30b3f6 call   0x2d85f4
30b3fb mov    rdx,rax
30b3fe lea    rcx,[rbp-0x28]
30b402 call   0x2cc2cc
30b407 mov    rdx,QWORD PTR [rdi]
30b40a lea    rax,[rsp+0x70]
30b40f mov    DWORD PTR [rsp+0x28],r14d
30b414 lea    r8,[rbp-0x28]
30b418 mov    r9,rbx
30b41b mov    QWORD PTR [rsp+0x20],rax
30b420 mov    rcx,r13
30b423 movdqa XMMWORD PTR [rsp+0x70],xmm6
30b429 call   0x36135c
30b42e lea    rcx,[rbp-0x28]
30b432 call   0x2cc4f4
30b437 addss  xmm7,DWORD PTR [rip+0xfffffffffff3da95]        # 0x248ed4 ; f32=16
30b43f lea    rdi,[r13+0x10]
30b443 cmp    BYTE PTR [rip+0xe4337],r15b        # 0x3ef781
30b44a je     0x30b4de
30b450 xor    r9d,r9d
30b453 mov    DWORD PTR [rsp+0x20],esi
30b457 xor    r8d,r8d
30b45a lea    rcx,[rbp-0x70]
30b45e mov    edx,esi
30b460 call   0x2db318
30b465 movaps xmm2,xmm7
30b468 lea    rcx,[rbp+0x15b0]
30b46f movaps xmm1,xmm13
30b473 movdqu xmm6,XMMWORD PTR [rax]
30b477 call   0x2cc340
30b47c lea    rdx,[rbp+0x1e0]
30b483 mov    rbx,rax
30b486 lea    rcx,[rbp+0x15a8]
30b48d call   0x2f2a54 ; STRING getter=0x2f2a54 Inf Jump
30b492 mov    rcx,rax
30b495 call   0x2e9b8c
30b49a mov    rdx,rax
30b49d lea    rcx,[rbp-0x28]
30b4a1 call   0x2cc2cc
30b4a6 mov    rdx,QWORD PTR [rdi]
30b4a9 lea    rax,[rsp+0x70]
30b4ae mov    DWORD PTR [rsp+0x28],r14d
30b4b3 lea    r8,[rbp-0x28]
30b4b7 mov    r9,rbx
30b4ba mov    QWORD PTR [rsp+0x20],rax
30b4bf mov    rcx,r13
30b4c2 movdqa XMMWORD PTR [rsp+0x70],xmm6
30b4c8 call   0x36135c
30b4cd lea    rcx,[rbp-0x28]
30b4d1 call   0x2cc4f4
30b4d6 addss  xmm7,DWORD PTR [rip+0xfffffffffff3d9f6]        # 0x248ed4 ; f32=16
30b4de cmp    BYTE PTR [rip+0xe417c],r15b        # 0x3ef661
30b4e5 je     0x30b576
30b4eb xor    r9d,r9d
30b4ee mov    DWORD PTR [rsp+0x20],esi
30b4f2 xor    r8d,r8d
30b4f5 lea    rcx,[rbp-0x70]
30b4f9 mov    edx,esi
30b4fb call   0x2db318
30b500 movaps xmm2,xmm7
30b503 lea    rcx,[rbp+0x15b0]
30b50a movaps xmm1,xmm13
30b50e movdqu xmm6,XMMWORD PTR [rax]
30b512 call   0x2cc340
30b517 lea    rdx,[rbp+0x8]
30b51b mov    rbx,rax
30b51e lea    rcx,[rbp+0x15a8]
30b525 call   0x2f2c80 ; STRING getter=0x2f2c80 Crouching
30b52a mov    rcx,rax
30b52d call   0x2cdd44
30b532 mov    rdx,rax
30b535 lea    rcx,[rbp-0x28]
30b539 call   0x2cc2cc
30b53e mov    rdx,QWORD PTR [rdi]
30b541 lea    rax,[rsp+0x70]
30b546 mov    DWORD PTR [rsp+0x28],r14d
30b54b lea    r8,[rbp-0x28]
30b54f mov    r9,rbx
30b552 mov    QWORD PTR [rsp+0x20],rax
30b557 mov    rcx,r13
30b55a movdqa XMMWORD PTR [rsp+0x70],xmm6
30b560 call   0x36135c
30b565 lea    rcx,[rbp-0x28]
30b569 call   0x2cc4f4
30b56e addss  xmm7,DWORD PTR [rip+0xfffffffffff3d95e]        # 0x248ed4 ; f32=16
30b576 cmp    BYTE PTR [rip+0xda8fb],r15b        # 0x3e5e78
30b57d je     0x30b60e
30b583 xor    r9d,r9d
30b586 mov    DWORD PTR [rsp+0x20],esi
30b58a xor    r8d,r8d
30b58d lea    rcx,[rbp-0x70]
30b591 mov    edx,esi
30b593 call   0x2db318
30b598 movaps xmm2,xmm7
30b59b lea    rcx,[rbp+0x15b0]
30b5a2 movaps xmm1,xmm13
30b5a6 movdqu xmm6,XMMWORD PTR [rax]
30b5aa call   0x2cc340
30b5af lea    rdx,[rbp+0x20]
30b5b3 mov    rbx,rax
30b5b6 lea    rcx,[rbp+0x15a8]
30b5bd call   0x2f2f34 ; STRING getter=0x2f2f34 Grenade Hit Possible
30b5c2 mov    rcx,rax
30b5c5 call   0x3204bc
30b5ca mov    rdx,rax
30b5cd lea    rcx,[rbp-0x28]
30b5d1 call   0x2cc2cc
30b5d6 mov    rdx,QWORD PTR [rdi]
30b5d9 lea    rax,[rsp+0x70]
30b5de mov    DWORD PTR [rsp+0x28],r14d
30b5e3 lea    r8,[rbp-0x28]
30b5e7 mov    r9,rbx
30b5ea mov    QWORD PTR [rsp+0x20],rax
30b5ef mov    rcx,r13
30b5f2 movdqa XMMWORD PTR [rsp+0x70],xmm6
30b5f8 call   0x36135c
30b5fd lea    rcx,[rbp-0x28]
30b601 call   0x2cc4f4
30b606 addss  xmm7,DWORD PTR [rip+0xfffffffffff3d8c6]        # 0x248ed4 ; f32=16
30b60e cmp    BYTE PTR [rip+0xd8c23],r15b        # 0x3e4238
30b615 je     0x30b6b3
30b61b cmp    BYTE PTR [rip+0xcccdf],r15b        # 0x3d8301
30b622 je     0x30b6b3
30b628 xor    r9d,r9d
30b62b mov    DWORD PTR [rsp+0x20],esi
30b62f xor    r8d,r8d
30b632 lea    rcx,[rbp-0x70]
30b636 mov    edx,esi
30b638 call   0x2db318
30b63d movaps xmm2,xmm7
30b640 lea    rcx,[rbp+0x15b0]
30b647 movaps xmm1,xmm13
30b64b movdqu xmm6,XMMWORD PTR [rax]
30b64f call   0x2cc340
30b654 lea    rdx,[rbp-0x50]
30b658 mov    rbx,rax
30b65b lea    rcx,[rbp+0x15a8]
30b662 call   0x2f30cc ; STRING getter=0x2f30cc LV Possible
30b667 mov    rcx,rax
30b66a call   0x2cde34
30b66f mov    rdx,rax
30b672 lea    rcx,[rbp-0x28]
30b676 call   0x2cc2cc
30b67b mov    rdx,QWORD PTR [rdi]
30b67e lea    rax,[rsp+0x70]
30b683 mov    DWORD PTR [rsp+0x28],r14d
30b688 lea    r8,[rbp-0x28]
30b68c mov    r9,rbx
30b68f mov    QWORD PTR [rsp+0x20],rax
30b694 mov    rcx,r13
30b697 movdqa XMMWORD PTR [rsp+0x70],xmm6
30b69d call   0x36135c
30b6a2 lea    rcx,[rbp-0x28]
30b6a6 call   0x2cc4f4
30b6ab addss  xmm7,DWORD PTR [rip+0xfffffffffff3d821]        # 0x248ed4 ; f32=16
