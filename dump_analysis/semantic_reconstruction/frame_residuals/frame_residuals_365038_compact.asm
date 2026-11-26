365038 mov    rax,rsp
36503b push   rbp
36503c push   rbx
36503d push   rsi
36503e push   rdi
36503f push   r14
365041 push   r15
365043 lea    rbp,[rax-0x5f]
365047 sub    rsp,0xd8
36504e movaps XMMWORD PTR [rax-0x48],xmm6
365052 lea    rdx,[rbp+0x67]
365056 movaps XMMWORD PTR [rax-0x58],xmm7
36505a lea    rcx,[rbp+0x67]
36505e movaps XMMWORD PTR [rax-0x68],xmm8
365063 movaps XMMWORD PTR [rax-0x78],xmm10
365068 movaps XMMWORD PTR [rax-0x88],xmm11
365070 call   0x352328
365075 mov    rcx,rax
365078 call   0x2dd138
36507d xor    edx,edx
36507f mov    rcx,rax
365082 lea    r8d,[rdx+0x2f]
365086 call   0x38cfa4
36508b movss  xmm2,DWORD PTR [rip+0xffffffffffee3e79]        # 0x248f0c ; f32=580
365093 lea    rcx,[rbp+0x67]
365097 movss  xmm1,DWORD PTR [rip+0xfffffffffff29149]        # 0x28e1e8 ; f32=300
36509f call   0x2cc340
3650a4 xor    edx,edx
3650a6 lea    rcx,[rbp+0x67]
3650aa call   0x39bc6c
3650af call   0x392ecc
3650b4 mov    rcx,QWORD PTR [rip+0xa0a6d]        # 0x405b28
3650bb mov    edx,0x11
3650c0 mov    rdi,rax
3650c3 movss  xmm0,DWORD PTR [rcx+0x37d0]
3650cb lea    r9d,[rdx-0x1]
3650cf movss  xmm8,DWORD PTR [rcx+0x37e0]
3650d8 lea    r8d,[rdx+0x2]
3650dc mulss  xmm0,DWORD PTR [rip+0xfffffffffff28600]        # 0x28d6e4 ; f32=255
3650e4 cvttss2si ecx,xmm0
3650e8 mov    DWORD PTR [rsp+0x20],ecx
3650ec lea    rcx,[rbp-0x39]
3650f0 call   0x2db318
3650f5 mov    rcx,rax
3650f8 call   0x2ef80c
3650fd lea    rcx,[rbp+0x6f]
365101 mov    ebx,eax
365103 call   0x392ef8
365108 movss  xmm6,DWORD PTR [rax]
36510c call   0x392f34
365111 movaps xmm7,xmm0
365114 lea    rcx,[rbp+0x77]
365118 addss  xmm7,xmm6
36511c call   0x392ef8
365121 movss  xmm6,DWORD PTR [rax+0x4]
365126 call   0x392ee4
36512b addss  xmm6,xmm0
36512f movaps xmm1,xmm7
365132 lea    rcx,[rbp+0x67]
365136 movaps xmm2,xmm6
365139 call   0x2cc340
36513e lea    rcx,[rbp+0x7f]
365142 call   0x392ef8
365147 lea    rcx,[rbp-0x59]
36514b movss  xmm6,DWORD PTR [rax]
36514f call   0x392ef8
365154 movaps xmm1,xmm6
365157 lea    rcx,[rbp-0x49]
36515b movss  xmm2,DWORD PTR [rax+0x4]
365160 addss  xmm2,DWORD PTR [rip+0xfffffffffff430e0]        # 0x2a8248 ; f32=57
365168 call   0x2cc340
36516d mov    rdx,rax
365170 mov    DWORD PTR [rsp+0x28],0xc0
365178 mov    r9d,ebx
36517b movss  DWORD PTR [rsp+0x20],xmm8
365182 lea    r8,[rbp+0x67]
365186 mov    rcx,rdi
365189 call   0x3a1244
36518e call   0x392ecc
365193 movss  xmm11,DWORD PTR [rip+0xfffffffffff280b8]        # 0x28d254 ; f32=1
36519c xor    ecx,ecx
36519e movaps xmm1,xmm11
3651a2 mov    rdi,rax
3651a5 call   0x392298
3651aa lea    rcx,[rbp+0x6f]
3651ae mov    ebx,eax
3651b0 call   0x392ef8
3651b5 lea    rcx,[rbp+0x77]
3651b9 movss  xmm6,DWORD PTR [rax]
3651bd addss  xmm6,DWORD PTR [rip+0xfffffffffff2895b]        # 0x28db20 ; f32=20
3651c5 call   0x392ef8
3651ca movaps xmm1,xmm6
3651cd lea    rcx,[rbp+0x67]
3651d1 movss  xmm2,DWORD PTR [rax+0x4]
3651d6 addss  xmm2,DWORD PTR [rip+0xfffffffffff28942]        # 0x28db20 ; f32=20
3651de call   0x2cc340
3651e3 movss  xmm7,DWORD PTR [rip+0xffffffffffee3cfd]        # 0x248ee8 ; f32=1
3651eb lea    rcx,[rip+0x96eee]        # 0x3fc0e0
3651f2 movss  xmm6,DWORD PTR [rip+0xfffffffffff2dfc2]        # 0x2931bc ; f32=16
3651fa mov    edx,0x2
3651ff mulss  xmm7,xmm6
365203 call   0x3367b8
365208 mov    rcx,rax
36520b movaps xmm1,xmm6
36520e call   0x364aec
365213 mov    QWORD PTR [rsp+0x40],0x0
36521c lea    r9,[rbp+0x67]
365220 xorps  xmm8,xmm8
365224 mov    rdx,rax
365227 movss  DWORD PTR [rsp+0x38],xmm8
36522e lea    rax,[rip+0xfffffffffff30857]        # 0x295a8c
365235 mov    QWORD PTR [rsp+0x30],0x0
36523e movaps xmm2,xmm7
365241 mov    QWORD PTR [rsp+0x28],rax
365246 mov    rcx,rdi
365249 mov    DWORD PTR [rsp+0x20],ebx
36524d call   0x3a31f8
365252 call   0x392ecc
365257 lea    rdx,[rbp-0x49]
36525b mov    rsi,rax
36525e lea    rcx,[rbp+0x67]
365262 call   0x35399c ; STRING getter=0x35399c ESP PREVIEW
365267 mov    rcx,rax
36526a call   0x2cde0c
36526f mov    r14d,0x1
365275 movaps xmm1,xmm11
365279 mov    ecx,r14d
36527c mov    rdi,rax
36527f call   0x392298
365284 lea    rcx,[rbp+0x77]
365288 mov    ebx,eax
36528a call   0x392ef8
36528f movss  xmm10,DWORD PTR [rip+0xfffffffffff28894]        # 0x28db2c ; f32=50
365298 lea    rcx,[rbp+0x7f]
36529c movss  xmm6,DWORD PTR [rax]
3652a0 addss  xmm6,xmm10
3652a5 call   0x392ef8
3652aa movaps xmm1,xmm6
3652ad lea    rcx,[rbp+0x6f]
3652b1 movss  xmm2,DWORD PTR [rax+0x4]
3652b6 addss  xmm2,DWORD PTR [rip+0xfffffffffff42f82]        # 0x2a8240 ; f32=21
3652be call   0x2cc340
3652c3 mov    r9,rdi
3652c6 mov    QWORD PTR [rsp+0x20],0x0
3652cf mov    r8d,ebx
3652d2 lea    rdx,[rbp+0x6f]
3652d6 mov    rcx,rsi
3652d9 call   0x3a31bc
3652de movss  xmm1,DWORD PTR [rip+0xfffffffffff27f6a]        # 0x28d250 ; f32=0.5
3652e6 lea    rcx,[rbp+0x67]
3652ea movss  xmm2,DWORD PTR [rip+0xffffffffffee3c1a]        # 0x248f0c ; f32=580
3652f2 movss  xmm0,DWORD PTR [rip+0xffffffffffee3c2a]        # 0x248f24 ; f32=228.462
3652fa movss  xmm3,DWORD PTR [rip+0xffffffffffee3c1e]        # 0x248f20 ; f32=120
365302 mulss  xmm2,xmm1
365306 mulss  xmm0,xmm1
36530a mulss  xmm3,xmm1
36530e movss  xmm1,DWORD PTR [rip+0xfffffffffff2df12]        # 0x293228 ; f32=150
365316 subss  xmm2,xmm0
36531a subss  xmm1,xmm3
36531e call   0x2cc340
365323 movss  xmm0,DWORD PTR [rax]
365327 movss  DWORD PTR [rip+0xffffffffffee3be9],xmm0        # 0x248f18
36532f movss  xmm2,DWORD PTR [rax+0x4]
365334 movss  DWORD PTR [rip+0xffffffffffee3be0],xmm2        # 0x248f1c
36533c call   0x392ee4
365341 subss  xmm0,DWORD PTR [rip+0xfffffffffff287eb]        # 0x28db34 ; f32=65
365349 xorps  xmm1,xmm1
36534c lea    rcx,[rbp+0x67]
365350 movaps xmm2,xmm0
365353 call   0x2cc340
365358 mov    rbx,rax
36535b lea    rcx,[rbp+0x6f]
36535f call   0x392f14
365364 mov    r8,rax
365367 lea    rcx,[rbp-0x39]
36536b mov    rdx,rbx
36536e call   0x2db388
365373 movss  xmm8,DWORD PTR [rip+0xffffffffffee3ba0]        # 0x248f1c
36537c lea    rcx,[rbp+0x67]
365380 movaps xmm2,xmm8
365384 subss  xmm2,xmm10
365389 movss  xmm0,DWORD PTR [rax]
36538d movss  DWORD PTR [rip+0x96d9b],xmm0        # 0x3fc130
365395 movss  xmm1,DWORD PTR [rax+0x4]
36539a movss  DWORD PTR [rip+0x96d92],xmm1        # 0x3fc134
3653a2 mov    rax,QWORD PTR [rax+0x8]
3653a6 movss  xmm1,DWORD PTR [rip+0xffffffffffee3b6a]        # 0x248f18
3653ae mov    QWORD PTR [rip+0x96d83],rax        # 0x3fc138
3653b5 call   0x2cc340
3653ba movss  xmm6,DWORD PTR [rip+0xffffffffffee3b56]        # 0x248f18
3653c2 lea    rcx,[rbp+0x6f]
3653c6 addss  xmm6,DWORD PTR [rip+0xffffffffffee3b52]        # 0x248f20 ; f32=120
3653ce movaps xmm2,xmm8
3653d2 movaps xmm1,xmm6
3653d5 call   0x2cc340
3653da mov    r8,rax
3653dd lea    rdx,[rbp+0x67]
3653e1 lea    rcx,[rbp-0x39]
3653e5 call   0x2db388
3653ea movaps xmm7,xmm8
3653ee lea    rcx,[rbp+0x67]
3653f2 addss  xmm7,DWORD PTR [rip+0xffffffffffee3b2a]        # 0x248f24 ; f32=228.462
3653fa movaps xmm1,xmm6
3653fd movups xmm0,XMMWORD PTR [rax]
365400 addss  xmm1,xmm10
365405 movaps xmm2,xmm7
365408 movdqu XMMWORD PTR [rip+0x96d50],xmm0        # 0x3fc160
365410 call   0x2cc340
365415 movaps xmm2,xmm8
365419 lea    rcx,[rbp+0x6f]
36541d movaps xmm1,xmm6
365420 mov    rbx,rax
365423 call   0x2cc340
365428 mov    rdx,rax
36542b lea    rcx,[rbp-0x39]
36542f mov    r8,rbx
365432 call   0x2db388
365437 movss  xmm1,DWORD PTR [rip+0xffffffffffee3ad9]        # 0x248f18
36543f lea    rcx,[rbp+0x67]
365443 movaps xmm2,xmm7
365446 movups xmm0,XMMWORD PTR [rax]
365449 movdqu XMMWORD PTR [rip+0x96cff],xmm0        # 0x3fc150
365451 call   0x2cc340
365456 movaps xmm2,xmm7
365459 lea    rcx,[rbp+0x6f]
36545d addss  xmm2,xmm10
365462 movaps xmm1,xmm6
365465 mov    rbx,rax
365468 call   0x2cc340
36546d mov    r8,rax
365470 lea    rcx,[rbp-0x39]
365474 mov    rdx,rbx
365477 call   0x2db388
36547c movss  xmm1,DWORD PTR [rip+0xffffffffffee3a94]        # 0x248f18
365484 lea    rcx,[rbp+0x67]
365488 subss  xmm1,xmm10
36548d movaps xmm2,xmm8
365491 movups xmm0,XMMWORD PTR [rax]
365494 movdqu XMMWORD PTR [rip+0x96cd4],xmm0        # 0x3fc170
36549c call   0x2cc340
3654a1 movss  xmm1,DWORD PTR [rip+0xffffffffffee3a6f]        # 0x248f18
3654a9 lea    rcx,[rbp+0x6f]
3654ad movaps xmm2,xmm7
3654b0 mov    rbx,rax
3654b3 call   0x2cc340
3654b8 mov    r8,rax
3654bb lea    rcx,[rbp-0x39]
3654bf mov    rdx,rbx
3654c2 call   0x2db388
3654c7 movups xmm0,XMMWORD PTR [rax]
3654ca movdqu XMMWORD PTR [rip+0x96c6e],xmm0        # 0x3fc140
3654d2 call   0x37d7b0
3654d7 call   0x37db8c
3654dc xor    edi,edi
3654de mov    DWORD PTR [rip+0xffffffffffee3a28],0x5        # 0x248f10
3654e8 xor    esi,esi
3654ea lea    r15,[rip+0xffffffffffc9ab0f]        # 0x0
3654f1 lea    rcx,[rbp+0x77]
3654f5 call   0x392ef8
3654fa mov    rbx,rsi
3654fd lea    rcx,[rbp+0x7f]
365501 add    rbx,rbx
365504 movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc138]
36550e addss  xmm6,DWORD PTR [rax]
365512 call   0x392ef8
365517 movaps xmm1,xmm6
36551a lea    rcx,[rbp+0x67]
36551e movss  xmm2,DWORD PTR [rax+0x4]
365523 addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc13c]
36552d call   0x2cc340
365532 lea    rcx,[rbp-0x49]
365536 call   0x392ef8
36553b movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc130]
365545 lea    rcx,[rbp-0x59]
365549 addss  xmm6,DWORD PTR [rax]
36554d call   0x392ef8
365552 movaps xmm1,xmm6
365555 lea    rcx,[rbp+0x6f]
365559 movss  xmm2,DWORD PTR [rax+0x4]
36555e addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc134]
365568 call   0x2cc340
36556d mov    r8b,r14b
365570 lea    rdx,[rbp+0x67]
365574 lea    rcx,[rbp+0x6f]
365578 call   0x3944ac
36557d mov    BYTE PTR [r15+rsi*1+0x3fc120],al
365585 test   al,al
365587 je     0x36558f
365589 mov    DWORD PTR [rip+0xffffffffffee3981],edi        # 0x248f10
36558f add    edi,r14d
365592 add    rsi,r14
365595 cmp    edi,0x5
365598 jl     0x3654f1
36559e call   0x392ecc
3655a3 lea    rdx,[rbp-0x49]
3655a7 mov    rsi,rax
3655aa lea    rcx,[rbp+0x67]
3655ae call   0x354f88 ; STRING getter=0x354f88 DRAG & DROP
3655b3 mov    rcx,rax
3655b6 call   0x2cde0c
3655bb mov    r15d,0x2
3655c1 movaps xmm1,xmm11
3655c5 mov    ecx,r15d
3655c8 mov    rdi,rax
3655cb call   0x392298
3655d0 lea    rcx,[rbp+0x6f]
3655d4 mov    ebx,eax
3655d6 call   0x392ef8
3655db movss  xmm6,DWORD PTR [rip+0x96b4d]        # 0x3fc130
3655e3 lea    rcx,[rbp+0x77]
3655e7 addss  xmm6,DWORD PTR [rax]
3655eb addss  xmm6,DWORD PTR [rip+0xfffffffffff2852d]        # 0x28db20 ; f32=20
3655f3 call   0x392ef8
3655f8 movss  xmm2,DWORD PTR [rip+0x96b34]        # 0x3fc134
365600 lea    rcx,[rbp+0x7f]
365604 movaps xmm1,xmm6
365607 addss  xmm2,DWORD PTR [rax+0x4]
36560c call   0x2cc340
365611 mov    rdx,rax
365614 mov    QWORD PTR [rsp+0x20],0x0
36561d mov    r9,rdi
365620 mov    r8d,ebx
365623 mov    rcx,rsi
365626 call   0x3a31bc
36562b lea    rcx,[rip+0x80696]        # 0x3e5cc8
365632 mov    DWORD PTR [rbp+0x67],0x0
365639 call   0x2edae8
36563e lea    rcx,[rip+0x80683]        # 0x3e5cc8
365645 mov    rbx,rax
365648 call   0x2cb3a4
36564d mov    rcx,rax
365650 lea    r8,[rbp+0x67]
365654 mov    rdx,rbx
365657 call   0x2edb28
36565c movss  xmm2,DWORD PTR [rip+0x96ad0]        # 0x3fc134
365664 lea    rcx,[rbp+0x67]
365668 movss  xmm1,DWORD PTR [rip+0x96ac0]        # 0x3fc130
365670 addss  xmm2,DWORD PTR [rip+0xfffffffffff2db5c]        # 0x2931d4 ; f32=25
365678 addss  xmm1,DWORD PTR [rip+0xfffffffffff284a0]        # 0x28db20 ; f32=20
365680 call   0x2cc340
365685 mov    rcx,rax
365688 call   0x39b3b8
36568d call   0x38ec90
365692 movaps xmm1,xmm11
365696 mov    ecx,r14d
365699 call   0x392298
36569e mov    edx,eax
3656a0 lea    rcx,[rbp-0x39]
3656a4 call   0x3364d4
3656a9 lea    rbx,[rip+0x71708]        # 0x3d6db8
3656b0 xor    edx,edx
3656b2 mov    rcx,rbx
3656b5 movups xmm0,XMMWORD PTR [rax]
3656b8 movdqu XMMWORD PTR [rbp-0x49],xmm0
3656bd call   0x2ef7c8
3656c2 mov    rcx,rax
3656c5 lea    rdx,[rbp-0x49]
3656c9 call   0x37df58
3656ce movaps xmm1,xmm11
3656d2 mov    ecx,r14d
3656d5 call   0x392298
3656da mov    edx,eax
3656dc lea    rcx,[rbp-0x39]
3656e0 call   0x3364d4
3656e5 mov    rdx,r14
3656e8 mov    rcx,rbx
3656eb movups xmm0,XMMWORD PTR [rax]
3656ee movdqu XMMWORD PTR [rbp-0x49],xmm0
3656f3 call   0x2ef7c8
3656f8 mov    rcx,rax
3656fb lea    rdx,[rbp-0x49]
3656ff call   0x37df58
365704 movaps xmm1,xmm11
365708 mov    ecx,r14d
36570b call   0x392298
365710 mov    edx,eax
365712 lea    rcx,[rbp-0x39]
365716 call   0x3364d4
36571b mov    edx,r15d
36571e mov    rcx,rbx
365721 movups xmm0,XMMWORD PTR [rax]
365724 movdqu XMMWORD PTR [rbp-0x49],xmm0
365729 call   0x2ef7c8
36572e mov    rcx,rax
365731 lea    rdx,[rbp-0x49]
365735 call   0x37df58
36573a movaps xmm1,xmm11
36573e mov    ecx,r14d
365741 call   0x392298
365746 mov    edx,eax
365748 lea    rcx,[rbp-0x39]
36574c call   0x3364d4
365751 lea    edx,[r15+0x1]
365755 mov    rcx,rbx
365758 movups xmm0,XMMWORD PTR [rax]
36575b movdqu XMMWORD PTR [rbp-0x49],xmm0
365760 call   0x2ef7c8
365765 mov    rcx,rax
365768 lea    rdx,[rbp-0x49]
36576c call   0x37df58
365771 movaps xmm1,xmm11
365775 mov    ecx,r14d
365778 call   0x392298
36577d mov    edx,eax
36577f lea    rcx,[rbp-0x39]
365783 call   0x3364d4
365788 lea    edx,[r15+0x2]
36578c mov    rcx,rbx
36578f movups xmm0,XMMWORD PTR [rax]
365792 movdqu XMMWORD PTR [rbp-0x49],xmm0
365797 call   0x2ef7c8
36579c mov    rcx,rax
36579f lea    rdx,[rbp-0x49]
3657a3 call   0x37df58
3657a8 movaps xmm1,xmm11
3657ac mov    ecx,r14d
3657af call   0x392298
3657b4 mov    edx,eax
3657b6 lea    rcx,[rbp-0x39]
3657ba call   0x3364d4
3657bf lea    edx,[r15+0x3]
3657c3 mov    rcx,rbx
3657c6 movups xmm0,XMMWORD PTR [rax]
3657c9 movdqu XMMWORD PTR [rbp-0x49],xmm0
3657ce call   0x2ef7c8
3657d3 mov    rcx,rax
3657d6 lea    rdx,[rbp-0x49]
3657da call   0x37df58
3657df call   0x390efc
3657e4 lea    r11,[rsp+0xd8]
3657ec movaps xmm6,XMMWORD PTR [r11-0x18]
3657f1 movaps xmm7,XMMWORD PTR [r11-0x28]
3657f6 movaps xmm8,XMMWORD PTR [r11-0x38]
3657fb movaps xmm10,XMMWORD PTR [r11-0x48]
365800 movaps xmm11,XMMWORD PTR [r11-0x58]
365805 mov    rsp,r11
365808 pop    r15
36580a pop    r14
36580c pop    rdi
36580d pop    rsi
36580e pop    rbx
36580f pop    rbp
365810 jmp    0x390994
