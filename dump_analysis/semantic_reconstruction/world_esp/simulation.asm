30cf33 mov    cl,sil
30cf36 movss  xmm1,DWORD PTR [rbp+0x10c]
30cf3e addss  xmm0,DWORD PTR [rip+0xfffffffffff862ce]        # 0x293214 ; f32=116
30cf46 addss  xmm1,DWORD PTR [rip+0xfffffffffff8625e]        # 0x2931ac ; f32=12.821
30cf4e movss  DWORD PTR [rbp+0x108],xmm0
30cf56 movss  DWORD PTR [rbp+0x10c],xmm1
30cf5e call   0x314bb4
30cf63 mov    QWORD PTR [rbp+0x5c0],rax
30cf6a call   0x2e02b0
30cf6f mov    rbx,QWORD PTR [rbp+0x1a0]
30cf76 lea    rdx,[rbp+0x4d8]
30cf7d mov    rcx,rbx
30cf80 mov    QWORD PTR [rbp+0x18],rax
30cf84 mov    r14,rax
30cf87 call   0x368100
30cf8c mov    rcx,rbx
30cf8f call   0x368a84
30cf94 mov    rcx,rax
30cf97 mov    rsi,rax
30cf9a call   0x2caf08
30cf9f test   al,al
30cfa1 je     0x30ea17
30cfa7 lea    rdx,[rbp+0x230]
30cfae mov    rcx,rbx
30cfb1 call   0x369164
30cfb6 mov    rcx,rsi
30cfb9 call   0x3716e0
30cfbe mov    rcx,rsi
30cfc1 mov    r15,rax
30cfc4 call   0x371eb8
30cfc9 mov    rcx,rsi
30cfcc mov    r14,rax
30cfcf call   0x3721b4
30cfd4 mov    rcx,rsi
30cfd7 mov    rdi,rax
30cfda call   0x371464
30cfdf mov    rcx,rdi
30cfe2 mov    rbx,rax
30cfe5 call   0x2caf08
30cfea test   al,al
30cfec je     0x30d64c
30cff2 xor    r15d,r15d
30cff5 cmp    BYTE PTR [rdi+0x398],r15b
30cffc je     0x30ea13
30d002 mov    rcx,rsi
30d005 call   0x371630
30d00a mov    rcx,rax
30d00d mov    rbx,rax
30d010 call   0x2caf08
30d015 test   al,al
30d017 je     0x30ea13
30d01d mov    rcx,rbx
30d020 call   0x372abc
30d025 mov    rcx,rax
30d028 mov    rdi,rax
30d02b call   0x2caf08
30d030 test   al,al
30d032 je     0x30ea13
30d038 cmp    BYTE PTR [rip+0xcaca9],r15b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
30d03f movss  xmm9,DWORD PTR [rbx+0x40]
30d045 je     0x30d059
30d047 movss  xmm0,DWORD PTR [rip+0xcb059]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
30d04f minss  xmm0,DWORD PTR [rip+0xfffffffffff80aa1]        # 0x28daf8
30d057 jmp    0x30d05d
30d059 movaps xmm0,xmm12
30d05d movss  xmm8,DWORD PTR [rdi+0x44]
30d063 lea    rdx,[rbp+0x388]
30d06a movss  xmm7,DWORD PTR [rdi+0x38]
30d06f lea    rcx,[rbp+0x15a8]
30d076 movss  xmm6,DWORD PTR [rdi+0x34]
30d07b mulss  xmm9,xmm0
30d080 xorps  xmm0,xmm0
30d083 movups XMMWORD PTR [rbp+0x80],xmm0
30d08a movups XMMWORD PTR [rbp+0x90],xmm0
30d091 cvtps2pd xmm8,xmm8
30d095 cvtps2pd xmm7,xmm7
30d098 cvtps2pd xmm6,xmm6
30d09b call   0x2f4c9c ; STRING getter=0x2f4c9c %.2f/%.2f/%.2f/%.2f
30d0a0 mov    rcx,rax
30d0a3 call   0x320494
30d0a8 mov    rdx,rax
30d0ab lea    rcx,[rbp+0x80]
30d0b2 cvtps2pd xmm2,xmm9
30d0b6 movsd  QWORD PTR [rsp+0x28],xmm8
30d0bd movaps xmm3,xmm6
30d0c0 movq   r8,xmm2
30d0c5 movsd  QWORD PTR [rsp+0x20],xmm7
30d0cb movq   r9,xmm6
30d0d0 call   0x2ee714
30d0d5 lea    rcx,[rbp+0x80]
30d0dc call   0x2d6354
30d0e1 mov    rcx,rax
30d0e4 mov    rbx,rax
30d0e7 call   0x2e0e20
30d0ec mov    QWORD PTR [rip+0xd8625],rax        # 0x3e5718
30d0f3 test   rax,rax
30d0f6 jne    0x30d131
30d0f8 movss  xmm0,DWORD PTR [rdi+0x44]
30d0fd movaps xmm1,xmm9
30d101 movss  xmm3,DWORD PTR [rdi+0x34]
30d106 mov    rcx,rbx
30d109 movss  xmm2,DWORD PTR [rdi+0x38]
30d10e movss  DWORD PTR [rsp+0x20],xmm0
30d114 call   0x2dfe64
30d119 mov    QWORD PTR [rip+0xd85f8],rax        # 0x3e5718
30d120 test   rax,rax
30d123 je     0x3148d6
30d129 mov    rcx,rax
30d12c call   0x2e3a70
30d131 cmp    BYTE PTR [rip+0xdd540],r15b        # 0x3ea678 ; CONFIG Bools.simulateproj value(+0x48)
30d138 je     0x30ea13
30d13e mov    rcx,QWORD PTR [rbp+0x1a0]
30d145 lea    rdx,[rbp-0x50]
30d149 call   0x368100
30d14e mov    rcx,rax
30d151 lea    rdx,[rbp+0x130]
30d158 movaps xmm2,xmm9
30d15c call   0x2df66c
30d161 lea    rcx,[rbp-0x60]
30d165 call   0x3c7bbc
30d16a lea    rcx,[rbp+0x15b0]
30d171 call   0x2cb3a4
30d176 lea    rcx,[rbp+0x15a8]
30d17d call   0x2cb3a4
30d182 call   0x2e6a6c
30d187 movss  xmm2,DWORD PTR [rip+0xfffffffffff8105d]        # 0x28e1ec ; f32=-9.81
30d18f lea    rcx,[rbp+0x68]
30d193 movss  xmm6,DWORD PTR [rdi+0x34]
30d198 mov    ebx,eax
30d19a xorps  xmm3,xmm3
30d19d xorps  xmm1,xmm1
30d1a0 or     ebx,0x48a30900
30d1a6 call   0x3c7ba8
30d1ab movss  xmm2,DWORD PTR [rdi+0x38]
30d1b0 lea    rdx,[rbp-0x50]
30d1b4 mov    rcx,rax
30d1b7 call   0x2df66c
30d1bc mov    DWORD PTR [rsp+0x38],ebx
30d1c0 lea    r9,[rbp-0x60]
30d1c4 movss  DWORD PTR [rsp+0x30],xmm6
30d1ca lea    r8,[rbp+0x130]
30d1d1 movss  xmm6,DWORD PTR [rip+0xfffffffffff81007]        # 0x28e1e0 ; f32=8
30d1d9 lea    rdx,[rbp+0x230]
30d1e0 movsd  xmm0,QWORD PTR [rax]
30d1e4 lea    rcx,[rbp+0x20]
30d1e8 mov    eax,DWORD PTR [rax+0x8]
30d1eb mov    DWORD PTR [rbp-0x78],eax
30d1ee lea    rax,[rbp-0x80]
30d1f2 mov    QWORD PTR [rsp+0x28],rax
30d1f7 movss  DWORD PTR [rsp+0x20],xmm6
30d1fd movsd  QWORD PTR [rbp-0x80],xmm0
30d202 call   0x31885c
30d207 movss  xmm1,DWORD PTR [rbp-0x58]
30d20c movss  xmm0,DWORD PTR [rbp-0x60]
30d211 call   0x3c86ac
30d216 movaps xmm6,xmm0
30d219 movss  xmm0,DWORD PTR [rbp-0x5c]
30d21e call   0x3c85e8
30d223 movss  xmm14,DWORD PTR [rip+0xfffffffffff86074]        # 0x2932a0
30d22c lea    rcx,[rbp+0x8]
30d230 xorps  xmm0,xmm14
30d234 xorps  xmm3,xmm3
30d237 movaps xmm1,xmm0
30d23a movaps xmm2,xmm6
30d23d call   0x3c7ba8
30d242 lea    rcx,[rbp-0x60]
30d246 call   0x2e3b58
30d24b test   al,al
30d24d je     0x30d271
30d24f xorps  xmm3,xmm3
30d252 lea    rcx,[rbp-0x50]
30d256 movaps xmm2,xmm12
30d25a xorps  xmm1,xmm1
30d25d call   0x3c7ba8
30d262 movsd  xmm0,QWORD PTR [rax]
30d266 movsd  QWORD PTR [rbp-0x60],xmm0
30d26b mov    eax,DWORD PTR [rax+0x8]
30d26e mov    DWORD PTR [rbp-0x58],eax
30d271 lea    rcx,[rbp-0x40]
30d275 call   0x3c7bbc
30d27a lea    rcx,[rbp-0x8]
30d27e call   0x3c7bbc
30d283 movss  xmm6,DWORD PTR [rbp-0x5c]
30d288 movaps xmm0,xmm6
30d28b subss  xmm0,xmm12
30d290 call   0x2e372c
30d295 movss  xmm7,DWORD PTR [rip+0xfffffffffff8082f]        # 0x28dacc ; f32=1e-06
30d29d comiss xmm7,xmm0
30d2a0 jbe    0x30d2c8
30d2a2 xorps  xmm3,xmm3
30d2a5 lea    rcx,[rbp-0x50]
30d2a9 xorps  xmm2,xmm2
30d2ac movaps xmm1,xmm12
30d2b0 call   0x3c7ba8
30d2b5 movss  xmm3,DWORD PTR [rip+0xfffffffffff85fa3]        # 0x293260 ; f32=-1
30d2bd xorps  xmm2,xmm2
30d2c0 xorps  xmm1,xmm1
30d2c3 jmp    0x30d36c
30d2c8 addss  xmm6,xmm12
30d2cd movaps xmm0,xmm6
30d2d0 call   0x2e372c
30d2d5 comiss xmm7,xmm0
30d2d8 jbe    0x30d2f3
30d2da xorps  xmm3,xmm3
30d2dd lea    rcx,[rbp-0x50]
30d2e1 xorps  xmm2,xmm2
30d2e4 movaps xmm1,xmm12
30d2e8 call   0x3c7ba8
30d2ed movaps xmm3,xmm12
30d2f1 jmp    0x30d2bd
30d2f3 movss  xmm0,DWORD PTR [rbp+0x8]
30d2f8 call   0x2e0198
30d2fd movaps xmm9,xmm0
30d301 movss  xmm0,DWORD PTR [rbp+0xc]
30d306 call   0x2e0198
30d30b movaps xmm10,xmm0
30d30f movss  xmm0,DWORD PTR [rbp+0x8]
30d314 call   0x2dff68
30d319 movaps xmm8,xmm0
30d31d movss  xmm0,DWORD PTR [rbp+0xc]
30d322 call   0x2dff68
30d327 movaps xmm7,xmm0
30d32a movss  xmm0,DWORD PTR [rbp+0xc]
30d32f call   0x2e0198
30d334 movaps xmm6,xmm0
30d337 movss  xmm0,DWORD PTR [rbp+0xc]
30d33c xorps  xmm6,xmm14
30d340 call   0x2dff68
30d345 movaps xmm1,xmm0
30d348 lea    rcx,[rbp-0x50]
30d34c movaps xmm3,xmm6
30d34f xorps  xmm2,xmm2
30d352 call   0x3c7ba8
30d357 mulss  xmm7,xmm9
30d35c movaps xmm2,xmm8
30d360 mulss  xmm10,xmm9
30d365 movaps xmm3,xmm7
30d368 movaps xmm1,xmm10
30d36c movsd  xmm0,QWORD PTR [rax]
30d370 lea    rcx,[rbp+0x68]
30d374 movsd  QWORD PTR [rbp-0x40],xmm0
30d379 mov    eax,DWORD PTR [rax+0x8]
30d37c mov    DWORD PTR [rbp-0x38],eax
30d37f call   0x3c7ba8
30d384 mov    edi,0x32
30d389 lea    r14,[rip+0xe35f0]        # 0x3f0980
30d390 movsd  xmm0,QWORD PTR [rax]
30d394 movsd  QWORD PTR [rbp-0x8],xmm0
30d399 mov    eax,DWORD PTR [rax+0x8]
30d39c mov    DWORD PTR [rbp+0x0],eax
30d39f mov    eax,DWORD PTR [rip+0xe3833]        # 0x3f0bd8
30d3a5 test   al,0x1
30d3a7 jne    0x30d3c7
30d3a9 or     eax,0x1
30d3ac lea    r9,[rip+0xba809]        # 0x3c7bbc
30d3b3 mov    r8d,edi
30d3b6 mov    DWORD PTR [rip+0xe381c],eax        # 0x3f0bd8
30d3bc lea    edx,[rdi-0x26]
30d3bf mov    rcx,r14
30d3c2 call   0x2dfe34
30d3c7 mov    esi,r15d
30d3ca movd   xmm6,esi
30d3ce cvtdq2ps xmm6,xmm6
30d3d1 mulss  xmm6,DWORD PTR [rip+0xfffffffffff85cc7]        # 0x2930a0 ; f32=0.125664
30d3d9 movaps xmm0,xmm6
30d3dc call   0x2dff68
30d3e1 movaps xmm7,xmm0
30d3e4 movaps xmm0,xmm6
30d3e7 mulss  xmm7,DWORD PTR [rip+0xe0a99]        # 0x3ede88 ; CONFIG F.ProjectileRadius value(+0x48)
30d3ef call   0x2e0198
30d3f4 movaps xmm6,xmm0
30d3f7 lea    rcx,[rbp+0x20]
30d3fb mulss  xmm6,DWORD PTR [rip+0xe0a85]        # 0x3ede88 ; CONFIG F.ProjectileRadius value(+0x48)
30d403 call   0x31a94c
30d408 movaps xmm2,xmm7
30d40b lea    rdx,[rbp-0x50]
30d40f lea    rcx,[rbp-0x40]
30d413 mov    rbx,rax
30d416 call   0x2df66c
30d41b mov    r8,rax
30d41e lea    rdx,[rbp+0x68]
30d422 mov    rcx,rbx
30d425 call   0x2df708
30d42a movaps xmm2,xmm6
30d42d lea    rdx,[rbp+0x330]
30d434 lea    rcx,[rbp-0x8]
30d438 mov    rbx,rax
30d43b call   0x2df66c
30d440 mov    r8,rax
30d443 lea    rdx,[rbp+0x478]
30d44a mov    rcx,rbx
30d44d call   0x2df708
30d452 mov    ecx,esi
30d454 inc    esi
30d456 movsd  xmm0,QWORD PTR [rax]
30d45a lea    rdx,[rcx+rcx*2]
30d45e movsd  QWORD PTR [r14+rdx*4],xmm0
30d464 mov    eax,DWORD PTR [rax+0x8]
30d467 mov    DWORD PTR [r14+rdx*4+0x8],eax
30d46c cmp    esi,edi
30d46e jl     0x30d3ca
30d474 lea    r9,[rip+0xfffffffffffbdf29]        # 0x2cb3a4
30d47b mov    r8,rdi
30d47e mov    edx,0x8
30d483 lea    rcx,[rbp+0x1320]
30d48a call   0x2dfe34
30d48f mov    sil,0x1
30d492 lea    r14,[rip+0xc9e0f]        # 0x3d72a8
30d499 mov    rbx,r15
30d49c lea    r13,[rip+0xe34dd]        # 0x3f0980
30d4a3 lea    rax,[rbx+rbx*2]
30d4a7 mov    r9,r14
30d4aa movsd  xmm0,QWORD PTR [r13+rax*4+0x0]
30d4b1 lea    r8,[rbp+0x1320]
30d4b8 mov    eax,DWORD PTR [r13+rax*4+0x8]
30d4bd lea    r8,[r8+rbx*8]
30d4c1 lea    rdx,[rbp-0x80]
30d4c5 movsd  QWORD PTR [rbp-0x80],xmm0
30d4ca mov    rcx,r12
30d4cd mov    DWORD PTR [rbp-0x78],eax
30d4d0 call   0x36cd20
30d4d5 neg    al
30d4d7 sbb    cl,cl
30d4d9 inc    rbx
30d4dc and    cl,sil
30d4df mov    sil,cl
30d4e2 cmp    rbx,rdi
30d4e5 jne    0x30d4a3
30d4e7 mov    r13,QWORD PTR [rbp+0x15a0]
30d4ee test   cl,cl
30d4f0 je     0x30d521
30d4f2 cmp    BYTE PTR [rip+0xd9bbf],r15b        # 0x3e70b8 ; CONFIG Bools.DrawHitPoint value(+0x48)
30d4f9 je     0x30d521
30d4fb lea    rcx,[rip+0xdf616]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30d502 call   0x2ef80c
30d507 movss  xmm2,DWORD PTR [rip+0xfffffffffff8061d]        # 0x28db2c ; f32=50
30d50f lea    rdx,[rbp+0x1320]
30d516 mov    r9d,eax
30d519 mov    rcx,r13
30d51c call   0x35a804
30d521 cmp    BYTE PTR [rip+0xd9b40],r15b        # 0x3e7068 ; CONFIG Bools.DrawPath value(+0x48)
30d528 je     0x30d635
30d52e lea    rcx,[rbp+0x20]
30d532 mov    rbx,r15
30d535 call   0x320f64
30d53a cmp    rax,0x1
30d53e je     0x30d635
30d544 movss  xmm7,DWORD PTR [rip+0xfffffffffff85bf8]        # 0x293144 ; f32=2.5
30d54c lea    rdi,[rbx+0x1]
30d550 mov    rdx,rdi
30d553 lea    rcx,[rbp+0x20]
30d557 call   0x2ef7d0
30d55c mov    rdx,rbx
30d55f lea    rcx,[rbp+0x20]
30d563 movsd  xmm6,QWORD PTR [rax]
30d567 mov    esi,DWORD PTR [rax+0x8]
30d56a call   0x2ef7d0
30d56f mov    r9,r14
30d572 lea    r8,[rbp+0x15b0]
30d579 lea    rdx,[rbp-0x80]
30d57d mov    rcx,r12
30d580 movsd  xmm0,QWORD PTR [rax]
30d584 mov    eax,DWORD PTR [rax+0x8]
30d587 movsd  QWORD PTR [rbp-0x80],xmm0
30d58c mov    DWORD PTR [rbp-0x78],eax
30d58f call   0x36cd20
30d594 test   al,al
30d596 je     0x30d61d
30d59c mov    r9,r14
30d59f movsd  QWORD PTR [rbp+0x50],xmm6
30d5a4 lea    r8,[rbp+0x15a8]
30d5ab mov    DWORD PTR [rbp+0x58],esi
30d5ae lea    rdx,[rbp+0x50]
30d5b2 mov    rcx,r12
30d5b5 call   0x36cd20
30d5ba test   al,al
30d5bc je     0x30d61d
30d5be lea    rcx,[rip+0xdf553]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30d5c5 call   0x2ef80c
30d5ca movss  xmm2,DWORD PTR [rbp+0x15ac]
30d5d2 lea    rcx,[rbp+0x15b8]
30d5d9 movss  xmm1,DWORD PTR [rbp+0x15a8]
30d5e1 mov    ebx,eax
30d5e3 call   0x2cc340
30d5e8 movss  xmm2,DWORD PTR [rbp+0x15b4]
30d5f0 lea    rcx,[rbp+0x78]
30d5f4 movss  xmm1,DWORD PTR [rbp+0x15b0]
30d5fc call   0x2cc340
30d601 mov    r9d,ebx
30d604 movss  DWORD PTR [rsp+0x20],xmm7
30d60a lea    r8,[rbp+0x15b8]
30d611 mov    rcx,r13
30d614 lea    rdx,[rbp+0x78]
30d618 call   0x35c25c
30d61d lea    rcx,[rbp+0x20]
30d621 mov    rbx,rdi
30d624 call   0x320f64
30d629 dec    rax
30d62c cmp    rdi,rax
30d62f jb     0x30d54c
30d635 lea    rcx,[rbp+0x20]
30d639 call   0x2ef444
30d63e movss  xmm14,DWORD PTR [rip+0xfffffffffff804dd]        # 0x28db24 ; f32=30
30d647 jmp    0x30ea13
30d64c mov    rcx,r14
30d64f call   0x2caf08
30d654 test   al,al
30d656 je     0x30dc76
30d65c mov    rcx,r14
30d65f call   0x36b938
30d664 mov    rcx,rax
30d667 mov    rdx,rax
30d66a call   0x2caf08
30d66f xor    r15d,r15d
30d672 test   al,al
30d674 je     0x30ea13
30d67a mov    rcx,rdx
30d67d call   0x372b30
30d682 mov    rcx,rax
30d685 mov    rdi,rax
30d688 call   0x2caf08
30d68d test   al,al
30d68f je     0x30ea13
30d695 movss  xmm8,DWORD PTR [rdi+0x3c]
30d69b lea    rcx,[rbp+0x15b8]
30d6a2 mulss  xmm8,DWORD PTR [r14+0x3ac]
30d6ab call   0x2cb3a4
30d6b0 lea    rcx,[rbp+0x15b0]
30d6b7 call   0x2cb3a4
30d6bc lea    rcx,[rbp-0x60]
30d6c0 call   0x3c7bbc
30d6c5 movss  xmm7,DWORD PTR [rdi+0x34]
30d6ca lea    rdx,[rbp+0x388]
30d6d1 movss  xmm6,DWORD PTR [rdi+0x38]
30d6d6 lea    rcx,[rbp+0x15a8]
30d6dd xorps  xmm0,xmm0
30d6e0 movups XMMWORD PTR [rbp+0x80],xmm0
30d6e7 movups XMMWORD PTR [rbp+0x90],xmm0
30d6ee cvtps2pd xmm7,xmm7
30d6f1 cvtps2pd xmm6,xmm6
30d6f4 call   0x2f4db0 ; STRING getter=0x2f4db0 %.2f/%.2f/%.2f/%.2f
30d6f9 mov    rcx,rax
30d6fc call   0x320494
30d701 mov    rdx,rax
30d704 lea    rcx,[rbp+0x80]
30d70b cvtps2pd xmm2,xmm8
30d70f movaps xmm3,xmm6
30d712 movsd  QWORD PTR [rsp+0x20],xmm7
30d718 movq   r8,xmm2
30d71d movq   r9,xmm6
30d722 call   0x2ee714
30d727 lea    rcx,[rbp+0x80]
30d72e call   0x2d6354
30d733 mov    rcx,rax
30d736 mov    rbx,rax
30d739 call   0x2e0e20
30d73e mov    QWORD PTR [rip+0xd7fd3],rax        # 0x3e5718
30d745 test   rax,rax
30d748 jne    0x30d77f
30d74a movss  xmm3,DWORD PTR [rdi+0x34]
30d74f movaps xmm1,xmm8
30d753 movss  xmm2,DWORD PTR [rdi+0x38]
30d758 mov    rcx,rbx
30d75b movss  DWORD PTR [rsp+0x20],xmm11
30d762 call   0x2dfe64
30d767 mov    QWORD PTR [rip+0xd7faa],rax        # 0x3e5718
30d76e test   rax,rax
30d771 je     0x3148d6
30d777 mov    rcx,rax
30d77a call   0x2e3a70
