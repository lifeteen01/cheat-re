; pdata function 0x37ca80..0x37caab unwind=0x3d23fc
37ca80 sub    rsp,0x38
37ca84 movaps XMMWORD PTR [rsp+0x20],xmm6
37ca89 lea    rdx,[rsp+0x50]
37ca8e movaps xmm6,xmm1
37ca91 call   0x378940
37ca96 mov    rcx,rax
37ca99 movaps xmm1,xmm6
37ca9c call   0x394b40
37caa1 movaps xmm6,XMMWORD PTR [rsp+0x20]
37caa6 add    rsp,0x38
37caaa ret

; pdata function 0x3788f4..0x378931 unwind=0x3d2038
3788f4 rex push rbx
3788f6 sub    rsp,0x20
3788fa movss  xmm2,DWORD PTR [rcx+0xc]
3788ff mov    rbx,rdx
378902 movss  xmm1,DWORD PTR [rcx+0x8]
378907 addss  xmm2,DWORD PTR [rcx+0x4]
37890c addss  xmm1,DWORD PTR [rcx]
378910 movss  xmm0,DWORD PTR [rip+0xfffffffffff14938]        # 0x28d250 ; f32=0.5
378918 mov    rcx,rdx
37891b mulss  xmm2,xmm0
37891f mulss  xmm1,xmm0
378923 call   0x2cc340
378928 mov    rax,rbx
37892b add    rsp,0x20
37892f pop    rbx
378930 ret

; heuristic leaf/code range 0x33565c..0x33566c unwind=0x0
33565c subss  xmm1,xmm0
335660 mulss  xmm1,xmm2
335664 addss  xmm1,xmm0
335668 movaps xmm0,xmm1
33566b ret

; pdata function 0x3364d4..0x336559 unwind=0x3d2040
3364d4 mov    QWORD PTR [rsp+0x8],rbx
3364d9 push   rdi
3364da sub    rsp,0x20
3364de mov    ebx,edx
3364e0 mov    rdi,rcx
3364e3 call   0x2db3a0
3364e8 movss  xmm1,DWORD PTR [rip+0xfffffffffff571f0]        # 0x28d6e0 ; f32=0.00392157
3364f0 xorps  xmm0,xmm0
3364f3 movzx  eax,bl
3364f6 cvtsi2ss xmm0,rax
3364fb mov    eax,ebx
3364fd shr    eax,0x8
336500 movzx  eax,al
336503 mulss  xmm0,xmm1
336507 movss  DWORD PTR [rdi],xmm0
33650b xorps  xmm0,xmm0
33650e cvtsi2ss xmm0,rax
336513 mov    eax,ebx
336515 shr    eax,0x10
336518 movzx  eax,al
33651b shr    ebx,0x18
33651e mulss  xmm0,xmm1
336522 movss  DWORD PTR [rdi+0x4],xmm0
336527 xorps  xmm0,xmm0
33652a cvtsi2ss xmm0,rax
33652f mov    eax,ebx
336531 mov    rbx,QWORD PTR [rsp+0x30]
336536 mulss  xmm0,xmm1
33653a movss  DWORD PTR [rdi+0x8],xmm0
33653f xorps  xmm0,xmm0
336542 cvtsi2ss xmm0,rax
336547 mov    rax,rdi
33654a mulss  xmm0,xmm1
33654e movss  DWORD PTR [rdi+0xc],xmm0
336553 add    rsp,0x20
336557 pop    rdi
336558 ret

; heuristic leaf/code range 0x2ef80c..0x2ef814 unwind=0x0
2ef80c jmp    0x39045c
2ef811 int3
2ef812 int3
2ef813 int3

; heuristic leaf/code range 0x37ee9c..0x37eebd unwind=0x0
37ee9c mov    rax,QWORD PTR [rsp+0x28]
37eea1 mov    QWORD PTR [rcx+0x18],rax
37eea5 mov    rax,QWORD PTR [rsp+0x30]
37eeaa mov    QWORD PTR [rcx+0x20],rax
37eeae mov    rax,rcx
37eeb1 mov    QWORD PTR [rcx],rdx
37eeb4 mov    QWORD PTR [rcx+0x8],r8
37eeb8 mov    QWORD PTR [rcx+0x10],r9
37eebc ret

; pdata function 0x37eff0..0x37f88a unwind=0x3d4374
37eff0 mov    rax,rsp
37eff3 push   rbp
37eff4 push   rbx
37eff5 push   rsi
37eff6 push   rdi
37eff7 push   r12
37eff9 push   r14
37effb push   r15
37effd lea    rbp,[rax-0xc8]
37f004 sub    rsp,0x190
37f00b movaps XMMWORD PTR [rax-0x48],xmm6
37f00f mov    r15,rdx
37f012 movaps XMMWORD PTR [rax-0x58],xmm9
37f017 mov    r12,rcx
37f01a movaps XMMWORD PTR [rax-0x68],xmm10
37f01f call   0x31581c
37f024 movss  xmm1,DWORD PTR [r15+0x24]
37f02a xorps  xmm10,xmm10
37f02e movaps xmm6,xmm1
37f031 subss  xmm6,xmm0
37f035 comiss xmm6,DWORD PTR [rip+0xfffffffffff14144]        # 0x293180 ; f32=5
37f03c jbe    0x37f058
37f03e subss  xmm1,DWORD PTR [rip+0xfffffffffff14142]        # 0x293188 ; f32=6
37f046 movss  xmm6,DWORD PTR [rip+0xfffffffffff0e206]        # 0x28d254 ; f32=1
37f04e subss  xmm0,xmm1
37f052 minss  xmm6,xmm0
37f056 jmp    0x37f073
37f058 comiss xmm6,xmm10
37f05c jbe    0x37f070
37f05e movss  xmm0,DWORD PTR [rip+0xfffffffffff14122]        # 0x293188 ; f32=6
37f066 mulss  xmm6,xmm0
37f06a divss  xmm6,xmm0
37f06e jmp    0x37f073
37f070 xorps  xmm6,xmm6
37f073 lea    rdx,[rbp+0xd0]
37f07a lea    rcx,[rbp+0xd0]
37f081 call   0x37efdc
37f086 mov    rcx,rax
37f089 call   0x37a068
37f08e mov    rdx,rax
37f091 lea    rcx,[rbp-0x60]
37f095 call   0x2cc2cc
37f09a lea    rdx,[rbp+0xd0]
37f0a1 lea    rcx,[rbp+0xd0]
37f0a8 call   0x37f88c ; STRING getter=0x37f88c ERROR
37f0ad mov    rcx,rax
37f0b0 call   0x37a040
37f0b5 mov    rdx,rax
37f0b8 lea    rcx,[rbp-0x40]
37f0bc call   0x2cc2cc
37f0c1 lea    rdx,[rbp+0xd0]
37f0c8 lea    rcx,[rbp+0xd0]
37f0cf call   0x37f8a4 ; STRING getter=0x37f8a4 INFO
37f0d4 mov    rcx,rax
37f0d7 call   0x37600c
37f0dc mov    rdx,rax
37f0df lea    rcx,[rbp-0x20]
37f0e3 call   0x2cc2cc
37f0e8 lea    rdx,[rbp+0xd0]
37f0ef lea    rcx,[rbp+0xd0]
37f0f6 call   0x350748 ; STRING getter=0x350748 I
37f0fb mov    rcx,rax
37f0fe call   0x379fc8
37f103 mov    rdx,rax
37f106 lea    rcx,[rbp+0x0]
37f10a call   0x2cc2cc
37f10f lea    rdx,[rbp+0xd0]
37f116 lea    rcx,[rbp+0xd0]
37f11d call   0x350748 ; STRING getter=0x350748 I
37f122 mov    rcx,rax
37f125 call   0x379fc8
37f12a mov    rdx,rax
37f12d lea    rcx,[rbp+0x20]
37f131 call   0x2cc2cc
37f136 lea    rdx,[rbp+0xd0]
37f13d lea    rcx,[rbp+0xd0]
37f144 call   0x350748 ; STRING getter=0x350748 I
37f149 mov    rcx,rax
37f14c call   0x379fc8
37f151 mov    rdx,rax
37f154 lea    rcx,[rbp+0x40]
37f158 call   0x2cc2cc
37f15d call   0x392ca4
37f162 movss  xmm2,DWORD PTR [rip+0xfffffffffff0e0ea]        # 0x28d254 ; f32=1
37f16a xorps  xmm1,xmm1
37f16d movaps xmm0,xmm6
37f170 call   0x3762bc
37f175 movss  xmm4,DWORD PTR [rip+0xfffffffffff0e567]        # 0x28d6e4 ; f32=255
37f17d lea    rcx,[rsp+0x70]
37f182 movss  xmm1,DWORD PTR [rax+0xf0]
37f18a movaps xmm3,xmm0
37f18d movss  xmm2,DWORD PTR [rax+0xec]
37f195 movaps xmm6,xmm0
37f198 mulss  xmm1,xmm4
37f19c mulss  xmm3,xmm4
37f1a0 cvttss2si r9d,xmm1
37f1a5 movss  xmm1,DWORD PTR [rax+0xe8]
37f1ad mulss  xmm1,xmm4
37f1b1 mulss  xmm2,xmm4
37f1b5 cvttss2si ebx,xmm3
37f1b9 cvttss2si edx,xmm1
37f1bd mov    DWORD PTR [rsp+0x20],ebx
37f1c1 cvttss2si r8d,xmm2
37f1c6 call   0x2db318
37f1cb mov    esi,0x37
37f1d0 mov    DWORD PTR [rsp+0x20],ebx
37f1d4 mov    edi,0xc2
37f1d9 lea    rcx,[rbp-0x80]
37f1dd mov    r9d,esi
37f1e0 mov    r8d,esi
37f1e3 mov    edx,edi
37f1e5 call   0x2db318
37f1ea mov    r9d,edi
37f1ed mov    DWORD PTR [rsp+0x20],ebx
37f1f1 lea    r8d,[rsi+0x1f]
37f1f5 mov    edx,esi
37f1f7 lea    rcx,[rbp-0x70]
37f1fb call   0x2db318
37f200 mov    rcx,r15
37f203 call   0x2cd7ec
37f208 movss  xmm9,DWORD PTR [rip+0xfffffffffff1404f]        # 0x293260 ; f32=-1
37f211 lea    rcx,[rbp+0xd0]
37f218 mov    rdx,rax
37f21b movss  DWORD PTR [rsp+0x20],xmm9
37f222 xor    r9d,r9d
37f225 xor    r8d,r8d
37f228 call   0x38f79c
37f22d movsxd rcx,DWORD PTR [r15+0x20]
37f231 mov    rbx,rax
37f234 shl    rcx,0x5
37f238 lea    rax,[rbp-0x60]
37f23c add    rcx,rax
37f23f call   0x2cd7ec
37f244 mov    rdx,rax
37f247 movss  DWORD PTR [rsp+0x20],xmm9
37f24e xor    r9d,r9d
37f251 lea    rcx,[rbp+0xe8]
37f258 xor    r8d,r8d
37f25b call   0x38f79c
37f260 movss  xmm1,DWORD PTR [rip+0xfffffffffff0ef80]        # 0x28e1e8 ; f32=300
37f268 lea    rcx,[rbp+0xd0]
37f26f movss  xmm2,DWORD PTR [rax+0x4]
37f274 addss  xmm2,DWORD PTR [rip+0xfffffffffff2a0b0]        # 0x2a932c ; f32=37
37f27c addss  xmm2,DWORD PTR [rbx+0x4]
37f281 call   0x2cc340
37f286 mov    rax,QWORD PTR [r12+0x8]
37f28b lea    rcx,[rsp+0x58]
37f290 movss  xmm1,DWORD PTR [rax+0x4]
37f295 movss  xmm0,DWORD PTR [rax]
37f299 mov    rax,QWORD PTR [r12+0x10]
37f29e movss  DWORD PTR [rsp+0x54],xmm1
37f2a4 movss  DWORD PTR [rsp+0x50],xmm0
37f2aa movss  xmm1,DWORD PTR [rax]
37f2ae subss  xmm1,DWORD PTR [rbp+0xd0]
37f2b6 movss  xmm2,DWORD PTR [rax+0x4]
37f2bb call   0x2cc340
37f2c0 mov    rdx,QWORD PTR [r12+0x18]
37f2c5 lea    r8,[rbp+0xd0]
37f2cc lea    rcx,[rsp+0x60]
37f2d1 call   0x3367e4
37f2d6 mov    rax,QWORD PTR [r12+0x20]
37f2db lea    rcx,[rsp+0x68]
37f2e0 movss  xmm2,DWORD PTR [rax+0x4]
37f2e5 subss  xmm2,DWORD PTR [rbp+0xd4]
37f2ed movss  xmm1,DWORD PTR [rax]
37f2f1 call   0x2cc340
37f2f6 movsxd rax,DWORD PTR [r15+0x28]
37f2fa lea    r8,[rbp+0xd0]
37f301 lea    rdx,[rbp+0xd8]
37f308 lea    rcx,[rbp+0xe0]
37f30f movsd  xmm0,QWORD PTR [rsp+rax*8+0x50]
37f315 movsd  QWORD PTR [rbp+0xd8],xmm0
37f31d call   0x2ef9d8
37f322 mov    rax,QWORD PTR [r12]
37f326 lea    rcx,[rsp+0x50]
37f32b movss  xmm3,DWORD PTR [rip+0xfffffffffff29ff1]        # 0x2a9324 ; f32=0.164706
37f333 movss  xmm2,DWORD PTR [rip+0xfffffffffff29fed]        # 0x2a9328 ; f32=0.172549
37f33b movss  xmm1,DWORD PTR [rip+0xfffffffffff29fdd]        # 0x2a9320 ; f32=0.160784
37f343 mov    rbx,QWORD PTR [rax]
37f346 movss  DWORD PTR [rsp+0x20],xmm6
37f34c call   0x2d484c
37f351 mov    rcx,rax
37f354 call   0x2ef80c
37f359 movss  xmm0,DWORD PTR [rip+0xfffffffffff13e17]        # 0x293178 ; f32=4
37f361 lea    r8,[rbp+0xe0]
37f368 mov    r9d,eax
37f36b mov    DWORD PTR [rsp+0x28],0x0
37f373 lea    rdx,[rbp+0xd8]
37f37a movss  DWORD PTR [rsp+0x20],xmm0
37f380 mov    rcx,rbx
37f383 call   0x3a1244
37f388 mov    rcx,QWORD PTR [r12]
37f38c lea    r8,[rbp+0xe0]
37f393 mov    r9b,0x1
37f396 lea    rdx,[rbp+0xd8]
37f39d mov    rcx,QWORD PTR [rcx]
37f3a0 call   0x3a7268
37f3a5 mov    rax,QWORD PTR [r12]
37f3a9 lea    rcx,[rbp+0xd0]
37f3b0 xorps  xmm2,xmm2
37f3b3 xorps  xmm1,xmm1
37f3b6 mov    rdi,QWORD PTR [rax]
37f3b9 call   0x2cc340
37f3be movsxd rax,DWORD PTR [r15+0x20]
37f3c2 lea    rcx,[rsp+0x70]
37f3c7 shl    rax,0x4
37f3cb add    rcx,rax
37f3ce call   0x2ef80c
37f3d3 movss  xmm1,DWORD PTR [rip+0xfffffffffff0e745]        # 0x28db20 ; f32=20
37f3db lea    rcx,[rbp+0xe8]
37f3e2 movaps xmm2,xmm1
37f3e5 mov    ebx,eax
37f3e7 call   0x2cc340
37f3ec mov    r8,rax
37f3ef lea    rdx,[rbp+0xd8]
37f3f6 lea    rcx,[rsp+0x50]
37f3fb call   0x2ef9d8
37f400 movss  xmm0,DWORD PTR [rip+0xfffffffffff13e28]        # 0x293230 ; f32=200
37f408 mov    rdx,rax
37f40b movss  xmm2,DWORD PTR [rip+0xfffffffffff13da5]        # 0x2931b8 ; f32=15
37f413 lea    rax,[rbp+0xd0]
37f41a mov    DWORD PTR [rsp+0x38],0xc
37f422 mov    r9d,ebx
37f425 mov    DWORD PTR [rsp+0x30],0x0
37f42d mov    rcx,rdi
37f430 mov    QWORD PTR [rsp+0x28],rax
37f435 movss  DWORD PTR [rsp+0x20],xmm0
37f43b call   0x3a1410
37f440 mov    rcx,QWORD PTR [r12]
37f444 mov    rcx,QWORD PTR [rcx]
37f447 call   0x3a6e34
37f44c mov    rax,QWORD PTR [r12]
37f450 lea    rcx,[rbp+0x0]
37f454 movsxd rbx,DWORD PTR [r15+0x20]
37f458 mov    r14,QWORD PTR [rax]
37f45b mov    rax,rbx
37f45e shl    rax,0x5
37f462 add    rcx,rax
37f465 call   0x2cd7ec
37f46a lea    rcx,[rsp+0x70]
37f46f shl    rbx,0x4
37f473 add    rcx,rbx
37f476 mov    rsi,rax
37f479 call   0x2ef80c
37f47e movss  xmm2,DWORD PTR [rip+0xfffffffffff13d2e]        # 0x2931b4 ; f32=14
37f486 lea    rcx,[rbp+0xd0]
37f48d movss  xmm1,DWORD PTR [rip+0xfffffffffff13d27]        # 0x2931bc ; f32=16
37f495 mov    edi,eax
37f497 call   0x2cc340
37f49c mov    r8,rax
37f49f lea    rdx,[rbp+0xd8]
37f4a6 lea    rcx,[rbp+0xe8]
37f4ad call   0x2ef9d8
37f4b2 mov    edx,0x2
37f4b7 lea    rcx,[rip+0x7cc22]        # 0x3fc0e0
37f4be mov    rbx,rax
37f4c1 call   0x3367b8
37f4c6 movss  xmm1,DWORD PTR [rip+0xfffffffffff13cee]        # 0x2931bc ; f32=16
37f4ce mov    rcx,rax
37f4d1 call   0x364aec
37f4d6 movss  xmm2,DWORD PTR [rip+0xfffffffffff13cde]        # 0x2931bc ; f32=16
37f4de mov    rdx,rax
37f4e1 mov    QWORD PTR [rsp+0x40],0x0
37f4ea mov    r9,rbx
37f4ed movss  DWORD PTR [rsp+0x38],xmm10
37f4f4 mov    rcx,r14
37f4f7 mov    QWORD PTR [rsp+0x30],0x0
37f500 mov    QWORD PTR [rsp+0x28],rsi
37f505 mov    DWORD PTR [rsp+0x20],edi
37f509 call   0x3a31f8
37f50e mov    rax,QWORD PTR [r12]
37f512 lea    rcx,[rbp-0x60]
37f516 mov    rsi,QWORD PTR [rax]
37f519 movsxd rax,DWORD PTR [r15+0x20]
37f51d shl    rax,0x5
37f521 add    rcx,rax
37f524 call   0x2cd7ec
37f529 movaps xmm1,xmm6
37f52c mov    ecx,0x1
37f531 mov    rdi,rax
37f534 call   0x392298
37f539 movss  xmm2,DWORD PTR [rip+0xfffffffffff13c73]        # 0x2931b4 ; f32=14
37f541 lea    rcx,[rbp+0xd0]
37f548 movss  xmm1,DWORD PTR [rip+0xfffffffffff0e5d8]        # 0x28db28 ; f32=40
37f550 mov    ebx,eax
37f552 call   0x2cc340
37f557 mov    r8,rax
37f55a lea    rdx,[rbp+0xd8]
37f561 lea    rcx,[rbp+0xe8]
37f568 call   0x2ef9d8
37f56d mov    rdx,rax
37f570 mov    QWORD PTR [rsp+0x20],0x0
37f579 mov    r9,rdi
37f57c mov    r8d,ebx
37f57f mov    rcx,rsi
37f582 call   0x3a31bc
37f587 mov    rax,QWORD PTR [r12]
37f58b mov    rcx,r15
37f58e mov    rsi,QWORD PTR [rax]
37f591 call   0x2cd7ec
37f596 movaps xmm1,xmm6
37f599 mov    ecx,0x2
37f59e mov    rdi,rax
37f5a1 call   0x392298
37f5a6 movss  xmm6,DWORD PTR [rbp+0xe4]
37f5ae mov    rcx,r15
37f5b1 subss  xmm6,DWORD PTR [rbp+0xdc]
37f5b9 mov    ebx,eax
37f5bb subss  xmm6,DWORD PTR [rip+0xfffffffffff13bf1]        # 0x2931b4 ; f32=14
37f5c3 call   0x2cd7ec
37f5c8 mov    rdx,rax
37f5cb movss  DWORD PTR [rsp+0x20],xmm9
37f5d2 xor    r9d,r9d
37f5d5 lea    rcx,[rbp+0xd0]
37f5dc xor    r8d,r8d
37f5df call   0x38f79c
37f5e4 movss  xmm1,DWORD PTR [rip+0xfffffffffff13bd0]        # 0x2931bc ; f32=16
37f5ec lea    rcx,[rbp+0xe8]
37f5f3 subss  xmm6,DWORD PTR [rax+0x4]
37f5f8 movaps xmm2,xmm6
37f5fb call   0x2cc340
37f600 mov    r8,rax
37f603 lea    rdx,[rbp+0xd8]
37f60a lea    rcx,[rsp+0x50]
37f60f call   0x2ef9d8
37f614 mov    rdx,rax
37f617 mov    QWORD PTR [rsp+0x20],0x0
37f620 mov    r9,rdi
37f623 mov    r8d,ebx
37f626 mov    rcx,rsi
37f629 call   0x3a31bc
37f62e cmp    DWORD PTR [r15+0x28],0x0
37f633 movss  xmm6,DWORD PTR [rip+0xfffffffffff29cf5]        # 0x2a9330 ; f32=47
37f63b jne    0x37f6b1
37f63d mov    rcx,r15
37f640 call   0x2cd7ec
37f645 mov    rdx,rax
37f648 movss  DWORD PTR [rsp+0x20],xmm9
37f64f xor    r9d,r9d
37f652 lea    rcx,[rbp+0xd0]
37f659 xor    r8d,r8d
37f65c call   0x38f79c
37f661 movsxd rcx,DWORD PTR [r15+0x20]
37f665 mov    rbx,rax
37f668 shl    rcx,0x5
37f66c lea    rax,[rbp-0x60]
37f670 add    rcx,rax
37f673 call   0x2cd7ec
37f678 mov    rdx,rax
37f67b movss  DWORD PTR [rsp+0x20],xmm9
37f682 xor    r9d,r9d
37f685 lea    rcx,[rbp+0xe8]
37f68c xor    r8d,r8d
37f68f call   0x38f79c
37f694 movss  xmm0,DWORD PTR [rax+0x4]
37f699 mov    rax,QWORD PTR [r12+0x8]
37f69e addss  xmm0,xmm6
37f6a2 addss  xmm0,DWORD PTR [rbx+0x4]
37f6a7 addss  xmm0,DWORD PTR [rax+0x4]
37f6ac movss  DWORD PTR [rax+0x4],xmm0
37f6b1 cmp    DWORD PTR [r15+0x28],0x1
37f6b6 jne    0x37f72c
37f6b8 mov    rcx,r15
37f6bb call   0x2cd7ec
37f6c0 mov    rdx,rax
37f6c3 movss  DWORD PTR [rsp+0x20],xmm9
37f6ca xor    r9d,r9d
37f6cd lea    rcx,[rbp+0xd0]
37f6d4 xor    r8d,r8d
37f6d7 call   0x38f79c
37f6dc movsxd rcx,DWORD PTR [r15+0x20]
37f6e0 mov    rbx,rax
37f6e3 shl    rcx,0x5
37f6e7 lea    rax,[rbp-0x60]
37f6eb add    rcx,rax
37f6ee call   0x2cd7ec
37f6f3 mov    rdx,rax
37f6f6 movss  DWORD PTR [rsp+0x20],xmm9
37f6fd xor    r9d,r9d
37f700 lea    rcx,[rbp+0xe8]
37f707 xor    r8d,r8d
37f70a call   0x38f79c
37f70f movss  xmm0,DWORD PTR [rax+0x4]
37f714 mov    rax,QWORD PTR [r12+0x10]
37f719 addss  xmm0,xmm6
37f71d addss  xmm0,DWORD PTR [rbx+0x4]
37f722 addss  xmm0,DWORD PTR [rax+0x4]
37f727 movss  DWORD PTR [rax+0x4],xmm0
37f72c cmp    DWORD PTR [r15+0x28],0x2
37f731 jne    0x37f7ab
37f733 mov    rcx,r15
37f736 call   0x2cd7ec
37f73b mov    rdx,rax
37f73e movss  DWORD PTR [rsp+0x20],xmm9
37f745 xor    r9d,r9d
37f748 lea    rcx,[rbp+0xd0]
37f74f xor    r8d,r8d
37f752 call   0x38f79c
37f757 movsxd rcx,DWORD PTR [r15+0x20]
37f75b mov    rbx,rax
37f75e shl    rcx,0x5
37f762 lea    rax,[rbp-0x60]
37f766 add    rcx,rax
37f769 call   0x2cd7ec
37f76e mov    rdx,rax
37f771 movss  DWORD PTR [rsp+0x20],xmm9
37f778 xor    r9d,r9d
37f77b lea    rcx,[rbp+0xe8]
37f782 xor    r8d,r8d
37f785 call   0x38f79c
37f78a movss  xmm1,DWORD PTR [rax+0x4]
37f78f mov    rax,QWORD PTR [r12+0x18]
37f794 addss  xmm1,xmm6
37f798 movss  xmm0,DWORD PTR [rax+0x4]
37f79d addss  xmm1,DWORD PTR [rbx+0x4]
37f7a2 subss  xmm0,xmm1
37f7a6 movss  DWORD PTR [rax+0x4],xmm0
37f7ab mov    edi,0x3
37f7b0 cmp    DWORD PTR [r15+0x28],edi
37f7b4 jne    0x37f82e
37f7b6 mov    rcx,r15
37f7b9 call   0x2cd7ec
37f7be mov    rdx,rax
37f7c1 movss  DWORD PTR [rsp+0x20],xmm9
37f7c8 xor    r9d,r9d
37f7cb lea    rcx,[rbp+0xd0]
37f7d2 xor    r8d,r8d
37f7d5 call   0x38f79c
37f7da movsxd rcx,DWORD PTR [r15+0x20]
37f7de mov    rbx,rax
37f7e1 shl    rcx,0x5
37f7e5 lea    rax,[rbp-0x60]
37f7e9 add    rcx,rax
37f7ec call   0x2cd7ec
37f7f1 mov    rdx,rax
37f7f4 movss  DWORD PTR [rsp+0x20],xmm9
37f7fb xor    r9d,r9d
37f7fe lea    rcx,[rbp+0xe8]
37f805 xor    r8d,r8d
37f808 call   0x38f79c
37f80d movss  xmm1,DWORD PTR [rax+0x4]
37f812 mov    rax,QWORD PTR [r12+0x20]
37f817 addss  xmm1,xmm6
37f81b movss  xmm0,DWORD PTR [rax+0x4]
37f820 addss  xmm1,DWORD PTR [rbx+0x4]
37f825 subss  xmm0,xmm1
37f829 movss  DWORD PTR [rax+0x4],xmm0
37f82e mov    ebx,0x20
37f833 lea    r9,[rip+0xfffffffffff4ccba]        # 0x2cc4f4
37f83a mov    edx,ebx
37f83c lea    rcx,[rbp+0x0]
37f840 mov    r8,rdi
37f843 call   0x2dbac8
37f848 lea    r9,[rip+0xfffffffffff4cca5]        # 0x2cc4f4
37f84f mov    r8,rdi
37f852 mov    edx,ebx
37f854 lea    rcx,[rbp-0x60]
37f858 call   0x2dbac8
37f85d mov    rcx,r15
37f860 call   0x2cc504
37f865 lea    r11,[rsp+0x190]
37f86d movaps xmm6,XMMWORD PTR [r11-0x10]
37f872 movaps xmm9,XMMWORD PTR [r11-0x20]
37f877 movaps xmm10,XMMWORD PTR [r11-0x30]
37f87c mov    rsp,r11
37f87f pop    r15
37f881 pop    r14
37f883 pop    r12
37f885 pop    rdi
37f886 pop    rsi
37f887 pop    rbx
37f888 pop    rbp
37f889 ret

; pdata function 0x31aa90..0x31aaf8 unwind=0x3d206c
31aa90 mov    QWORD PTR [rsp+0x10],rbx
31aa95 push   rdi
31aa96 sub    rsp,0x20
31aa9a cmp    QWORD PTR [rcx+0x10],0x0
31aa9f mov    rbx,rcx
31aaa2 je     0x31aaed
31aaa4 call   0x2d7e10
31aaa9 shr    rax,0x3
31aaad cmp    rax,QWORD PTR [rbx+0x10]
31aab1 jbe    0x31aac7
31aab3 mov    rdx,QWORD PTR [rbx+0x8]
31aab7 mov    rcx,rbx
31aaba mov    r8,rdx
31aabd mov    rdx,QWORD PTR [rdx]
31aac0 call   0x31a4b4
31aac5 jmp    0x31aaed
31aac7 lea    rcx,[rbx+0x8]
31aacb call   0x31abc8
31aad0 lea    rdx,[rsp+0x30]
31aad5 mov    rcx,rbx
31aad8 call   0x2d796c
31aadd mov    rdx,QWORD PTR [rbx+0x20]
31aae1 mov    r8,rax
31aae4 mov    rcx,QWORD PTR [rbx+0x18]
31aae8 call   0x2d2aa4
31aaed mov    rbx,QWORD PTR [rsp+0x38]
31aaf2 add    rsp,0x20
31aaf6 pop    rdi
31aaf7 ret

; pdata function 0x31ab60..0x31abc8 unwind=0x3d206c
31ab60 mov    QWORD PTR [rsp+0x10],rbx
31ab65 push   rdi
31ab66 sub    rsp,0x20
31ab6a cmp    QWORD PTR [rcx+0x10],0x0
31ab6f mov    rbx,rcx
31ab72 je     0x31abbd
31ab74 call   0x2d7e10
31ab79 shr    rax,0x3
31ab7d cmp    rax,QWORD PTR [rbx+0x10]
31ab81 jbe    0x31ab97
31ab83 mov    rdx,QWORD PTR [rbx+0x8]
31ab87 mov    rcx,rbx
31ab8a mov    r8,rdx
31ab8d mov    rdx,QWORD PTR [rdx]
31ab90 call   0x31a70c
31ab95 jmp    0x31abbd
31ab97 lea    rcx,[rbx+0x8]
31ab9b call   0x31ac30
31aba0 lea    rdx,[rsp+0x30]
31aba5 mov    rcx,rbx
31aba8 call   0x2d796c
31abad mov    rdx,QWORD PTR [rbx+0x20]
31abb1 mov    r8,rax
31abb4 mov    rcx,QWORD PTR [rbx+0x18]
31abb8 call   0x2d2aa4
31abbd mov    rbx,QWORD PTR [rsp+0x38]
31abc2 add    rsp,0x20
31abc6 pop    rdi
31abc7 ret

; pdata function 0x31acb0..0x31acd0 unwind=0x3d2038
31acb0 rex push rbx
31acb2 sub    rsp,0x20
31acb6 mov    rbx,rcx
31acb9 add    rcx,0x18
31acbd call   0x31ac64
31acc2 lea    rcx,[rbx+0x30]
31acc6 add    rsp,0x20
31acca pop    rbx
31accb jmp    0x31ac74

; pdata function 0x2cce78..0x2ccef2 unwind=0x3d20e4
2cce78 rex push rbx
2cce7a sub    rsp,0x40
2cce7e cmp    cl,BYTE PTR [rip+0x1092dc]        # 0x3d6160
2cce84 mov    bl,cl
2cce86 je     0x2cceec
2cce88 test   cl,cl
2cce8a jne    0x2ccee6
2cce8c lea    rcx,[rip+0x1092bd]        # 0x3d6150
2cce93 call   0x2cd86c
2cce98 mov    eax,DWORD PTR [rsp+0x21]
2cce9c mov    DWORD PTR [rip+0x1092d7],eax        # 0x3d6179
2ccea2 movzx  eax,WORD PTR [rsp+0x25]
2ccea7 mov    WORD PTR [rip+0x1092cf],ax        # 0x3d617d
2cceae mov    al,BYTE PTR [rsp+0x27]
2cceb2 mov    BYTE PTR [rip+0x1092c7],al        # 0x3d617f
2cceb8 mov    BYTE PTR [rip+0x1092a3],bl        # 0x3d6161
2ccebe mov    BYTE PTR [rip+0x1092b4],bl        # 0x3d6178
2ccec4  48 c7 05 b1 92 10 00 00 00 00 00 mov    QWORD PTR [rip+0x1092b1],0x0        # 0x3d6180
2ccecf  48 c7 05 ae 92 10 00 00 00 00 00 mov    QWORD PTR [rip+0x1092ae],0x0        # 0x3d6188
2cceda mov    BYTE PTR [rip+0x109283],bl        # 0x3d6163
2ccee0 mov    BYTE PTR [rip+0x10927c],bl        # 0x3d6162
2ccee6 mov    BYTE PTR [rip+0x109274],bl        # 0x3d6160
2cceec add    rsp,0x40
2ccef0 pop    rbx
2ccef1 ret

; pdata function 0x369040..0x369163 unwind=0x3d3eb4
369040 mov    QWORD PTR [rsp+0x8],rbx
369045 mov    QWORD PTR [rsp+0x10],rdi
36904a push   rbp
36904b mov    rbp,rsp
36904e sub    rsp,0x50
369052 mov    rbx,rdx
369055 mov    rdi,rcx
369058 call   0x2caf08
36905d test   al,al
36905f jne    0x369086
369061 lea    rdx,[rbp+0x20]
369065 lea    rcx,[rbp+0x20]
369069 call   0x2cc730
36906e mov    rcx,rax
369071 call   0x2cdca4
369076 mov    rdx,rax
369079 mov    rcx,rbx
36907c call   0x2cc2cc
369081 jmp    0x369150
369086 mov    rcx,rdi
369089 call   0x36a178
36908e test   al,al
369090 je     0x3690a9
369092 lea    rdx,[rbp-0x30]
369096 lea    rcx,[rbp+0x20]
36909a call   0x367c04 ; STRING getter=0x367c04 Scientist
36909f mov    rcx,rax
3690a2 call   0x2cdd44
3690a7 jmp    0x369076
3690a9 mov    rdx,QWORD PTR [rdi+0x338]
3690b0 mov    rcx,rdx
3690b3 call   0x2caf08
3690b8 test   al,al
3690ba jne    0x3690cb
3690bc lea    rdx,[rbp+0x20]
3690c0 lea    rcx,[rbp+0x20]
3690c4 call   0x2cc730
3690c9 jmp    0x36906e
3690cb lea    rcx,[rdx+0x14]
3690cf call   0x2caf08
3690d4 test   al,al
3690d6 jne    0x3690e7
3690d8 lea    rdx,[rbp+0x20]
3690dc lea    rcx,[rbp+0x20]
3690e0 call   0x2cc730
3690e5 jmp    0x36906e
3690e7 lea    rcx,[rdx+0x14]
3690eb call   0x365004
3690f0 mov    rdx,rax
3690f3 lea    rcx,[rbp-0x20]
3690f7 call   0x2cc2cc
3690fc lea    rcx,[rbp-0x20]
369100 call   0x2d8694
369105 test   al,al
369107 je     0x36912b
369109 lea    rdx,[rbp+0x20]
36910d lea    rcx,[rbp+0x20]
369111 call   0x2cc730
369116 mov    rcx,rax
369119 call   0x2cdca4
36911e mov    rdx,rax
369121 mov    rcx,rbx
369124 call   0x2cc2cc
369129 jmp    0x369147
36912b cmp    BYTE PTR [rip+0x93396],0x0        # 0x3fc4c8 ; CONFIG Bools.StreamerMode value(+0x48)
369132 lea    rdx,[rbp-0x20]
369136 mov    rcx,rbx
369139 je     0x369142
36913b call   0x3661ac
369140 jmp    0x369147
369142 call   0x2cc284
369147 lea    rcx,[rbp-0x20]
36914b call   0x2cc4f4
369150 mov    rdi,QWORD PTR [rsp+0x68]
369155 mov    rax,rbx
369158 mov    rbx,QWORD PTR [rsp+0x60]
36915d add    rsp,0x50
369161 pop    rbp
369162 ret

; pdata function 0x372398..0x37261b unwind=0x3d3dc8
372398 mov    QWORD PTR [rsp+0x8],rbx
37239d mov    QWORD PTR [rsp+0x10],rsi
3723a2 push   rbp
3723a3 push   rdi
3723a4 push   r14
3723a6 lea    rbp,[rsp-0x47]
3723ab sub    rsp,0xb0
3723b2 mov    rsi,rdx
3723b5 mov    r14,rcx
3723b8 call   0x2caf08
3723bd test   al,al
3723bf jne    0x3723e6
3723c1 lea    rdx,[rbp+0x77]
3723c5 lea    rcx,[rbp+0x77]
3723c9 call   0x2cc730
3723ce mov    rcx,rax
3723d1 call   0x2cdca4
3723d6 mov    rdx,rax
3723d9 mov    rcx,rsi
3723dc call   0x2cc2cc
3723e1 jmp    0x372600
3723e6 mov    rdx,QWORD PTR [r14+0x28]
3723ea mov    rcx,rdx
3723ed call   0x2caf08
3723f2 test   al,al
3723f4 jne    0x372405
3723f6 lea    rdx,[rbp+0x77]
3723fa lea    rcx,[rbp+0x77]
3723fe call   0x2cc730
372403 jmp    0x3723ce
372405 add    rdx,0x14
372409 lea    rcx,[rbp-0x49]
37240d call   0x2d45c8
372412 lea    rcx,[rbp-0x49]
372416 call   0x2d8694
37241b test   al,al
37241d je     0x372444
37241f lea    rdx,[rbp+0x77]
372423 lea    rcx,[rbp+0x77]
372427 call   0x2cc730
37242c mov    rcx,rax
37242f call   0x2cdca4
372434 mov    rdx,rax
372437 mov    rcx,rsi
37243a call   0x2cc2cc
37243f jmp    0x3725f7
372444 lea    rdx,[rbp+0x7f]
372448 lea    rcx,[rbp-0x49]
37244c call   0x2d8728
372451 lea    rdx,[rbp-0x29]
372455 lea    rcx,[rbp-0x49]
372459 mov    rbx,QWORD PTR [rax]
37245c call   0x2d7d40
372461 lea    rcx,[rbp+0x77]
372465 mov    rdi,rax
372468 call   0x2cb3a4
37246d mov    rdx,QWORD PTR [rdi]
372470 lea    rcx,[rbp-0x21]
372474 mov    r9,rax
372477 mov    r8,rbx
37247a call   0x2cee44
37247f lea    rcx,[rbp-0x21]
372483 call   0x2cd7ec
372488 mov    rcx,rax
37248b call   0x2d6354
372490 lea    rdx,[rbp+0x77]
372494 mov    rbx,rax
372497 lea    rcx,[rbp+0x77]
37249b call   0x37233c ; STRING getter=0x37233c m16a2
3724a0 mov    rcx,rax
3724a3 call   0x2d84dc
3724a8 mov    rcx,rax
3724ab movabs rdx,0xcbf29ce484222325
3724b5 call   0x2e5b4c
3724ba cmp    rbx,rax
3724bd jne    0x3724e4
3724bf lea    rdx,[rbp+0x77]
3724c3 lea    rcx,[rbp+0x77]
3724c7 call   0x372354 ; STRING getter=0x372354 M-16
3724cc mov    rcx,rax
3724cf call   0x2cdccc
3724d4 mov    rdx,rax
3724d7 mov    rcx,rsi
3724da call   0x2cc2cc
3724df jmp    0x3725ee
3724e4 mov    rdx,QWORD PTR [r14+0x40]
3724e8 mov    rcx,rdx
3724eb call   0x2caf08
3724f0 test   al,al
3724f2 jne    0x37250b
3724f4 lea    rdx,[rbp+0x77]
3724f8 lea    rcx,[rbp+0x77]
3724fc call   0x2cc730
372501 mov    rcx,rax
372504 call   0x2cdca4
372509 jmp    0x3724d4
37250b mov    rdx,QWORD PTR [rdx+0x20]
37250f mov    rcx,rdx
372512 call   0x2caf08
372517 test   al,al
372519 jne    0x37252a
37251b lea    rdx,[rbp+0x77]
37251f lea    rcx,[rbp+0x77]
372523 call   0x2cc730
372528 jmp    0x372501
37252a add    rdx,0x14
37252e lea    rcx,[rbp-0x1]
372532 call   0x2d45c8
372537 lea    rcx,[rbp-0x1]
37253b call   0x2d8694
372540 test   al,al
372542 je     0x372566
372544 lea    rdx,[rbp+0x77]
372548 lea    rcx,[rbp+0x77]
37254c call   0x2cc730
372551 mov    rcx,rax
372554 call   0x2cdca4
372559 mov    rdx,rax
37255c mov    rcx,rsi
37255f call   0x2cc2cc
372564 jmp    0x3725e5
372566 lea    rdx,[rbp+0x7f]
37256a lea    rcx,[rbp-0x1]
37256e call   0x2d8728
372573 lea    rdx,[rbp-0x29]
372577 lea    rcx,[rbp-0x1]
37257b mov    rbx,QWORD PTR [rax]
37257e call   0x2d7d40
372583 lea    rcx,[rbp+0x77]
372587 mov    rdi,rax
37258a call   0x2cb3a4
37258f mov    rdx,QWORD PTR [rdi]
372592 lea    rcx,[rbp+0x1f]
372596 mov    r9,rax
372599 mov    r8,rbx
37259c call   0x2cee44
3725a1 lea    rcx,[rbp+0x1f]
3725a5 call   0x2d8694
3725aa test   al,al
3725ac je     0x3725d0
3725ae lea    rdx,[rbp+0x77]
3725b2 lea    rcx,[rbp+0x77]
3725b6 call   0x2cc730
3725bb mov    rcx,rax
3725be call   0x2cdca4
3725c3 mov    rdx,rax
3725c6 mov    rcx,rsi
3725c9 call   0x2cc2cc
3725ce jmp    0x3725dc
3725d0 lea    rdx,[rbp+0x1f]
3725d4 mov    rcx,rsi
3725d7 call   0x2cc284
3725dc lea    rcx,[rbp+0x1f]
3725e0 call   0x2cc4f4
3725e5 lea    rcx,[rbp-0x1]
3725e9 call   0x2d4a50
3725ee lea    rcx,[rbp-0x21]
3725f2 call   0x2cc4f4
3725f7 lea    rcx,[rbp-0x49]
3725fb call   0x2d4a50
372600 lea    r11,[rsp+0xb0]
372608 mov    rax,rsi
37260b mov    rbx,QWORD PTR [r11+0x20]
37260f mov    rsi,QWORD PTR [r11+0x28]
372613 mov    rsp,r11
372616 pop    r14
372618 pop    rdi
372619 pop    rbp
37261a ret

; pdata function 0x364f20..0x364f4e unwind=0x3d2038
364f20 rex push rbx
364f22 sub    rsp,0x20
364f26 movss  xmm1,DWORD PTR [rip+0xffffffffffee3fba]        # 0x248ee8 ; f32=1
364f2e mov    rbx,rdx
364f31 movaps xmm2,xmm1
364f34 mulss  xmm1,DWORD PTR [rcx]
364f38 mulss  xmm2,DWORD PTR [rcx+0x4]
364f3d mov    rcx,rdx
364f40 call   0x2cc340
364f45 mov    rax,rbx
364f48 add    rsp,0x20
364f4c pop    rbx
364f4d ret

