3100d2 cmp    BYTE PTR [rip+0xd75cf],r15b        # 0x3e76a8 ; CONFIG Bools.HeldItem value(+0x48)
3100d9 mov    edi,r15d
3100dc je     0x310175
3100e2 mov    rcx,QWORD PTR [rsp+0x58]
3100e7 mov    edx,0x90
3100ec call   0x2dee3c
3100f1 mov    rdx,QWORD PTR [rax]
3100f4 mov    rcx,rdx
3100f7 call   0x2caf08
3100fc test   al,al
3100fe je     0x310175
310100 cmp    DWORD PTR [rdx+0x18],r15d
310104 jle    0x310175
310106 mov    r8,QWORD PTR [rdx+0x10]
31010a mov    rcx,r8
31010d call   0x2caf08
310112 test   al,al
310114 je     0x310175
310116 mov    rcx,QWORD PTR [r8+0x20]
31011a call   0x2caf08
31011f test   al,al
310121 je     0x310175
310123 mov    rcx,QWORD PTR [r8+0x20]
310127 call   0x367668
31012c mov    edx,eax
31012e lea    rcx,[rbp+0x180]
310135 mov    ebx,eax
310137 call   0x316574
31013c lea    rcx,[rbp+0x180]
310143 call   0x2d8694
310148 test   al,al
31014a jne    0x31015f
31014c lea    rdx,[rbp+0x180]
310153 lea    rcx,[rbp+0x210]
31015a call   0x2d4c24
31015f cmp    BYTE PTR [rip+0xd7592],r15b        # 0x3e76f8 ; CONFIG Bools.UseIcon value(+0x48)
310166 lea    rcx,[rbp+0x180]
31016d cmovne edi,ebx
310170 call   0x2cc4f4
310175 cmp    BYTE PTR [rip+0xd761c],r15b        # 0x3e7798 ; CONFIG Bools.name value(+0x48)
31017c je     0x3101a5
31017e lea    rdx,[rbp-0x8]
310182 lea    rcx,[rbp+0x15a8]
310189 call   0x2f55b0 ; STRING getter=0x2f55b0 Scientist
31018e mov    rcx,rax
310191 call   0x2cdd44
310196 mov    rdx,rax
310199 lea    rcx,[rbp+0x2f0]
3101a0 call   0x2d4c68
3101a5 lea    rdx,[rbp+0xee0]
3101ac lea    rcx,[rbp+0x20]
3101b0 call   0x2d87b0
3101b5 lea    rdx,[rbp+0xee8]
3101bc lea    rcx,[rbp+0x20]
3101c0 mov    rbx,QWORD PTR [rax]
3101c3 call   0x2d7d90
3101c8 mov    r9b,BYTE PTR [rbp+0x15a8]
3101cf lea    rcx,[rbp+0xef0]
3101d6 mov    r8,rbx
3101d9 mov    rdx,QWORD PTR [rax]
3101dc call   0x2ede6c
3101e1 mov    rcx,rax
3101e4 call   0x2ce5d8
3101e9 lea    rdx,[rbp+0x2f0]
3101f0 lea    rcx,[rax+0x30]
3101f4 call   0x2d4c24
3101f9 lea    rdx,[rbp+0xef8]
310200 lea    rcx,[rbp+0x20]
310204 call   0x2d87b0
310209 lea    rdx,[rbp+0xf00]
310210 lea    rcx,[rbp+0x20]
310214 mov    rbx,QWORD PTR [rax]
310217 call   0x2d7d90
31021c mov    r9b,BYTE PTR [rbp+0x15a8]
310223 lea    rcx,[rbp+0xba8]
31022a mov    r8,rbx
31022d mov    rdx,QWORD PTR [rax]
310230 call   0x2edee8
310235 lea    rcx,[rbp+0xba8]
31023c call   0x2ce5d8
310241 lea    rdx,[rbp+0x210]
310248 mov    rbx,rax
31024b lea    rcx,[rax+0x30]
31024f call   0x2d4c24
310254 lea    rdx,[rbp+0xf08]
31025b mov    DWORD PTR [rbx+0x64],edi
31025e lea    rcx,[rbp+0x20]
310262 call   0x2d87b0
310267 lea    rdx,[rbp+0xf10]
31026e lea    rcx,[rbp+0x20]
310272 mov    rbx,QWORD PTR [rax]
310275 call   0x2d7d90
31027a mov    r9b,BYTE PTR [rbp+0x15a8]
310281 lea    rcx,[rbp+0xf18]
310288 mov    r8,rbx
31028b mov    rdx,QWORD PTR [rax]
31028e call   0x2edf64
310293 mov    rcx,rax
310296 call   0x2ce5d8
31029b lea    rdx,[rbp-0x28]
31029f lea    rcx,[rax+0x30]
3102a3 call   0x2d4c24
3102a8 lea    rdx,[rbp+0x1d0]
3102af lea    rcx,[rbp+0x15a8]
3102b6 call   0x2cc730
3102bb mov    rcx,rax
3102be call   0x2cdca4
3102c3 lea    rdx,[rbp+0xf20]
3102ca mov    rdi,rax
3102cd lea    rcx,[rbp+0x20]
3102d1 call   0x2d87b0
3102d6 lea    rdx,[rbp+0xf28]
3102dd lea    rcx,[rbp+0x20]
3102e1 mov    rbx,QWORD PTR [rax]
3102e4 call   0x2d7d90
3102e9 mov    r9b,BYTE PTR [rbp+0x15a8]
3102f0 lea    rcx,[rbp+0xf30]
3102f7 mov    r8,rbx
3102fa mov    rdx,QWORD PTR [rax]
3102fd call   0x2edfe0
310302 mov    rcx,rax
310305 call   0x2ce5d8
31030a mov    rdx,rdi
31030d lea    rcx,[rax+0x30]
310311 call   0x2d4c68
310316 lea    rdx,[rbp+0x1af]
31031d lea    rcx,[rbp+0x15a8]
310324 call   0x2cc730
310329 mov    rcx,rax
31032c call   0x2cdca4
310331 lea    rdx,[rbp+0xf38]
310338 mov    rdi,rax
31033b lea    rcx,[rbp+0x20]
31033f call   0x2d87b0
310344 lea    rdx,[rbp+0xf40]
31034b lea    rcx,[rbp+0x20]
31034f mov    rbx,QWORD PTR [rax]
310352 call   0x2d7d90
310357 mov    r9b,BYTE PTR [rbp+0x15a8]
31035e lea    rcx,[rbp+0xf48]
310365 mov    r8,rbx
310368 mov    rdx,QWORD PTR [rax]
31036b call   0x2ee05c
310370 mov    rcx,rax
310373 call   0x2ce5d8
310378 mov    rdx,rdi
31037b lea    rcx,[rax+0x30]
31037f call   0x2d4c68
310384 lea    rdx,[rbp+0x1ae]
31038b lea    rcx,[rbp+0x15a8]
310392 call   0x2cc730
310397 mov    rcx,rax
31039a call   0x2cdca4
31039f lea    rdx,[rbp+0xf50]
3103a6 mov    rdi,rax
3103a9 lea    rcx,[rbp+0x20]
3103ad call   0x2d87b0
3103b2 lea    rdx,[rbp+0xf58]
3103b9 lea    rcx,[rbp+0x20]
3103bd mov    rbx,QWORD PTR [rax]
3103c0 call   0x2d7d90
3103c5 mov    r9b,BYTE PTR [rbp+0x15a8]
3103cc lea    rcx,[rbp+0xf60]
3103d3 mov    r8,rbx
3103d6 mov    rdx,QWORD PTR [rax]
3103d9 call   0x2ee0d8
3103de mov    rcx,rax
3103e1 call   0x2ce5d8
3103e6 mov    rdx,rdi
3103e9 lea    rcx,[rax+0x30]
3103ed call   0x2d4c68
3103f2 cmp    BYTE PTR [rip+0xd991f],r15b        # 0x3e9d18 ; CONFIG Bools.CornerBox value(+0x48)
3103f9 je     0x31041d
3103fb movups xmm0,XMMWORD PTR [rbp+0x110]
310402 lea    rdx,[rbp+0x180]
310409 lea    rcx,[rbp+0xa0]
310410 movdqa XMMWORD PTR [rbp+0x180],xmm0
310418 call   0x37b724
31041d lea    rcx,[rip+0xd58a4]        # 0x3e5cc8
310424 mov    DWORD PTR [rbp+0x15a8],r15d
31042b call   0x2edae8
310430 lea    rcx,[rip+0xd5891]        # 0x3e5cc8
310437 mov    rbx,rax
31043a call   0x2cb3a4
31043f mov    rcx,rax
310442 lea    r8,[rbp+0x15a8]
310449 mov    rdx,rbx
31044c call   0x2edb28
310451 movups xmm0,XMMWORD PTR [rbp+0x110]
310458 xor    edx,edx
31045a lea    rcx,[rbp+0x20]
31045e movdqa XMMWORD PTR [rbp+0x180],xmm0
310466 call   0x2ef7c8
31046b mov    rdx,rax
31046e lea    rcx,[rbp+0xc40]
310475 call   0x2db470
31047a mov    rdx,rax
31047d lea    r8,[rbp+0x180]
310484 lea    rcx,[rbp+0xa0]
31048b call   0x37bc98
310490 movups xmm0,XMMWORD PTR [rbp+0x110]
310497 mov    edx,0x1
31049c lea    rcx,[rbp+0x20]
3104a0 movdqa XMMWORD PTR [rbp+0x180],xmm0
3104a8 call   0x2ef7c8
3104ad mov    rdx,rax
3104b0 lea    rcx,[rbp+0xc40]
3104b7 call   0x2db470
3104bc mov    rdx,rax
3104bf lea    r8,[rbp+0x180]
3104c6 lea    rcx,[rbp+0xa0]
3104cd call   0x37bc98
3104d2 movups xmm0,XMMWORD PTR [rbp+0x110]
3104d9 mov    edx,0x2
3104de lea    rcx,[rbp+0x20]
3104e2 movdqa XMMWORD PTR [rbp+0x180],xmm0
3104ea call   0x2ef7c8
3104ef mov    rdx,rax
3104f2 lea    rcx,[rbp+0xc40]
3104f9 call   0x2db470
3104fe mov    rdx,rax
310501 lea    r8,[rbp+0x180]
310508 lea    rcx,[rbp+0xa0]
31050f call   0x37bc98
310514 movups xmm0,XMMWORD PTR [rbp+0x110]
31051b mov    edx,0x3
310520 lea    rcx,[rbp+0x20]
310524 movdqa XMMWORD PTR [rbp+0x180],xmm0
31052c call   0x2ef7c8
310531 mov    rdx,rax
310534 lea    rcx,[rbp+0xc40]
31053b call   0x2db470
310540 mov    rdx,rax
310543 lea    r8,[rbp+0x180]
31054a lea    rcx,[rbp+0xa0]
310551 call   0x37bc98
310556 movups xmm0,XMMWORD PTR [rbp+0x110]
31055d mov    edx,0x4
310562 lea    rcx,[rbp+0x20]
310566 movdqa XMMWORD PTR [rbp+0x180],xmm0
31056e call   0x2ef7c8
310573 mov    rdx,rax
310576 lea    rcx,[rbp+0xc40]
31057d call   0x2db470
310582 mov    rdx,rax
310585 lea    r8,[rbp+0x180]
31058c lea    rcx,[rbp+0xa0]
310593 call   0x37bc98
310598 movups xmm0,XMMWORD PTR [rbp+0x110]
31059f mov    edx,0x5
3105a4 lea    rcx,[rbp+0x20]
3105a8 movdqa XMMWORD PTR [rbp+0x180],xmm0
3105b0 call   0x2ef7c8
3105b5 mov    rdx,rax
3105b8 lea    rcx,[rbp+0xc40]
3105bf call   0x2db470
3105c4 mov    rdx,rax
3105c7 lea    r8,[rbp+0x180]
3105ce lea    rcx,[rbp+0xa0]
3105d5 call   0x37bc98
3105da lea    r8,[rbp+0xb0]
3105e1 lea    rdx,[rbp+0xf68]
3105e8 lea    rcx,[rbp+0xa8]
3105ef call   0x2efa04
3105f4 movss  xmm2,DWORD PTR [rip+0xfffffffffff82b38]        # 0x293134 ; f32=2
3105fc lea    rdx,[rbp+0x4e8]
310603 mov    rcx,rax
310606 call   0x2efa34
31060b movss  xmm1,DWORD PTR [rip+0xfffffffffff388bd]        # 0x248ed0 ; f32=16
310613 movd   xmm6,DWORD PTR [rip+0xd56bd]        # 0x3e5cd8
31061b movaps xmm2,xmm1
31061e mulss  xmm2,DWORD PTR [rip+0xfffffffffff82b1a]        # 0x293140 ; f32=2.31
310626 mov    rcx,QWORD PTR [rsp+0x58]
31062b movss  xmm7,DWORD PTR [rbp+0x4e8]
310633 cvtdq2ps xmm6,xmm6
310636 movaps xmm0,xmm2
310639 mulss  xmm0,DWORD PTR [rip+0xfffffffffff7cc0f]        # 0x28d250 ; f32=0.5
310641 mulss  xmm6,xmm1
310645 mulss  xmm1,DWORD PTR [rip+0xfffffffffff82a6b]        # 0x2930b8 ; f32=0.38
