; full range 36f788..36f8b5
36f788 40 53 rex push rbx
36f78a 56 push   rsi
36f78b 57 push   rdi
36f78c 48 83 ec 50 sub    rsp,0x50
36f790 48 8b 1d 61 08 09 00 mov    rbx,QWORD PTR [rip+0x90861]        # 0x3ffff8
36f797 0f 29 74 24 40 movaps XMMWORD PTR [rsp+0x40],xmm6
36f79c 48 85 db test   rbx,rbx
36f79f 0f 84 03 01 00 00 je     0x36f8a8
36f7a5 e8 a2 16 f7 ff call   0x2e0e4c
36f7aa 84 c0 test   al,al
36f7ac 0f 85 e1 00 00 00 jne    0x36f893
36f7b2 e8 e5 0e f7 ff call   0x2e069c
36f7b7 48 85 c0 test   rax,rax
36f7ba 0f 84 d3 00 00 00 je     0x36f893
36f7c0 e8 57 60 fa ff call   0x31581c
36f7c5 48 8b cb mov    rcx,rbx
36f7c8 0f 28 f0 movaps xmm6,xmm0
36f7cb 33 ff xor    edi,edi
36f7cd e8 16 9c f6 ff call   0x2d93e8
36f7d2 48 85 c0 test   rax,rax
36f7d5 0f 84 cd 00 00 00 je     0x36f8a8
36f7db 48 63 f7 movsxd rsi,edi
36f7de 48 8b cb mov    rcx,rbx
36f7e1 48 8b d6 mov    rdx,rsi
36f7e4 e8 6f 07 00 00 call   0x36ff58
36f7e9 48 8b d0 mov    rdx,rax
36f7ec 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
36f7f1 e8 92 e7 ff ff call   0x36df88
36f7f6 f3 0f 10 4c 24 38 movss  xmm1,DWORD PTR [rsp+0x38]
36f7fc 0f 28 c6 movaps xmm0,xmm6
36f7ff f3 0f 10 15 41 d3 08 movss  xmm2,DWORD PTR [rip+0x8d341]        # 0x3fcb48
36f806 00 
36f807 f3 0f 5c c1 subss  xmm0,xmm1
36f80b 0f 2f d0 comiss xmm2,xmm0
36f80e f3 0f 11 05 ea 07 09 movss  DWORD PTR [rip+0x907ea],xmm0        # 0x400000
36f815 00 
36f816 76 1b jbe    0x36f833
36f818 0f 28 ce movaps xmm1,xmm6
36f81b 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
36f820 e8 37 ed ff ff call   0x36e55c
36f825 f3 0f 10 4c 24 38 movss  xmm1,DWORD PTR [rsp+0x38]
36f82b f3 0f 10 15 15 d3 08 movss  xmm2,DWORD PTR [rip+0x8d315]        # 0x3fcb48
36f832 00 
36f833 0f 28 c6 movaps xmm0,xmm6
36f836 f3 0f 5c c1 subss  xmm0,xmm1
36f83a 0f 2f c2 comiss xmm0,xmm2
36f83d 76 32 jbe    0x36f871
36f83f 48 8d 54 24 70 lea    rdx,[rsp+0x70]
36f844 48 8b cb mov    rcx,rbx
36f847 e8 44 85 f6 ff call   0x2d7d90
36f84c 48 8b c8 mov    rcx,rax
36f84f 48 8d 54 24 78 lea    rdx,[rsp+0x78]
36f854 4c 8b c6 mov    r8,rsi
36f857 e8 58 56 f6 ff call   0x2d4eb4
36f85c 48 8d 94 24 80 00 00 lea    rdx,[rsp+0x80]
36f863 00 
36f864 48 8b cb mov    rcx,rbx
36f867 4c 8b 00 mov    r8,QWORD PTR [rax]
36f86a e8 3d 08 00 00 call   0x3700ac
36f86f ff cf dec    edi
36f871 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
36f876 e8 21 e8 ff ff call   0x36e09c
36f87b 48 8b cb mov    rcx,rbx
36f87e ff c7 inc    edi
36f880 e8 63 9b f6 ff call   0x2d93e8
36f885 48 63 cf movsxd rcx,edi
36f888 48 3b c8 cmp    rcx,rax
36f88b 0f 82 4a ff ff ff jb     0x36f7db
36f891 eb 15 jmp    0x36f8a8
36f893 48 8b cb mov    rcx,rbx
36f896 e8 4d 9b f6 ff call   0x2d93e8
36f89b 48 85 c0 test   rax,rax
36f89e 74 08 je     0x36f8a8
36f8a0 48 8b cb mov    rcx,rbx
36f8a3 e8 78 07 00 00 call   0x370020
36f8a8 0f 28 74 24 40 movaps xmm6,XMMWORD PTR [rsp+0x40]
36f8ad 48 83 c4 50 add    rsp,0x50
36f8b1 5f pop    rdi
36f8b2 5e pop    rsi
36f8b3 5b pop    rbx
36f8b4 c3 ret

; full range 365038..365815
365038 48 8b c4 mov    rax,rsp
36503b 55 push   rbp
36503c 53 push   rbx
36503d 56 push   rsi
36503e 57 push   rdi
36503f 41 56 push   r14
365041 41 57 push   r15
365043 48 8d 68 a1 lea    rbp,[rax-0x5f]
365047 48 81 ec d8 00 00 00 sub    rsp,0xd8
36504e 0f 29 70 b8 movaps XMMWORD PTR [rax-0x48],xmm6
365052 48 8d 55 67 lea    rdx,[rbp+0x67]
365056 0f 29 78 a8 movaps XMMWORD PTR [rax-0x58],xmm7
36505a 48 8d 4d 67 lea    rcx,[rbp+0x67]
36505e 44 0f 29 40 98 movaps XMMWORD PTR [rax-0x68],xmm8
365063 44 0f 29 50 88 movaps XMMWORD PTR [rax-0x78],xmm10
365068 44 0f 29 98 78 ff ff movaps XMMWORD PTR [rax-0x88],xmm11
36506f ff 
365070 e8 b3 d2 fe ff call   0x352328
365075 48 8b c8 mov    rcx,rax
365078 e8 bb 80 f7 ff call   0x2dd138
36507d 33 d2 xor    edx,edx
36507f 48 8b c8 mov    rcx,rax
365082 44 8d 42 2f lea    r8d,[rdx+0x2f]
365086 e8 19 7f 02 00 call   0x38cfa4
36508b f3 0f 10 15 79 3e ee movss  xmm2,DWORD PTR [rip+0xffffffffffee3e79]        # 0x248f0c
365092 ff 
365093 48 8d 4d 67 lea    rcx,[rbp+0x67]
365097 f3 0f 10 0d 49 91 f2 movss  xmm1,DWORD PTR [rip+0xfffffffffff29149]        # 0x28e1e8
36509e ff 
36509f e8 9c 72 f6 ff call   0x2cc340
3650a4 33 d2 xor    edx,edx
3650a6 48 8d 4d 67 lea    rcx,[rbp+0x67]
3650aa e8 bd 6b 03 00 call   0x39bc6c
3650af e8 18 de 02 00 call   0x392ecc
3650b4 48 8b 0d 6d 0a 0a 00 mov    rcx,QWORD PTR [rip+0xa0a6d]        # 0x405b28
3650bb ba 11 00 00 00 mov    edx,0x11
3650c0 48 8b f8 mov    rdi,rax
3650c3 f3 0f 10 81 d0 37 00 movss  xmm0,DWORD PTR [rcx+0x37d0]
3650ca 00 
3650cb 44 8d 4a ff lea    r9d,[rdx-0x1]
3650cf f3 44 0f 10 81 e0 37 movss  xmm8,DWORD PTR [rcx+0x37e0]
3650d6 00 00 
3650d8 44 8d 42 02 lea    r8d,[rdx+0x2]
3650dc f3 0f 59 05 00 86 f2 mulss  xmm0,DWORD PTR [rip+0xfffffffffff28600]        # 0x28d6e4
3650e3 ff 
3650e4 f3 0f 2c c8 cvttss2si ecx,xmm0
3650e8 89 4c 24 20 mov    DWORD PTR [rsp+0x20],ecx
3650ec 48 8d 4d c7 lea    rcx,[rbp-0x39]
3650f0 e8 23 62 f7 ff call   0x2db318
3650f5 48 8b c8 mov    rcx,rax
3650f8 e8 0f a7 f8 ff call   0x2ef80c
3650fd 48 8d 4d 6f lea    rcx,[rbp+0x6f]
365101 8b d8 mov    ebx,eax
365103 e8 f0 dd 02 00 call   0x392ef8
365108 f3 0f 10 30 movss  xmm6,DWORD PTR [rax]
36510c e8 23 de 02 00 call   0x392f34
365111 0f 28 f8 movaps xmm7,xmm0
365114 48 8d 4d 77 lea    rcx,[rbp+0x77]
365118 f3 0f 58 fe addss  xmm7,xmm6
36511c e8 d7 dd 02 00 call   0x392ef8
365121 f3 0f 10 70 04 movss  xmm6,DWORD PTR [rax+0x4]
365126 e8 b9 dd 02 00 call   0x392ee4
36512b f3 0f 58 f0 addss  xmm6,xmm0
36512f 0f 28 cf movaps xmm1,xmm7
365132 48 8d 4d 67 lea    rcx,[rbp+0x67]
365136 0f 28 d6 movaps xmm2,xmm6
365139 e8 02 72 f6 ff call   0x2cc340
36513e 48 8d 4d 7f lea    rcx,[rbp+0x7f]
365142 e8 b1 dd 02 00 call   0x392ef8
365147 48 8d 4d a7 lea    rcx,[rbp-0x59]
36514b f3 0f 10 30 movss  xmm6,DWORD PTR [rax]
36514f e8 a4 dd 02 00 call   0x392ef8
365154 0f 28 ce movaps xmm1,xmm6
365157 48 8d 4d b7 lea    rcx,[rbp-0x49]
36515b f3 0f 10 50 04 movss  xmm2,DWORD PTR [rax+0x4]
365160 f3 0f 58 15 e0 30 f4 addss  xmm2,DWORD PTR [rip+0xfffffffffff430e0]        # 0x2a8248
365167 ff 
365168 e8 d3 71 f6 ff call   0x2cc340
36516d 48 8b d0 mov    rdx,rax
365170 c7 44 24 28 c0 00 00 mov    DWORD PTR [rsp+0x28],0xc0
365177 00 
365178 44 8b cb mov    r9d,ebx
36517b f3 44 0f 11 44 24 20 movss  DWORD PTR [rsp+0x20],xmm8
365182 4c 8d 45 67 lea    r8,[rbp+0x67]
365186 48 8b cf mov    rcx,rdi
365189 e8 b6 c0 03 00 call   0x3a1244
36518e e8 39 dd 02 00 call   0x392ecc
365193 f3 44 0f 10 1d b8 80 movss  xmm11,DWORD PTR [rip+0xfffffffffff280b8]        # 0x28d254
36519a f2 ff 
36519c 33 c9 xor    ecx,ecx
36519e 41 0f 28 cb movaps xmm1,xmm11
3651a2 48 8b f8 mov    rdi,rax
3651a5 e8 ee d0 02 00 call   0x392298
3651aa 48 8d 4d 6f lea    rcx,[rbp+0x6f]
3651ae 8b d8 mov    ebx,eax
3651b0 e8 43 dd 02 00 call   0x392ef8
3651b5 48 8d 4d 77 lea    rcx,[rbp+0x77]
3651b9 f3 0f 10 30 movss  xmm6,DWORD PTR [rax]
3651bd f3 0f 58 35 5b 89 f2 addss  xmm6,DWORD PTR [rip+0xfffffffffff2895b]        # 0x28db20
3651c4 ff 
3651c5 e8 2e dd 02 00 call   0x392ef8
3651ca 0f 28 ce movaps xmm1,xmm6
3651cd 48 8d 4d 67 lea    rcx,[rbp+0x67]
3651d1 f3 0f 10 50 04 movss  xmm2,DWORD PTR [rax+0x4]
3651d6 f3 0f 58 15 42 89 f2 addss  xmm2,DWORD PTR [rip+0xfffffffffff28942]        # 0x28db20
3651dd ff 
3651de e8 5d 71 f6 ff call   0x2cc340
3651e3 f3 0f 10 3d fd 3c ee movss  xmm7,DWORD PTR [rip+0xffffffffffee3cfd]        # 0x248ee8
3651ea ff 
3651eb 48 8d 0d ee 6e 09 00 lea    rcx,[rip+0x96eee]        # 0x3fc0e0
3651f2 f3 0f 10 35 c2 df f2 movss  xmm6,DWORD PTR [rip+0xfffffffffff2dfc2]        # 0x2931bc
3651f9 ff 
3651fa ba 02 00 00 00 mov    edx,0x2
3651ff f3 0f 59 fe mulss  xmm7,xmm6
365203 e8 b0 15 fd ff call   0x3367b8
365208 48 8b c8 mov    rcx,rax
36520b 0f 28 ce movaps xmm1,xmm6
36520e e8 d9 f8 ff ff call   0x364aec
365213 48 c7 44 24 40 00 00 mov    QWORD PTR [rsp+0x40],0x0
36521a 00 00 
36521c 4c 8d 4d 67 lea    r9,[rbp+0x67]
365220 45 0f 57 c0 xorps  xmm8,xmm8
365224 48 8b d0 mov    rdx,rax
365227 f3 44 0f 11 44 24 38 movss  DWORD PTR [rsp+0x38],xmm8
36522e 48 8d 05 57 08 f3 ff lea    rax,[rip+0xfffffffffff30857]        # 0x295a8c
365235 48 c7 44 24 30 00 00 mov    QWORD PTR [rsp+0x30],0x0
36523c 00 00 
36523e 0f 28 d7 movaps xmm2,xmm7
365241 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
365246 48 8b cf mov    rcx,rdi
365249 89 5c 24 20 mov    DWORD PTR [rsp+0x20],ebx
36524d e8 a6 df 03 00 call   0x3a31f8
365252 e8 75 dc 02 00 call   0x392ecc
365257 48 8d 55 b7 lea    rdx,[rbp-0x49]
36525b 48 8b f0 mov    rsi,rax
36525e 48 8d 4d 67 lea    rcx,[rbp+0x67]
365262 e8 35 e7 fe ff call   0x35399c
365267 48 8b c8 mov    rcx,rax
36526a e8 9d 8b f6 ff call   0x2cde0c
36526f 41 be 01 00 00 00 mov    r14d,0x1
365275 41 0f 28 cb movaps xmm1,xmm11
365279 41 8b ce mov    ecx,r14d
36527c 48 8b f8 mov    rdi,rax
36527f e8 14 d0 02 00 call   0x392298
365284 48 8d 4d 77 lea    rcx,[rbp+0x77]
365288 8b d8 mov    ebx,eax
36528a e8 69 dc 02 00 call   0x392ef8
36528f f3 44 0f 10 15 94 88 movss  xmm10,DWORD PTR [rip+0xfffffffffff28894]        # 0x28db2c
365296 f2 ff 
365298 48 8d 4d 7f lea    rcx,[rbp+0x7f]
36529c f3 0f 10 30 movss  xmm6,DWORD PTR [rax]
3652a0 f3 41 0f 58 f2 addss  xmm6,xmm10
3652a5 e8 4e dc 02 00 call   0x392ef8
3652aa 0f 28 ce movaps xmm1,xmm6
3652ad 48 8d 4d 6f lea    rcx,[rbp+0x6f]
3652b1 f3 0f 10 50 04 movss  xmm2,DWORD PTR [rax+0x4]
3652b6 f3 0f 58 15 82 2f f4 addss  xmm2,DWORD PTR [rip+0xfffffffffff42f82]        # 0x2a8240
3652bd ff 
3652be e8 7d 70 f6 ff call   0x2cc340
3652c3 4c 8b cf mov    r9,rdi
3652c6 48 c7 44 24 20 00 00 mov    QWORD PTR [rsp+0x20],0x0
3652cd 00 00 
3652cf 44 8b c3 mov    r8d,ebx
3652d2 48 8d 55 6f lea    rdx,[rbp+0x6f]
3652d6 48 8b ce mov    rcx,rsi
3652d9 e8 de de 03 00 call   0x3a31bc
3652de f3 0f 10 0d 6a 7f f2 movss  xmm1,DWORD PTR [rip+0xfffffffffff27f6a]        # 0x28d250
3652e5 ff 
3652e6 48 8d 4d 67 lea    rcx,[rbp+0x67]
3652ea f3 0f 10 15 1a 3c ee movss  xmm2,DWORD PTR [rip+0xffffffffffee3c1a]        # 0x248f0c
3652f1 ff 
3652f2 f3 0f 10 05 2a 3c ee movss  xmm0,DWORD PTR [rip+0xffffffffffee3c2a]        # 0x248f24
3652f9 ff 
3652fa f3 0f 10 1d 1e 3c ee movss  xmm3,DWORD PTR [rip+0xffffffffffee3c1e]        # 0x248f20
365301 ff 
365302 f3 0f 59 d1 mulss  xmm2,xmm1
365306 f3 0f 59 c1 mulss  xmm0,xmm1
36530a f3 0f 59 d9 mulss  xmm3,xmm1
36530e f3 0f 10 0d 12 df f2 movss  xmm1,DWORD PTR [rip+0xfffffffffff2df12]        # 0x293228
365315 ff 
365316 f3 0f 5c d0 subss  xmm2,xmm0
36531a f3 0f 5c cb subss  xmm1,xmm3
36531e e8 1d 70 f6 ff call   0x2cc340
365323 f3 0f 10 00 movss  xmm0,DWORD PTR [rax]
365327 f3 0f 11 05 e9 3b ee movss  DWORD PTR [rip+0xffffffffffee3be9],xmm0        # 0x248f18
36532e ff 
36532f f3 0f 10 50 04 movss  xmm2,DWORD PTR [rax+0x4]
365334 f3 0f 11 15 e0 3b ee movss  DWORD PTR [rip+0xffffffffffee3be0],xmm2        # 0x248f1c
36533b ff 
36533c e8 a3 db 02 00 call   0x392ee4
365341 f3 0f 5c 05 eb 87 f2 subss  xmm0,DWORD PTR [rip+0xfffffffffff287eb]        # 0x28db34
365348 ff 
365349 0f 57 c9 xorps  xmm1,xmm1
36534c 48 8d 4d 67 lea    rcx,[rbp+0x67]
365350 0f 28 d0 movaps xmm2,xmm0
365353 e8 e8 6f f6 ff call   0x2cc340
365358 48 8b d8 mov    rbx,rax
36535b 48 8d 4d 6f lea    rcx,[rbp+0x6f]
36535f e8 b0 db 02 00 call   0x392f14
365364 4c 8b c0 mov    r8,rax
365367 48 8d 4d c7 lea    rcx,[rbp-0x39]
36536b 48 8b d3 mov    rdx,rbx
36536e e8 15 60 f7 ff call   0x2db388
365373 f3 44 0f 10 05 a0 3b movss  xmm8,DWORD PTR [rip+0xffffffffffee3ba0]        # 0x248f1c
36537a ee ff 
36537c 48 8d 4d 67 lea    rcx,[rbp+0x67]
365380 41 0f 28 d0 movaps xmm2,xmm8
365384 f3 41 0f 5c d2 subss  xmm2,xmm10
365389 f3 0f 10 00 movss  xmm0,DWORD PTR [rax]
36538d f3 0f 11 05 9b 6d 09 movss  DWORD PTR [rip+0x96d9b],xmm0        # 0x3fc130
365394 00 
365395 f3 0f 10 48 04 movss  xmm1,DWORD PTR [rax+0x4]
36539a f3 0f 11 0d 92 6d 09 movss  DWORD PTR [rip+0x96d92],xmm1        # 0x3fc134
3653a1 00 
3653a2 48 8b 40 08 mov    rax,QWORD PTR [rax+0x8]
3653a6 f3 0f 10 0d 6a 3b ee movss  xmm1,DWORD PTR [rip+0xffffffffffee3b6a]        # 0x248f18
3653ad ff 
3653ae 48 89 05 83 6d 09 00 mov    QWORD PTR [rip+0x96d83],rax        # 0x3fc138
3653b5 e8 86 6f f6 ff call   0x2cc340
3653ba f3 0f 10 35 56 3b ee movss  xmm6,DWORD PTR [rip+0xffffffffffee3b56]        # 0x248f18
3653c1 ff 
3653c2 48 8d 4d 6f lea    rcx,[rbp+0x6f]
3653c6 f3 0f 58 35 52 3b ee addss  xmm6,DWORD PTR [rip+0xffffffffffee3b52]        # 0x248f20
3653cd ff 
3653ce 41 0f 28 d0 movaps xmm2,xmm8
3653d2 0f 28 ce movaps xmm1,xmm6
3653d5 e8 66 6f f6 ff call   0x2cc340
3653da 4c 8b c0 mov    r8,rax
3653dd 48 8d 55 67 lea    rdx,[rbp+0x67]
3653e1 48 8d 4d c7 lea    rcx,[rbp-0x39]
3653e5 e8 9e 5f f7 ff call   0x2db388
3653ea 41 0f 28 f8 movaps xmm7,xmm8
3653ee 48 8d 4d 67 lea    rcx,[rbp+0x67]
3653f2 f3 0f 58 3d 2a 3b ee addss  xmm7,DWORD PTR [rip+0xffffffffffee3b2a]        # 0x248f24
3653f9 ff 
3653fa 0f 28 ce movaps xmm1,xmm6
3653fd 0f 10 00 movups xmm0,XMMWORD PTR [rax]
365400 f3 41 0f 58 ca addss  xmm1,xmm10
365405 0f 28 d7 movaps xmm2,xmm7
365408 f3 0f 7f 05 50 6d 09 movdqu XMMWORD PTR [rip+0x96d50],xmm0        # 0x3fc160
36540f 00 
365410 e8 2b 6f f6 ff call   0x2cc340
365415 41 0f 28 d0 movaps xmm2,xmm8
365419 48 8d 4d 6f lea    rcx,[rbp+0x6f]
36541d 0f 28 ce movaps xmm1,xmm6
365420 48 8b d8 mov    rbx,rax
365423 e8 18 6f f6 ff call   0x2cc340
365428 48 8b d0 mov    rdx,rax
36542b 48 8d 4d c7 lea    rcx,[rbp-0x39]
36542f 4c 8b c3 mov    r8,rbx
365432 e8 51 5f f7 ff call   0x2db388
365437 f3 0f 10 0d d9 3a ee movss  xmm1,DWORD PTR [rip+0xffffffffffee3ad9]        # 0x248f18
36543e ff 
36543f 48 8d 4d 67 lea    rcx,[rbp+0x67]
365443 0f 28 d7 movaps xmm2,xmm7
365446 0f 10 00 movups xmm0,XMMWORD PTR [rax]
365449 f3 0f 7f 05 ff 6c 09 movdqu XMMWORD PTR [rip+0x96cff],xmm0        # 0x3fc150
365450 00 
365451 e8 ea 6e f6 ff call   0x2cc340
365456 0f 28 d7 movaps xmm2,xmm7
365459 48 8d 4d 6f lea    rcx,[rbp+0x6f]
36545d f3 41 0f 58 d2 addss  xmm2,xmm10
365462 0f 28 ce movaps xmm1,xmm6
365465 48 8b d8 mov    rbx,rax
365468 e8 d3 6e f6 ff call   0x2cc340
36546d 4c 8b c0 mov    r8,rax
365470 48 8d 4d c7 lea    rcx,[rbp-0x39]
365474 48 8b d3 mov    rdx,rbx
365477 e8 0c 5f f7 ff call   0x2db388
36547c f3 0f 10 0d 94 3a ee movss  xmm1,DWORD PTR [rip+0xffffffffffee3a94]        # 0x248f18
365483 ff 
365484 48 8d 4d 67 lea    rcx,[rbp+0x67]
365488 f3 41 0f 5c ca subss  xmm1,xmm10
36548d 41 0f 28 d0 movaps xmm2,xmm8
365491 0f 10 00 movups xmm0,XMMWORD PTR [rax]
365494 f3 0f 7f 05 d4 6c 09 movdqu XMMWORD PTR [rip+0x96cd4],xmm0        # 0x3fc170
36549b 00 
36549c e8 9f 6e f6 ff call   0x2cc340
3654a1 f3 0f 10 0d 6f 3a ee movss  xmm1,DWORD PTR [rip+0xffffffffffee3a6f]        # 0x248f18
3654a8 ff 
3654a9 48 8d 4d 6f lea    rcx,[rbp+0x6f]
3654ad 0f 28 d7 movaps xmm2,xmm7
3654b0 48 8b d8 mov    rbx,rax
3654b3 e8 88 6e f6 ff call   0x2cc340
3654b8 4c 8b c0 mov    r8,rax
3654bb 48 8d 4d c7 lea    rcx,[rbp-0x39]
3654bf 48 8b d3 mov    rdx,rbx
3654c2 e8 c1 5e f7 ff call   0x2db388
3654c7 0f 10 00 movups xmm0,XMMWORD PTR [rax]
3654ca f3 0f 7f 05 6e 6c 09 movdqu XMMWORD PTR [rip+0x96c6e],xmm0        # 0x3fc140
3654d1 00 
3654d2 e8 d9 82 01 00 call   0x37d7b0
3654d7 e8 b0 86 01 00 call   0x37db8c
3654dc 33 ff xor    edi,edi
3654de c7 05 28 3a ee ff 05 mov    DWORD PTR [rip+0xffffffffffee3a28],0x5        # 0x248f10
3654e5 00 00 00 
3654e8 33 f6 xor    esi,esi
3654ea 4c 8d 3d 0f ab c9 ff lea    r15,[rip+0xffffffffffc9ab0f]        # 0x0
3654f1 48 8d 4d 77 lea    rcx,[rbp+0x77]
3654f5 e8 fe d9 02 00 call   0x392ef8
3654fa 48 8b de mov    rbx,rsi
3654fd 48 8d 4d 7f lea    rcx,[rbp+0x7f]
365501 48 03 db add    rbx,rbx
365504 f3 41 0f 10 b4 df 38 movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc138]
36550b c1 3f 00 
36550e f3 0f 58 30 addss  xmm6,DWORD PTR [rax]
365512 e8 e1 d9 02 00 call   0x392ef8
365517 0f 28 ce movaps xmm1,xmm6
36551a 48 8d 4d 67 lea    rcx,[rbp+0x67]
36551e f3 0f 10 50 04 movss  xmm2,DWORD PTR [rax+0x4]
365523 f3 41 0f 58 94 df 3c addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc13c]
36552a c1 3f 00 
36552d e8 0e 6e f6 ff call   0x2cc340
365532 48 8d 4d b7 lea    rcx,[rbp-0x49]
365536 e8 bd d9 02 00 call   0x392ef8
36553b f3 41 0f 10 b4 df 30 movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc130]
365542 c1 3f 00 
365545 48 8d 4d a7 lea    rcx,[rbp-0x59]
365549 f3 0f 58 30 addss  xmm6,DWORD PTR [rax]
36554d e8 a6 d9 02 00 call   0x392ef8
365552 0f 28 ce movaps xmm1,xmm6
365555 48 8d 4d 6f lea    rcx,[rbp+0x6f]
365559 f3 0f 10 50 04 movss  xmm2,DWORD PTR [rax+0x4]
36555e f3 41 0f 58 94 df 34 addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc134]
365565 c1 3f 00 
365568 e8 d3 6d f6 ff call   0x2cc340
36556d 45 8a c6 mov    r8b,r14b
365570 48 8d 55 67 lea    rdx,[rbp+0x67]
365574 48 8d 4d 6f lea    rcx,[rbp+0x6f]
365578 e8 2f ef 02 00 call   0x3944ac
36557d 41 88 84 37 20 c1 3f mov    BYTE PTR [r15+rsi*1+0x3fc120],al
365584 00 
365585 84 c0 test   al,al
365587 74 06 je     0x36558f
365589 89 3d 81 39 ee ff mov    DWORD PTR [rip+0xffffffffffee3981],edi        # 0x248f10
36558f 41 03 fe add    edi,r14d
365592 49 03 f6 add    rsi,r14
365595 83 ff 05 cmp    edi,0x5
365598 0f 8c 53 ff ff ff jl     0x3654f1
36559e e8 29 d9 02 00 call   0x392ecc
3655a3 48 8d 55 b7 lea    rdx,[rbp-0x49]
3655a7 48 8b f0 mov    rsi,rax
3655aa 48 8d 4d 67 lea    rcx,[rbp+0x67]
3655ae e8 d5 f9 fe ff call   0x354f88
3655b3 48 8b c8 mov    rcx,rax
3655b6 e8 51 88 f6 ff call   0x2cde0c
3655bb 41 bf 02 00 00 00 mov    r15d,0x2
3655c1 41 0f 28 cb movaps xmm1,xmm11
3655c5 41 8b cf mov    ecx,r15d
3655c8 48 8b f8 mov    rdi,rax
3655cb e8 c8 cc 02 00 call   0x392298
3655d0 48 8d 4d 6f lea    rcx,[rbp+0x6f]
3655d4 8b d8 mov    ebx,eax
3655d6 e8 1d d9 02 00 call   0x392ef8
3655db f3 0f 10 35 4d 6b 09 movss  xmm6,DWORD PTR [rip+0x96b4d]        # 0x3fc130
3655e2 00 
3655e3 48 8d 4d 77 lea    rcx,[rbp+0x77]
3655e7 f3 0f 58 30 addss  xmm6,DWORD PTR [rax]
3655eb f3 0f 58 35 2d 85 f2 addss  xmm6,DWORD PTR [rip+0xfffffffffff2852d]        # 0x28db20
3655f2 ff 
3655f3 e8 00 d9 02 00 call   0x392ef8
3655f8 f3 0f 10 15 34 6b 09 movss  xmm2,DWORD PTR [rip+0x96b34]        # 0x3fc134
3655ff 00 
365600 48 8d 4d 7f lea    rcx,[rbp+0x7f]
365604 0f 28 ce movaps xmm1,xmm6
365607 f3 0f 58 50 04 addss  xmm2,DWORD PTR [rax+0x4]
36560c e8 2f 6d f6 ff call   0x2cc340
365611 48 8b d0 mov    rdx,rax
365614 48 c7 44 24 20 00 00 mov    QWORD PTR [rsp+0x20],0x0
36561b 00 00 
36561d 4c 8b cf mov    r9,rdi
365620 44 8b c3 mov    r8d,ebx
365623 48 8b ce mov    rcx,rsi
365626 e8 91 db 03 00 call   0x3a31bc
36562b 48 8d 0d 96 06 08 00 lea    rcx,[rip+0x80696]        # 0x3e5cc8
365632 c7 45 67 00 00 00 00 mov    DWORD PTR [rbp+0x67],0x0
365639 e8 aa 84 f8 ff call   0x2edae8
36563e 48 8d 0d 83 06 08 00 lea    rcx,[rip+0x80683]        # 0x3e5cc8
365645 48 8b d8 mov    rbx,rax
365648 e8 57 5d f6 ff call   0x2cb3a4
36564d 48 8b c8 mov    rcx,rax
365650 4c 8d 45 67 lea    r8,[rbp+0x67]
365654 48 8b d3 mov    rdx,rbx
365657 e8 cc 84 f8 ff call   0x2edb28
36565c f3 0f 10 15 d0 6a 09 movss  xmm2,DWORD PTR [rip+0x96ad0]        # 0x3fc134
365663 00 
365664 48 8d 4d 67 lea    rcx,[rbp+0x67]
365668 f3 0f 10 0d c0 6a 09 movss  xmm1,DWORD PTR [rip+0x96ac0]        # 0x3fc130
36566f 00 
365670 f3 0f 58 15 5c db f2 addss  xmm2,DWORD PTR [rip+0xfffffffffff2db5c]        # 0x2931d4
365677 ff 
365678 f3 0f 58 0d a0 84 f2 addss  xmm1,DWORD PTR [rip+0xfffffffffff284a0]        # 0x28db20
36567f ff 
365680 e8 bb 6c f6 ff call   0x2cc340
365685 48 8b c8 mov    rcx,rax
365688 e8 2b 5d 03 00 call   0x39b3b8
36568d e8 fe 95 02 00 call   0x38ec90
365692 41 0f 28 cb movaps xmm1,xmm11
365696 41 8b ce mov    ecx,r14d
365699 e8 fa cb 02 00 call   0x392298
36569e 8b d0 mov    edx,eax
3656a0 48 8d 4d c7 lea    rcx,[rbp-0x39]
3656a4 e8 2b 0e fd ff call   0x3364d4
3656a9 48 8d 1d 08 17 07 00 lea    rbx,[rip+0x71708]        # 0x3d6db8
3656b0 33 d2 xor    edx,edx
3656b2 48 8b cb mov    rcx,rbx
3656b5 0f 10 00 movups xmm0,XMMWORD PTR [rax]
3656b8 f3 0f 7f 45 b7 movdqu XMMWORD PTR [rbp-0x49],xmm0
3656bd e8 06 a1 f8 ff call   0x2ef7c8
3656c2 48 8b c8 mov    rcx,rax
3656c5 48 8d 55 b7 lea    rdx,[rbp-0x49]
3656c9 e8 8a 88 01 00 call   0x37df58
3656ce 41 0f 28 cb movaps xmm1,xmm11
3656d2 41 8b ce mov    ecx,r14d
3656d5 e8 be cb 02 00 call   0x392298
3656da 8b d0 mov    edx,eax
3656dc 48 8d 4d c7 lea    rcx,[rbp-0x39]
3656e0 e8 ef 0d fd ff call   0x3364d4
3656e5 49 8b d6 mov    rdx,r14
3656e8 48 8b cb mov    rcx,rbx
3656eb 0f 10 00 movups xmm0,XMMWORD PTR [rax]
3656ee f3 0f 7f 45 b7 movdqu XMMWORD PTR [rbp-0x49],xmm0
3656f3 e8 d0 a0 f8 ff call   0x2ef7c8
3656f8 48 8b c8 mov    rcx,rax
3656fb 48 8d 55 b7 lea    rdx,[rbp-0x49]
3656ff e8 54 88 01 00 call   0x37df58
365704 41 0f 28 cb movaps xmm1,xmm11
365708 41 8b ce mov    ecx,r14d
36570b e8 88 cb 02 00 call   0x392298
365710 8b d0 mov    edx,eax
365712 48 8d 4d c7 lea    rcx,[rbp-0x39]
365716 e8 b9 0d fd ff call   0x3364d4
36571b 41 8b d7 mov    edx,r15d
36571e 48 8b cb mov    rcx,rbx
365721 0f 10 00 movups xmm0,XMMWORD PTR [rax]
365724 f3 0f 7f 45 b7 movdqu XMMWORD PTR [rbp-0x49],xmm0
365729 e8 9a a0 f8 ff call   0x2ef7c8
36572e 48 8b c8 mov    rcx,rax
365731 48 8d 55 b7 lea    rdx,[rbp-0x49]
365735 e8 1e 88 01 00 call   0x37df58
36573a 41 0f 28 cb movaps xmm1,xmm11
36573e 41 8b ce mov    ecx,r14d
365741 e8 52 cb 02 00 call   0x392298
365746 8b d0 mov    edx,eax
365748 48 8d 4d c7 lea    rcx,[rbp-0x39]
36574c e8 83 0d fd ff call   0x3364d4
365751 41 8d 57 01 lea    edx,[r15+0x1]
365755 48 8b cb mov    rcx,rbx
365758 0f 10 00 movups xmm0,XMMWORD PTR [rax]
36575b f3 0f 7f 45 b7 movdqu XMMWORD PTR [rbp-0x49],xmm0
365760 e8 63 a0 f8 ff call   0x2ef7c8
365765 48 8b c8 mov    rcx,rax
365768 48 8d 55 b7 lea    rdx,[rbp-0x49]
36576c e8 e7 87 01 00 call   0x37df58
365771 41 0f 28 cb movaps xmm1,xmm11
365775 41 8b ce mov    ecx,r14d
365778 e8 1b cb 02 00 call   0x392298
36577d 8b d0 mov    edx,eax
36577f 48 8d 4d c7 lea    rcx,[rbp-0x39]
365783 e8 4c 0d fd ff call   0x3364d4
365788 41 8d 57 02 lea    edx,[r15+0x2]
36578c 48 8b cb mov    rcx,rbx
36578f 0f 10 00 movups xmm0,XMMWORD PTR [rax]
365792 f3 0f 7f 45 b7 movdqu XMMWORD PTR [rbp-0x49],xmm0
365797 e8 2c a0 f8 ff call   0x2ef7c8
36579c 48 8b c8 mov    rcx,rax
36579f 48 8d 55 b7 lea    rdx,[rbp-0x49]
3657a3 e8 b0 87 01 00 call   0x37df58
3657a8 41 0f 28 cb movaps xmm1,xmm11
3657ac 41 8b ce mov    ecx,r14d
3657af e8 e4 ca 02 00 call   0x392298
3657b4 8b d0 mov    edx,eax
3657b6 48 8d 4d c7 lea    rcx,[rbp-0x39]
3657ba e8 15 0d fd ff call   0x3364d4
3657bf 41 8d 57 03 lea    edx,[r15+0x3]
3657c3 48 8b cb mov    rcx,rbx
3657c6 0f 10 00 movups xmm0,XMMWORD PTR [rax]
3657c9 f3 0f 7f 45 b7 movdqu XMMWORD PTR [rbp-0x49],xmm0
3657ce e8 f5 9f f8 ff call   0x2ef7c8
3657d3 48 8b c8 mov    rcx,rax
3657d6 48 8d 55 b7 lea    rdx,[rbp-0x49]
3657da e8 79 87 01 00 call   0x37df58
3657df e8 18 b7 02 00 call   0x390efc
3657e4 4c 8d 9c 24 d8 00 00 lea    r11,[rsp+0xd8]
3657eb 00 
3657ec 41 0f 28 73 e8 movaps xmm6,XMMWORD PTR [r11-0x18]
3657f1 41 0f 28 7b d8 movaps xmm7,XMMWORD PTR [r11-0x28]
3657f6 45 0f 28 43 c8 movaps xmm8,XMMWORD PTR [r11-0x38]
3657fb 45 0f 28 53 b8 movaps xmm10,XMMWORD PTR [r11-0x48]
365800 45 0f 28 5b a8 movaps xmm11,XMMWORD PTR [r11-0x58]
365805 49 8b e3 mov    rsp,r11
365808 41 5f pop    r15
36580a 41 5e pop    r14
36580c 5f pop    rdi
36580d 5e pop    rsi
36580e 5b pop    rbx
36580f 5d pop    rbp
365810 e9 7f b1 02 00 jmp    0x390994

; full range 36e55c..36f5cb
36e55c 48 8b c4 mov    rax,rsp
36e55f 48 89 58 08 mov    QWORD PTR [rax+0x8],rbx
36e563 55 push   rbp
36e564 56 push   rsi
36e565 57 push   rdi
36e566 41 54 push   r12
36e568 41 55 push   r13
36e56a 41 56 push   r14
36e56c 41 57 push   r15
36e56e 48 8d a8 78 fd ff ff lea    rbp,[rax-0x288]
36e575 48 81 ec 50 03 00 00 sub    rsp,0x350
36e57c 0f 29 70 b8 movaps XMMWORD PTR [rax-0x48],xmm6
36e580 4c 8b f1 mov    r14,rcx
36e583 0f 29 78 a8 movaps XMMWORD PTR [rax-0x58],xmm7
36e587 44 0f 29 40 98 movaps XMMWORD PTR [rax-0x68],xmm8
36e58c e8 0b 21 f7 ff call   0x2e069c
36e591 48 8b c8 mov    rcx,rax
36e594 48 89 44 24 38 mov    QWORD PTR [rsp+0x38],rax
36e599 4c 8b e0 mov    r12,rax
36e59c e8 67 c9 f5 ff call   0x2caf08
36e5a1 84 c0 test   al,al
36e5a3 0f 84 f8 0f 00 00 je     0x36f5a1
36e5a9 e8 6e ed fe ff call   0x35d31c
36e5ae 48 8d 4c 24 30 lea    rcx,[rsp+0x30]
36e5b3 4c 8b f8 mov    r15,rax
36e5b6 e8 e9 cd f5 ff call   0x2cb3a4
36e5bb 48 8d 4d d8 lea    rcx,[rbp-0x28]
36e5bf e8 f8 95 05 00 call   0x3c7bbc
36e5c4 48 8d 4d c8 lea    rcx,[rbp-0x38]
36e5c8 e8 ef 95 05 00 call   0x3c7bbc
36e5cd e8 ca f4 f6 ff call   0x2dda9c
36e5d2 48 8b c8 mov    rcx,rax
36e5d5 4c 8b c8 mov    r9,rax
36e5d8 e8 2b c9 f5 ff call   0x2caf08
36e5dd 84 c0 test   al,al
36e5df 0f 84 bc 0f 00 00 je     0x36f5a1
36e5e5 41 b8 34 00 00 00 mov    r8d,0x34
36e5eb 48 8d 55 10 lea    rdx,[rbp+0x10]
36e5ef 49 8b c9 mov    rcx,r9
36e5f2 45 32 ed xor    r13b,r13b
36e5f5 e8 ee a5 ff ff call   0x368be8
36e5fa 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36e601 e8 3a f8 ff ff call   0x36de40
36e606 49 8b ce mov    rcx,r14
36e609 33 f6 xor    esi,esi
36e60b e8 9c 1b 00 00 call   0x3701ac
36e610 48 85 c0 test   rax,rax
36e613 0f 84 8d 03 00 00 je     0x36e9a6
36e619 f3 44 0f 10 05 d2 a3 movss  xmm8,DWORD PTR [rip+0xfffffffffff3a3d2]        # 0x2a89f4
36e620 f3 ff 
36e622 48 63 d6 movsxd rdx,esi
36e625 49 8b ce mov    rcx,r14
36e628 e8 cf fb ff ff call   0x36e1fc
36e62d 48 8d 4d 90 lea    rcx,[rbp-0x70]
36e631 0f 10 30 movups xmm6,XMMWORD PTR [rax]
36e634 f2 0f 10 40 10 movsd  xmm0,QWORD PTR [rax+0x10]
36e639 0f 11 75 e8 movups XMMWORD PTR [rbp-0x18],xmm6
36e63d f2 0f 11 45 f8 movsd  QWORD PTR [rbp-0x8],xmm0
36e642 e8 f5 f8 ff ff call   0x36df3c
36e647 66 0f 7e f7 movd   edi,xmm6
36e64b 85 ff test   edi,edi
36e64d 75 20 jne    0x36e66f
36e64f 48 8d 95 93 01 00 00 lea    rdx,[rbp+0x193]
36e656 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e65d e8 ba fc ff ff call   0x36e31c
36e662 48 8b c8 mov    rcx,rax
36e665 e8 22 b5 f7 ff call   0x2e9b8c
36e66a e9 d9 01 00 00 jmp    0x36e848
36e66f 83 ff 01 cmp    edi,0x1
36e672 75 15 jne    0x36e689
36e674 48 8d 95 8a 01 00 00 lea    rdx,[rbp+0x18a]
36e67b 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e682 e8 59 fd ff ff call   0x36e3e0
36e687 eb d9 jmp    0x36e662
36e689 83 ff 02 cmp    edi,0x2
36e68c 75 15 jne    0x36e6a3
36e68e 48 8d 95 81 01 00 00 lea    rdx,[rbp+0x181]
36e695 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e69c e8 8b fd ff ff call   0x36e42c
36e6a1 eb bf jmp    0x36e662
36e6a3 83 ff 03 cmp    edi,0x3
36e6a6 75 1e jne    0x36e6c6
36e6a8 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36e6ad 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e6b4 e8 8f fd ff ff call   0x36e448
36e6b9 48 8b c8 mov    rcx,rax
36e6bc e8 0b f6 f5 ff call   0x2cdccc
36e6c1 e9 82 01 00 00 jmp    0x36e848
36e6c6 83 ff 04 cmp    edi,0x4
36e6c9 75 1e jne    0x36e6e9
36e6cb 48 8d 54 24 60 lea    rdx,[rsp+0x60]
36e6d0 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e6d7 e8 84 fd ff ff call   0x36e460
36e6dc 48 8b c8 mov    rcx,rax
36e6df e8 30 4f f7 ff call   0x2e3614
36e6e4 e9 5f 01 00 00 jmp    0x36e848
36e6e9 83 ff 05 cmp    edi,0x5
36e6ec 75 20 jne    0x36e70e
36e6ee 48 8d 95 02 02 00 00 lea    rdx,[rbp+0x202]
36e6f5 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e6fc e8 73 fd ff ff call   0x36e474
36e701 48 8b c8 mov    rcx,rax
36e704 e8 7f ea f6 ff call   0x2dd188
36e709 e9 3a 01 00 00 jmp    0x36e848
36e70e 83 ff 06 cmp    edi,0x6
36e711 75 15 jne    0x36e728
36e713 48 8d 95 10 02 00 00 lea    rdx,[rbp+0x210]
36e71a 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e721 e8 72 fd ff ff call   0x36e498
36e726 eb d9 jmp    0x36e701
36e728 83 ff 07 cmp    edi,0x7
36e72b 75 18 jne    0x36e745
36e72d 48 8d 95 e0 01 00 00 lea    rdx,[rbp+0x1e0]
36e734 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e73b e8 7c fd ff ff call   0x36e4bc
36e740 e9 fb 00 00 00 jmp    0x36e840
36e745 83 ff 08 cmp    edi,0x8
36e748 75 18 jne    0x36e762
36e74a 48 8d 95 78 01 00 00 lea    rdx,[rbp+0x178]
36e751 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e758 e8 7b fd ff ff call   0x36e4d8
36e75d e9 00 ff ff ff jmp    0x36e662
36e762 83 ff 09 cmp    edi,0x9
36e765 75 20 jne    0x36e787
36e767 48 8d 95 a8 02 00 00 lea    rdx,[rbp+0x2a8]
36e76e 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e775 e8 8e fa ff ff call   0x36e208
36e77a 48 8b c8 mov    rcx,rax
36e77d e8 9a 1c fb ff call   0x32041c
36e782 e9 c1 00 00 00 jmp    0x36e848
36e787 83 ff 0a cmp    edi,0xa
36e78a 75 20 jne    0x36e7ac
36e78c 48 8d 95 f6 01 00 00 lea    rdx,[rbp+0x1f6]
36e793 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e79a e8 75 fa ff ff call   0x36e214
36e79f 48 8b c8 mov    rcx,rax
36e7a2 e8 8d f6 f5 ff call   0x2cde34
36e7a7 e9 9c 00 00 00 jmp    0x36e848
36e7ac 83 ff 0b cmp    edi,0xb
36e7af 75 1a jne    0x36e7cb
36e7b1 48 8d 55 40 lea    rdx,[rbp+0x40]
36e7b5 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e7bc e8 6f fa ff ff call   0x36e230
36e7c1 48 8b c8 mov    rcx,rax
36e7c4 e8 db 9d f6 ff call   0x2d85a4
36e7c9 eb 7d jmp    0x36e848
36e7cb 83 ff 0c cmp    edi,0xc
36e7ce 75 1a jne    0x36e7ea
36e7d0 48 8d 55 40 lea    rdx,[rbp+0x40]
36e7d4 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e7db e8 6c fa ff ff call   0x36e24c
36e7e0 48 8b c8 mov    rcx,rax
36e7e3 e8 d4 1c fb ff call   0x3204bc
36e7e8 eb 5e jmp    0x36e848
36e7ea 83 ff 0d cmp    edi,0xd
36e7ed 75 1a jne    0x36e809
36e7ef 48 8d 55 40 lea    rdx,[rbp+0x40]
36e7f3 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e7fa e8 69 fa ff ff call   0x36e268
36e7ff 48 8b c8 mov    rcx,rax
36e802 e8 d5 b3 f7 ff call   0x2e9bdc
36e807 eb 3f jmp    0x36e848
36e809 83 ff 0e cmp    edi,0xe
36e80c 75 16 jne    0x36e824
36e80e 48 8d 54 24 70 lea    rdx,[rsp+0x70]
36e813 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e81a e8 65 fa ff ff call   0x36e284
36e81f e9 dd fe ff ff jmp    0x36e701
36e824 83 ff 10 cmp    edi,0x10
36e827 0f 85 5a 01 00 00 jne    0x36e987
36e82d 48 8d 95 eb 01 00 00 lea    rdx,[rbp+0x1eb]
36e834 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36e83b e8 68 fa ff ff call   0x36e2a8
36e840 48 8b c8 mov    rcx,rax
36e843 e8 0c b4 f7 ff call   0x2e9c54
36e848 48 8b d0 mov    rdx,rax
36e84b 48 8d 4d 90 lea    rcx,[rbp-0x70]
36e84f e8 14 64 f6 ff call   0x2d4c68
36e854 48 8d 4d 90 lea    rcx,[rbp-0x70]
36e858 e8 7b a2 f6 ff call   0x2d8ad8
36e85d 48 85 c0 test   rax,rax
36e860 0f 84 21 01 00 00 je     0x36e987
36e866 4c 63 e7 movsxd r12,edi
36e869 4c 8d 85 a0 02 00 00 lea    r8,[rbp+0x2a0]
36e870 48 8d 95 70 01 00 00 lea    rdx,[rbp+0x170]
36e877 4c 89 a5 a0 02 00 00 mov    QWORD PTR [rbp+0x2a0],r12
36e87e 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36e885 e8 8e 18 00 00 call   0x370118
36e88a 48 8d 55 08 lea    rdx,[rbp+0x8]
36e88e 48 8b d8 mov    rbx,rax
36e891 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36e898 e8 1b 9e f6 ff call   0x2d86b8
36e89d 48 8b d0 mov    rdx,rax
36e8a0 48 8b cb mov    rcx,rbx
36e8a3 e8 8c dc f5 ff call   0x2cc534
36e8a8 84 c0 test   al,al
36e8aa 75 1f jne    0x36e8cb
36e8ac 48 8d 95 a0 02 00 00 lea    rdx,[rbp+0x2a0]
36e8b3 4c 89 a5 a0 02 00 00 mov    QWORD PTR [rbp+0x2a0],r12
36e8ba 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36e8c1 e8 06 f9 ff ff call   0x36e1cc
36e8c6 ff 40 20 inc    DWORD PTR [rax+0x20]
36e8c9 eb 40 jmp    0x36e90b
36e8cb 4c 8d 45 90 lea    r8,[rbp-0x70]
36e8cf 89 bd a0 02 00 00 mov    DWORD PTR [rbp+0x2a0],edi
36e8d5 48 8d 95 a0 02 00 00 lea    rdx,[rbp+0x2a0]
36e8dc 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36e8e3 e8 10 e7 ff ff call   0x36cff8
36e8e8 4c 8d 85 e0 00 00 00 lea    r8,[rbp+0xe0]
36e8ef 48 8d 55 40 lea    rdx,[rbp+0x40]
36e8f3 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36e8fa e8 69 18 00 00 call   0x370168
36e8ff 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36e906 e8 7d f7 ff ff call   0x36e088
36e90b f2 0f 10 7d ec movsd  xmm7,QWORD PTR [rbp-0x14]
36e910 66 0f 73 de 0c psrldq xmm6,0xc
36e915 f2 0f 11 7d c8 movsd  QWORD PTR [rbp-0x38],xmm7
36e91a 66 0f 7e 75 d0 movd   DWORD PTR [rbp-0x30],xmm6
36e91f 45 84 ed test   r13b,r13b
36e922 75 5e jne    0x36e982
36e924 48 8d 55 10 lea    rdx,[rbp+0x10]
36e928 48 8d 4d ec lea    rcx,[rbp-0x14]
36e92c e8 ff 15 f7 ff call   0x2dff30
36e931 44 0f 2f c0 comiss xmm8,xmm0
36e935 4c 8b 64 24 38 mov    r12,QWORD PTR [rsp+0x38]
36e93a 76 4b jbe    0x36e987
36e93c 4c 8d 0d 65 89 06 00 lea    r9,[rip+0x68965]        # 0x3d72a8
36e943 f2 0f 11 7c 24 50 movsd  QWORD PTR [rsp+0x50],xmm7
36e949 4c 8d 44 24 30 lea    r8,[rsp+0x30]
36e94e 66 0f 7e 74 24 58 movd   DWORD PTR [rsp+0x58],xmm6
36e954 48 8d 54 24 50 lea    rdx,[rsp+0x50]
36e959 49 8b cc mov    rcx,r12
36e95c e8 bf e3 ff ff call   0x36cd20
36e961 84 c0 test   al,al
36e963 74 22 je     0x36e987
36e965 48 8b 4c 24 30 mov    rcx,QWORD PTR [rsp+0x30]
36e96a e8 c1 87 fa ff call   0x317130
36e96f 84 c0 test   al,al
36e971 74 14 je     0x36e987
36e973 41 b5 01 mov    r13b,0x1
36e976 f2 0f 11 7d d8 movsd  QWORD PTR [rbp-0x28],xmm7
36e97b 66 0f 7e 75 e0 movd   DWORD PTR [rbp-0x20],xmm6
36e980 eb 05 jmp    0x36e987
36e982 4c 8b 64 24 38 mov    r12,QWORD PTR [rsp+0x38]
36e987 48 8d 4d 90 lea    rcx,[rbp-0x70]
36e98b e8 74 db f5 ff call   0x2cc504
36e990 49 8b ce mov    rcx,r14
36e993 ff c6 inc    esi
36e995 e8 12 18 00 00 call   0x3701ac
36e99a 48 63 ce movsxd rcx,esi
36e99d 48 3b c8 cmp    rcx,rax
36e9a0 0f 82 7c fc ff ff jb     0x36e622
36e9a6 e8 45 21 f7 ff call   0x2e0af0
36e9ab 66 0f 6e f8 movd   xmm7,eax
36e9af 0f 5b ff cvtdq2ps xmm7,xmm7
36e9b2 f3 0f 59 3d 96 e8 f1 mulss  xmm7,DWORD PTR [rip+0xfffffffffff1e896]        # 0x28d250
36e9b9 ff 
36e9ba e8 31 20 f7 ff call   0x2e09f0
36e9bf 80 3d 22 b1 07 00 00 cmp    BYTE PTR [rip+0x7b122],0x0        # 0x3e9ae8
36e9c6 bb ff 00 00 00 mov    ebx,0xff
36e9cb f3 44 0f 10 05 70 f1 movss  xmm8,DWORD PTR [rip+0xfffffffffff1f170]        # 0x28db44
36e9d2 f1 ff 
36e9d4 66 0f 6e f0 movd   xmm6,eax
36e9d8 0f 5b f6 cvtdq2ps xmm6,xmm6
36e9db f3 0f 59 35 b5 46 f2 mulss  xmm6,DWORD PTR [rip+0xfffffffffff246b5]        # 0x293098
36e9e2 ff 
36e9e3 f3 0f 58 35 e9 a4 ed addss  xmm6,DWORD PTR [rip+0xffffffffffeda4e9]        # 0x248ed4
36e9ea ff 
36e9eb 0f 84 a5 00 00 00 je     0x36ea96
36e9f1 48 8d 15 40 16 08 00 lea    rdx,[rip+0x81640]        # 0x3f0038
36e9f8 48 8d 4d c8 lea    rcx,[rbp-0x38]
36e9fc e8 2f 15 f7 ff call   0x2dff30
36ea01 44 0f 2f c0 comiss xmm8,xmm0
36ea05 0f 86 8b 00 00 00 jbe    0x36ea96
36ea0b 48 8d 55 90 lea    rdx,[rbp-0x70]
36ea0f 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ea16 e8 a9 f8 ff ff call   0x36e2c4
36ea1b 48 8b c8 mov    rcx,rax
36ea1e e8 79 2e fb ff call   0x32189c
36ea23 48 8b d0 mov    rdx,rax
36ea26 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ea2a e8 9d d8 f5 ff call   0x2cc2cc
36ea2f 45 33 c9 xor    r9d,r9d
36ea32 89 5c 24 20 mov    DWORD PTR [rsp+0x20],ebx
36ea36 45 33 c0 xor    r8d,r8d
36ea39 48 8d 4d 40 lea    rcx,[rbp+0x40]
36ea3d 8b d3 mov    edx,ebx
36ea3f e8 d4 c8 f6 ff call   0x2db318
36ea44 0f 28 d6 movaps xmm2,xmm6
36ea47 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ea4e 0f 28 cf movaps xmm1,xmm7
36ea51 f3 0f 6f 00 movdqu xmm0,XMMWORD PTR [rax]
36ea55 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36ea5b e8 e0 d8 f5 ff call   0x2cc340
36ea60 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36ea64 4c 8d 45 e8 lea    r8,[rbp-0x18]
36ea68 4c 8b c8 mov    r9,rax
36ea6b c7 44 24 28 02 00 00 mov    DWORD PTR [rsp+0x28],0x2
36ea72 00 
36ea73 48 8d 44 24 70 lea    rax,[rsp+0x70]
36ea78 49 8b cf mov    rcx,r15
36ea7b 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36ea80 e8 d7 28 ff ff call   0x36135c
36ea85 f3 0f 58 35 47 a4 ed addss  xmm6,DWORD PTR [rip+0xffffffffffeda447]        # 0x248ed4
36ea8c ff 
36ea8d 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ea91 e8 5e da f5 ff call   0x2cc4f4
36ea96 80 3d 2b b7 07 00 00 cmp    BYTE PTR [rip+0x7b72b],0x0        # 0x3ea1c8
36ea9d 0f 84 9d 00 00 00 je     0x36eb40
36eaa3 48 8d 15 2e 15 08 00 lea    rdx,[rip+0x8152e]        # 0x3effd8
36eaaa 48 8d 4d c8 lea    rcx,[rbp-0x38]
36eaae e8 7d 14 f7 ff call   0x2dff30
36eab3 44 0f 2f c0 comiss xmm8,xmm0
36eab7 0f 86 83 00 00 00 jbe    0x36eb40
36eabd 48 8d 55 90 lea    rdx,[rbp-0x70]
36eac1 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36eac8 e8 13 f8 ff ff call   0x36e2e0
36eacd 48 8b c8 mov    rcx,rax
36ead0 e8 9f 52 ff ff call   0x363d74
36ead5 48 8b d0 mov    rdx,rax
36ead8 48 8d 4d e8 lea    rcx,[rbp-0x18]
36eadc e8 eb d7 f5 ff call   0x2cc2cc
36eae1 45 33 c9 xor    r9d,r9d
36eae4 89 5c 24 20 mov    DWORD PTR [rsp+0x20],ebx
36eae8 45 33 c0 xor    r8d,r8d
36eaeb 48 8d 4d 40 lea    rcx,[rbp+0x40]
36eaef 8b d3 mov    edx,ebx
36eaf1 e8 22 c8 f6 ff call   0x2db318
36eaf6 0f 28 d6 movaps xmm2,xmm6
36eaf9 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36eb00 0f 28 cf movaps xmm1,xmm7
36eb03 f3 0f 6f 00 movdqu xmm0,XMMWORD PTR [rax]
36eb07 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36eb0d e8 2e d8 f5 ff call   0x2cc340
36eb12 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36eb16 4c 8d 45 e8 lea    r8,[rbp-0x18]
36eb1a 4c 8b c8 mov    r9,rax
36eb1d c7 44 24 28 02 00 00 mov    DWORD PTR [rsp+0x28],0x2
36eb24 00 
36eb25 48 8d 44 24 70 lea    rax,[rsp+0x70]
36eb2a 49 8b cf mov    rcx,r15
36eb2d 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36eb32 e8 25 28 ff ff call   0x36135c
36eb37 48 8d 4d e8 lea    rcx,[rbp-0x18]
36eb3b e8 b4 d9 f5 ff call   0x2cc4f4
36eb40 80 3d 41 52 08 00 00 cmp    BYTE PTR [rip+0x85241],0x0        # 0x3f3d88
36eb47 0f 84 9c 04 00 00 je     0x36efe9
36eb4d f2 0f 10 45 c8 movsd  xmm0,QWORD PTR [rbp-0x38]
36eb52 48 8d 54 24 50 lea    rdx,[rsp+0x50]
36eb57 8b 45 d0 mov    eax,DWORD PTR [rbp-0x30]
36eb5a 48 8d 4c 24 38 lea    rcx,[rsp+0x38]
36eb5f f2 0f 11 44 24 50 movsd  QWORD PTR [rsp+0x50],xmm0
36eb65 89 44 24 58 mov    DWORD PTR [rsp+0x58],eax
36eb69 e8 9a 63 fa ff call   0x314f08
36eb6e 0f 57 d2 xorps  xmm2,xmm2
36eb71 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36eb78 0f 57 c9 xorps  xmm1,xmm1
36eb7b 0f 57 ff xorps  xmm7,xmm7
36eb7e e8 bd d7 f5 ff call   0x2cc340
36eb83 48 8b d0 mov    rdx,rax
36eb86 48 8d 4c 24 38 lea    rcx,[rsp+0x38]
36eb8b e8 34 0b f8 ff call   0x2ef6c4
36eb90 84 c0 test   al,al
36eb92 0f 84 51 04 00 00 je     0x36efe9
36eb98 e8 db 6b fa ff call   0x315778
36eb9d 48 8d 95 a8 02 00 00 lea    rdx,[rbp+0x2a8]
36eba4 0f 28 f0 movaps xmm6,xmm0
36eba7 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ebae e8 85 f7 ff ff call   0x36e338
36ebb3 48 8b c8 mov    rcx,rax
36ebb6 e8 39 18 fb ff call   0x3203f4
36ebbb 48 8b d0 mov    rdx,rax
36ebbe 48 8d 4d 20 lea    rcx,[rbp+0x20]
36ebc2 e8 05 d7 f5 ff call   0x2cc2cc
36ebc7 48 8d 55 10 lea    rdx,[rbp+0x10]
36ebcb 48 8b f8 mov    rdi,rax
36ebce 48 8d 4d c8 lea    rcx,[rbp-0x38]
36ebd2 e8 59 13 f7 ff call   0x2dff30
36ebd7 f3 0f 2c d0 cvttss2si edx,xmm0
36ebdb 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36ebe2 e8 29 a9 f6 ff call   0x2d9510
36ebe7 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36ebec 48 8b d8 mov    rbx,rax
36ebef 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ebf6 e8 09 f7 ff ff call   0x36e304
36ebfb 48 8b c8 mov    rcx,rax
36ebfe e8 d9 98 f6 ff call   0x2d84dc
36ec03 48 8b d0 mov    rdx,rax
36ec06 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
36ec0b e8 bc d6 f5 ff call   0x2cc2cc
36ec10 48 8b d0 mov    rdx,rax
36ec13 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ec17 4c 8b c3 mov    r8,rbx
36ec1a e8 21 03 f6 ff call   0x2cef40
36ec1f 48 8b d0 mov    rdx,rax
36ec22 48 8d 8d a0 00 00 00 lea    rcx,[rbp+0xa0]
36ec29 4c 8b c7 mov    r8,rdi
36ec2c e8 0f 03 f6 ff call   0x2cef40
36ec31 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ec35 e8 ba d8 f5 ff call   0x2cc4f4
36ec3a 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
36ec3f e8 b0 d8 f5 ff call   0x2cc4f4
36ec44 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36ec4b e8 a4 d8 f5 ff call   0x2cc4f4
36ec50 48 8d 4d 20 lea    rcx,[rbp+0x20]
36ec54 e8 9b d8 f5 ff call   0x2cc4f4
36ec59 f3 0f 58 35 67 ee 07 addss  xmm6,DWORD PTR [rip+0x7ee67]        # 0x3edac8
36ec60 00 
36ec61 48 8d 0d 20 dc 08 00 lea    rcx,[rip+0x8dc20]        # 0x3fc888
36ec68 e8 9f 0b f8 ff call   0x2ef80c
36ec6d f3 0f 10 54 24 3c movss  xmm2,DWORD PTR [rsp+0x3c]
36ec73 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ec7a f3 0f 10 4c 24 38 movss  xmm1,DWORD PTR [rsp+0x38]
36ec80 8b d8 mov    ebx,eax
36ec82 e8 b9 d6 f5 ff call   0x2cc340
36ec87 f3 0f 11 7c 24 28 movss  DWORD PTR [rsp+0x28],xmm7
36ec8d 48 8b d0 mov    rdx,rax
36ec90 44 8b cb mov    r9d,ebx
36ec93 c6 44 24 20 00 mov    BYTE PTR [rsp+0x20],0x0
36ec98 0f 28 d6 movaps xmm2,xmm6
36ec9b 49 8b cf mov    rcx,r15
36ec9e e8 d5 d8 fe ff call   0x35c578
36eca3 f3 0f 10 7c 24 3c movss  xmm7,DWORD PTR [rsp+0x3c]
36eca9 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ecb0 0f 10 05 d1 db 08 00 movups xmm0,XMMWORD PTR [rip+0x8dbd1]        # 0x3fc888
36ecb7 f3 0f 10 4c 24 38 movss  xmm1,DWORD PTR [rsp+0x38]
36ecbd f3 0f 58 fe addss  xmm7,xmm6
36ecc1 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36ecc7 f3 0f 58 3d bd 44 f2 addss  xmm7,DWORD PTR [rip+0xfffffffffff244bd]        # 0x29318c
36ecce ff 
36eccf 0f 28 d7 movaps xmm2,xmm7
36ecd2 e8 69 d6 f5 ff call   0x2cc340
36ecd7 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36ecdb 4c 8d 85 a0 00 00 00 lea    r8,[rbp+0xa0]
36ece2 4c 8b c8 mov    r9,rax
36ece5 be 03 00 00 00 mov    esi,0x3
36ecea 48 8d 44 24 70 lea    rax,[rsp+0x70]
36ecef 89 74 24 28 mov    DWORD PTR [rsp+0x28],esi
36ecf3 49 8b cf mov    rcx,r15
36ecf6 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36ecfb e8 5c 26 ff ff call   0x36135c
36ed00 f3 0f 10 35 b4 44 f2 movss  xmm6,DWORD PTR [rip+0xfffffffffff244b4]        # 0x2931bc
36ed07 ff 
36ed08 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36ed0d 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36ed14 f3 0f 58 fe addss  xmm7,xmm6
36ed18 e8 0f 8c f6 ff call   0x2d792c
36ed1d 48 8d 54 24 60 lea    rdx,[rsp+0x60]
36ed22 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36ed29 e8 3e 8c f6 ff call   0x2d796c
36ed2e e9 dc 00 00 00 jmp    0x36ee0f
36ed33 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
36ed38 e8 83 60 f6 ff call   0x2d4dc0
36ed3d 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
36ed42 48 8b f8 mov    rdi,rax
36ed45 8b 50 28 mov    edx,DWORD PTR [rax+0x28]
36ed48 e8 c3 a7 f6 ff call   0x2d9510
36ed4d 48 8d 95 a8 02 00 00 lea    rdx,[rbp+0x2a8]
36ed54 48 8b d8 mov    rbx,rax
36ed57 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ed5e e8 ed f5 ff ff call   0x36e350
36ed63 48 8b c8 mov    rcx,rax
36ed66 e8 89 16 fb ff call   0x3203f4
36ed6b 48 8b d0 mov    rdx,rax
36ed6e 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36ed75 e8 52 d5 f5 ff call   0x2cc2cc
36ed7a 4c 8b c0 mov    r8,rax
36ed7d 48 8d 57 08 lea    rdx,[rdi+0x8]
36ed81 48 8d 4d 20 lea    rcx,[rbp+0x20]
36ed85 e8 8e b8 f7 ff call   0x2ea618
36ed8a 48 8b d0 mov    rdx,rax
36ed8d 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ed91 4c 8b c3 mov    r8,rbx
36ed94 e8 a7 01 f6 ff call   0x2cef40
36ed99 48 8d 4d 20 lea    rcx,[rbp+0x20]
36ed9d e8 52 d7 f5 ff call   0x2cc4f4
36eda2 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36eda9 e8 46 d7 f5 ff call   0x2cc4f4
36edae 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
36edb3 e8 3c d7 f5 ff call   0x2cc4f4
36edb8 0f 10 05 c9 da 08 00 movups xmm0,XMMWORD PTR [rip+0x8dac9]        # 0x3fc888
36edbf 48 8d 4d 08 lea    rcx,[rbp+0x8]
36edc3 f3 0f 10 4c 24 38 movss  xmm1,DWORD PTR [rsp+0x38]
36edc9 0f 28 d7 movaps xmm2,xmm7
36edcc 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36edd2 e8 69 d5 f5 ff call   0x2cc340
36edd7 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36eddb 4c 8d 45 e8 lea    r8,[rbp-0x18]
36eddf 4c 8b c8 mov    r9,rax
36ede2 89 74 24 28 mov    DWORD PTR [rsp+0x28],esi
36ede6 48 8d 44 24 70 lea    rax,[rsp+0x70]
36edeb 49 8b cf mov    rcx,r15
36edee 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36edf3 e8 64 25 ff ff call   0x36135c
36edf8 48 8d 4d e8 lea    rcx,[rbp-0x18]
36edfc f3 0f 58 fe addss  xmm7,xmm6
36ee00 e8 ef d6 f5 ff call   0x2cc4f4
36ee05 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
36ee0a e8 f1 5f f6 ff call   0x2d4e00
36ee0f 48 8d 54 24 60 lea    rdx,[rsp+0x60]
36ee14 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
36ee19 e8 16 d7 f5 ff call   0x2cc534
36ee1e 84 c0 test   al,al
36ee20 0f 84 0d ff ff ff je     0x36ed33
36ee26 48 8d 55 c0 lea    rdx,[rbp-0x40]
36ee2a 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ee31 e8 4a f5 ff ff call   0x36e380
36ee36 48 8b c8 mov    rcx,rax
36ee39 e8 b6 15 fb ff call   0x3203f4
36ee3e 48 8b d0 mov    rdx,rax
36ee41 48 8d 4d 90 lea    rcx,[rbp-0x70]
36ee45 e8 82 d4 f5 ff call   0x2cc2cc
36ee4a f3 44 0f 2c 05 ad 11 cvttss2si r8d,DWORD PTR [rip+0x911ad]        # 0x400000
36ee51 09 00 
36ee53 4c 8b f0 mov    r14,rax
36ee56 bb 89 88 88 88 mov    ebx,0x88888889
36ee5b 8b c3 mov    eax,ebx
36ee5d 41 f7 e8 imul   r8d
36ee60 41 03 d0 add    edx,r8d
36ee63 c1 fa 05 sar    edx,0x5
36ee66 8b ca mov    ecx,edx
36ee68 c1 e9 1f shr    ecx,0x1f
36ee6b 03 d1 add    edx,ecx
36ee6d 6b ca 3c imul   ecx,edx,0x3c
36ee70 44 2b c1 sub    r8d,ecx
36ee73 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36ee7a 41 8b d0 mov    edx,r8d
36ee7d e8 8e a6 f6 ff call   0x2d9510
36ee82 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36ee87 48 8b f0 mov    rsi,rax
36ee8a 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ee91 e8 d2 f4 ff ff call   0x36e368
36ee96 48 8b c8 mov    rcx,rax
36ee99 e8 56 15 fb ff call   0x3203f4
36ee9e 48 8b d0 mov    rdx,rax
36eea1 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36eea8 e8 1f d4 f5 ff call   0x2cc2cc
36eead f3 0f 2c 0d 4b 11 09 cvttss2si ecx,DWORD PTR [rip+0x9114b]        # 0x400000
36eeb4 00 
36eeb5 48 8b f8 mov    rdi,rax
36eeb8 8b c3 mov    eax,ebx
36eeba f7 e9 imul   ecx
36eebc 03 d1 add    edx,ecx
36eebe c1 fa 05 sar    edx,0x5
36eec1 8b ca mov    ecx,edx
36eec3 c1 e9 1f shr    ecx,0x1f
36eec6 03 d1 add    edx,ecx
36eec8 48 8d 4d 60 lea    rcx,[rbp+0x60]
36eecc e8 3f a6 f6 ff call   0x2d9510
36eed1 48 8d 95 a8 02 00 00 lea    rdx,[rbp+0x2a8]
36eed8 48 8b d8 mov    rbx,rax
36eedb 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36eee2 e8 11 12 f8 ff call   0x2f00f8
36eee7 48 8b c8 mov    rcx,rax
36eeea e8 75 95 f6 ff call   0x2d8464
36eeef 48 8b d0 mov    rdx,rax
36eef2 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
36eef7 e8 d0 d3 f5 ff call   0x2cc2cc
36eefc 48 8b d0 mov    rdx,rax
36eeff 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ef03 4c 8b c3 mov    r8,rbx
36ef06 e8 35 00 f6 ff call   0x2cef40
36ef0b 48 8b d0 mov    rdx,rax
36ef0e 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36ef15 4c 8b c7 mov    r8,rdi
36ef18 e8 23 00 f6 ff call   0x2cef40
36ef1d 48 8b d0 mov    rdx,rax
36ef20 48 8d 4d 20 lea    rcx,[rbp+0x20]
36ef24 4c 8b c6 mov    r8,rsi
36ef27 e8 14 00 f6 ff call   0x2cef40
36ef2c 48 8b d0 mov    rdx,rax
36ef2f 48 8d 4d 40 lea    rcx,[rbp+0x40]
36ef33 4d 8b c6 mov    r8,r14
36ef36 e8 05 00 f6 ff call   0x2cef40
36ef3b 48 8d 4d 20 lea    rcx,[rbp+0x20]
36ef3f e8 b0 d5 f5 ff call   0x2cc4f4
36ef44 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36ef4b e8 a4 d5 f5 ff call   0x2cc4f4
36ef50 48 8d 4d e8 lea    rcx,[rbp-0x18]
36ef54 e8 9b d5 f5 ff call   0x2cc4f4
36ef59 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
36ef5e e8 91 d5 f5 ff call   0x2cc4f4
36ef63 48 8d 4d 60 lea    rcx,[rbp+0x60]
36ef67 e8 88 d5 f5 ff call   0x2cc4f4
36ef6c 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36ef73 e8 7c d5 f5 ff call   0x2cc4f4
36ef78 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36ef7f e8 70 d5 f5 ff call   0x2cc4f4
36ef84 48 8d 4d 90 lea    rcx,[rbp-0x70]
36ef88 e8 67 d5 f5 ff call   0x2cc4f4
36ef8d 0f 10 05 f4 d8 08 00 movups xmm0,XMMWORD PTR [rip+0x8d8f4]        # 0x3fc888
36ef94 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36ef9b f3 0f 10 4c 24 38 movss  xmm1,DWORD PTR [rsp+0x38]
36efa1 0f 28 d7 movaps xmm2,xmm7
36efa4 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36efaa e8 91 d3 f5 ff call   0x2cc340
36efaf 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36efb3 4c 8d 45 40 lea    r8,[rbp+0x40]
36efb7 4c 8b c8 mov    r9,rax
36efba c7 44 24 28 03 00 00 mov    DWORD PTR [rsp+0x28],0x3
36efc1 00 
36efc2 48 8d 44 24 70 lea    rax,[rsp+0x70]
36efc7 49 8b cf mov    rcx,r15
36efca 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36efcf e8 88 23 ff ff call   0x36135c
36efd4 48 8d 4d 40 lea    rcx,[rbp+0x40]
36efd8 e8 17 d5 f5 ff call   0x2cc4f4
36efdd 48 8d 8d a0 00 00 00 lea    rcx,[rbp+0xa0]
36efe4 e8 0b d5 f5 ff call   0x2cc4f4
36efe9 45 84 ed test   r13b,r13b
36efec 0f 84 a3 05 00 00 je     0x36f595
36eff2 80 3d 3f 7e 07 00 00 cmp    BYTE PTR [rip+0x77e3f],0x0        # 0x3e6e38
36eff9 74 0d je     0x36f008
36effb e8 84 6b fa ff call   0x315b84
36f000 84 c0 test   al,al
36f002 0f 85 8d 05 00 00 jne    0x36f595
36f008 80 3d 39 4c 08 00 00 cmp    BYTE PTR [rip+0x84c39],0x0        # 0x3f3c48
36f00f 0f 84 80 05 00 00 je     0x36f595
36f015 45 33 c0 xor    r8d,r8d
36f018 48 8d 55 40 lea    rdx,[rbp+0x40]
36f01c 48 8d 0d 15 15 08 00 lea    rcx,[rip+0x81515]        # 0x3f0538
36f023 e8 c8 a8 f7 ff call   0x2e98f0
36f028 48 8b c8 mov    rcx,rax
36f02b e8 40 5d f6 ff call   0x2d4d70
36f030 84 c0 test   al,al
36f032 74 0d je     0x36f041
36f034 80 3d 7d 6c 07 00 00 cmp    BYTE PTR [rip+0x76c7d],0x0        # 0x3e5cb8
36f03b 0f 85 54 05 00 00 jne    0x36f595
36f041 48 8d 55 10 lea    rdx,[rbp+0x10]
36f045 48 8d 4d d8 lea    rcx,[rbp-0x28]
36f049 e8 e2 0e f7 ff call   0x2dff30
36f04e f2 0f 10 4d d8 movsd  xmm1,QWORD PTR [rbp-0x28]
36f053 4c 8d 0d 4e 82 06 00 lea    r9,[rip+0x6824e]        # 0x3d72a8
36f05a 8b 45 e0 mov    eax,DWORD PTR [rbp-0x20]
36f05d 4c 8d 44 24 30 lea    r8,[rsp+0x30]
36f062 48 8d 54 24 50 lea    rdx,[rsp+0x50]
36f067 f2 0f 11 4c 24 50 movsd  QWORD PTR [rsp+0x50],xmm1
36f06d 49 8b cc mov    rcx,r12
36f070 89 44 24 58 mov    DWORD PTR [rsp+0x58],eax
36f074 0f 28 f0 movaps xmm6,xmm0
36f077 e8 a4 dc ff ff call   0x36cd20
36f07c 84 c0 test   al,al
36f07e 0f 84 11 05 00 00 je     0x36f595
36f084 48 8d 95 a8 02 00 00 lea    rdx,[rbp+0x2a8]
36f08b 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f092 e8 19 f3 ff ff call   0x36e3b0
36f097 48 8b c8 mov    rcx,rax
36f09a e8 55 13 fb ff call   0x3203f4
36f09f 48 8b d0 mov    rdx,rax
36f0a2 48 8d 4d 60 lea    rcx,[rbp+0x60]
36f0a6 e8 21 d2 f5 ff call   0x2cc2cc
36f0ab f3 0f 2c d6 cvttss2si edx,xmm6
36f0af 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36f0b6 48 8b f8 mov    rdi,rax
36f0b9 e8 52 a4 f6 ff call   0x2d9510
36f0be 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36f0c3 48 8b d8 mov    rbx,rax
36f0c6 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f0cd e8 c6 f2 ff ff call   0x36e398
36f0d2 48 8b c8 mov    rcx,rax
36f0d5 e8 02 94 f6 ff call   0x2d84dc
36f0da 48 8b d0 mov    rdx,rax
36f0dd 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36f0e4 e8 e3 d1 f5 ff call   0x2cc2cc
36f0e9 48 8b d0 mov    rdx,rax
36f0ec 48 8d 4d 90 lea    rcx,[rbp-0x70]
36f0f0 4c 8b c3 mov    r8,rbx
36f0f3 e8 48 fe f5 ff call   0x2cef40
36f0f8 48 8b d0 mov    rdx,rax
36f0fb 48 8d 8d c0 01 00 00 lea    rcx,[rbp+0x1c0]
36f102 4c 8b c7 mov    r8,rdi
36f105 e8 36 fe f5 ff call   0x2cef40
36f10a 48 8d 4d 90 lea    rcx,[rbp-0x70]
36f10e e8 e1 d3 f5 ff call   0x2cc4f4
36f113 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36f11a e8 d5 d3 f5 ff call   0x2cc4f4
36f11f 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36f126 e8 c9 d3 f5 ff call   0x2cc4f4
36f12b 48 8d 4d 60 lea    rcx,[rbp+0x60]
36f12f e8 c0 d3 f5 ff call   0x2cc4f4
36f134 0f 10 05 4d d7 08 00 movups xmm0,XMMWORD PTR [rip+0x8d74d]        # 0x3fc888
36f13b 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f142 f3 0f 10 54 24 34 movss  xmm2,DWORD PTR [rsp+0x34]
36f148 f3 0f 10 4c 24 30 movss  xmm1,DWORD PTR [rsp+0x30]
36f14e 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36f154 e8 e7 d1 f5 ff call   0x2cc340
36f159 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36f15d 4c 8d 85 c0 01 00 00 lea    r8,[rbp+0x1c0]
36f164 4c 8b c8 mov    r9,rax
36f167 41 bc 01 00 00 00 mov    r12d,0x1
36f16d 48 8d 44 24 70 lea    rax,[rsp+0x70]
36f172 44 89 64 24 28 mov    DWORD PTR [rsp+0x28],r12d
36f177 49 8b cf mov    rcx,r15
36f17a 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36f17f e8 d8 21 ff ff call   0x36135c
36f184 f3 0f 10 44 24 34 movss  xmm0,DWORD PTR [rsp+0x34]
36f18a 48 8d 54 24 38 lea    rdx,[rsp+0x38]
36f18f f3 0f 58 05 41 9d ed addss  xmm0,DWORD PTR [rip+0xffffffffffed9d41]        # 0x248ed8
36f196 ff 
36f197 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36f19e f3 0f 11 44 24 34 movss  DWORD PTR [rsp+0x34],xmm0
36f1a4 e8 83 87 f6 ff call   0x2d792c
36f1a9 48 8d 54 24 60 lea    rdx,[rsp+0x60]
36f1ae 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36f1b5 e8 b2 87 f6 ff call   0x2d796c
36f1ba e9 46 01 00 00 jmp    0x36f305
36f1bf 48 8d 4c 24 38 lea    rcx,[rsp+0x38]
36f1c4 e8 f7 5b f6 ff call   0x2d4dc0
36f1c9 48 8d 95 a0 02 00 00 lea    rdx,[rbp+0x2a0]
36f1d0 48 8b f0 mov    rsi,rax
36f1d3 48 8d 8d a8 02 00 00 lea    rcx,[rbp+0x2a8]
36f1da e8 51 d5 f5 ff call   0x2cc730
36f1df 48 8b c8 mov    rcx,rax
36f1e2 e8 bd ea f5 ff call   0x2cdca4
36f1e7 48 8b d0 mov    rdx,rax
36f1ea 48 8d 4d 20 lea    rcx,[rbp+0x20]
36f1ee e8 d9 d0 f5 ff call   0x2cc2cc
36f1f3 8b 56 28 mov    edx,DWORD PTR [rsi+0x28]
36f1f6 48 8d 4d 60 lea    rcx,[rbp+0x60]
36f1fa 48 8b f8 mov    rdi,rax
36f1fd e8 0e a3 f6 ff call   0x2d9510
36f202 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36f207 48 8b d8 mov    rbx,rax
36f20a 48 8d 8d a8 02 00 00 lea    rcx,[rbp+0x2a8]
36f211 e8 b2 f1 ff ff call   0x36e3c8
36f216 48 8b c8 mov    rcx,rax
36f219 e8 d6 11 fb ff call   0x3203f4
36f21e 48 8b d0 mov    rdx,rax
36f221 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36f228 e8 9f d0 f5 ff call   0x2cc2cc
36f22d 4c 8b c0 mov    r8,rax
36f230 48 8d 56 08 lea    rdx,[rsi+0x8]
36f234 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36f23b e8 d8 b3 f7 ff call   0x2ea618
36f240 48 8b d0 mov    rdx,rax
36f243 48 8d 4d 90 lea    rcx,[rbp-0x70]
36f247 4c 8b c3 mov    r8,rbx
36f24a e8 f1 fc f5 ff call   0x2cef40
36f24f 48 8b d0 mov    rdx,rax
36f252 48 8d 8d a0 00 00 00 lea    rcx,[rbp+0xa0]
36f259 4c 8b c7 mov    r8,rdi
36f25c e8 df fc f5 ff call   0x2cef40
36f261 48 8d 4d 90 lea    rcx,[rbp-0x70]
36f265 e8 8a d2 f5 ff call   0x2cc4f4
36f26a 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36f271 e8 7e d2 f5 ff call   0x2cc4f4
36f276 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36f27d e8 72 d2 f5 ff call   0x2cc4f4
36f282 48 8d 4d 60 lea    rcx,[rbp+0x60]
36f286 e8 69 d2 f5 ff call   0x2cc4f4
36f28b 48 8d 4d 20 lea    rcx,[rbp+0x20]
36f28f e8 60 d2 f5 ff call   0x2cc4f4
36f294 0f 10 05 ed d5 08 00 movups xmm0,XMMWORD PTR [rip+0x8d5ed]        # 0x3fc888
36f29b 48 8d 4d 08 lea    rcx,[rbp+0x8]
36f29f f3 0f 10 54 24 34 movss  xmm2,DWORD PTR [rsp+0x34]
36f2a5 f3 0f 10 4c 24 30 movss  xmm1,DWORD PTR [rsp+0x30]
36f2ab 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36f2b1 e8 8a d0 f5 ff call   0x2cc340
36f2b6 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36f2ba 4c 8d 85 a0 00 00 00 lea    r8,[rbp+0xa0]
36f2c1 4c 8b c8 mov    r9,rax
36f2c4 44 89 64 24 28 mov    DWORD PTR [rsp+0x28],r12d
36f2c9 48 8d 44 24 70 lea    rax,[rsp+0x70]
36f2ce 49 8b cf mov    rcx,r15
36f2d1 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36f2d6 e8 81 20 ff ff call   0x36135c
36f2db f3 0f 10 44 24 34 movss  xmm0,DWORD PTR [rsp+0x34]
36f2e1 48 8d 8d a0 00 00 00 lea    rcx,[rbp+0xa0]
36f2e8 f3 0f 58 05 e8 9b ed addss  xmm0,DWORD PTR [rip+0xffffffffffed9be8]        # 0x248ed8
36f2ef ff 
36f2f0 f3 0f 11 44 24 34 movss  DWORD PTR [rsp+0x34],xmm0
36f2f6 e8 f9 d1 f5 ff call   0x2cc4f4
36f2fb 48 8d 4c 24 38 lea    rcx,[rsp+0x38]
36f300 e8 fb 5a f6 ff call   0x2d4e00
36f305 48 8d 54 24 60 lea    rdx,[rsp+0x60]
36f30a 48 8d 4c 24 38 lea    rcx,[rsp+0x38]
36f30f e8 20 d2 f5 ff call   0x2cc534
36f314 84 c0 test   al,al
36f316 0f 84 a3 fe ff ff je     0x36f1bf
36f31c 48 8d 54 24 40 lea    rdx,[rsp+0x40]
36f321 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f328 e8 e7 f0 ff ff call   0x36e414
36f32d 48 8b c8 mov    rcx,rax
36f330 e8 bf 10 fb ff call   0x3203f4
36f335 48 8b d0 mov    rdx,rax
36f338 48 8d 4d e8 lea    rcx,[rbp-0x18]
36f33c e8 8b cf f5 ff call   0x2cc2cc
36f341 f3 44 0f 2c 05 b6 0c cvttss2si r8d,DWORD PTR [rip+0x90cb6]        # 0x400000
36f348 09 00 
36f34a 4c 8b f0 mov    r14,rax
36f34d bb 89 88 88 88 mov    ebx,0x88888889
36f352 8b c3 mov    eax,ebx
36f354 41 f7 e8 imul   r8d
36f357 41 03 d0 add    edx,r8d
36f35a c1 fa 05 sar    edx,0x5
36f35d 8b ca mov    ecx,edx
36f35f c1 e9 1f shr    ecx,0x1f
36f362 03 d1 add    edx,ecx
36f364 6b ca 3c imul   ecx,edx,0x3c
36f367 44 2b c1 sub    r8d,ecx
36f36a 48 8d 8d a0 00 00 00 lea    rcx,[rbp+0xa0]
36f371 41 8b d0 mov    edx,r8d
36f374 e8 97 a1 f6 ff call   0x2d9510
36f379 48 8d 55 c0 lea    rdx,[rbp-0x40]
36f37d 48 8b f0 mov    rsi,rax
36f380 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f387 e8 70 f0 ff ff call   0x36e3fc
36f38c 48 8b c8 mov    rcx,rax
36f38f e8 60 10 fb ff call   0x3203f4
36f394 48 8b d0 mov    rdx,rax
36f397 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36f39e e8 29 cf f5 ff call   0x2cc2cc
36f3a3 f3 0f 2c 0d 55 0c 09 cvttss2si ecx,DWORD PTR [rip+0x90c55]        # 0x400000
36f3aa 00 
36f3ab 48 8b f8 mov    rdi,rax
36f3ae 8b c3 mov    eax,ebx
36f3b0 f7 e9 imul   ecx
36f3b2 03 d1 add    edx,ecx
36f3b4 c1 fa 05 sar    edx,0x5
36f3b7 8b ca mov    ecx,edx
36f3b9 c1 e9 1f shr    ecx,0x1f
36f3bc 03 d1 add    edx,ecx
36f3be 48 8d 4d 20 lea    rcx,[rbp+0x20]
36f3c2 e8 49 a1 f6 ff call   0x2d9510
36f3c7 48 8d 95 a8 02 00 00 lea    rdx,[rbp+0x2a8]
36f3ce 48 8b d8 mov    rbx,rax
36f3d1 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f3d8 e8 1b 0d f8 ff call   0x2f00f8
36f3dd 48 8b c8 mov    rcx,rax
36f3e0 e8 7f 90 f6 ff call   0x2d8464
36f3e5 48 8b d0 mov    rdx,rax
36f3e8 48 8d 4d 60 lea    rcx,[rbp+0x60]
36f3ec e8 db ce f5 ff call   0x2cc2cc
36f3f1 48 8b d0 mov    rdx,rax
36f3f4 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36f3fb 4c 8b c3 mov    r8,rbx
36f3fe e8 3d fb f5 ff call   0x2cef40
36f403 48 8b d0 mov    rdx,rax
36f406 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36f40d 4c 8b c7 mov    r8,rdi
36f410 e8 2b fb f5 ff call   0x2cef40
36f415 48 8b d0 mov    rdx,rax
36f418 48 8d 4d 90 lea    rcx,[rbp-0x70]
36f41c 4c 8b c6 mov    r8,rsi
36f41f e8 1c fb f5 ff call   0x2cef40
36f424 48 8b d0 mov    rdx,rax
36f427 48 8d 8d a0 01 00 00 lea    rcx,[rbp+0x1a0]
36f42e 4d 8b c6 mov    r8,r14
36f431 e8 0a fb f5 ff call   0x2cef40
36f436 48 8d 4d 90 lea    rcx,[rbp-0x70]
36f43a e8 b5 d0 f5 ff call   0x2cc4f4
36f43f 48 8d 8d e0 00 00 00 lea    rcx,[rbp+0xe0]
36f446 e8 a9 d0 f5 ff call   0x2cc4f4
36f44b 48 8d 8d c0 00 00 00 lea    rcx,[rbp+0xc0]
36f452 e8 9d d0 f5 ff call   0x2cc4f4
36f457 48 8d 4d 60 lea    rcx,[rbp+0x60]
36f45b e8 94 d0 f5 ff call   0x2cc4f4
36f460 48 8d 4d 20 lea    rcx,[rbp+0x20]
36f464 e8 8b d0 f5 ff call   0x2cc4f4
36f469 48 8d 8d 80 00 00 00 lea    rcx,[rbp+0x80]
36f470 e8 7f d0 f5 ff call   0x2cc4f4
36f475 48 8d 8d a0 00 00 00 lea    rcx,[rbp+0xa0]
36f47c e8 73 d0 f5 ff call   0x2cc4f4
36f481 48 8d 4d e8 lea    rcx,[rbp-0x18]
36f485 e8 6a d0 f5 ff call   0x2cc4f4
36f48a 0f 10 05 f7 d3 08 00 movups xmm0,XMMWORD PTR [rip+0x8d3f7]        # 0x3fc888
36f491 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f498 f3 0f 10 54 24 34 movss  xmm2,DWORD PTR [rsp+0x34]
36f49e f3 0f 10 4c 24 30 movss  xmm1,DWORD PTR [rsp+0x30]
36f4a4 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36f4aa e8 91 ce f5 ff call   0x2cc340
36f4af 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36f4b3 4c 8d 85 a0 01 00 00 lea    r8,[rbp+0x1a0]
36f4ba 4c 8b c8 mov    r9,rax
36f4bd 44 89 64 24 28 mov    DWORD PTR [rsp+0x28],r12d
36f4c2 48 8d 44 24 70 lea    rax,[rsp+0x70]
36f4c7 49 8b cf mov    rcx,r15
36f4ca 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36f4cf e8 88 1e ff ff call   0x36135c
36f4d4 f3 0f 10 44 24 34 movss  xmm0,DWORD PTR [rsp+0x34]
36f4da 48 8d 54 24 50 lea    rdx,[rsp+0x50]
36f4df f3 0f 58 05 f1 99 ed addss  xmm0,DWORD PTR [rip+0xffffffffffed99f1]        # 0x248ed8
36f4e6 ff 
36f4e7 8b 45 e0 mov    eax,DWORD PTR [rbp-0x20]
36f4ea 48 8d 8d 50 01 00 00 lea    rcx,[rbp+0x150]
36f4f1 89 44 24 58 mov    DWORD PTR [rsp+0x58],eax
36f4f5 f3 0f 11 44 24 34 movss  DWORD PTR [rsp+0x34],xmm0
36f4fb f2 0f 10 45 d8 movsd  xmm0,QWORD PTR [rbp-0x28]
36f500 f2 0f 11 44 24 50 movsd  QWORD PTR [rsp+0x50],xmm0
36f506 e8 0d 60 fa ff call   0x315518
36f50b 48 8d 8d 50 01 00 00 lea    rcx,[rbp+0x150]
36f512 e8 7d 91 f6 ff call   0x2d8694
36f517 84 c0 test   al,al
36f519 75 4a jne    0x36f565
36f51b 0f 10 05 66 d3 08 00 movups xmm0,XMMWORD PTR [rip+0x8d366]        # 0x3fc888
36f522 48 8d 8d a0 02 00 00 lea    rcx,[rbp+0x2a0]
36f529 f3 0f 10 54 24 34 movss  xmm2,DWORD PTR [rsp+0x34]
36f52f f3 0f 10 4c 24 30 movss  xmm1,DWORD PTR [rsp+0x30]
36f535 66 0f 7f 44 24 70 movdqa XMMWORD PTR [rsp+0x70],xmm0
36f53b e8 00 ce f5 ff call   0x2cc340
36f540 49 8b 57 10 mov    rdx,QWORD PTR [r15+0x10]
36f544 4c 8d 85 50 01 00 00 lea    r8,[rbp+0x150]
36f54b 4c 8b c8 mov    r9,rax
36f54e 44 89 64 24 28 mov    DWORD PTR [rsp+0x28],r12d
36f553 48 8d 44 24 70 lea    rax,[rsp+0x70]
36f558 49 8b cf mov    rcx,r15
36f55b 48 89 44 24 20 mov    QWORD PTR [rsp+0x20],rax
36f560 e8 f7 1d ff ff call   0x36135c
36f565 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36f56c e8 13 0a 00 00 call   0x36ff84
36f571 48 8d 8d 50 01 00 00 lea    rcx,[rbp+0x150]
36f578 e8 77 cf f5 ff call   0x2cc4f4
36f57d 48 8d 8d a0 01 00 00 lea    rcx,[rbp+0x1a0]
36f584 e8 6b cf f5 ff call   0x2cc4f4
36f589 48 8d 8d c0 01 00 00 lea    rcx,[rbp+0x1c0]
36f590 e8 5f cf f5 ff call   0x2cc4f4
36f595 48 8d 8d 10 01 00 00 lea    rcx,[rbp+0x110]
36f59c e8 f3 ea ff ff call   0x36e094
36f5a1 4c 8d 9c 24 50 03 00 lea    r11,[rsp+0x350]
36f5a8 00 
36f5a9 49 8b 5b 40 mov    rbx,QWORD PTR [r11+0x40]
36f5ad 41 0f 28 73 f0 movaps xmm6,XMMWORD PTR [r11-0x10]
36f5b2 41 0f 28 7b e0 movaps xmm7,XMMWORD PTR [r11-0x20]
36f5b7 45 0f 28 43 d0 movaps xmm8,XMMWORD PTR [r11-0x30]
36f5bc 49 8b e3 mov    rsp,r11
36f5bf 41 5f pop    r15
36f5c1 41 5e pop    r14
36f5c3 41 5d pop    r13
36f5c5 41 5c pop    r12
36f5c7 5f pop    rdi
36f5c8 5e pop    rsi
36f5c9 5d pop    rbp
36f5ca c3 ret

; full range 2cce78..2ccef2
2cce78 40 53 rex push rbx
2cce7a 48 83 ec 40 sub    rsp,0x40
2cce7e 3a 0d dc 92 10 00 cmp    cl,BYTE PTR [rip+0x1092dc]        # 0x3d6160
2cce84 8a d9 mov    bl,cl
2cce86 74 64 je     0x2cceec
2cce88 84 c9 test   cl,cl
2cce8a 75 5a jne    0x2ccee6
2cce8c 48 8d 0d bd 92 10 00 lea    rcx,[rip+0x1092bd]        # 0x3d6150
2cce93 e8 d4 09 00 00 call   0x2cd86c
2cce98 8b 44 24 21 mov    eax,DWORD PTR [rsp+0x21]
2cce9c 89 05 d7 92 10 00 mov    DWORD PTR [rip+0x1092d7],eax        # 0x3d6179
2ccea2 0f b7 44 24 25 movzx  eax,WORD PTR [rsp+0x25]
2ccea7 66 89 05 cf 92 10 00 mov    WORD PTR [rip+0x1092cf],ax        # 0x3d617d
2cceae 8a 44 24 27 mov    al,BYTE PTR [rsp+0x27]
2cceb2 88 05 c7 92 10 00 mov    BYTE PTR [rip+0x1092c7],al        # 0x3d617f
2cceb8 88 1d a3 92 10 00 mov    BYTE PTR [rip+0x1092a3],bl        # 0x3d6161
2ccebe 88 1d b4 92 10 00 mov    BYTE PTR [rip+0x1092b4],bl        # 0x3d6178
2ccec4 48 c7 05 b1 92 10 00 mov    QWORD PTR [rip+0x1092b1],0x0        # 0x3d6180
2ccecb 00 00 00 00 
2ccecf 48 c7 05 ae 92 10 00 mov    QWORD PTR [rip+0x1092ae],0x0        # 0x3d6188
2cced6 00 00 00 00 
2cceda 88 1d 83 92 10 00 mov    BYTE PTR [rip+0x109283],bl        # 0x3d6163
2ccee0 88 1d 7c 92 10 00 mov    BYTE PTR [rip+0x10927c],bl        # 0x3d6162
2ccee6 88 1d 74 92 10 00 mov    BYTE PTR [rip+0x109274],bl        # 0x3d6160
2cceec 48 83 c4 40 add    rsp,0x40
2ccef0 5b pop    rbx
2ccef1 c3 ret

; full range 31aa90..31aaf8
31aa90 48 89 5c 24 10 mov    QWORD PTR [rsp+0x10],rbx
31aa95 57 push   rdi
31aa96 48 83 ec 20 sub    rsp,0x20
31aa9a 48 83 79 10 00 cmp    QWORD PTR [rcx+0x10],0x0
31aa9f 48 8b d9 mov    rbx,rcx
31aaa2 74 49 je     0x31aaed
31aaa4 e8 67 d3 fb ff call   0x2d7e10
31aaa9 48 c1 e8 03 shr    rax,0x3
31aaad 48 3b 43 10 cmp    rax,QWORD PTR [rbx+0x10]
31aab1 76 14 jbe    0x31aac7
31aab3 48 8b 53 08 mov    rdx,QWORD PTR [rbx+0x8]
31aab7 48 8b cb mov    rcx,rbx
31aaba 4c 8b c2 mov    r8,rdx
31aabd 48 8b 12 mov    rdx,QWORD PTR [rdx]
31aac0 e8 ef f9 ff ff call   0x31a4b4
31aac5 eb 26 jmp    0x31aaed
31aac7 48 8d 4b 08 lea    rcx,[rbx+0x8]
31aacb e8 f8 00 00 00 call   0x31abc8
31aad0 48 8d 54 24 30 lea    rdx,[rsp+0x30]
31aad5 48 8b cb mov    rcx,rbx
31aad8 e8 8f ce fb ff call   0x2d796c
31aadd 48 8b 53 20 mov    rdx,QWORD PTR [rbx+0x20]
31aae1 4c 8b c0 mov    r8,rax
31aae4 48 8b 4b 18 mov    rcx,QWORD PTR [rbx+0x18]
31aae8 e8 b7 7f fb ff call   0x2d2aa4
31aaed 48 8b 5c 24 38 mov    rbx,QWORD PTR [rsp+0x38]
31aaf2 48 83 c4 20 add    rsp,0x20
31aaf6 5f pop    rdi
31aaf7 c3 ret

; full range 31ab60..31abc8
31ab60 48 89 5c 24 10 mov    QWORD PTR [rsp+0x10],rbx
31ab65 57 push   rdi
31ab66 48 83 ec 20 sub    rsp,0x20
31ab6a 48 83 79 10 00 cmp    QWORD PTR [rcx+0x10],0x0
31ab6f 48 8b d9 mov    rbx,rcx
31ab72 74 49 je     0x31abbd
31ab74 e8 97 d2 fb ff call   0x2d7e10
31ab79 48 c1 e8 03 shr    rax,0x3
31ab7d 48 3b 43 10 cmp    rax,QWORD PTR [rbx+0x10]
31ab81 76 14 jbe    0x31ab97
31ab83 48 8b 53 08 mov    rdx,QWORD PTR [rbx+0x8]
31ab87 48 8b cb mov    rcx,rbx
31ab8a 4c 8b c2 mov    r8,rdx
31ab8d 48 8b 12 mov    rdx,QWORD PTR [rdx]
31ab90 e8 77 fb ff ff call   0x31a70c
31ab95 eb 26 jmp    0x31abbd
31ab97 48 8d 4b 08 lea    rcx,[rbx+0x8]
31ab9b e8 90 00 00 00 call   0x31ac30
31aba0 48 8d 54 24 30 lea    rdx,[rsp+0x30]
31aba5 48 8b cb mov    rcx,rbx
31aba8 e8 bf cd fb ff call   0x2d796c
31abad 48 8b 53 20 mov    rdx,QWORD PTR [rbx+0x20]
31abb1 4c 8b c0 mov    r8,rax
31abb4 48 8b 4b 18 mov    rcx,QWORD PTR [rbx+0x18]
31abb8 e8 e7 7e fb ff call   0x2d2aa4
31abbd 48 8b 5c 24 38 mov    rbx,QWORD PTR [rsp+0x38]
31abc2 48 83 c4 20 add    rsp,0x20
31abc6 5f pop    rdi
31abc7 c3 ret

; full range 31acb0..31acd0
31acb0 40 53 rex push rbx
31acb2 48 83 ec 20 sub    rsp,0x20
31acb6 48 8b d9 mov    rbx,rcx
31acb9 48 83 c1 18 add    rcx,0x18
31acbd e8 a2 ff ff ff call   0x31ac64
31acc2 48 8d 4b 30 lea    rcx,[rbx+0x30]
31acc6 48 83 c4 20 add    rsp,0x20
31acca 5b pop    rbx
31accb e9 a4 ff ff ff jmp    0x31ac74

; full range 37d7b0..37db89
37d7b0 48 8b c4 mov    rax,rsp
37d7b3 55 push   rbp
37d7b4 53 push   rbx
37d7b5 56 push   rsi
37d7b6 57 push   rdi
37d7b7 41 56 push   r14
37d7b9 48 8d 68 a1 lea    rbp,[rax-0x5f]
37d7bd 48 81 ec c0 00 00 00 sub    rsp,0xc0
37d7c4 80 3d 4d c5 06 00 00 cmp    BYTE PTR [rip+0x6c54d],0x0        # 0x3e9d18
37d7cb 0f 29 70 c8 movaps XMMWORD PTR [rax-0x38],xmm6
37d7cf 0f 29 78 b8 movaps XMMWORD PTR [rax-0x48],xmm7
37d7d3 44 0f 29 40 a8 movaps XMMWORD PTR [rax-0x58],xmm8
37d7d8 44 0f 29 48 98 movaps XMMWORD PTR [rax-0x68],xmm9
37d7dd 44 0f 29 50 88 movaps XMMWORD PTR [rax-0x78],xmm10
37d7e2 44 0f 29 5c 24 60 movaps XMMWORD PTR [rsp+0x60],xmm11
37d7e8 44 0f 29 64 24 50 movaps XMMWORD PTR [rsp+0x50],xmm12
37d7ee 0f 84 60 03 00 00 je     0x37db54
37d7f4 e8 d3 56 01 00 call   0x392ecc
37d7f9 48 8d 4d 67 lea    rcx,[rbp+0x67]
37d7fd 48 8b f0 mov    rsi,rax
37d800 e8 f3 56 01 00 call   0x392ef8
37d805 48 8b d0 mov    rdx,rax
37d808 4c 8d 05 09 b7 ec ff lea    r8,[rip+0xffffffffffecb709]        # 0x248f18
37d80f 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37d813 e8 c0 21 f7 ff call   0x2ef9d8
37d818 48 8d 4d 77 lea    rcx,[rbp+0x77]
37d81c 48 8b d8 mov    rbx,rax
37d81f e8 d4 56 01 00 call   0x392ef8
37d824 48 8b d0 mov    rdx,rax
37d827 4c 8d 05 ea b6 ec ff lea    r8,[rip+0xffffffffffecb6ea]        # 0x248f18
37d82e 48 8d 4d 7f lea    rcx,[rbp+0x7f]
37d832 e8 a1 21 f7 ff call   0x2ef9d8
37d837 48 8b d0 mov    rdx,rax
37d83a 4c 8d 05 df b6 ec ff lea    r8,[rip+0xffffffffffecb6df]        # 0x248f20
37d841 48 8d 4d a7 lea    rcx,[rbp-0x59]
37d845 e8 8e 21 f7 ff call   0x2ef9d8
37d84a 4c 8b c0 mov    r8,rax
37d84d 48 8d 4d af lea    rcx,[rbp-0x51]
37d851 48 8b d3 mov    rdx,rbx
37d854 e8 2f db f5 ff call   0x2db388
37d859 48 8d 4d af lea    rcx,[rbp-0x51]
37d85d e8 0e b1 ff ff call   0x378970
37d862 48 8d 4d af lea    rcx,[rbp-0x51]
37d866 44 0f 28 c0 movaps xmm8,xmm0
37d86a e8 c5 b0 ff ff call   0x378934
37d86f f3 0f 10 0d f1 54 08 movss  xmm1,DWORD PTR [rip+0x854f1]        # 0x402d68
37d876 00 
37d877 0f 28 f8 movaps xmm7,xmm0
37d87a f3 44 0f 10 1d d1 f9 movss  xmm11,DWORD PTR [rip+0xfffffffffff0f9d1]        # 0x28d254
37d881 f0 ff 
37d883 45 0f 28 d0 movaps xmm10,xmm8
37d887 f3 44 0f 59 d1 mulss  xmm10,xmm1
37d88c 41 be 01 00 00 00 mov    r14d,0x1
37d892 41 8b ce mov    ecx,r14d
37d895 f3 0f 59 f9 mulss  xmm7,xmm1
37d899 44 0f 28 c8 movaps xmm9,xmm0
37d89d 41 0f 28 cb movaps xmm1,xmm11
37d8a1 e8 f2 49 01 00 call   0x392298
37d8a6 0f 28 d7 movaps xmm2,xmm7
37d8a9 48 8d 4d 67 lea    rcx,[rbp+0x67]
37d8ad 0f 57 c9 xorps  xmm1,xmm1
37d8b0 8b d8 mov    ebx,eax
37d8b2 e8 89 ea f4 ff call   0x2cc340
37d8b7 4c 8b c0 mov    r8,rax
37d8ba 48 8d 55 af lea    rdx,[rbp-0x51]
37d8be 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37d8c2 e8 11 21 f7 ff call   0x2ef9d8
37d8c7 f3 44 0f 10 25 20 58 movss  xmm12,DWORD PTR [rip+0xfffffffffff15820]        # 0x2930f0
37d8ce f1 ff 
37d8d0 48 8d 55 af lea    rdx,[rbp-0x51]
37d8d4 4c 8b c0 mov    r8,rax
37d8d7 f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37d8de 44 8b cb mov    r9d,ebx
37d8e1 48 8b ce mov    rcx,rsi
37d8e4 e8 0b 29 02 00 call   0x3a01f4
37d8e9 41 0f 28 cb movaps xmm1,xmm11
37d8ed 41 8b ce mov    ecx,r14d
37d8f0 e8 a3 49 01 00 call   0x392298
37d8f5 0f 57 d2 xorps  xmm2,xmm2
37d8f8 48 8d 4d 67 lea    rcx,[rbp+0x67]
37d8fc 41 0f 28 ca movaps xmm1,xmm10
37d900 8b d8 mov    ebx,eax
37d902 e8 39 ea f4 ff call   0x2cc340
37d907 4c 8b c0 mov    r8,rax
37d90a 48 8d 55 af lea    rdx,[rbp-0x51]
37d90e 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37d912 e8 c1 20 f7 ff call   0x2ef9d8
37d917 4c 8b c0 mov    r8,rax
37d91a f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37d921 44 8b cb mov    r9d,ebx
37d924 48 8d 55 af lea    rdx,[rbp-0x51]
37d928 48 8b ce mov    rcx,rsi
37d92b e8 c4 28 02 00 call   0x3a01f4
37d930 41 0f 28 cb movaps xmm1,xmm11
37d934 41 8b ce mov    ecx,r14d
37d937 e8 5c 49 01 00 call   0x392298
37d93c 0f 57 d2 xorps  xmm2,xmm2
37d93f 48 8d 4d 67 lea    rcx,[rbp+0x67]
37d943 41 0f 28 c8 movaps xmm1,xmm8
37d947 8b f8 mov    edi,eax
37d949 e8 f2 e9 f4 ff call   0x2cc340
37d94e 4c 8b c0 mov    r8,rax
37d951 48 8d 55 af lea    rdx,[rbp-0x51]
37d955 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37d959 e8 7a 20 f7 ff call   0x2ef9d8
37d95e 41 0f 28 c8 movaps xmm1,xmm8
37d962 48 8d 4d 77 lea    rcx,[rbp+0x77]
37d966 f3 41 0f 5c ca subss  xmm1,xmm10
37d96b 0f 57 d2 xorps  xmm2,xmm2
37d96e 48 8b d8 mov    rbx,rax
37d971 e8 ca e9 f4 ff call   0x2cc340
37d976 4c 8b c0 mov    r8,rax
37d979 48 8d 55 af lea    rdx,[rbp-0x51]
37d97d 48 8d 4d 7f lea    rcx,[rbp+0x7f]
37d981 e8 52 20 f7 ff call   0x2ef9d8
37d986 48 8b d0 mov    rdx,rax
37d989 f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37d990 44 8b cf mov    r9d,edi
37d993 4c 8b c3 mov    r8,rbx
37d996 48 8b ce mov    rcx,rsi
37d999 e8 56 28 02 00 call   0x3a01f4
37d99e 41 0f 28 cb movaps xmm1,xmm11
37d9a2 41 8b ce mov    ecx,r14d
37d9a5 e8 ee 48 01 00 call   0x392298
37d9aa 0f 28 d7 movaps xmm2,xmm7
37d9ad 48 8d 4d 67 lea    rcx,[rbp+0x67]
37d9b1 41 0f 28 c8 movaps xmm1,xmm8
37d9b5 8b f8 mov    edi,eax
37d9b7 e8 84 e9 f4 ff call   0x2cc340
37d9bc 4c 8b c0 mov    r8,rax
37d9bf 48 8d 55 af lea    rdx,[rbp-0x51]
37d9c3 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37d9c7 e8 0c 20 f7 ff call   0x2ef9d8
37d9cc 0f 57 d2 xorps  xmm2,xmm2
37d9cf 48 8d 4d 77 lea    rcx,[rbp+0x77]
37d9d3 41 0f 28 c8 movaps xmm1,xmm8
37d9d7 48 8b d8 mov    rbx,rax
37d9da e8 61 e9 f4 ff call   0x2cc340
37d9df 4c 8b c0 mov    r8,rax
37d9e2 48 8d 55 af lea    rdx,[rbp-0x51]
37d9e6 48 8d 4d 7f lea    rcx,[rbp+0x7f]
37d9ea e8 e9 1f f7 ff call   0x2ef9d8
37d9ef 48 8b d0 mov    rdx,rax
37d9f2 f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37d9f9 44 8b cf mov    r9d,edi
37d9fc 4c 8b c3 mov    r8,rbx
37d9ff 48 8b ce mov    rcx,rsi
37da02 e8 ed 27 02 00 call   0x3a01f4
37da07 41 0f 28 cb movaps xmm1,xmm11
37da0b 41 8b ce mov    ecx,r14d
37da0e e8 85 48 01 00 call   0x392298
37da13 41 0f 28 f1 movaps xmm6,xmm9
37da17 48 8d 4d 67 lea    rcx,[rbp+0x67]
37da1b f3 0f 5c f7 subss  xmm6,xmm7
37da1f 41 0f 28 c8 movaps xmm1,xmm8
37da23 8b d8 mov    ebx,eax
37da25 0f 28 d6 movaps xmm2,xmm6
37da28 e8 13 e9 f4 ff call   0x2cc340
37da2d 4c 8b c0 mov    r8,rax
37da30 48 8d 55 af lea    rdx,[rbp-0x51]
37da34 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37da38 e8 9b 1f f7 ff call   0x2ef9d8
37da3d 48 8b d0 mov    rdx,rax
37da40 f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37da47 44 8b cb mov    r9d,ebx
37da4a 4c 8d 45 b7 lea    r8,[rbp-0x49]
37da4e 48 8b ce mov    rcx,rsi
37da51 e8 9e 27 02 00 call   0x3a01f4
37da56 41 0f 28 cb movaps xmm1,xmm11
37da5a 41 8b ce mov    ecx,r14d
37da5d e8 36 48 01 00 call   0x392298
37da62 0f 57 d2 xorps  xmm2,xmm2
37da65 48 8d 4d 67 lea    rcx,[rbp+0x67]
37da69 41 0f 28 ca movaps xmm1,xmm10
37da6d 8b d8 mov    ebx,eax
37da6f e8 cc e8 f4 ff call   0x2cc340
37da74 4c 8b c0 mov    r8,rax
37da77 48 8d 55 b7 lea    rdx,[rbp-0x49]
37da7b 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37da7f e8 60 8d fb ff call   0x3367e4
37da84 4c 8b c0 mov    r8,rax
37da87 f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37da8e 44 8b cb mov    r9d,ebx
37da91 48 8d 55 b7 lea    rdx,[rbp-0x49]
37da95 48 8b ce mov    rcx,rsi
37da98 e8 57 27 02 00 call   0x3a01f4
37da9d 41 0f 28 cb movaps xmm1,xmm11
37daa1 41 8b ce mov    ecx,r14d
37daa4 e8 ef 47 01 00 call   0x392298
37daa9 f3 0f 10 55 bb movss  xmm2,DWORD PTR [rbp-0x45]
37daae 48 8d 4d 67 lea    rcx,[rbp+0x67]
37dab2 f3 0f 10 4d af movss  xmm1,DWORD PTR [rbp-0x51]
37dab7 8b d8 mov    ebx,eax
37dab9 e8 82 e8 f4 ff call   0x2cc340
37dabe 41 0f 28 d1 movaps xmm2,xmm9
37dac2 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37dac6 41 0f 28 ca movaps xmm1,xmm10
37daca e8 71 e8 f4 ff call   0x2cc340
37dacf 4c 8b c0 mov    r8,rax
37dad2 48 8d 55 af lea    rdx,[rbp-0x51]
37dad6 48 8d 4d 77 lea    rcx,[rbp+0x77]
37dada e8 f9 1e f7 ff call   0x2ef9d8
37dadf 48 8b d0 mov    rdx,rax
37dae2 f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37dae9 44 8b cb mov    r9d,ebx
37daec 4c 8d 45 67 lea    r8,[rbp+0x67]
37daf0 48 8b ce mov    rcx,rsi
37daf3 e8 fc 26 02 00 call   0x3a01f4
37daf8 41 0f 28 cb movaps xmm1,xmm11
37dafc 41 8b ce mov    ecx,r14d
37daff e8 94 47 01 00 call   0x392298
37db04 0f 28 d6 movaps xmm2,xmm6
37db07 48 8d 4d 6f lea    rcx,[rbp+0x6f]
37db0b 0f 57 c9 xorps  xmm1,xmm1
37db0e 8b f8 mov    edi,eax
37db10 e8 2b e8 f4 ff call   0x2cc340
37db15 4c 8b c0 mov    r8,rax
37db18 48 8d 55 af lea    rdx,[rbp-0x51]
37db1c 48 8d 4d 77 lea    rcx,[rbp+0x77]
37db20 e8 b3 1e f7 ff call   0x2ef9d8
37db25 f3 0f 10 55 bb movss  xmm2,DWORD PTR [rbp-0x45]
37db2a 48 8d 4d 67 lea    rcx,[rbp+0x67]
37db2e f3 0f 10 4d af movss  xmm1,DWORD PTR [rbp-0x51]
37db33 48 8b d8 mov    rbx,rax
37db36 e8 05 e8 f4 ff call   0x2cc340
37db3b 44 8b cf mov    r9d,edi
37db3e f3 44 0f 11 64 24 20 movss  DWORD PTR [rsp+0x20],xmm12
37db45 4c 8b c3 mov    r8,rbx
37db48 48 8d 55 67 lea    rdx,[rbp+0x67]
37db4c 48 8b ce mov    rcx,rsi
37db4f e8 a0 26 02 00 call   0x3a01f4
37db54 4c 8d 9c 24 c0 00 00 lea    r11,[rsp+0xc0]
37db5b 00 
37db5c 41 0f 28 73 f0 movaps xmm6,XMMWORD PTR [r11-0x10]
37db61 41 0f 28 7b e0 movaps xmm7,XMMWORD PTR [r11-0x20]
37db66 45 0f 28 43 d0 movaps xmm8,XMMWORD PTR [r11-0x30]
37db6b 45 0f 28 4b c0 movaps xmm9,XMMWORD PTR [r11-0x40]
37db70 45 0f 28 53 b0 movaps xmm10,XMMWORD PTR [r11-0x50]
37db75 45 0f 28 5b a0 movaps xmm11,XMMWORD PTR [r11-0x60]
37db7a 45 0f 28 63 90 movaps xmm12,XMMWORD PTR [r11-0x70]
37db7f 49 8b e3 mov    rsp,r11
37db82 41 5e pop    r14
37db84 5f pop    rdi
37db85 5e pop    rsi
37db86 5b pop    rbx
37db87 5d pop    rbp
37db88 c3 ret

; full range 37db8c..37df58
37db8c 48 89 5c 24 20 mov    QWORD PTR [rsp+0x20],rbx
37db91 55 push   rbp
37db92 56 push   rsi
37db93 57 push   rdi
37db94 41 56 push   r14
37db96 41 57 push   r15
37db98 48 8b ec mov    rbp,rsp
37db9b 48 83 ec 50 sub    rsp,0x50
37db9f 0f 29 74 24 40 movaps XMMWORD PTR [rsp+0x40],xmm6
37dba4 0f 29 7c 24 30 movaps XMMWORD PTR [rsp+0x30],xmm7
37dba9 e8 1e 53 01 00 call   0x392ecc
37dbae 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dbb2 48 8b f0 mov    rsi,rax
37dbb5 e8 3e 53 01 00 call   0x392ef8
37dbba 48 8b d0 mov    rdx,rax
37dbbd 4c 8d 05 54 b3 ec ff lea    r8,[rip+0xffffffffffecb354]        # 0x248f18
37dbc4 48 8d 4d 30 lea    rcx,[rbp+0x30]
37dbc8 e8 0b 1e f7 ff call   0x2ef9d8
37dbcd f3 0f 10 3d 7f f6 f0 movss  xmm7,DWORD PTR [rip+0xfffffffffff0f67f]        # 0x28d254
37dbd4 ff 
37dbd5 41 bf 01 00 00 00 mov    r15d,0x1
37dbdb 0f 28 cf movaps xmm1,xmm7
37dbde 41 8b cf mov    ecx,r15d
37dbe1 e8 b2 46 01 00 call   0x392298
37dbe6 4c 8d 35 cb 1d f0 ff lea    r14,[rip+0xfffffffffff01dcb]        # 0x27f9b8
37dbed 8b f8 mov    edi,eax
37dbef 4d 8b c6 mov    r8,r14
37dbf2 48 8d 55 30 lea    rdx,[rbp+0x30]
37dbf6 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dbfa e8 d9 1d f7 ff call   0x2ef9d8
37dbff 4c 8d 05 aa 1d f0 ff lea    r8,[rip+0xfffffffffff01daa]        # 0x27f9b0
37dc06 48 8b d8 mov    rbx,rax
37dc09 48 8d 55 30 lea    rdx,[rbp+0x30]
37dc0d 48 8d 4d 40 lea    rcx,[rbp+0x40]
37dc11 e8 c2 1d f7 ff call   0x2ef9d8
37dc16 f3 0f 10 35 da 54 f1 movss  xmm6,DWORD PTR [rip+0xfffffffffff154da]        # 0x2930f8
37dc1d ff 
37dc1e 48 8b d0 mov    rdx,rax
37dc21 44 8b cf mov    r9d,edi
37dc24 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dc2a 4c 8b c3 mov    r8,rbx
37dc2d 48 8b ce mov    rcx,rsi
37dc30 e8 bf 25 02 00 call   0x3a01f4
37dc35 0f 28 cf movaps xmm1,xmm7
37dc38 41 8b cf mov    ecx,r15d
37dc3b e8 58 46 01 00 call   0x392298
37dc40 4c 8d 05 79 1d f0 ff lea    r8,[rip+0xfffffffffff01d79]        # 0x27f9c0
37dc47 8b f8 mov    edi,eax
37dc49 48 8d 55 30 lea    rdx,[rbp+0x30]
37dc4d 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dc51 e8 82 1d f7 ff call   0x2ef9d8
37dc56 4d 8b c6 mov    r8,r14
37dc59 48 8d 55 30 lea    rdx,[rbp+0x30]
37dc5d 48 8d 4d 40 lea    rcx,[rbp+0x40]
37dc61 48 8b d8 mov    rbx,rax
37dc64 e8 6f 1d f7 ff call   0x2ef9d8
37dc69 48 8b d0 mov    rdx,rax
37dc6c f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dc72 44 8b cf mov    r9d,edi
37dc75 4c 8b c3 mov    r8,rbx
37dc78 48 8b ce mov    rcx,rsi
37dc7b e8 74 25 02 00 call   0x3a01f4
37dc80 0f 28 cf movaps xmm1,xmm7
37dc83 41 8b cf mov    ecx,r15d
37dc86 e8 0d 46 01 00 call   0x392298
37dc8b 4c 8d 05 36 1d f0 ff lea    r8,[rip+0xfffffffffff01d36]        # 0x27f9c8
37dc92 8b f8 mov    edi,eax
37dc94 48 8d 55 30 lea    rdx,[rbp+0x30]
37dc98 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dc9c e8 37 1d f7 ff call   0x2ef9d8
37dca1 4c 8d 05 18 1d f0 ff lea    r8,[rip+0xfffffffffff01d18]        # 0x27f9c0
37dca8 48 8b d8 mov    rbx,rax
37dcab 48 8d 55 30 lea    rdx,[rbp+0x30]
37dcaf 48 8d 4d 40 lea    rcx,[rbp+0x40]
37dcb3 e8 20 1d f7 ff call   0x2ef9d8
37dcb8 48 8b d0 mov    rdx,rax
37dcbb f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dcc1 44 8b cf mov    r9d,edi
37dcc4 4c 8b c3 mov    r8,rbx
37dcc7 48 8b ce mov    rcx,rsi
37dcca e8 25 25 02 00 call   0x3a01f4
37dccf 0f 28 cf movaps xmm1,xmm7
37dcd2 41 8b cf mov    ecx,r15d
37dcd5 e8 be 45 01 00 call   0x392298
37dcda 4c 8d 05 ef 1c f0 ff lea    r8,[rip+0xfffffffffff01cef]        # 0x27f9d0
37dce1 8b f8 mov    edi,eax
37dce3 48 8d 55 30 lea    rdx,[rbp+0x30]
37dce7 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dceb e8 e8 1c f7 ff call   0x2ef9d8
37dcf0 48 8b d8 mov    rbx,rax
37dcf3 4d 8b c6 mov    r8,r14
37dcf6 48 8d 55 30 lea    rdx,[rbp+0x30]
37dcfa 48 8d 4d 40 lea    rcx,[rbp+0x40]
37dcfe e8 d5 1c f7 ff call   0x2ef9d8
37dd03 48 8b d0 mov    rdx,rax
37dd06 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dd0c 44 8b cf mov    r9d,edi
37dd0f 4c 8b c3 mov    r8,rbx
37dd12 48 8b ce mov    rcx,rsi
37dd15 e8 da 24 02 00 call   0x3a01f4
37dd1a 0f 28 cf movaps xmm1,xmm7
37dd1d 41 8b cf mov    ecx,r15d
37dd20 e8 73 45 01 00 call   0x392298
37dd25 4c 8d 05 ac 1c f0 ff lea    r8,[rip+0xfffffffffff01cac]        # 0x27f9d8
37dd2c 8b f8 mov    edi,eax
37dd2e 48 8d 55 30 lea    rdx,[rbp+0x30]
37dd32 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dd36 e8 9d 1c f7 ff call   0x2ef9d8
37dd3b 4c 8d 05 8e 1c f0 ff lea    r8,[rip+0xfffffffffff01c8e]        # 0x27f9d0
37dd42 48 8b d8 mov    rbx,rax
37dd45 48 8d 55 30 lea    rdx,[rbp+0x30]
37dd49 48 8d 4d 40 lea    rcx,[rbp+0x40]
37dd4d e8 86 1c f7 ff call   0x2ef9d8
37dd52 48 8b d0 mov    rdx,rax
37dd55 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dd5b 44 8b cf mov    r9d,edi
37dd5e 4c 8b c3 mov    r8,rbx
37dd61 48 8b ce mov    rcx,rsi
37dd64 e8 8b 24 02 00 call   0x3a01f4
37dd69 0f 28 cf movaps xmm1,xmm7
37dd6c 41 8b cf mov    ecx,r15d
37dd6f e8 24 45 01 00 call   0x392298
37dd74 4c 8d 05 65 1c f0 ff lea    r8,[rip+0xfffffffffff01c65]        # 0x27f9e0
37dd7b 8b f8 mov    edi,eax
37dd7d 48 8d 55 30 lea    rdx,[rbp+0x30]
37dd81 48 8d 4d 38 lea    rcx,[rbp+0x38]
37dd85 e8 4e 1c f7 ff call   0x2ef9d8
37dd8a 4d 8b c6 mov    r8,r14
37dd8d 48 8d 55 30 lea    rdx,[rbp+0x30]
37dd91 48 8d 4d 40 lea    rcx,[rbp+0x40]
37dd95 48 8b d8 mov    rbx,rax
37dd98 e8 3b 1c f7 ff call   0x2ef9d8
37dd9d 48 8b d0 mov    rdx,rax
37dda0 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dda6 44 8b cf mov    r9d,edi
37dda9 4c 8b c3 mov    r8,rbx
37ddac 48 8b ce mov    rcx,rsi
37ddaf e8 40 24 02 00 call   0x3a01f4
37ddb4 0f 28 cf movaps xmm1,xmm7
37ddb7 41 8b cf mov    ecx,r15d
37ddba e8 d9 44 01 00 call   0x392298
37ddbf 4c 8d 35 22 1c f0 ff lea    r14,[rip+0xfffffffffff01c22]        # 0x27f9e8
37ddc6 8b f8 mov    edi,eax
37ddc8 4d 8b c6 mov    r8,r14
37ddcb 48 8d 55 30 lea    rdx,[rbp+0x30]
37ddcf 48 8d 4d 38 lea    rcx,[rbp+0x38]
37ddd3 e8 00 1c f7 ff call   0x2ef9d8
37ddd8 4c 8d 05 01 1c f0 ff lea    r8,[rip+0xfffffffffff01c01]        # 0x27f9e0
37dddf 48 8b d8 mov    rbx,rax
37dde2 48 8d 55 30 lea    rdx,[rbp+0x30]
37dde6 48 8d 4d 40 lea    rcx,[rbp+0x40]
37ddea e8 e9 1b f7 ff call   0x2ef9d8
37ddef 48 8b d0 mov    rdx,rax
37ddf2 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37ddf8 44 8b cf mov    r9d,edi
37ddfb 4c 8b c3 mov    r8,rbx
37ddfe 48 8b ce mov    rcx,rsi
37de01 e8 ee 23 02 00 call   0x3a01f4
37de06 0f 28 cf movaps xmm1,xmm7
37de09 41 8b cf mov    ecx,r15d
37de0c e8 87 44 01 00 call   0x392298
37de11 4c 8d 05 d8 1b f0 ff lea    r8,[rip+0xfffffffffff01bd8]        # 0x27f9f0
37de18 8b f8 mov    edi,eax
37de1a 48 8d 55 30 lea    rdx,[rbp+0x30]
37de1e 48 8d 4d 38 lea    rcx,[rbp+0x38]
37de22 e8 b1 1b f7 ff call   0x2ef9d8
37de27 4d 8b c6 mov    r8,r14
37de2a 48 8d 55 30 lea    rdx,[rbp+0x30]
37de2e 48 8d 4d 40 lea    rcx,[rbp+0x40]
37de32 48 8b d8 mov    rbx,rax
37de35 e8 9e 1b f7 ff call   0x2ef9d8
37de3a 48 8b d0 mov    rdx,rax
37de3d 44 8b cf mov    r9d,edi
37de40 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37de46 4c 8b c3 mov    r8,rbx
37de49 48 8b ce mov    rcx,rsi
37de4c e8 a3 23 02 00 call   0x3a01f4
37de51 0f 28 cf movaps xmm1,xmm7
37de54 41 8b cf mov    ecx,r15d
37de57 e8 3c 44 01 00 call   0x392298
37de5c 4c 8d 05 95 1b f0 ff lea    r8,[rip+0xfffffffffff01b95]        # 0x27f9f8
37de63 8b f8 mov    edi,eax
37de65 48 8d 55 30 lea    rdx,[rbp+0x30]
37de69 48 8d 4d 38 lea    rcx,[rbp+0x38]
37de6d e8 66 1b f7 ff call   0x2ef9d8
37de72 4c 8d 05 77 1b f0 ff lea    r8,[rip+0xfffffffffff01b77]        # 0x27f9f0
37de79 48 8b d8 mov    rbx,rax
37de7c 48 8d 55 30 lea    rdx,[rbp+0x30]
37de80 48 8d 4d 40 lea    rcx,[rbp+0x40]
37de84 e8 4f 1b f7 ff call   0x2ef9d8
37de89 48 8b d0 mov    rdx,rax
37de8c f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37de92 44 8b cf mov    r9d,edi
37de95 4c 8b c3 mov    r8,rbx
37de98 48 8b ce mov    rcx,rsi
37de9b e8 54 23 02 00 call   0x3a01f4
37dea0 0f 28 cf movaps xmm1,xmm7
37dea3 41 8b cf mov    ecx,r15d
37dea6 e8 ed 43 01 00 call   0x392298
37deab 4c 8d 05 4e 1b f0 ff lea    r8,[rip+0xfffffffffff01b4e]        # 0x27fa00
37deb2 8b f8 mov    edi,eax
37deb4 48 8d 55 30 lea    rdx,[rbp+0x30]
37deb8 48 8d 4d 38 lea    rcx,[rbp+0x38]
37debc e8 17 1b f7 ff call   0x2ef9d8
37dec1 4d 8b c6 mov    r8,r14
37dec4 48 8d 55 30 lea    rdx,[rbp+0x30]
37dec8 48 8d 4d 40 lea    rcx,[rbp+0x40]
37decc 48 8b d8 mov    rbx,rax
37decf e8 04 1b f7 ff call   0x2ef9d8
37ded4 48 8b d0 mov    rdx,rax
37ded7 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37dedd 44 8b cf mov    r9d,edi
37dee0 4c 8b c3 mov    r8,rbx
37dee3 48 8b ce mov    rcx,rsi
37dee6 e8 09 23 02 00 call   0x3a01f4
37deeb 0f 28 cf movaps xmm1,xmm7
37deee 41 8b cf mov    ecx,r15d
37def1 e8 a2 43 01 00 call   0x392298
37def6 4c 8d 05 0b 1b f0 ff lea    r8,[rip+0xfffffffffff01b0b]        # 0x27fa08
37defd 8b f8 mov    edi,eax
37deff 48 8d 55 30 lea    rdx,[rbp+0x30]
37df03 48 8d 4d 38 lea    rcx,[rbp+0x38]
37df07 e8 cc 1a f7 ff call   0x2ef9d8
37df0c 4c 8d 05 ed 1a f0 ff lea    r8,[rip+0xfffffffffff01aed]        # 0x27fa00
37df13 48 8b d8 mov    rbx,rax
37df16 48 8d 55 30 lea    rdx,[rbp+0x30]
37df1a 48 8d 4d 40 lea    rcx,[rbp+0x40]
37df1e e8 b5 1a f7 ff call   0x2ef9d8
37df23 48 8b d0 mov    rdx,rax
37df26 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37df2c 44 8b cf mov    r9d,edi
37df2f 4c 8b c3 mov    r8,rbx
37df32 48 8b ce mov    rcx,rsi
37df35 e8 ba 22 02 00 call   0x3a01f4
37df3a 48 8b 9c 24 98 00 00 mov    rbx,QWORD PTR [rsp+0x98]
37df41 00 
37df42 0f 28 74 24 40 movaps xmm6,XMMWORD PTR [rsp+0x40]
37df47 0f 28 7c 24 30 movaps xmm7,XMMWORD PTR [rsp+0x30]
37df4c 48 83 c4 50 add    rsp,0x50
37df50 41 5f pop    r15
37df52 41 5e pop    r14
37df54 5f pop    rdi
37df55 5e pop    rsi
37df56 5d pop    rbp
37df57 c3 ret

; full range 37df58..37e92f
37df58 48 8b c4 mov    rax,rsp
37df5b 48 89 50 10 mov    QWORD PTR [rax+0x10],rdx
37df5f 55 push   rbp
37df60 53 push   rbx
37df61 56 push   rsi
37df62 57 push   rdi
37df63 41 54 push   r12
37df65 41 55 push   r13
37df67 41 56 push   r14
37df69 41 57 push   r15
37df6b 48 8d a8 68 fe ff ff lea    rbp,[rax-0x198]
37df72 48 81 ec 58 02 00 00 sub    rsp,0x258
37df79 0f 29 70 a8 movaps XMMWORD PTR [rax-0x58],xmm6
37df7d 4c 8d 61 20 lea    r12,[rcx+0x20]
37df81 0f 29 78 98 movaps XMMWORD PTR [rax-0x68],xmm7
37df85 45 33 ff xor    r15d,r15d
37df88 4c 8b e9 mov    r13,rcx
37df8b 44 0f 29 40 88 movaps XMMWORD PTR [rax-0x78],xmm8
37df90 44 0f 29 88 78 ff ff movaps XMMWORD PTR [rax-0x88],xmm9
37df97 ff 
37df98 44 0f 29 90 68 ff ff movaps XMMWORD PTR [rax-0x98],xmm10
37df9f ff 
37dfa0 44 0f 29 98 58 ff ff movaps XMMWORD PTR [rax-0xa8],xmm11
37dfa7 ff 
37dfa8 44 0f 29 a0 48 ff ff movaps XMMWORD PTR [rax-0xb8],xmm12
37dfaf ff 
37dfb0 44 0f 29 a8 38 ff ff movaps XMMWORD PTR [rax-0xc8],xmm13
37dfb7 ff 
37dfb8 45 39 3c 24 cmp    DWORD PTR [r12],r15d
37dfbc 75 31 jne    0x37dfef
37dfbe 48 8b d1 mov    rdx,rcx
37dfc1 48 8d 4c 24 60 lea    rcx,[rsp+0x60]
37dfc6 e8 c9 61 f5 ff call   0x2d4194
37dfcb 48 8b c8 mov    rcx,rax
37dfce 49 8d 55 2c lea    rdx,[r13+0x2c]
37dfd2 4d 8b c4 mov    r8,r12
37dfd5 e8 ba f3 ff ff call   0x37d394
37dfda f3 0f 10 0d 3a fb f0 movss  xmm1,DWORD PTR [rip+0xfffffffffff0fb3a]        # 0x28db1c
37dfe1 ff 
37dfe2 0f 57 c0 xorps  xmm0,xmm0
37dfe5 e8 1a cc 01 00 call   0x39ac04
37dfea e9 fd 08 00 00 jmp    0x37e8ec
37dfef 48 8b 05 32 7b 08 00 mov    rax,QWORD PTR [rip+0x87b32]        # 0x405b28
37dff6 48 8d 54 24 60 lea    rdx,[rsp+0x60]
37dffb 48 8d 8d a0 01 00 00 lea    rcx,[rbp+0x1a0]
37e002 48 89 85 b8 01 00 00 mov    QWORD PTR [rbp+0x1b8],rax
37e009 48 8b b0 28 3c 00 00 mov    rsi,QWORD PTR [rax+0x3c28]
37e010 48 89 b5 b0 01 00 00 mov    QWORD PTR [rbp+0x1b0],rsi
37e017 f3 44 0f 10 66 14 movss  xmm12,DWORD PTR [rsi+0x14]
37e01d e8 0a ea ff ff call   0x37ca2c
37e022 48 8b c8 mov    rcx,rax
37e025 e8 d2 d6 ff ff call   0x37b6fc
37e02a 48 8b d0 mov    rdx,rax
37e02d 49 8b cd mov    rcx,r13
37e030 e8 03 0f f5 ff call   0x2cef38
37e035 f3 44 0f 10 0d de fa movss  xmm9,DWORD PTR [rip+0xfffffffffff0fade]        # 0x28db1c
37e03c f0 ff 
37e03e 84 c0 test   al,al
37e040 75 4e jne    0x37e090
37e042 48 8d 55 ac lea    rdx,[rbp-0x54]
37e046 48 8d 8d a0 01 00 00 lea    rcx,[rbp+0x1a0]
37e04d e8 f6 e9 ff ff call   0x37ca48
37e052 48 8b c8 mov    rcx,rax
37e055 e8 a2 d6 ff ff call   0x37b6fc
37e05a 48 8b d0 mov    rdx,rax
37e05d 49 8b cd mov    rcx,r13
37e060 e8 d3 0e f5 ff call   0x2cef38
37e065 84 c0 test   al,al
37e067 75 27 jne    0x37e090
37e069 48 8d 55 a0 lea    rdx,[rbp-0x60]
37e06d 48 8d 8d a0 01 00 00 lea    rcx,[rbp+0x1a0]
37e074 e8 eb e9 ff ff call   0x37ca64
37e079 48 8b c8 mov    rcx,rax
37e07c e8 7b d6 ff ff call   0x37b6fc
37e081 48 8b d0 mov    rdx,rax
37e084 49 8b cd mov    rcx,r13
37e087 e8 ac 0e f5 ff call   0x2cef38
37e08c 84 c0 test   al,al
37e08e 74 19 je     0x37e0a9
37e090 83 3d a1 0c 07 00 02 cmp    DWORD PTR [rip+0x70ca1],0x2        # 0x3eed38
37e097 75 10 jne    0x37e0a9
37e099 c7 85 a0 01 00 00 04 mov    DWORD PTR [rbp+0x1a0],0x4
37e0a0 00 00 00 
37e0a3 45 0f 28 c1 movaps xmm8,xmm9
37e0a7 eb 10 jmp    0x37e0b9
37e0a9 f3 44 0f 10 05 1e ae movss  xmm8,DWORD PTR [rip+0xffffffffffecae1e]        # 0x248ed0
37e0b0 ec ff 
37e0b2 44 89 bd a0 01 00 00 mov    DWORD PTR [rbp+0x1a0],r15d
37e0b9 48 8b 05 68 7a 08 00 mov    rax,QWORD PTR [rip+0x87a68]        # 0x405b28
37e0c0 48 8d 4c 24 60 lea    rcx,[rsp+0x60]
37e0c5 41 0f 28 c0 movaps xmm0,xmm8
37e0c9 f3 41 0f 5e c4 divss  xmm0,xmm12
37e0ce 48 89 b0 28 3c 00 00 mov    QWORD PTR [rax+0x3c28],rsi
37e0d5 f3 0f 11 46 64 movss  DWORD PTR [rsi+0x64],xmm0
37e0da e8 91 67 f5 ff call   0x2d4870
37e0df 49 63 3c 24 movsxd rdi,DWORD PTR [r12]
37e0e3 4c 8d 35 de 7b 06 00 lea    r14,[rip+0x67bde]        # 0x3e5cc8
37e0ea 0f 57 c9 xorps  xmm1,xmm1
37e0ed 48 8d 4c 24 68 lea    rcx,[rsp+0x68]
37e0f2 45 0f 57 d2 xorps  xmm10,xmm10
37e0f6 41 8b 1c be mov    ebx,DWORD PTR [r14+rdi*4]
37e0fa 66 0f 6e f3 movd   xmm6,ebx
37e0fe 0f 5b f6 cvtdq2ps xmm6,xmm6
37e101 0f 28 fe movaps xmm7,xmm6
37e104 f3 41 0f 59 f8 mulss  xmm7,xmm8
37e109 0f 28 d7 movaps xmm2,xmm7
37e10c e8 2f e2 f4 ff call   0x2cc340
37e111 0f 28 d7 movaps xmm2,xmm7
37e114 48 8d 4c 24 70 lea    rcx,[rsp+0x70]
37e119 0f 57 c9 xorps  xmm1,xmm1
37e11c e8 1f e2 f4 ff call   0x2cc340
37e121 41 0f 28 d0 movaps xmm2,xmm8
37e125 48 8d 4c 24 78 lea    rcx,[rsp+0x78]
37e12a 0f 57 15 6f 51 f1 ff xorps  xmm2,XMMWORD PTR [rip+0xfffffffffff1516f]        # 0x2932a0
37e131 0f 57 c9 xorps  xmm1,xmm1
37e134 f3 0f 59 d6 mulss  xmm2,xmm6
37e138 e8 03 e2 f4 ff call   0x2cc340
37e13d 0f 28 d7 movaps xmm2,xmm7
37e140 48 8d 4d 80 lea    rcx,[rbp-0x80]
37e144 0f 57 c9 xorps  xmm1,xmm1
37e147 e8 f4 e1 f4 ff call   0x2cc340
37e14c 8d 43 01 lea    eax,[rbx+0x1]
37e14f 48 8d 4d c8 lea    rcx,[rbp-0x38]
37e153 41 89 04 be mov    DWORD PTR [r14+rdi*4],eax
37e157 e8 14 67 f5 ff call   0x2d4870
37e15c 49 8d 5d 30 lea    rbx,[r13+0x30]
37e160 48 8b cb mov    rcx,rbx
37e163 e8 84 f6 f4 ff call   0x2cd7ec
37e168 48 8b 0d b9 79 08 00 mov    rcx,QWORD PTR [rip+0x879b9]        # 0x405b28
37e16f 48 8d 54 24 48 lea    rdx,[rsp+0x48]
37e174 f3 44 0f 10 1d d7 f9 movss  xmm11,DWORD PTR [rip+0xfffffffffff0f9d7]        # 0x28db54
37e17b f0 ff 
37e17d 41 0f 28 d0 movaps xmm2,xmm8
37e181 4c 89 7c 24 38 mov    QWORD PTR [rsp+0x38],r15
37e186 41 0f 28 db movaps xmm3,xmm11
37e18a 4c 89 7c 24 30 mov    QWORD PTR [rsp+0x30],r15
37e18f 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e196 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e19b f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e1a2 e8 cd 56 02 00 call   0x3a3874
37e1a7 f3 0f 10 0d 69 ad ec movss  xmm1,DWORD PTR [rip+0xffffffffffecad69]        # 0x248f18
37e1ae ff 
37e1af 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
37e1b4 f3 0f 10 15 60 ad ec movss  xmm2,DWORD PTR [rip+0xffffffffffecad60]        # 0x248f1c
37e1bb ff 
37e1bc f3 41 0f 5c c9 subss  xmm1,xmm9
37e1c1 f3 0f 5c 08 subss  xmm1,DWORD PTR [rax]
37e1c5 e8 76 e1 f4 ff call   0x2cc340
37e1ca 48 8b d0 mov    rdx,rax
37e1cd 4c 8d 44 24 68 lea    r8,[rsp+0x68]
37e1d2 48 8d 4d d0 lea    rcx,[rbp-0x30]
37e1d6 e8 fd 17 f7 ff call   0x2ef9d8
37e1db f3 0f 10 0d 3d ad ec movss  xmm1,DWORD PTR [rip+0xffffffffffecad3d]        # 0x248f20
37e1e2 ff 
37e1e3 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
37e1e8 f3 0f 58 0d 28 ad ec addss  xmm1,DWORD PTR [rip+0xffffffffffecad28]        # 0x248f18
37e1ef ff 
37e1f0 f3 0f 10 15 24 ad ec movss  xmm2,DWORD PTR [rip+0xffffffffffecad24]        # 0x248f1c
37e1f7 ff 
37e1f8 f3 41 0f 58 c9 addss  xmm1,xmm9
37e1fd e8 3e e1 f4 ff call   0x2cc340
37e202 48 8b d0 mov    rdx,rax
37e205 4c 8d 44 24 70 lea    r8,[rsp+0x70]
37e20a 48 8d 4d d8 lea    rcx,[rbp-0x28]
37e20e e8 c5 17 f7 ff call   0x2ef9d8
37e213 48 8b cb mov    rcx,rbx
37e216 e8 d1 f5 f4 ff call   0x2cd7ec
37e21b 48 8b 0d 06 79 08 00 mov    rcx,QWORD PTR [rip+0x87906]        # 0x405b28
37e222 48 8d 54 24 40 lea    rdx,[rsp+0x40]
37e227 4c 89 7c 24 38 mov    QWORD PTR [rsp+0x38],r15
37e22c 41 0f 28 db movaps xmm3,xmm11
37e230 4c 89 7c 24 30 mov    QWORD PTR [rsp+0x30],r15
37e235 41 0f 28 d0 movaps xmm2,xmm8
37e239 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e23e f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e245 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e24c e8 23 56 02 00 call   0x3a3874
37e251 f3 44 0f 10 2d f6 ef movss  xmm13,DWORD PTR [rip+0xfffffffffff0eff6]        # 0x28d250
37e258 f0 ff 
37e25a 48 8b cb mov    rcx,rbx
37e25d f3 0f 10 3d bb ac ec movss  xmm7,DWORD PTR [rip+0xffffffffffecacbb]        # 0x248f20
37e264 ff 
37e265 f3 0f 10 35 af ac ec movss  xmm6,DWORD PTR [rip+0xffffffffffecacaf]        # 0x248f1c
37e26c ff 
37e26d f3 0f 10 00 movss  xmm0,DWORD PTR [rax]
37e271 f3 41 0f 5c f1 subss  xmm6,xmm9
37e276 f3 41 0f 59 fd mulss  xmm7,xmm13
37e27b f3 41 0f 59 c5 mulss  xmm0,xmm13
37e280 f3 0f 58 3d 90 ac ec addss  xmm7,DWORD PTR [rip+0xffffffffffecac90]        # 0x248f18
37e287 ff 
37e288 f3 0f 5c f8 subss  xmm7,xmm0
37e28c e8 5b f5 f4 ff call   0x2cd7ec
37e291 48 8b 0d 90 78 08 00 mov    rcx,QWORD PTR [rip+0x87890]        # 0x405b28
37e298 48 8d 54 24 48 lea    rdx,[rsp+0x48]
37e29d 4c 89 7c 24 38 mov    QWORD PTR [rsp+0x38],r15
37e2a2 41 0f 28 db movaps xmm3,xmm11
37e2a6 4c 89 7c 24 30 mov    QWORD PTR [rsp+0x30],r15
37e2ab 41 0f 28 d0 movaps xmm2,xmm8
37e2af 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e2b4 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e2bb f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e2c2 e8 ad 55 02 00 call   0x3a3874
37e2c7 0f 28 cf movaps xmm1,xmm7
37e2ca 48 8d 4c 24 50 lea    rcx,[rsp+0x50]
37e2cf f3 0f 5c 70 04 subss  xmm6,DWORD PTR [rax+0x4]
37e2d4 0f 28 d6 movaps xmm2,xmm6
37e2d7 e8 64 e0 f4 ff call   0x2cc340
37e2dc 48 8b d0 mov    rdx,rax
37e2df 4c 8d 44 24 78 lea    r8,[rsp+0x78]
37e2e4 48 8d 4d e0 lea    rcx,[rbp-0x20]
37e2e8 e8 eb 16 f7 ff call   0x2ef9d8
37e2ed 48 8b cb mov    rcx,rbx
37e2f0 e8 f7 f4 f4 ff call   0x2cd7ec
37e2f5 48 8b 0d 2c 78 08 00 mov    rcx,QWORD PTR [rip+0x8782c]        # 0x405b28
37e2fc 48 8d 54 24 50 lea    rdx,[rsp+0x50]
37e301 4c 89 7c 24 38 mov    QWORD PTR [rsp+0x38],r15
37e306 41 0f 28 db movaps xmm3,xmm11
37e30a 4c 89 7c 24 30 mov    QWORD PTR [rsp+0x30],r15
37e30f 41 0f 28 d0 movaps xmm2,xmm8
37e313 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e318 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e31f f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e326 e8 49 55 02 00 call   0x3a3874
37e32b f3 0f 10 0d ed ab ec movss  xmm1,DWORD PTR [rip+0xffffffffffecabed]        # 0x248f20
37e332 ff 
37e333 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
37e338 f3 0f 10 15 e4 ab ec movss  xmm2,DWORD PTR [rip+0xffffffffffecabe4]        # 0x248f24
37e33f ff 
37e340 f3 0f 58 15 d4 ab ec addss  xmm2,DWORD PTR [rip+0xffffffffffecabd4]        # 0x248f1c
37e347 ff 
37e348 f3 0f 10 00 movss  xmm0,DWORD PTR [rax]
37e34c f3 41 0f 59 cd mulss  xmm1,xmm13
37e351 f3 41 0f 59 c5 mulss  xmm0,xmm13
37e356 f3 0f 58 0d ba ab ec addss  xmm1,DWORD PTR [rip+0xffffffffffecabba]        # 0x248f18
37e35d ff 
37e35e f3 41 0f 58 d1 addss  xmm2,xmm9
37e363 f3 0f 5c c8 subss  xmm1,xmm0
37e367 e8 d4 df f4 ff call   0x2cc340
37e36c 48 8b d0 mov    rdx,rax
37e36f 4c 8d 45 80 lea    r8,[rbp-0x80]
37e373 48 8d 4d e8 lea    rcx,[rbp-0x18]
37e377 e8 5c 16 f7 ff call   0x2ef9d8
37e37c e8 2b 43 01 00 call   0x3926ac
37e381 f3 0f 10 35 2f 4e f1 movss  xmm6,DWORD PTR [rip+0xfffffffffff14e2f]        # 0x2931b8
37e388 ff 
37e389 4d 8d 75 24 lea    r14,[r13+0x24]
37e38d f3 41 0f 10 06 movss  xmm0,DWORD PTR [r14]
37e392 f3 0f 10 50 10 movss  xmm2,DWORD PTR [rax+0x10]
37e397 49 63 04 24 movsxd rax,DWORD PTR [r12]
37e39b f3 0f 59 d6 mulss  xmm2,xmm6
37e39f f3 0f 2c 4c c5 c8 cvttss2si ecx,DWORD PTR [rbp+rax*8-0x38]
37e3a5 66 0f 6e c9 movd   xmm1,ecx
37e3a9 0f 5b c9 cvtdq2ps xmm1,xmm1
37e3ac e8 ab 72 fb ff call   0x33565c
37e3b1 f3 41 0f 11 06 movss  DWORD PTR [r14],xmm0
37e3b6 e8 f1 42 01 00 call   0x3926ac
37e3bb 49 63 3c 24 movsxd rdi,DWORD PTR [r12]
37e3bf f3 41 0f 10 45 28 movss  xmm0,DWORD PTR [r13+0x28]
37e3c5 f3 0f 10 50 10 movss  xmm2,DWORD PTR [rax+0x10]
37e3ca f3 0f 2c 44 fd cc cvttss2si eax,DWORD PTR [rbp+rdi*8-0x34]
37e3d0 f3 0f 59 d6 mulss  xmm2,xmm6
37e3d4 66 0f 6e c8 movd   xmm1,eax
37e3d8 0f 5b c9 cvtdq2ps xmm1,xmm1
37e3db e8 7c 72 fb ff call   0x33565c
37e3e0 0f 28 f0 movaps xmm6,xmm0
37e3e3 f3 41 0f 11 75 28 movss  DWORD PTR [r13+0x28],xmm6
37e3e9 45 38 7d 60 cmp    BYTE PTR [r13+0x60],r15b
37e3ed 74 34 je     0x37e423
37e3ef f3 41 0f 10 06 movss  xmm0,DWORD PTR [r14]
37e3f4 f3 0f 5c 44 fd c8 subss  xmm0,DWORD PTR [rbp+rdi*8-0x38]
37e3fa e8 2d 53 f6 ff call   0x2e372c
37e3ff f3 0f 10 3d 4d ee f0 movss  xmm7,DWORD PTR [rip+0xfffffffffff0ee4d]        # 0x28d254
37e406 ff 
37e407 0f 2f f8 comiss xmm7,xmm0
37e40a 76 17 jbe    0x37e423
37e40c f3 0f 5c 74 fd cc subss  xmm6,DWORD PTR [rbp+rdi*8-0x34]
37e412 0f 28 c6 movaps xmm0,xmm6
37e415 e8 12 53 f6 ff call   0x2e372c
37e41a 0f 2f f8 comiss xmm7,xmm0
37e41d 76 04 jbe    0x37e423
37e41f 45 88 7d 60 mov    BYTE PTR [r13+0x60],r15b
37e423 48 8d 4c 24 50 lea    rcx,[rsp+0x50]
37e428 e8 cb 4a 01 00 call   0x392ef8
37e42d 48 8b d0 mov    rdx,rax
37e430 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
37e435 4d 8b c6 mov    r8,r14
37e438 e8 9b 15 f7 ff call   0x2ef9d8
37e43d 48 8b cb mov    rcx,rbx
37e440 48 8b f8 mov    rdi,rax
37e443 e8 a4 f3 f4 ff call   0x2cd7ec
37e448 48 8b 0d d9 76 08 00 mov    rcx,QWORD PTR [rip+0x876d9]        # 0x405b28
37e44f 48 8d 54 24 48 lea    rdx,[rsp+0x48]
37e454 4c 89 7c 24 38 mov    QWORD PTR [rsp+0x38],r15
37e459 41 0f 28 db movaps xmm3,xmm11
37e45d 4c 89 7c 24 30 mov    QWORD PTR [rsp+0x30],r15
37e462 41 0f 28 d0 movaps xmm2,xmm8
37e466 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e46b 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e472 f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e479 e8 f6 53 02 00 call   0x3a3874
37e47e 48 8d 4d b8 lea    rcx,[rbp-0x48]
37e482 48 8b d8 mov    rbx,rax
37e485 e8 6e 4a 01 00 call   0x392ef8
37e48a 48 8b d0 mov    rdx,rax
37e48d 48 8d 4d c0 lea    rcx,[rbp-0x40]
37e491 4d 8b c6 mov    r8,r14
37e494 e8 3f 15 f7 ff call   0x2ef9d8
37e499 48 8b d0 mov    rdx,rax
37e49c 48 8d 4d a0 lea    rcx,[rbp-0x60]
37e4a0 4c 8b c3 mov    r8,rbx
37e4a3 e8 30 15 f7 ff call   0x2ef9d8
37e4a8 4c 8b c0 mov    r8,rax
37e4ab 48 8d 4d 90 lea    rcx,[rbp-0x70]
37e4af 48 8b d7 mov    rdx,rdi
37e4b2 e8 d1 ce f5 ff call   0x2db388
37e4b7 0f 10 45 90 movups xmm0,XMMWORD PTR [rbp-0x70]
37e4bb 41 b0 01 mov    r8b,0x1
37e4be 48 8d 55 98 lea    rdx,[rbp-0x68]
37e4c2 48 8d 4d 90 lea    rcx,[rbp-0x70]
37e4c6 f3 41 0f 7f 45 50 movdqu XMMWORD PTR [r13+0x50],xmm0
37e4cc e8 db 5f 01 00 call   0x3944ac
37e4d1 84 c0 test   al,al
37e4d3 74 12 je     0x37e4e7
37e4d5 33 d2 xor    edx,edx
37e4d7 33 c9 xor    ecx,ecx
37e4d9 e8 06 5f 01 00 call   0x3943e4
37e4de 84 c0 test   al,al
37e4e0 74 05 je     0x37e4e7
37e4e2 41 c6 45 2c 01 mov    BYTE PTR [r13+0x2c],0x1
37e4e7 45 38 7d 2c cmp    BYTE PTR [r13+0x2c],r15b
37e4eb 0f 84 a1 03 00 00 je     0x37e892
37e4f1 e8 ae 40 01 00 call   0x3925a4
37e4f6 48 8b b5 b8 01 00 00 mov    rsi,QWORD PTR [rbp+0x1b8]
37e4fd 41 0f 28 cd movaps xmm1,xmm13
37e501 b9 08 00 00 00 mov    ecx,0x8
37e506 4c 8b f8 mov    r15,rax
37e509 f3 0f 10 b6 14 38 00 movss  xmm6,DWORD PTR [rsi+0x3814]
37e510 00 
37e511 e8 82 3d 01 00 call   0x392298
37e516 49 8d 4d 30 lea    rcx,[r13+0x30]
37e51a 44 8b f0 mov    r14d,eax
37e51d e8 ca f2 f4 ff call   0x2cd7ec
37e522 48 8b 0d ff 75 08 00 mov    rcx,QWORD PTR [rip+0x875ff]        # 0x405b28
37e529 48 8d 55 a0 lea    rdx,[rbp-0x60]
37e52d 48 c7 44 24 38 00 00 mov    QWORD PTR [rsp+0x38],0x0
37e534 00 00 
37e536 41 0f 28 db movaps xmm3,xmm11
37e53a 48 c7 44 24 30 00 00 mov    QWORD PTR [rsp+0x30],0x0
37e541 00 00 
37e543 41 0f 28 d0 movaps xmm2,xmm8
37e547 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e54c 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e553 f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e55a e8 15 53 02 00 call   0x3a3874
37e55f f3 0f 10 3d cd 4b f1 movss  xmm7,DWORD PTR [rip+0xfffffffffff14bcd]        # 0x293134
37e566 ff 
37e567 48 8d 4d c0 lea    rcx,[rbp-0x40]
37e56b 0f 28 d7 movaps xmm2,xmm7
37e56e 48 8b d0 mov    rdx,rax
37e571 e8 8a e4 ff ff call   0x37ca00
37e576 48 8b d8 mov    rbx,rax
37e579 e8 2e 41 01 00 call   0x3926ac
37e57e 4c 8b c3 mov    r8,rbx
37e581 48 8d 4d b8 lea    rcx,[rbp-0x48]
37e585 48 8d 90 00 0e 00 00 lea    rdx,[rax+0xe00]
37e58c e8 47 14 f7 ff call   0x2ef9d8
37e591 48 8b d0 mov    rdx,rax
37e594 4c 8d 86 0c 38 00 00 lea    r8,[rsi+0x380c]
37e59b 48 8d 4c 24 50 lea    rcx,[rsp+0x50]
37e5a0 e8 33 14 f7 ff call   0x2ef9d8
37e5a5 49 8d 4d 30 lea    rcx,[r13+0x30]
37e5a9 48 8b f8 mov    rdi,rax
37e5ac e8 3b f2 f4 ff call   0x2cd7ec
37e5b1 48 8b 0d 70 75 08 00 mov    rcx,QWORD PTR [rip+0x87570]        # 0x405b28
37e5b8 48 8d 54 24 40 lea    rdx,[rsp+0x40]
37e5bd 48 c7 44 24 38 00 00 mov    QWORD PTR [rsp+0x38],0x0
37e5c4 00 00 
37e5c6 41 0f 28 db movaps xmm3,xmm11
37e5ca 48 c7 44 24 30 00 00 mov    QWORD PTR [rsp+0x30],0x0
37e5d1 00 00 
37e5d3 41 0f 28 d0 movaps xmm2,xmm8
37e5d7 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e5dc 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e5e3 f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e5ea e8 85 52 02 00 call   0x3a3874
37e5ef 48 8b d0 mov    rdx,rax
37e5f2 48 8d 4c 24 48 lea    rcx,[rsp+0x48]
37e5f7 0f 28 d7 movaps xmm2,xmm7
37e5fa e8 01 e4 ff ff call   0x37ca00
37e5ff 48 8b d8 mov    rbx,rax
37e602 e8 a5 40 01 00 call   0x3926ac
37e607 4c 8b c3 mov    r8,rbx
37e60a 48 8d 4d ac lea    rcx,[rbp-0x54]
37e60e 48 8d 90 00 0e 00 00 lea    rdx,[rax+0xe00]
37e615 e8 ca 81 fb ff call   0x3367e4
37e61a 48 8b d0 mov    rdx,rax
37e61d 4c 8d 86 0c 38 00 00 lea    r8,[rsi+0x380c]
37e624 48 8d 4c 24 60 lea    rcx,[rsp+0x60]
37e629 e8 b6 81 fb ff call   0x3367e4
37e62e 48 8b d0 mov    rdx,rax
37e631 c7 44 24 28 00 00 00 mov    DWORD PTR [rsp+0x28],0x0
37e638 00 
37e639 45 8b ce mov    r9d,r14d
37e63c f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37e642 4c 8b c7 mov    r8,rdi
37e645 49 8b cf mov    rcx,r15
37e648 e8 f7 2b 02 00 call   0x3a1244
37e64d e8 52 3f 01 00 call   0x3925a4
37e652 49 8d 4d 30 lea    rcx,[r13+0x30]
37e656 4c 8b f0 mov    r14,rax
37e659 e8 8e f1 f4 ff call   0x2cd7ec
37e65e 45 33 ff xor    r15d,r15d
37e661 48 8b f0 mov    rsi,rax
37e664 83 3d a5 a8 ec ff 05 cmp    DWORD PTR [rip+0xffffffffffeca8a5],0x5        # 0x248f10
37e66b 41 8b cf mov    ecx,r15d
37e66e 0f 95 c1 setne  cl
37e671 66 0f 6e c9 movd   xmm1,ecx
37e675 0f 5b c9 cvtdq2ps xmm1,xmm1
37e678 f3 41 0f 59 cd mulss  xmm1,xmm13
37e67d 41 8b cf mov    ecx,r15d
37e680 f3 41 0f 58 cd addss  xmm1,xmm13
37e685 0f 94 c1 sete   cl
37e688 e8 0b 3c 01 00 call   0x392298
37e68d 49 8d 4d 30 lea    rcx,[r13+0x30]
37e691 8b f8 mov    edi,eax
37e693 e8 54 f1 f4 ff call   0x2cd7ec
37e698 48 8b 0d 89 74 08 00 mov    rcx,QWORD PTR [rip+0x87489]        # 0x405b28
37e69f 48 8d 95 b8 01 00 00 lea    rdx,[rbp+0x1b8]
37e6a6 4c 89 7c 24 38 mov    QWORD PTR [rsp+0x38],r15
37e6ab 41 0f 28 db movaps xmm3,xmm11
37e6af 4c 89 7c 24 30 mov    QWORD PTR [rsp+0x30],r15
37e6b4 41 0f 28 d0 movaps xmm2,xmm8
37e6b8 48 89 44 24 28 mov    QWORD PTR [rsp+0x28],rax
37e6bd 48 8b 89 28 3c 00 00 mov    rcx,QWORD PTR [rcx+0x3c28]
37e6c4 f3 44 0f 11 54 24 20 movss  DWORD PTR [rsp+0x20],xmm10
37e6cb e8 a4 51 02 00 call   0x3a3874
37e6d0 48 8b d0 mov    rdx,rax
37e6d3 48 8d 4c 24 60 lea    rcx,[rsp+0x60]
37e6d8 0f 28 d7 movaps xmm2,xmm7
37e6db e8 20 e3 ff ff call   0x37ca00
37e6e0 48 8b d8 mov    rbx,rax
37e6e3 e8 c4 3f 01 00 call   0x3926ac
37e6e8 4c 8b c3 mov    r8,rbx
37e6eb 48 8d 4d ac lea    rcx,[rbp-0x54]
37e6ef 48 8d 90 00 0e 00 00 lea    rdx,[rax+0xe00]
37e6f6 e8 e9 80 fb ff call   0x3367e4
37e6fb 48 8b d0 mov    rdx,rax
37e6fe 4c 89 7c 24 20 mov    QWORD PTR [rsp+0x20],r15
37e703 4c 8b ce mov    r9,rsi
37e706 44 8b c7 mov    r8d,edi
37e709 49 8b ce mov    rcx,r14
37e70c e8 ab 4a 02 00 call   0x3a31bc
37e711 48 8d 0d a0 86 05 00 lea    rcx,[rip+0x586a0]        # 0x3d6db8
37e718 e8 a3 92 f5 ff call   0x2d79c0
37e71d 48 8d 0d 94 86 05 00 lea    rcx,[rip+0x58694]        # 0x3d6db8
37e724 48 8b f0 mov    rsi,rax
37e727 e8 4c 32 f5 ff call   0x2d1978
37e72c 48 8b d8 mov    rbx,rax
37e72f 48 3b c6 cmp    rax,rsi
37e732 0f 84 35 01 00 00 je     0x37e86d
37e738 49 8b d5 mov    rdx,r13
37e73b 48 8b cb mov    rcx,rbx
37e73e e8 ed 07 f5 ff call   0x2cef30
37e743 84 c0 test   al,al
37e745 0f 85 15 01 00 00 jne    0x37e860
37e74b 41 8b 0c 24 mov    ecx,DWORD PTR [r12]
37e74f 39 4b 20 cmp    DWORD PTR [rbx+0x20],ecx
37e752 0f 85 08 01 00 00 jne    0x37e860
37e758 44 38 7b 60 cmp    BYTE PTR [rbx+0x60],r15b
37e75c 0f 85 fe 00 00 00 jne    0x37e860
37e762 48 8d 53 58 lea    rdx,[rbx+0x58]
37e766 41 b0 01 mov    r8b,0x1
37e769 48 8d 4b 50 lea    rcx,[rbx+0x50]
37e76d e8 3a 5d 01 00 call   0x3944ac
37e772 84 c0 test   al,al
37e774 0f 84 e6 00 00 00 je     0x37e860
37e77a 49 8b d5 mov    rdx,r13
37e77d 48 8d 4d 60 lea    rcx,[rbp+0x60]
37e781 e8 ea cc f5 ff call   0x2db470
37e786 48 8b d3 mov    rdx,rbx
37e789 48 8d 4d f0 lea    rcx,[rbp-0x10]
37e78d e8 02 5a f5 ff call   0x2d4194
37e792 f3 0f 10 43 24 movss  xmm0,DWORD PTR [rbx+0x24]
37e797 48 8d 4b 30 lea    rcx,[rbx+0x30]
37e79b f3 0f 10 4b 28 movss  xmm1,DWORD PTR [rbx+0x28]
37e7a0 8b 43 20 mov    eax,DWORD PTR [rbx+0x20]
37e7a3 f3 0f 11 45 14 movss  DWORD PTR [rbp+0x14],xmm0
37e7a8 f3 0f 11 4d 18 movss  DWORD PTR [rbp+0x18],xmm1
37e7ad 89 45 10 mov    DWORD PTR [rbp+0x10],eax
37e7b0 44 88 7d 1c mov    BYTE PTR [rbp+0x1c],r15b
37e7b4 e8 33 f0 f4 ff call   0x2cd7ec
37e7b9 48 8b d0 mov    rdx,rax
37e7bc 48 8d 4d 20 lea    rcx,[rbp+0x20]
37e7c0 e8 07 db f4 ff call   0x2cc2cc
37e7c5 0f 10 43 50 movups xmm0,XMMWORD PTR [rbx+0x50]
37e7c9 48 8d 55 f0 lea    rdx,[rbp-0x10]
37e7cd c6 45 50 01 mov    BYTE PTR [rbp+0x50],0x1
37e7d1 49 8b cd mov    rcx,r13
37e7d4 44 89 7d 54 mov    DWORD PTR [rbp+0x54],r15d
37e7d8 f3 0f 7f 45 40 movdqu XMMWORD PTR [rbp+0x40],xmm0
37e7dd e8 a2 e1 ff ff call   0x37c984
37e7e2 48 8d 4d f0 lea    rcx,[rbp-0x10]
37e7e6 e8 39 ce f5 ff call   0x2db624
37e7eb 48 8d 55 60 lea    rdx,[rbp+0x60]
37e7ef 48 8d 4d f0 lea    rcx,[rbp-0x10]
37e7f3 e8 9c 59 f5 ff call   0x2d4194
37e7f8 f3 0f 10 85 84 00 00 movss  xmm0,DWORD PTR [rbp+0x84]
37e7ff 00 
37e800 48 8d 95 90 00 00 00 lea    rdx,[rbp+0x90]
37e807 f3 0f 10 8d 88 00 00 movss  xmm1,DWORD PTR [rbp+0x88]
37e80e 00 
37e80f 48 8d 4d 20 lea    rcx,[rbp+0x20]
37e813 8b 85 80 00 00 00 mov    eax,DWORD PTR [rbp+0x80]
37e819 f3 0f 11 45 14 movss  DWORD PTR [rbp+0x14],xmm0
37e81e f3 0f 11 4d 18 movss  DWORD PTR [rbp+0x18],xmm1
37e823 89 45 10 mov    DWORD PTR [rbp+0x10],eax
37e826 c6 45 1c 01 mov    BYTE PTR [rbp+0x1c],0x1
37e82a e8 65 59 f5 ff call   0x2d4194
37e82f 0f 28 85 b0 00 00 00 movaps xmm0,XMMWORD PTR [rbp+0xb0]
37e836 48 8d 55 f0 lea    rdx,[rbp-0x10]
37e83a 48 8b cb mov    rcx,rbx
37e83d c6 45 50 01 mov    BYTE PTR [rbp+0x50],0x1
37e841 0f 11 45 40 movups XMMWORD PTR [rbp+0x40],xmm0
37e845 44 89 7d 54 mov    DWORD PTR [rbp+0x54],r15d
37e849 e8 36 e1 ff ff call   0x37c984
37e84e 48 8d 4d f0 lea    rcx,[rbp-0x10]
37e852 e8 cd cd f5 ff call   0x2db624
37e857 48 8d 4d 60 lea    rcx,[rbp+0x60]
37e85b e8 c4 cd f5 ff call   0x2db624
37e860 48 83 c3 68 add    rbx,0x68
37e864 48 3b de cmp    rbx,rsi
37e867 0f 85 cb fe ff ff jne    0x37e738
37e86d 33 c9 xor    ecx,ecx
37e86f e8 14 5d 01 00 call   0x394588
37e874 84 c0 test   al,al
37e876 74 13 je     0x37e88b
37e878 8b 05 92 a6 ec ff mov    eax,DWORD PTR [rip+0xffffffffffeca692]        # 0x248f10
37e87e 83 f8 05 cmp    eax,0x5
37e881 74 04 je     0x37e887
37e883 41 89 04 24 mov    DWORD PTR [r12],eax
37e887 45 88 7d 2c mov    BYTE PTR [r13+0x2c],r15b
37e88b 48 8b b5 b0 01 00 00 mov    rsi,QWORD PTR [rbp+0x1b0]
37e892 e8 85 ea fd ff call   0x35d31c
37e897 48 8b 8d a8 01 00 00 mov    rcx,QWORD PTR [rbp+0x1a8]
37e89e 4c 8d 4d 90 lea    r9,[rbp-0x70]
37e8a2 4d 8d 45 30 lea    r8,[r13+0x30]
37e8a6 48 8b 50 10 mov    rdx,QWORD PTR [rax+0x10]
37e8aa 0f 10 01 movups xmm0,XMMWORD PTR [rcx]
37e8ad 8b 8d a0 01 00 00 mov    ecx,DWORD PTR [rbp+0x1a0]
37e8b3 89 4c 24 28 mov    DWORD PTR [rsp+0x28],ecx
37e8b7 48 8d 4c 24 60 lea    rcx,[rsp+0x60]
37e8bc 48 89 4c 24 20 mov    QWORD PTR [rsp+0x20],rcx
37e8c1 48 8b c8 mov    rcx,rax
37e8c4 f3 0f 7f 44 24 60 movdqu XMMWORD PTR [rsp+0x60],xmm0
37e8ca e8 fd 32 fe ff call   0x361bcc
37e8cf f3 0f 10 46 14 movss  xmm0,DWORD PTR [rsi+0x14]
37e8d4 48 8b 05 4d 72 08 00 mov    rax,QWORD PTR [rip+0x8724d]        # 0x405b28
37e8db f3 41 0f 5e c4 divss  xmm0,xmm12
37e8e0 48 89 b0 28 3c 00 00 mov    QWORD PTR [rax+0x3c28],rsi
37e8e7 f3 0f 11 46 64 movss  DWORD PTR [rsi+0x64],xmm0
37e8ec 4c 8d 9c 24 58 02 00 lea    r11,[rsp+0x258]
37e8f3 00 
37e8f4 41 0f 28 73 e8 movaps xmm6,XMMWORD PTR [r11-0x18]
37e8f9 41 0f 28 7b d8 movaps xmm7,XMMWORD PTR [r11-0x28]
37e8fe 45 0f 28 43 c8 movaps xmm8,XMMWORD PTR [r11-0x38]
37e903 45 0f 28 4b b8 movaps xmm9,XMMWORD PTR [r11-0x48]
37e908 45 0f 28 53 a8 movaps xmm10,XMMWORD PTR [r11-0x58]
37e90d 45 0f 28 5b 98 movaps xmm11,XMMWORD PTR [r11-0x68]
37e912 45 0f 28 63 88 movaps xmm12,XMMWORD PTR [r11-0x78]
37e917 45 0f 28 ab 78 ff ff movaps xmm13,XMMWORD PTR [r11-0x88]
37e91e ff 
37e91f 49 8b e3 mov    rsp,r11
37e922 41 5f pop    r15
37e924 41 5e pop    r14
37e926 41 5d pop    r13
37e928 41 5c pop    r12
37e92a 5f pop    rdi
37e92b 5e pop    rsi
37e92c 5b pop    rbx
37e92d 5d pop    rbp
37e92e c3 ret

; full range 37d394..37d7af
37d394 48 8b c4 mov    rax,rsp
37d397 48 89 58 08 mov    QWORD PTR [rax+0x8],rbx
37d39b 4c 89 40 18 mov    QWORD PTR [rax+0x18],r8
37d39f 55 push   rbp
37d3a0 56 push   rsi
37d3a1 57 push   rdi
37d3a2 41 54 push   r12
37d3a4 41 55 push   r13
37d3a6 41 56 push   r14
37d3a8 41 57 push   r15
37d3aa 48 8d 68 a1 lea    rbp,[rax-0x5f]
37d3ae 48 81 ec 00 01 00 00 sub    rsp,0x100
37d3b5 0f 29 70 b8 movaps XMMWORD PTR [rax-0x48],xmm6
37d3b9 4c 8b e2 mov    r12,rdx
37d3bc 0f 29 78 a8 movaps XMMWORD PTR [rax-0x58],xmm7
37d3c0 4c 8b e9 mov    r13,rcx
37d3c3 44 0f 29 48 98 movaps XMMWORD PTR [rax-0x68],xmm9
37d3c8 e8 33 fe fd ff call   0x35d200
37d3cd 48 8b 35 54 87 08 00 mov    rsi,QWORD PTR [rip+0x88754]        # 0x405b28
37d3d4 49 8b cd mov    rcx,r13
37d3d7 48 89 45 6f mov    QWORD PTR [rbp+0x6f],rax
37d3db 48 8d 98 00 01 00 00 lea    rbx,[rax+0x100]
37d3e2 e8 05 04 f5 ff call   0x2cd7ec
37d3e7 f3 44 0f 10 0d 70 5e movss  xmm9,DWORD PTR [rip+0xfffffffffff15e70]        # 0x293260
37d3ee f1 ff 
37d3f0 48 8d 4d 7f lea    rcx,[rbp+0x7f]
37d3f4 48 8b d0 mov    rdx,rax
37d3f7 f3 44 0f 11 4c 24 20 movss  DWORD PTR [rsp+0x20],xmm9
37d3fe 45 33 c9 xor    r9d,r9d
37d401 45 33 c0 xor    r8d,r8d
37d404 e8 93 23 01 00 call   0x38f79c
37d409 4c 8b c0 mov    r8,rax
37d40c 48 8d 4d a7 lea    rcx,[rbp-0x59]
37d410 48 8b d3 mov    rdx,rbx
37d413 e8 c0 25 f7 ff call   0x2ef9d8
37d418 4c 8b c0 mov    r8,rax
37d41b 48 8d 4c 24 30 lea    rcx,[rsp+0x30]
37d420 48 8b d3 mov    rdx,rbx
37d423 e8 60 df f5 ff call   0x2db388
37d428 41 0f 28 c9 movaps xmm1,xmm9
37d42c 48 8d 4c 24 30 lea    rcx,[rsp+0x30]
37d431 e8 4a f6 ff ff call   0x37ca80
37d436 45 33 c9 xor    r9d,r9d
37d439 48 8d 4c 24 30 lea    rcx,[rsp+0x30]
37d43e 45 33 c0 xor    r8d,r8d
37d441 33 d2 xor    edx,edx
37d443 e8 94 74 01 00 call   0x3948dc
37d448 33 d2 xor    edx,edx
37d44a c7 44 24 40 00 00 00 mov    DWORD PTR [rsp+0x40],0x0
37d451 00 
37d452 48 8d 4c 24 44 lea    rcx,[rsp+0x44]
37d457 e8 78 90 fb ff call   0x3364d4
37d45c 0f 10 4c 24 44 movups xmm1,XMMWORD PTR [rsp+0x44]
37d461 49 8b cd mov    rcx,r13
37d464 f3 0f 10 44 24 40 movss  xmm0,DWORD PTR [rsp+0x40]
37d46a f3 0f 7f 4d 8b movdqu XMMWORD PTR [rbp-0x75],xmm1
37d46f f3 0f 11 45 87 movss  DWORD PTR [rbp-0x79],xmm0
37d474 e8 73 03 f5 ff call   0x2cd7ec
37d479 48 8b c8 mov    rcx,rax
37d47c 4c 8d 45 87 lea    r8,[rbp-0x79]
37d480 ba 56 04 00 00 mov    edx,0x456
37d485 e8 fa ef ff ff call   0x37c484
37d48a 41 b0 01 mov    r8b,0x1
37d48d 48 8d 54 24 38 lea    rdx,[rsp+0x38]
37d492 48 8d 4c 24 30 lea    rcx,[rsp+0x30]
37d497 48 8b d8 mov    rbx,rax
37d49a e8 0d 70 01 00 call   0x3944ac
37d49f f3 0f 10 05 0d 5d f1 movss  xmm0,DWORD PTR [rip+0xfffffffffff15d0d]        # 0x2931b4
37d4a6 ff 
37d4a7 44 8a c8 mov    r9b,al
37d4aa f3 0f 10 35 a2 fd f0 movss  xmm6,DWORD PTR [rip+0xfffffffffff0fda2]        # 0x28d254
37d4b1 ff 
37d4b2 0f 57 c9 xorps  xmm1,xmm1
37d4b5 f3 0f 11 44 24 20 movss  DWORD PTR [rsp+0x20],xmm0
37d4bb 0f 28 d6 movaps xmm2,xmm6
37d4be f3 0f 10 03 movss  xmm0,DWORD PTR [rbx]
37d4c2 e8 81 89 fb ff call   0x335e48
37d4c7 0f 28 f8 movaps xmm7,xmm0
37d4ca 0f 28 ce movaps xmm1,xmm6
37d4cd b9 01 00 00 00 mov    ecx,0x1
37d4d2 f3 0f 11 3b movss  DWORD PTR [rbx],xmm7
37d4d6 e8 bd 4d 01 00 call   0x392298
37d4db 8b d0 mov    edx,eax
37d4dd 48 8d 4d af lea    rcx,[rbp-0x51]
37d4e1 e8 ee 8f fb ff call   0x3364d4
37d4e6 0f 28 ce movaps xmm1,xmm6
37d4e9 b9 02 00 00 00 mov    ecx,0x2
37d4ee 0f 10 10 movups xmm2,XMMWORD PTR [rax]
37d4f1 f3 0f 7f 54 24 40 movdqu XMMWORD PTR [rsp+0x40],xmm2
37d4f7 e8 9c 4d 01 00 call   0x392298
37d4fc 8b d0 mov    edx,eax
37d4fe 48 8d 4d df lea    rcx,[rbp-0x21]
37d502 e8 cd 8f fb ff call   0x3364d4
37d507 48 83 c3 04 add    rbx,0x4
37d50b 48 89 5d 7f mov    QWORD PTR [rbp+0x7f],rbx
37d50f 0f 10 00 movups xmm0,XMMWORD PTR [rax]
37d512 f3 0f 7f 45 87 movdqu XMMWORD PTR [rbp-0x79],xmm0
37d517 0f 28 df movaps xmm3,xmm7
37d51a 4c 8d 44 24 40 lea    r8,[rsp+0x40]
37d51f 48 8d 55 87 lea    rdx,[rbp-0x79]
37d523 48 8d 4d cf lea    rcx,[rbp-0x31]
37d527 e8 78 c0 ff ff call   0x3795a4
37d52c 41 b0 01 mov    r8b,0x1
37d52f 48 8d 54 24 38 lea    rdx,[rsp+0x38]
37d534 48 8d 4c 24 30 lea    rcx,[rsp+0x30]
37d539 0f 10 00 movups xmm0,XMMWORD PTR [rax]
37d53c f3 0f 7f 03 movdqu XMMWORD PTR [rbx],xmm0
37d540 e8 67 6f 01 00 call   0x3944ac
37d545 84 c0 test   al,al
37d547 74 12 je     0x37d55b
37d549 33 d2 xor    edx,edx
37d54b 33 c9 xor    ecx,ecx
37d54d e8 92 6e 01 00 call   0x3943e4
37d552 84 c0 test   al,al
37d554 74 05 je     0x37d55b
37d556 41 c6 04 24 01 mov    BYTE PTR [r12],0x1
37d55b 41 80 3c 24 00 cmp    BYTE PTR [r12],0x0
37d560 0f 84 dc 01 00 00 je     0x37d742
37d566 e8 39 50 01 00 call   0x3925a4
37d56b f3 0f 10 3d dd fc f0 movss  xmm7,DWORD PTR [rip+0xfffffffffff0fcdd]        # 0x28d250
37d572 ff 
37d573 b9 08 00 00 00 mov    ecx,0x8
37d578 f3 0f 10 b6 14 38 00 movss  xmm6,DWORD PTR [rsi+0x3814]
37d57f 00 
37d580 0f 28 cf movaps xmm1,xmm7
37d583 4c 8b f8 mov    r15,rax
37d586 e8 0d 4d 01 00 call   0x392298
37d58b 49 8b cd mov    rcx,r13
37d58e 44 8b f0 mov    r14d,eax
37d591 e8 56 02 f5 ff call   0x2cd7ec
37d596 48 8b d0 mov    rdx,rax
37d599 f3 44 0f 11 4c 24 20 movss  DWORD PTR [rsp+0x20],xmm9
37d5a0 45 33 c9 xor    r9d,r9d
37d5a3 48 8d 4d a7 lea    rcx,[rbp-0x59]
37d5a7 45 33 c0 xor    r8d,r8d
37d5aa e8 ed 21 01 00 call   0x38f79c
37d5af f3 0f 10 15 7d 5b f1 movss  xmm2,DWORD PTR [rip+0xfffffffffff15b7d]        # 0x293134
37d5b6 ff 
37d5b7 48 8d 4d bf lea    rcx,[rbp-0x41]
37d5bb 48 8b d0 mov    rdx,rax
37d5be e8 3d f4 ff ff call   0x37ca00
37d5c3 48 8b d8 mov    rbx,rax
37d5c6 e8 e1 50 01 00 call   0x3926ac
37d5cb 4c 8b c3 mov    r8,rbx
37d5ce 48 8d 4d c7 lea    rcx,[rbp-0x39]
37d5d2 48 8d 90 00 0e 00 00 lea    rdx,[rax+0xe00]
37d5d9 e8 fa 23 f7 ff call   0x2ef9d8
37d5de 48 8b d0 mov    rdx,rax
37d5e1 4c 8d 86 0c 38 00 00 lea    r8,[rsi+0x380c]
37d5e8 48 8d 4d cf lea    rcx,[rbp-0x31]
37d5ec e8 e7 23 f7 ff call   0x2ef9d8
37d5f1 49 8b cd mov    rcx,r13
37d5f4 48 8b f8 mov    rdi,rax
37d5f7 e8 f0 01 f5 ff call   0x2cd7ec
37d5fc 48 8b d0 mov    rdx,rax
37d5ff f3 44 0f 11 4c 24 20 movss  DWORD PTR [rsp+0x20],xmm9
37d606 45 33 c9 xor    r9d,r9d
37d609 48 8d 4d df lea    rcx,[rbp-0x21]
37d60d 45 33 c0 xor    r8d,r8d
37d610 e8 87 21 01 00 call   0x38f79c
37d615 f3 0f 10 15 17 5b f1 movss  xmm2,DWORD PTR [rip+0xfffffffffff15b17]        # 0x293134
37d61c ff 
37d61d 48 8d 4d af lea    rcx,[rbp-0x51]
37d621 48 8b d0 mov    rdx,rax
37d624 e8 d7 f3 ff ff call   0x37ca00
37d629 48 8b d8 mov    rbx,rax
37d62c e8 7b 50 01 00 call   0x3926ac
37d631 4c 8b c3 mov    r8,rbx
37d634 48 8d 4d 87 lea    rcx,[rbp-0x79]
37d638 48 8d 90 00 0e 00 00 lea    rdx,[rax+0xe00]
37d63f e8 a0 91 fb ff call   0x3367e4
37d644 48 8b d0 mov    rdx,rax
37d647 4c 8d 86 0c 38 00 00 lea    r8,[rsi+0x380c]
37d64e 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
37d653 e8 8c 91 fb ff call   0x3367e4
37d658 48 8b d0 mov    rdx,rax
37d65b c7 44 24 28 00 00 00 mov    DWORD PTR [rsp+0x28],0x0
37d662 00 
37d663 45 8b ce mov    r9d,r14d
37d666 f3 0f 11 74 24 20 movss  DWORD PTR [rsp+0x20],xmm6
37d66c 4c 8b c7 mov    r8,rdi
37d66f 49 8b cf mov    rcx,r15
37d672 e8 cd 3b 02 00 call   0x3a1244
37d677 e8 28 4f 01 00 call   0x3925a4
37d67c 49 8b cd mov    rcx,r13
37d67f 4c 8b f0 mov    r14,rax
37d682 e8 65 01 f5 ff call   0x2cd7ec
37d687 8b 15 83 b8 ec ff mov    edx,DWORD PTR [rip+0xffffffffffecb883]        # 0x248f10
37d68d 33 c9 xor    ecx,ecx
37d68f 83 fa 05 cmp    edx,0x5
37d692 48 8b f0 mov    rsi,rax
37d695 0f 95 c1 setne  cl
37d698 66 0f 6e c9 movd   xmm1,ecx
37d69c 33 c9 xor    ecx,ecx
37d69e 0f 5b c9 cvtdq2ps xmm1,xmm1
37d6a1 83 fa 05 cmp    edx,0x5
37d6a4 0f 94 c1 sete   cl
37d6a7 f3 0f 59 cf mulss  xmm1,xmm7
37d6ab f3 0f 58 cf addss  xmm1,xmm7
37d6af e8 e4 4b 01 00 call   0x392298
37d6b4 49 8b cd mov    rcx,r13
37d6b7 8b f8 mov    edi,eax
37d6b9 e8 2e 01 f5 ff call   0x2cd7ec
37d6be 48 8b d0 mov    rdx,rax
37d6c1 45 33 c9 xor    r9d,r9d
37d6c4 f3 44 0f 11 4c 24 20 movss  DWORD PTR [rsp+0x20],xmm9
37d6cb 45 33 c0 xor    r8d,r8d
37d6ce 48 8d 4c 24 40 lea    rcx,[rsp+0x40]
37d6d3 e8 c4 20 01 00 call   0x38f79c
37d6d8 f3 0f 10 15 54 5a f1 movss  xmm2,DWORD PTR [rip+0xfffffffffff15a54]        # 0x293134
37d6df ff 
37d6e0 48 8d 4d 87 lea    rcx,[rbp-0x79]
37d6e4 48 8b d0 mov    rdx,rax
37d6e7 e8 14 f3 ff ff call   0x37ca00
37d6ec 48 8b d8 mov    rbx,rax
37d6ef e8 b8 4f 01 00 call   0x3926ac
37d6f4 4c 8b c3 mov    r8,rbx
37d6f7 48 8d 4d af lea    rcx,[rbp-0x51]
37d6fb 48 8d 90 00 0e 00 00 lea    rdx,[rax+0xe00]
37d702 e8 dd 90 fb ff call   0x3367e4
37d707 48 8b d0 mov    rdx,rax
37d70a 48 c7 44 24 20 00 00 mov    QWORD PTR [rsp+0x20],0x0
37d711 00 00 
37d713 4c 8b ce mov    r9,rsi
37d716 44 8b c7 mov    r8d,edi
37d719 49 8b ce mov    rcx,r14
37d71c e8 9b 5a 02 00 call   0x3a31bc
37d721 33 c9 xor    ecx,ecx
37d723 e8 60 6e 01 00 call   0x394588
37d728 84 c0 test   al,al
37d72a 74 16 je     0x37d742
37d72c 8b 05 de b7 ec ff mov    eax,DWORD PTR [rip+0xffffffffffecb7de]        # 0x248f10
37d732 83 f8 05 cmp    eax,0x5
37d735 74 06 je     0x37d73d
37d737 48 8b 4d 77 mov    rcx,QWORD PTR [rbp+0x77]
37d73b 89 01 mov    DWORD PTR [rcx],eax
37d73d 41 c6 04 24 00 mov    BYTE PTR [r12],0x0
37d742 48 8b 7d 6f mov    rdi,QWORD PTR [rbp+0x6f]
37d746 49 8b cd mov    rcx,r13
37d749 48 8b bf 98 02 00 00 mov    rdi,QWORD PTR [rdi+0x298]
37d750 e8 97 00 f5 ff call   0x2cd7ec
37d755 48 8b 4d 7f mov    rcx,QWORD PTR [rbp+0x7f]
37d759 48 8b d8 mov    rbx,rax
37d75c e8 ab 20 f7 ff call   0x2ef80c
37d761 44 8b c0 mov    r8d,eax
37d764 48 c7 44 24 20 00 00 mov    QWORD PTR [rsp+0x20],0x0
37d76b 00 00 
37d76d 4c 8b cb mov    r9,rbx
37d770 48 8d 54 24 30 lea    rdx,[rsp+0x30]
37d775 48 8b cf mov    rcx,rdi
37d778 e8 3f 5a 02 00 call   0x3a31bc
37d77d 49 8b cd mov    rcx,r13
37d780 e8 6f ed f4 ff call   0x2cc4f4
37d785 4c 8d 9c 24 00 01 00 lea    r11,[rsp+0x100]
37d78c 00 
37d78d 49 8b 5b 40 mov    rbx,QWORD PTR [r11+0x40]
37d791 41 0f 28 73 f0 movaps xmm6,XMMWORD PTR [r11-0x10]
37d796 41 0f 28 7b e0 movaps xmm7,XMMWORD PTR [r11-0x20]
37d79b 45 0f 28 4b d0 movaps xmm9,XMMWORD PTR [r11-0x30]
37d7a0 49 8b e3 mov    rsp,r11
37d7a3 41 5f pop    r15
37d7a5 41 5e pop    r14
37d7a7 41 5d pop    r13
37d7a9 41 5c pop    r12
37d7ab 5f pop    rdi
37d7ac 5e pop    rsi
37d7ad 5d pop    rbp
37d7ae c3 ret

; full range 2d6fd4..2d701e
2d6fd4 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
2d6fd9 48 89 74 24 10 mov    QWORD PTR [rsp+0x10],rsi
2d6fde 57 push   rdi
2d6fdf 48 83 ec 20 sub    rsp,0x20
2d6fe3 48 8b f1 mov    rsi,rcx
2d6fe6 48 8b fa mov    rdi,rdx
2d6fe9 48 8b ca mov    rcx,rdx
2d6fec e8 f3 64 ff ff call   0x2cd4e4
2d6ff1 48 8b ce mov    rcx,rsi
2d6ff4 48 8b d8 mov    rbx,rax
2d6ff7 e8 e8 64 ff ff call   0x2cd4e4
2d6ffc 4c 8b 4f 10 mov    r9,QWORD PTR [rdi+0x10]
2d7000 48 8b c8 mov    rcx,rax
2d7003 48 8b 56 10 mov    rdx,QWORD PTR [rsi+0x10]
2d7007 4c 8b c3 mov    r8,rbx
2d700a 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
2d700f 48 8b 74 24 38 mov    rsi,QWORD PTR [rsp+0x38]
2d7014 48 83 c4 20 add    rsp,0x20
2d7018 5f pop    rdi
2d7019 e9 6a a9 ff ff jmp    0x2d1988

; full range 2d7020..2d7069
2d7020 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
2d7025 48 89 74 24 10 mov    QWORD PTR [rsp+0x10],rsi
2d702a 57 push   rdi
2d702b 48 83 ec 20 sub    rsp,0x20
2d702f 48 8b f1 mov    rsi,rcx
2d7032 48 8b fa mov    rdi,rdx
2d7035 48 8b ca mov    rcx,rdx
2d7038 e8 93 75 ff ff call   0x2ce5d0
2d703d 48 8b ce mov    rcx,rsi
2d7040 48 8b d8 mov    rbx,rax
2d7043 e8 9c 64 ff ff call   0x2cd4e4
2d7048 48 8b 56 10 mov    rdx,QWORD PTR [rsi+0x10]
2d704c 48 8b c8 mov    rcx,rax
2d704f 4c 8b cb mov    r9,rbx
2d7052 4c 8b c7 mov    r8,rdi
2d7055 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
2d705a 48 8b 74 24 38 mov    rsi,QWORD PTR [rsp+0x38]
2d705f 48 83 c4 20 add    rsp,0x20
2d7063 5f pop    rdi
2d7064 e9 1f a9 ff ff jmp    0x2d1988

; full range 31a4b4..31a5e0
31a4b4 40 53 rex push rbx
31a4b6 55 push   rbp
31a4b7 56 push   rsi
31a4b8 57 push   rdi
31a4b9 41 54 push   r12
31a4bb 41 55 push   r13
31a4bd 41 56 push   r14
31a4bf 41 57 push   r15
31a4c1 48 83 ec 48 sub    rsp,0x48
31a4c5 49 8b f8 mov    rdi,r8
31a4c8 48 8b da mov    rbx,rdx
31a4cb 4c 8b e9 mov    r13,rcx
31a4ce 49 3b d0 cmp    rdx,r8
31a4d1 0f 84 9e 00 00 00 je     0x31a575
31a4d7 48 8b 71 18 mov    rsi,QWORD PTR [rcx+0x18]
31a4db 48 8d 51 08 lea    rdx,[rcx+0x8]
31a4df 48 8b 2a mov    rbp,QWORD PTR [rdx]
31a4e2 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a4e7 4c 8b c3 mov    r8,rbx
31a4ea e8 25 a4 fb ff call   0x2d4914
31a4ef 4c 8b 63 08 mov    r12,QWORD PTR [rbx+0x8]
31a4f3 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
31a4f8 48 8d 4b 10 lea    rcx,[rbx+0x10]
31a4fc e8 a3 0e fb ff call   0x2cb3a4
31a501 48 8b d0 mov    rdx,rax
31a504 49 8b cd mov    rcx,r13
31a507 e8 ec d8 fb ff call   0x2d7df8
31a50c 4c 8b f0 mov    r14,rax
31a50f 4d 03 f6 add    r14,r14
31a512 4a 39 1c f6 cmp    QWORD PTR [rsi+r14*8],rbx
31a516 4a 8b 44 f6 08 mov    rax,QWORD PTR [rsi+r14*8+0x8]
31a51b 41 0f 94 c7 sete   r15b
31a51f 48 89 84 24 98 00 00 mov    QWORD PTR [rsp+0x98],rax
31a526 00 
31a527 48 3b d8 cmp    rbx,rax
31a52a eb 12 jmp    0x31a53e
31a52c 48 8b 44 24 30 mov    rax,QWORD PTR [rsp+0x30]
31a531 48 3b c7 cmp    rax,rdi
31a534 74 2c je     0x31a562
31a536 48 3b 84 24 98 00 00 cmp    rax,QWORD PTR [rsp+0x98]
31a53d 00 
31a53e 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a543 0f 94 c3 sete   bl
31a546 e8 81 ee ff ff call   0x3193cc
31a54b 84 db test   bl,bl
31a54d 74 dd je     0x31a52c
31a54f 45 84 ff test   r15b,r15b
31a552 74 07 je     0x31a55b
31a554 4a 89 2c f6 mov    QWORD PTR [rsi+r14*8],rbp
31a558 4c 8b e5 mov    r12,rbp
31a55b 4e 89 64 f6 08 mov    QWORD PTR [rsi+r14*8+0x8],r12
31a560 eb 72 jmp    0x31a5d4
31a562 45 84 ff test   r15b,r15b
31a565 74 04 je     0x31a56b
31a567 4a 89 04 f6 mov    QWORD PTR [rsi+r14*8],rax
31a56b 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a570 e8 27 a5 fb ff call   0x2d4a9c
31a575 48 8b c7 mov    rax,rdi
31a578 48 83 c4 48 add    rsp,0x48
31a57c 41 5f pop    r15
31a57e 41 5e pop    r14
31a580 41 5d pop    r13
31a582 41 5c pop    r12
31a584 5f pop    rdi
31a585 5e pop    rsi
31a586 5d pop    rbp
31a587 5b pop    rbx
31a588 c3 ret
31a589 48 8d 4b 10 lea    rcx,[rbx+0x10]
31a58d e8 12 0e fb ff call   0x2cb3a4
31a592 48 8b d0 mov    rdx,rax
31a595 49 8b cd mov    rcx,r13
31a598 e8 5b d8 fb ff call   0x2d7df8
31a59d 4c 8b f0 mov    r14,rax
31a5a0 4d 03 f6 add    r14,r14
31a5a3 4e 8b 7c f6 08 mov    r15,QWORD PTR [rsi+r14*8+0x8]
31a5a8 49 3b df cmp    rbx,r15
31a5ab eb 0d jmp    0x31a5ba
31a5ad 48 8b 44 24 30 mov    rax,QWORD PTR [rsp+0x30]
31a5b2 48 3b c7 cmp    rax,rdi
31a5b5 74 b0 je     0x31a567
31a5b7 49 3b c7 cmp    rax,r15
31a5ba 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a5bf 0f 94 c3 sete   bl
31a5c2 e8 05 ee ff ff call   0x3193cc
31a5c7 84 db test   bl,bl
31a5c9 74 e2 je     0x31a5ad
31a5cb 4a 89 2c f6 mov    QWORD PTR [rsi+r14*8],rbp
31a5cf 4a 89 6c f6 08 mov    QWORD PTR [rsi+r14*8+0x8],rbp
31a5d4 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
31a5d9 48 3b df cmp    rbx,rdi
31a5dc 75 ab jne    0x31a589
31a5de eb 8b jmp    0x31a56b

; full range 31a70c..31a838
31a70c 40 53 rex push rbx
31a70e 55 push   rbp
31a70f 56 push   rsi
31a710 57 push   rdi
31a711 41 54 push   r12
31a713 41 55 push   r13
31a715 41 56 push   r14
31a717 41 57 push   r15
31a719 48 83 ec 48 sub    rsp,0x48
31a71d 49 8b f8 mov    rdi,r8
31a720 48 8b da mov    rbx,rdx
31a723 4c 8b e9 mov    r13,rcx
31a726 49 3b d0 cmp    rdx,r8
31a729 0f 84 9e 00 00 00 je     0x31a7cd
31a72f 48 8b 71 18 mov    rsi,QWORD PTR [rcx+0x18]
31a733 48 8d 51 08 lea    rdx,[rcx+0x8]
31a737 48 8b 2a mov    rbp,QWORD PTR [rdx]
31a73a 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a73f 4c 8b c3 mov    r8,rbx
31a742 e8 cd a1 fb ff call   0x2d4914
31a747 4c 8b 63 08 mov    r12,QWORD PTR [rbx+0x8]
31a74b 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
31a750 48 8d 4b 10 lea    rcx,[rbx+0x10]
31a754 e8 4b 0c fb ff call   0x2cb3a4
31a759 48 8b d0 mov    rdx,rax
31a75c 49 8b cd mov    rcx,r13
31a75f e8 78 02 00 00 call   0x31a9dc
31a764 4c 8b f0 mov    r14,rax
31a767 4d 03 f6 add    r14,r14
31a76a 4a 39 1c f6 cmp    QWORD PTR [rsi+r14*8],rbx
31a76e 4a 8b 44 f6 08 mov    rax,QWORD PTR [rsi+r14*8+0x8]
31a773 41 0f 94 c7 sete   r15b
31a777 48 89 84 24 98 00 00 mov    QWORD PTR [rsp+0x98],rax
31a77e 00 
31a77f 48 3b d8 cmp    rbx,rax
31a782 eb 12 jmp    0x31a796
31a784 48 8b 44 24 30 mov    rax,QWORD PTR [rsp+0x30]
31a789 48 3b c7 cmp    rax,rdi
31a78c 74 2c je     0x31a7ba
31a78e 48 3b 84 24 98 00 00 cmp    rax,QWORD PTR [rsp+0x98]
31a795 00 
31a796 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a79b 0f 94 c3 sete   bl
31a79e e8 a9 ec ff ff call   0x31944c
31a7a3 84 db test   bl,bl
31a7a5 74 dd je     0x31a784
31a7a7 45 84 ff test   r15b,r15b
31a7aa 74 07 je     0x31a7b3
31a7ac 4a 89 2c f6 mov    QWORD PTR [rsi+r14*8],rbp
31a7b0 4c 8b e5 mov    r12,rbp
31a7b3 4e 89 64 f6 08 mov    QWORD PTR [rsi+r14*8+0x8],r12
31a7b8 eb 72 jmp    0x31a82c
31a7ba 45 84 ff test   r15b,r15b
31a7bd 74 04 je     0x31a7c3
31a7bf 4a 89 04 f6 mov    QWORD PTR [rsi+r14*8],rax
31a7c3 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a7c8 e8 cf a2 fb ff call   0x2d4a9c
31a7cd 48 8b c7 mov    rax,rdi
31a7d0 48 83 c4 48 add    rsp,0x48
31a7d4 41 5f pop    r15
31a7d6 41 5e pop    r14
31a7d8 41 5d pop    r13
31a7da 41 5c pop    r12
31a7dc 5f pop    rdi
31a7dd 5e pop    rsi
31a7de 5d pop    rbp
31a7df 5b pop    rbx
31a7e0 c3 ret
31a7e1 48 8d 4b 10 lea    rcx,[rbx+0x10]
31a7e5 e8 ba 0b fb ff call   0x2cb3a4
31a7ea 48 8b d0 mov    rdx,rax
31a7ed 49 8b cd mov    rcx,r13
31a7f0 e8 e7 01 00 00 call   0x31a9dc
31a7f5 4c 8b f0 mov    r14,rax
31a7f8 4d 03 f6 add    r14,r14
31a7fb 4e 8b 7c f6 08 mov    r15,QWORD PTR [rsi+r14*8+0x8]
31a800 49 3b df cmp    rbx,r15
31a803 eb 0d jmp    0x31a812
31a805 48 8b 44 24 30 mov    rax,QWORD PTR [rsp+0x30]
31a80a 48 3b c7 cmp    rax,rdi
31a80d 74 b0 je     0x31a7bf
31a80f 49 3b c7 cmp    rax,r15
31a812 48 8d 4c 24 20 lea    rcx,[rsp+0x20]
31a817 0f 94 c3 sete   bl
31a81a e8 2d ec ff ff call   0x31944c
31a81f 84 db test   bl,bl
31a821 74 e2 je     0x31a805
31a823 4a 89 2c f6 mov    QWORD PTR [rsi+r14*8],rbp
31a827 4a 89 6c f6 08 mov    QWORD PTR [rsi+r14*8+0x8],rbp
31a82c 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
31a831 48 3b df cmp    rbx,rdi
31a834 75 ab jne    0x31a7e1
31a836 eb 8b jmp    0x31a7c3

; full range 31abc8..31abfc
31abc8 40 53 rex push rbx
31abca 48 83 ec 20 sub    rsp,0x20
31abce 48 8b d9 mov    rbx,rcx
31abd1 e8 4e 27 fb ff call   0x2cd324
31abd6 48 8b 13 mov    rdx,QWORD PTR [rbx]
31abd9 48 8b c8 mov    rcx,rax
31abdc e8 b3 12 fd ff call   0x2ebe94
31abe1 48 8b 03 mov    rax,QWORD PTR [rbx]
31abe4 48 89 00 mov    QWORD PTR [rax],rax
31abe7 48 8b 03 mov    rax,QWORD PTR [rbx]
31abea 48 89 40 08 mov    QWORD PTR [rax+0x8],rax
31abee 48 c7 43 08 00 00 00 mov    QWORD PTR [rbx+0x8],0x0
31abf5 00 
31abf6 48 83 c4 20 add    rsp,0x20
31abfa 5b pop    rbx
31abfb c3 ret

; full range 31ac30..31ac64
31ac30 40 53 rex push rbx
31ac32 48 83 ec 20 sub    rsp,0x20
31ac36 48 8b d9 mov    rbx,rcx
31ac39 e8 e6 26 fb ff call   0x2cd324
31ac3e 48 8b 13 mov    rdx,QWORD PTR [rbx]
31ac41 48 8b c8 mov    rcx,rax
31ac44 e8 d3 12 fd ff call   0x2ebf1c
31ac49 48 8b 03 mov    rax,QWORD PTR [rbx]
31ac4c 48 89 00 mov    QWORD PTR [rax],rax
31ac4f 48 8b 03 mov    rax,QWORD PTR [rbx]
31ac52 48 89 40 08 mov    QWORD PTR [rax+0x8],rax
31ac56 48 c7 43 08 00 00 00 mov    QWORD PTR [rbx+0x8],0x0
31ac5d 00 
31ac5e 48 83 c4 20 add    rsp,0x20
31ac62 5b pop    rbx
31ac63 c3 ret

; full range 31ac74..31acb0
31ac74 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
31ac79 57 push   rdi
31ac7a 48 83 ec 20 sub    rsp,0x20
31ac7e 48 8b 39 mov    rdi,QWORD PTR [rcx]
31ac81 48 8b d9 mov    rbx,rcx
31ac84 48 3b 79 08 cmp    rdi,QWORD PTR [rcx+0x8]
31ac88 74 1b je     0x31aca5
31ac8a e8 95 26 fb ff call   0x2cd324
31ac8f 48 8b 53 08 mov    rdx,QWORD PTR [rbx+0x8]
31ac93 4c 8b c0 mov    r8,rax
31ac96 48 8b cf mov    rcx,rdi
31ac99 e8 ba 33 fc ff call   0x2de058
31ac9e 48 8b 03 mov    rax,QWORD PTR [rbx]
31aca1 48 89 43 08 mov    QWORD PTR [rbx+0x8],rax
31aca5 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
31acaa 48 83 c4 20 add    rsp,0x20
31acae 5f pop    rdi
31acaf c3 ret

; full range 2cd86c..2cd8b3
2cd86c 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
2cd871 57 push   rdi
2cd872 48 83 ec 20 sub    rsp,0x20
2cd876 e8 a1 fa ff ff call   0x2cd31c
2cd87b 48 8b f8 mov    rdi,rax
2cd87e 48 8b 18 mov    rbx,QWORD PTR [rax]
2cd881 e8 96 fa ff ff call   0x2cd31c
2cd886 4c 8b 43 08 mov    r8,QWORD PTR [rbx+0x8]
2cd88a 48 8b d0 mov    rdx,rax
2cd88d 48 8b cf mov    rcx,rdi
2cd890 e8 c7 dc ff ff call   0x2cb55c
2cd895 48 89 5b 08 mov    QWORD PTR [rbx+0x8],rbx
2cd899 48 89 1b mov    QWORD PTR [rbx],rbx
2cd89c 48 89 5b 10 mov    QWORD PTR [rbx+0x10],rbx
2cd8a0 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
2cd8a5 48 c7 47 08 00 00 00 mov    QWORD PTR [rdi+0x8],0x0
2cd8ac 00 
2cd8ad 48 83 c4 20 add    rsp,0x20
2cd8b1 5f pop    rdi
2cd8b2 c3 ret

; full range 3193cc..319409
3193cc 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
3193d1 57 push   rdi
3193d2 48 83 ec 20 sub    rsp,0x20
3193d6 48 8b 59 10 mov    rbx,QWORD PTR [rcx+0x10]
3193da 48 8b f9 mov    rdi,rcx
3193dd 48 8b 03 mov    rax,QWORD PTR [rbx]
3193e0 48 89 41 10 mov    QWORD PTR [rcx+0x10],rax
3193e4 48 8b 09 mov    rcx,QWORD PTR [rcx]
3193e7 e8 38 3f fb ff call   0x2cd324
3193ec 48 8b c8 mov    rcx,rax
3193ef 48 8b d3 mov    rdx,rbx
3193f2 e8 81 2b fd ff call   0x2ebf78
3193f7 48 8b 07 mov    rax,QWORD PTR [rdi]
3193fa 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
3193ff 48 ff 48 08 dec    QWORD PTR [rax+0x8]
319403 48 83 c4 20 add    rsp,0x20
319407 5f pop    rdi
319408 c3 ret

; full range 31944c..319489
31944c 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
319451 57 push   rdi
319452 48 83 ec 20 sub    rsp,0x20
319456 48 8b 59 10 mov    rbx,QWORD PTR [rcx+0x10]
31945a 48 8b f9 mov    rdi,rcx
31945d 48 8b 03 mov    rax,QWORD PTR [rbx]
319460 48 89 41 10 mov    QWORD PTR [rcx+0x10],rax
319464 48 8b 09 mov    rcx,QWORD PTR [rcx]
319467 e8 b8 3e fb ff call   0x2cd324
31946c 48 8b c8 mov    rcx,rax
31946f 48 8b d3 mov    rdx,rbx
319472 e8 45 2b fd ff call   0x2ebfbc
319477 48 8b 07 mov    rax,QWORD PTR [rdi]
31947a 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
31947f 48 ff 48 08 dec    QWORD PTR [rax+0x8]
319483 48 83 c4 20 add    rsp,0x20
319487 5f pop    rdi
319488 c3 ret

; full range 2ebe94..2ebed5
2ebe94 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
2ebe99 57 push   rdi
2ebe9a 48 83 ec 20 sub    rsp,0x20
2ebe9e 48 8b 42 08 mov    rax,QWORD PTR [rdx+0x8]
2ebea2 48 8b f9 mov    rdi,rcx
2ebea5 48 c7 00 00 00 00 00 mov    QWORD PTR [rax],0x0
2ebeac 48 8b 02 mov    rax,QWORD PTR [rdx]
2ebeaf 48 85 c0 test   rax,rax
2ebeb2 74 16 je     0x2ebeca
2ebeb4 48 8b 18 mov    rbx,QWORD PTR [rax]
2ebeb7 48 8b d0 mov    rdx,rax
2ebeba 48 8b cf mov    rcx,rdi
2ebebd e8 b6 00 00 00 call   0x2ebf78
2ebec2 48 8b c3 mov    rax,rbx
2ebec5 48 85 db test   rbx,rbx
2ebec8 75 ea jne    0x2ebeb4
2ebeca 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
2ebecf 48 83 c4 20 add    rsp,0x20
2ebed3 5f pop    rdi
2ebed4 c3 ret

; full range 2ebf1c..2ebf5d
2ebf1c 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
2ebf21 57 push   rdi
2ebf22 48 83 ec 20 sub    rsp,0x20
2ebf26 48 8b 42 08 mov    rax,QWORD PTR [rdx+0x8]
2ebf2a 48 8b f9 mov    rdi,rcx
2ebf2d 48 c7 00 00 00 00 00 mov    QWORD PTR [rax],0x0
2ebf34 48 8b 02 mov    rax,QWORD PTR [rdx]
2ebf37 48 85 c0 test   rax,rax
2ebf3a 74 16 je     0x2ebf52
2ebf3c 48 8b 18 mov    rbx,QWORD PTR [rax]
2ebf3f 48 8b d0 mov    rdx,rax
2ebf42 48 8b cf mov    rcx,rdi
2ebf45 e8 72 00 00 00 call   0x2ebfbc
2ebf4a 48 8b c3 mov    rax,rbx
2ebf4d 48 85 db test   rbx,rbx
2ebf50 75 ea jne    0x2ebf3c
2ebf52 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
2ebf57 48 83 c4 20 add    rsp,0x20
2ebf5b 5f pop    rdi
2ebf5c c3 ret

; full range 2de058..2de0a1
2de058 48 3b ca cmp    rcx,rdx
2de05b 74 43 je     0x2de0a0
2de05d 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
2de062 48 89 74 24 10 mov    QWORD PTR [rsp+0x10],rsi
2de067 57 push   rdi
2de068 48 83 ec 20 sub    rsp,0x20
2de06c 49 8b f0 mov    rsi,r8
2de06f 48 8b fa mov    rdi,rdx
2de072 48 8b d9 mov    rbx,rcx
2de075 48 8b cb mov    rcx,rbx
2de078 e8 27 d3 fe ff call   0x2cb3a4
2de07d 48 8b d0 mov    rdx,rax
2de080 48 8b ce mov    rcx,rsi
2de083 e8 e4 0b 00 00 call   0x2dec6c
2de088 48 83 c3 40 add    rbx,0x40
2de08c 48 3b df cmp    rbx,rdi
2de08f 75 e4 jne    0x2de075
2de091 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
2de096 48 8b 74 24 38 mov    rsi,QWORD PTR [rsp+0x38]
2de09b 48 83 c4 20 add    rsp,0x20
2de09f 5f pop    rdi
2de0a0 c3 ret

; full range 37c484..37c554
37c484 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
37c489 48 89 7c 24 10 mov    QWORD PTR [rsp+0x10],rdi
37c48e 55 push   rbp
37c48f 48 8b ec mov    rbp,rsp
37c492 48 83 ec 50 sub    rsp,0x50
37c496 49 8b d8 mov    rbx,r8
37c499 44 8b c2 mov    r8d,edx
37c49c 33 d2 xor    edx,edx
37c49e e8 a9 6e 01 00 call   0x39334c
37c4a3 89 45 28 mov    DWORD PTR [rbp+0x28],eax
37c4a6 48 8d 3d c3 68 08 00 lea    rdi,[rip+0x868c3]        # 0x402d70
37c4ad 8b 05 fd 68 08 00 mov    eax,DWORD PTR [rip+0x868fd]        # 0x402db0
37c4b3 a8 01 test   al,0x1
37c4b5 75 1d jne    0x37c4d4
37c4b7 83 c8 01 or     eax,0x1
37c4ba 48 8b cf mov    rcx,rdi
37c4bd 89 05 ed 68 08 00 mov    DWORD PTR [rip+0x868ed],eax        # 0x402db0
37c4c3 e8 d4 03 00 00 call   0x37c89c
37c4c8 48 8d 0d 95 47 05 00 lea    rcx,[rip+0x54795]        # 0x3d0c64
37c4cf e8 58 0e f5 ff call   0x2cd32c
37c4d4 4c 8d 45 28 lea    r8,[rbp+0x28]
37c4d8 48 8b cf mov    rcx,rdi
37c4db 48 8d 55 d0 lea    rdx,[rbp-0x30]
37c4df e8 88 24 00 00 call   0x37e96c
37c4e4 48 8d 55 d8 lea    rdx,[rbp-0x28]
37c4e8 48 8b cf mov    rcx,rdi
37c4eb e8 40 24 00 00 call   0x37e930
37c4f0 48 8b d0 mov    rdx,rax
37c4f3 48 8d 4d d0 lea    rcx,[rbp-0x30]
37c4f7 e8 38 00 f5 ff call   0x2cc534
37c4fc 84 c0 test   al,al
37c4fe 74 37 je     0x37c537
37c500 4c 8b c3 mov    r8,rbx
37c503 48 8d 55 28 lea    rdx,[rbp+0x28]
37c507 48 8d 4d e8 lea    rcx,[rbp-0x18]
37c50b e8 70 fd ff ff call   0x37c280
37c510 4c 8d 45 e8 lea    r8,[rbp-0x18]
37c514 48 8b cf mov    rcx,rdi
37c517 48 8d 55 d8 lea    rdx,[rbp-0x28]
37c51b e8 9c 24 00 00 call   0x37e9bc
37c520 4c 8d 45 28 lea    r8,[rbp+0x28]
37c524 48 8b cf mov    rcx,rdi
37c527 48 8d 55 d8 lea    rdx,[rbp-0x28]
37c52b e8 3c 24 00 00 call   0x37e96c
37c530 48 8b 08 mov    rcx,QWORD PTR [rax]
37c533 48 89 4d d0 mov    QWORD PTR [rbp-0x30],rcx
37c537 48 8d 4d d0 lea    rcx,[rbp-0x30]
37c53b e8 8c 04 00 00 call   0x37c9cc
37c540 48 8b 5c 24 60 mov    rbx,QWORD PTR [rsp+0x60]
37c545 48 83 c0 04 add    rax,0x4
37c549 48 8b 7c 24 68 mov    rdi,QWORD PTR [rsp+0x68]
37c54e 48 83 c4 50 add    rsp,0x50
37c552 5d pop    rbp
37c553 c3 ret

; full range 37c984..37c9c9
37c984 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
37c989 57 push   rdi
37c98a 48 83 ec 20 sub    rsp,0x20
37c98e 48 8b da mov    rbx,rdx
37c991 48 8b f9 mov    rdi,rcx
37c994 e8 af ff ff ff call   0x37c948
37c999 48 8d 53 30 lea    rdx,[rbx+0x30]
37c99d 48 8d 4f 30 lea    rcx,[rdi+0x30]
37c9a1 e8 3e 82 f5 ff call   0x2d4be4
37c9a6 0f 10 43 50 movups xmm0,XMMWORD PTR [rbx+0x50]
37c9aa f3 0f 7f 47 50 movdqu XMMWORD PTR [rdi+0x50],xmm0
37c9af 8a 43 60 mov    al,BYTE PTR [rbx+0x60]
37c9b2 88 47 60 mov    BYTE PTR [rdi+0x60],al
37c9b5 8b 43 64 mov    eax,DWORD PTR [rbx+0x64]
37c9b8 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
37c9bd 89 47 64 mov    DWORD PTR [rdi+0x64],eax
37c9c0 48 8b c7 mov    rax,rdi
37c9c3 48 83 c4 20 add    rsp,0x20
37c9c7 5f pop    rdi
37c9c8 c3 ret

; full range 37c948..37c981
37c948 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
37c94d 57 push   rdi
37c94e 48 83 ec 20 sub    rsp,0x20
37c952 48 8b da mov    rbx,rdx
37c955 48 8b f9 mov    rdi,rcx
37c958 e8 87 82 f5 ff call   0x2d4be4
37c95d 8b 43 20 mov    eax,DWORD PTR [rbx+0x20]
37c960 89 47 20 mov    DWORD PTR [rdi+0x20],eax
37c963 f2 0f 10 43 24 movsd  xmm0,QWORD PTR [rbx+0x24]
37c968 f2 0f 11 47 24 movsd  QWORD PTR [rdi+0x24],xmm0
37c96d 8a 43 2c mov    al,BYTE PTR [rbx+0x2c]
37c970 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
37c975 88 47 2c mov    BYTE PTR [rdi+0x2c],al
37c978 48 8b c7 mov    rax,rdi
37c97b 48 83 c4 20 add    rsp,0x20
37c97f 5f pop    rdi
37c980 c3 ret

; full range 335e48..335ea6
335e48 40 53 rex push rbx
335e4a 48 83 ec 50 sub    rsp,0x50
335e4e 0f 29 74 24 40 movaps XMMWORD PTR [rsp+0x40],xmm6
335e53 41 8a d9 mov    bl,r9b
335e56 0f 29 7c 24 30 movaps XMMWORD PTR [rsp+0x30],xmm7
335e5b 0f 28 f2 movaps xmm6,xmm2
335e5e 44 0f 29 44 24 20 movaps XMMWORD PTR [rsp+0x20],xmm8
335e64 0f 28 f9 movaps xmm7,xmm1
335e67 44 0f 28 c0 movaps xmm8,xmm0
335e6b e8 3c c8 05 00 call   0x3926ac
335e70 f3 0f 10 94 24 80 00 movss  xmm2,DWORD PTR [rsp+0x80]
335e77 00 00 
335e79 f3 0f 59 50 10 mulss  xmm2,DWORD PTR [rax+0x10]
335e7e 84 db test   bl,bl
335e80 75 03 jne    0x335e85
335e82 0f 28 f7 movaps xmm6,xmm7
335e85 0f 28 ce movaps xmm1,xmm6
335e88 41 0f 28 c0 movaps xmm0,xmm8
335e8c 0f 28 74 24 40 movaps xmm6,XMMWORD PTR [rsp+0x40]
335e91 0f 28 7c 24 30 movaps xmm7,XMMWORD PTR [rsp+0x30]
335e96 44 0f 28 44 24 20 movaps xmm8,XMMWORD PTR [rsp+0x20]
335e9c 48 83 c4 50 add    rsp,0x50
335ea0 5b pop    rbx
335ea1 e9 b6 f7 ff ff jmp    0x33565c

; full range 3364d4..336559
3364d4 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
3364d9 57 push   rdi
3364da 48 83 ec 20 sub    rsp,0x20
3364de 8b da mov    ebx,edx
3364e0 48 8b f9 mov    rdi,rcx
3364e3 e8 b8 4e fa ff call   0x2db3a0
3364e8 f3 0f 10 0d f0 71 f5 movss  xmm1,DWORD PTR [rip+0xfffffffffff571f0]        # 0x28d6e0
3364ef ff 
3364f0 0f 57 c0 xorps  xmm0,xmm0
3364f3 0f b6 c3 movzx  eax,bl
3364f6 f3 48 0f 2a c0 cvtsi2ss xmm0,rax
3364fb 8b c3 mov    eax,ebx
3364fd c1 e8 08 shr    eax,0x8
336500 0f b6 c0 movzx  eax,al
336503 f3 0f 59 c1 mulss  xmm0,xmm1
336507 f3 0f 11 07 movss  DWORD PTR [rdi],xmm0
33650b 0f 57 c0 xorps  xmm0,xmm0
33650e f3 48 0f 2a c0 cvtsi2ss xmm0,rax
336513 8b c3 mov    eax,ebx
336515 c1 e8 10 shr    eax,0x10
336518 0f b6 c0 movzx  eax,al
33651b c1 eb 18 shr    ebx,0x18
33651e f3 0f 59 c1 mulss  xmm0,xmm1
336522 f3 0f 11 47 04 movss  DWORD PTR [rdi+0x4],xmm0
336527 0f 57 c0 xorps  xmm0,xmm0
33652a f3 48 0f 2a c0 cvtsi2ss xmm0,rax
33652f 8b c3 mov    eax,ebx
336531 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
336536 f3 0f 59 c1 mulss  xmm0,xmm1
33653a f3 0f 11 47 08 movss  DWORD PTR [rdi+0x8],xmm0
33653f 0f 57 c0 xorps  xmm0,xmm0
336542 f3 48 0f 2a c0 cvtsi2ss xmm0,rax
336547 48 8b c7 mov    rax,rdi
33654a f3 0f 59 c1 mulss  xmm0,xmm1
33654e f3 0f 11 47 0c movss  DWORD PTR [rdi+0xc],xmm0
336553 48 83 c4 20 add    rsp,0x20
336557 5f pop    rdi
336558 c3 ret

; full range 378940..37896d
378940 40 53 rex push rbx
378942 48 83 ec 20 sub    rsp,0x20
378946 f3 0f 10 51 0c movss  xmm2,DWORD PTR [rcx+0xc]
37894b 48 8b da mov    rbx,rdx
37894e f3 0f 10 49 08 movss  xmm1,DWORD PTR [rcx+0x8]
378953 f3 0f 5c 51 04 subss  xmm2,DWORD PTR [rcx+0x4]
378958 f3 0f 5c 09 subss  xmm1,DWORD PTR [rcx]
37895c 48 8b ca mov    rcx,rdx
37895f e8 dc 39 f5 ff call   0x2cc340
378964 48 8b c3 mov    rax,rbx
378967 48 83 c4 20 add    rsp,0x20
37896b 5b pop    rbx
37896c c3 ret

; full range 2d2aa4..2d2b64
2d2aa4 48 8b c4 mov    rax,rsp
2d2aa7 48 89 58 18 mov    QWORD PTR [rax+0x18],rbx
2d2aab 48 89 70 20 mov    QWORD PTR [rax+0x20],rsi
2d2aaf 48 89 50 10 mov    QWORD PTR [rax+0x10],rdx
2d2ab3 48 89 48 08 mov    QWORD PTR [rax+0x8],rcx
2d2ab7 57 push   rdi
2d2ab8 48 83 ec 20 sub    rsp,0x20
2d2abc 48 8d 48 08 lea    rcx,[rax+0x8]
2d2ac0 49 8b f0 mov    rsi,r8
2d2ac3 e8 10 bb ff ff call   0x2ce5d8
2d2ac8 48 8d 4c 24 38 lea    rcx,[rsp+0x38]
2d2acd 48 8b d8 mov    rbx,rax
2d2ad0 e8 03 bb ff ff call   0x2ce5d8
2d2ad5 33 c9 xor    ecx,ecx
2d2ad7 4c 8b d0 mov    r10,rax
2d2ada 4c 2b d3 sub    r10,rbx
2d2add 4c 8b c8 mov    r9,rax
2d2ae0 49 83 c2 07 add    r10,0x7
2d2ae4 49 8b d2 mov    rdx,r10
2d2ae7 48 c1 ea 03 shr    rdx,0x3
2d2aeb 44 8d 59 08 lea    r11d,[rcx+0x8]
2d2aef 48 3b d8 cmp    rbx,rax
2d2af2 48 0f 47 d1 cmova  rdx,rcx
2d2af6 48 83 fa 02 cmp    rdx,0x2
2d2afa 72 53 jb     0x2d2b4f
2d2afc 33 c0 xor    eax,eax
2d2afe 49 8b ca mov    rcx,r10
2d2b01 48 83 e1 f8 and    rcx,0xfffffffffffffff8
2d2b05 49 3b d9 cmp    rbx,r9
2d2b08 48 0f 47 c8 cmova  rcx,rax
2d2b0c 48 3b de cmp    rbx,rsi
2d2b0f 77 0c ja     0x2d2b1d
2d2b11 48 8d 43 f8 lea    rax,[rbx-0x8]
2d2b15 48 03 c1 add    rax,rcx
2d2b18 48 3b c6 cmp    rax,rsi
2d2b1b 73 32 jae    0x2d2b4f
2d2b1d 4c 8b 06 mov    r8,QWORD PTR [rsi]
2d2b20 33 c9 xor    ecx,ecx
2d2b22 49 83 e2 f0 and    r10,0xfffffffffffffff0
2d2b26 49 3b d9 cmp    rbx,r9
2d2b29 48 8b fb mov    rdi,rbx
2d2b2c 4c 0f 47 d1 cmova  r10,rcx
2d2b30 33 d2 xor    edx,edx
2d2b32 49 8b c2 mov    rax,r10
2d2b35 49 f7 f3 div    r11
2d2b38 49 03 da add    rbx,r10
2d2b3b 48 8b c8 mov    rcx,rax
2d2b3e 49 8b c0 mov    rax,r8
2d2b41 f3 48 ab rep stos QWORD PTR [rdi],rax
2d2b44 eb 09 jmp    0x2d2b4f
2d2b46 48 8b 06 mov    rax,QWORD PTR [rsi]
2d2b49 48 89 03 mov    QWORD PTR [rbx],rax
2d2b4c 49 03 db add    rbx,r11
2d2b4f 49 3b d9 cmp    rbx,r9
2d2b52 75 f2 jne    0x2d2b46
2d2b54 48 8b 5c 24 40 mov    rbx,QWORD PTR [rsp+0x40]
2d2b59 48 8b 74 24 48 mov    rsi,QWORD PTR [rsp+0x48]
2d2b5e 48 83 c4 20 add    rsp,0x20
2d2b62 5f pop    rdi
2d2b63 c3 ret

; full range 2edb28..2edc09
2edb28 48 8b c4 mov    rax,rsp
2edb2b 48 89 58 18 mov    QWORD PTR [rax+0x18],rbx
2edb2f 48 89 50 10 mov    QWORD PTR [rax+0x10],rdx
2edb33 48 89 48 08 mov    QWORD PTR [rax+0x8],rcx
2edb37 56 push   rsi
2edb38 57 push   rdi
2edb39 41 56 push   r14
2edb3b 48 83 ec 20 sub    rsp,0x20
2edb3f 48 8d 48 08 lea    rcx,[rax+0x8]
2edb43 4d 8b f0 mov    r14,r8
2edb46 e8 8d 0a fe ff call   0x2ce5d8
2edb4b 48 8d 4c 24 48 lea    rcx,[rsp+0x48]
2edb50 48 8b d8 mov    rbx,rax
2edb53 e8 80 0a fe ff call   0x2ce5d8
2edb58 48 8b f0 mov    rsi,rax
2edb5b e8 44 0a fe ff call   0x2ce5a4
2edb60 84 c0 test   al,al
2edb62 75 20 jne    0x2edb84
2edb64 49 8b ce mov    rcx,r14
2edb67 e8 f4 31 fe ff call   0x2d0d60
2edb6c 84 c0 test   al,al
2edb6e 74 14 je     0x2edb84
2edb70 48 2b f3 sub    rsi,rbx
2edb73 48 8b cb mov    rcx,rbx
2edb76 48 c1 fe 02 sar    rsi,0x2
2edb7a 48 8b d6 mov    rdx,rsi
2edb7d e8 f2 2b fe ff call   0x2d0774
2edb82 eb 77 jmp    0x2edbfb
2edb84 33 c0 xor    eax,eax
2edb86 4c 8b c6 mov    r8,rsi
2edb89 4c 2b c3 sub    r8,rbx
2edb8c 49 83 c0 03 add    r8,0x3
2edb90 49 8b c8 mov    rcx,r8
2edb93 48 c1 e9 02 shr    rcx,0x2
2edb97 44 8d 48 04 lea    r9d,[rax+0x4]
2edb9b 48 3b de cmp    rbx,rsi
2edb9e 48 0f 47 c8 cmova  rcx,rax
2edba2 49 3b c9 cmp    rcx,r9
2edba5 72 4f jb     0x2edbf6
2edba7 49 8b c8 mov    rcx,r8
2edbaa 48 83 e1 fc and    rcx,0xfffffffffffffffc
2edbae 48 3b de cmp    rbx,rsi
2edbb1 48 0f 47 c8 cmova  rcx,rax
2edbb5 49 3b de cmp    rbx,r14
2edbb8 77 0c ja     0x2edbc6
2edbba 48 8d 43 fc lea    rax,[rbx-0x4]
2edbbe 48 03 c1 add    rax,rcx
2edbc1 49 3b c6 cmp    rax,r14
2edbc4 73 30 jae    0x2edbf6
2edbc6 49 63 3e movsxd rdi,DWORD PTR [r14]
2edbc9 33 c0 xor    eax,eax
2edbcb 49 83 e0 f0 and    r8,0xfffffffffffffff0
2edbcf 48 3b de cmp    rbx,rsi
2edbd2 4c 0f 47 c0 cmova  r8,rax
2edbd6 33 d2 xor    edx,edx
2edbd8 49 8b c0 mov    rax,r8
2edbdb 49 f7 f1 div    r9
2edbde 48 8b c8 mov    rcx,rax
2edbe1 48 8b c7 mov    rax,rdi
2edbe4 48 8b fb mov    rdi,rbx
2edbe7 49 03 d8 add    rbx,r8
2edbea f3 ab rep stos DWORD PTR [rdi],eax
2edbec eb 08 jmp    0x2edbf6
2edbee 41 8b 06 mov    eax,DWORD PTR [r14]
2edbf1 89 03 mov    DWORD PTR [rbx],eax
2edbf3 49 03 d9 add    rbx,r9
2edbf6 48 3b de cmp    rbx,rsi
2edbf9 75 f3 jne    0x2edbee
2edbfb 48 8b 5c 24 50 mov    rbx,QWORD PTR [rsp+0x50]
2edc00 48 83 c4 20 add    rsp,0x20
2edc04 41 5e pop    r14
2edc06 5f pop    rdi
2edc07 5e pop    rsi
2edc08 c3 ret

; full range 36cff8..36d038
36cff8 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
36cffd 57 push   rdi
36cffe 48 83 ec 20 sub    rsp,0x20
36d002 48 8b f9 mov    rdi,rcx
36d005 49 8b d8 mov    rbx,r8
36d008 48 8b ca mov    rcx,rdx
36d00b e8 94 e3 f5 ff call   0x2cb3a4
36d010 48 8b cb mov    rcx,rbx
36d013 48 63 10 movsxd rdx,DWORD PTR [rax]
36d016 48 89 17 mov    QWORD PTR [rdi],rdx
36d019 e8 86 e3 f5 ff call   0x2cb3a4
36d01e 48 8b d0 mov    rdx,rax
36d021 48 8d 4f 08 lea    rcx,[rdi+0x8]
36d025 e8 ce 95 fc ff call   0x3365f8
36d02a 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
36d02f 48 8b c7 mov    rax,rdi
36d032 48 83 c4 20 add    rsp,0x20
36d036 5f pop    rdi
36d037 c3 ret

; full range 36df3c..36df5a
36df3c 40 53 rex push rbx
36df3e 48 83 ec 20 sub    rsp,0x20
36df42 48 8b d9 mov    rbx,rcx
36df45 e8 16 66 f6 ff call   0x2d4560
36df4a 48 8b c3 mov    rax,rbx
36df4d c7 43 20 01 00 00 00 mov    DWORD PTR [rbx+0x20],0x1
36df54 48 83 c4 20 add    rsp,0x20
36df58 5b pop    rbx
36df59 c3 ret

; full range 3365f8..336621
3365f8 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
3365fd 57 push   rdi
3365fe 48 83 ec 20 sub    rsp,0x20
336602 48 8b da mov    rbx,rdx
336605 48 8b f9 mov    rdi,rcx
336608 e8 87 db f9 ff call   0x2d4194
33660d 8b 43 20 mov    eax,DWORD PTR [rbx+0x20]
336610 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
336615 89 47 20 mov    DWORD PTR [rdi+0x20],eax
336618 48 8b c7 mov    rax,rdi
33661b 48 83 c4 20 add    rsp,0x20
33661f 5f pop    rdi
336620 c3 ret

; full range 36dd78..36dded
36dd78 40 53 rex push rbx
36dd7a 55 push   rbp
36dd7b 56 push   rsi
36dd7c 57 push   rdi
36dd7d 48 83 ec 28 sub    rsp,0x28
36dd81 49 8b d8 mov    rbx,r8
36dd84 48 8b e9 mov    rbp,rcx
36dd87 e8 d4 62 f6 ff call   0x2d4060
36dd8c 48 8b d3 mov    rdx,rbx
36dd8f 48 8d 4d 08 lea    rcx,[rbp+0x8]
36dd93 e8 58 00 00 00 call   0x36ddf0
36dd98 48 8b d3 mov    rdx,rbx
36dd9b 48 8d 4d 18 lea    rcx,[rbp+0x18]
36dd9f e8 60 0f f6 ff call   0x2ced04
36dda4 48 8b cd mov    rcx,rbp
36dda7 48 c7 45 30 07 00 00 mov    QWORD PTR [rbp+0x30],0x7
36ddae 00 
36ddaf 48 c7 45 38 08 00 00 mov    QWORD PTR [rbp+0x38],0x8
36ddb6 00 
36ddb7 e8 68 f5 f5 ff call   0x2cd324
36ddbc 48 8d 54 24 50 lea    rdx,[rsp+0x50]
36ddc1 48 8d 4d 08 lea    rcx,[rbp+0x8]
36ddc5 c7 00 00 00 80 3f mov    DWORD PTR [rax],0x3f800000
36ddcb e8 d0 9b f6 ff call   0x2d79a0
36ddd0 ba 10 00 00 00 mov    edx,0x10
36ddd5 48 8d 4d 18 lea    rcx,[rbp+0x18]
36ddd9 4c 8b 00 mov    r8,QWORD PTR [rax]
36dddc e8 bf 8a f6 ff call   0x2d68a0
36dde1 48 8b c5 mov    rax,rbp
36dde4 48 83 c4 28 add    rsp,0x28
36dde8 5f pop    rdi
36dde9 5e pop    rsi
36ddea 5d pop    rbp
36ddeb 5b pop    rbx
36ddec c3 ret

; full range 36dc30..36dd75
36dc30 48 89 5c 24 10 mov    QWORD PTR [rsp+0x10],rbx
36dc35 48 89 74 24 18 mov    QWORD PTR [rsp+0x18],rsi
36dc3a 55 push   rbp
36dc3b 57 push   rdi
36dc3c 41 54 push   r12
36dc3e 41 56 push   r14
36dc40 41 57 push   r15
36dc42 48 8b ec mov    rbp,rsp
36dc45 48 83 ec 40 sub    rsp,0x40
36dc49 48 8b f9 mov    rdi,rcx
36dc4c 4d 8b e0 mov    r12,r8
36dc4f 49 8b c8 mov    rcx,r8
36dc52 48 8b f2 mov    rsi,rdx
36dc55 e8 4a d7 f5 ff call   0x2cb3a4
36dc5a 48 8b d0 mov    rdx,rax
36dc5d 48 8b cf mov    rcx,rdi
36dc60 48 8b d8 mov    rbx,rax
36dc63 e8 3c cb f7 ff call   0x2ea7a4
36dc68 4c 8b c8 mov    r9,rax
36dc6b 48 8d 55 e0 lea    rdx,[rbp-0x20]
36dc6f 4c 8b c3 mov    r8,rbx
36dc72 48 8b cf mov    rcx,rdi
36dc75 4c 8b f8 mov    r15,rax
36dc78 e8 7b e1 f7 ff call   0x2ebdf8
36dc7d 4c 8b 45 e8 mov    r8,QWORD PTR [rbp-0x18]
36dc81 4c 8d 77 08 lea    r14,[rdi+0x8]
36dc85 4d 85 c0 test   r8,r8
36dc88 74 24 je     0x36dcae
36dc8a 48 8d 55 48 lea    rdx,[rbp+0x48]
36dc8e 49 8b ce mov    rcx,r14
36dc91 e8 6e 98 f6 ff call   0x2d7504
36dc96 4c 8d 45 30 lea    r8,[rbp+0x30]
36dc9a c6 45 30 00 mov    BYTE PTR [rbp+0x30],0x0
36dc9e 48 8b d0 mov    rdx,rax
36dca1 48 8b ce mov    rcx,rsi
36dca4 e8 5f 11 f6 ff call   0x2cee08
36dca9 e9 ab 00 00 00 jmp    0x36dd59
36dcae 48 8b cf mov    rcx,rdi
36dcb1 e8 aa 1d 00 00 call   0x36fa60
36dcb6 49 8b cc mov    rcx,r12
36dcb9 e8 e6 d6 f5 ff call   0x2cb3a4
36dcbe 49 8b ce mov    rcx,r14
36dcc1 48 8b d8 mov    rbx,rax
36dcc4 e8 5b f6 f5 ff call   0x2cd324
36dcc9 48 8b d0 mov    rdx,rax
36dccc 48 8d 4d f0 lea    rcx,[rbp-0x10]
36dcd0 4c 8b c3 mov    r8,rbx
36dcd3 e8 60 f3 ff ff call   0x36d038
36dcd8 48 8b cf mov    rcx,rdi
36dcdb e8 64 90 f6 ff call   0x2d6d44
36dce0 84 c0 test   al,al
36dce2 74 2f je     0x36dd13
36dce4 48 8b cf mov    rcx,rdi
36dce7 e8 cc 20 00 00 call   0x36fdb8
36dcec 48 8b 4d f8 mov    rcx,QWORD PTR [rbp-0x8]
36dcf0 48 83 c1 10 add    rcx,0x10
36dcf4 e8 ab d6 f5 ff call   0x2cb3a4
36dcf9 4c 8b c0 mov    r8,rax
36dcfc 48 8d 55 e0 lea    rdx,[rbp-0x20]
36dd00 4d 8b cf mov    r9,r15
36dd03 48 8b cf mov    rcx,rdi
36dd06 e8 ed e0 f7 ff call   0x2ebdf8
36dd0b 0f 10 00 movups xmm0,XMMWORD PTR [rax]
36dd0e f3 0f 7f 45 e0 movdqu XMMWORD PTR [rbp-0x20],xmm0
36dd13 48 8d 4d f0 lea    rcx,[rbp-0x10]
36dd17 e8 1c 99 f6 ff call   0x2d7638
36dd1c 4c 8b 45 e0 mov    r8,QWORD PTR [rbp-0x20]
36dd20 4c 8b c8 mov    r9,rax
36dd23 49 8b d7 mov    rdx,r15
36dd26 48 8b cf mov    rcx,rdi
36dd29 e8 fa 95 f6 ff call   0x2d7328
36dd2e 4c 8b c0 mov    r8,rax
36dd31 48 8d 55 48 lea    rdx,[rbp+0x48]
36dd35 49 8b ce mov    rcx,r14
36dd38 e8 c7 97 f6 ff call   0x2d7504
36dd3d 4c 8d 45 30 lea    r8,[rbp+0x30]
36dd41 c6 45 30 01 mov    BYTE PTR [rbp+0x30],0x1
36dd45 48 8b d0 mov    rdx,rax
36dd48 48 8b ce mov    rcx,rsi
36dd4b e8 b8 10 f6 ff call   0x2cee08
36dd50 48 8d 4d f0 lea    rcx,[rbp-0x10]
36dd54 e8 cb 02 00 00 call   0x36e024
36dd59 4c 8d 5c 24 40 lea    r11,[rsp+0x40]
36dd5e 48 8b c6 mov    rax,rsi
36dd61 49 8b 5b 38 mov    rbx,QWORD PTR [r11+0x38]
36dd65 49 8b 73 40 mov    rsi,QWORD PTR [r11+0x40]
36dd69 49 8b e3 mov    rsp,r11
36dd6c 41 5f pop    r15
36dd6e 41 5e pop    r14
36dd70 41 5c pop    r12
36dd72 5f pop    rdi
36dd73 5d pop    rbp
36dd74 c3 ret

; full range 370118..370168
370118 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
37011d 48 89 74 24 10 mov    QWORD PTR [rsp+0x10],rsi
370122 57 push   rdi
370123 48 83 ec 20 sub    rsp,0x20
370127 48 8b f2 mov    rsi,rdx
37012a 49 8b d8 mov    rbx,r8
37012d 49 8b d0 mov    rdx,r8
370130 48 8b f9 mov    rdi,rcx
370133 e8 6c a6 f7 ff call   0x2ea7a4
370138 4c 8b c0 mov    r8,rax
37013b 48 8b d3 mov    rdx,rbx
37013e 48 8b cf mov    rcx,rdi
370141 e8 1e d4 ff ff call   0x36d564
370146 4c 8b c0 mov    r8,rax
370149 48 8d 4f 08 lea    rcx,[rdi+0x8]
37014d 48 8b d6 mov    rdx,rsi
370150 e8 af 73 f6 ff call   0x2d7504
370155 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
37015a 48 8b c6 mov    rax,rsi
37015d 48 8b 74 24 38 mov    rsi,QWORD PTR [rsp+0x38]
370162 48 83 c4 20 add    rsp,0x20
370166 5f pop    rdi
370167 c3 ret

; full range 370168..37019c
370168 48 89 5c 24 08 mov    QWORD PTR [rsp+0x8],rbx
37016d 57 push   rdi
37016e 48 83 ec 20 sub    rsp,0x20
370172 48 8b d9 mov    rbx,rcx
370175 48 8b fa mov    rdi,rdx
370178 49 8b c8 mov    rcx,r8
37017b e8 24 b2 f5 ff call   0x2cb3a4
370180 4c 8b c0 mov    r8,rax
370183 48 8b d7 mov    rdx,rdi
370186 48 8b cb mov    rcx,rbx
370189 e8 a2 da ff ff call   0x36dc30
37018e 48 8b 5c 24 30 mov    rbx,QWORD PTR [rsp+0x30]
370193 48 8b c7 mov    rax,rdi
370196 48 83 c4 20 add    rsp,0x20
37019a 5f pop    rdi
37019b c3 ret

; full range 36e1cc..36e1fa
36e1cc 40 53 rex push rbx
36e1ce 48 83 ec 30 sub    rsp,0x30
36e1d2 48 8b d9 mov    rbx,rcx
36e1d5 48 8b ca mov    rcx,rdx
36e1d8 e8 c7 d1 f5 ff call   0x2cb3a4
36e1dd 4c 8b c0 mov    r8,rax
36e1e0 48 8d 54 24 20 lea    rdx,[rsp+0x20]
36e1e5 48 8b cb mov    rcx,rbx
36e1e8 e8 db f4 ff ff call   0x36d6c8
36e1ed 48 8b 00 mov    rax,QWORD PTR [rax]
36e1f0 48 83 c0 18 add    rax,0x18
36e1f4 48 83 c4 30 add    rsp,0x30
36e1f8 5b pop    rbx
36e1f9 c3 ret

; full range 36ff84..36ffec
36ff84 48 89 5c 24 10 mov    QWORD PTR [rsp+0x10],rbx
36ff89 57 push   rdi
36ff8a 48 83 ec 20 sub    rsp,0x20
36ff8e 48 83 79 10 00 cmp    QWORD PTR [rcx+0x10],0x0
36ff93 48 8b d9 mov    rbx,rcx
36ff96 74 49 je     0x36ffe1
36ff98 e8 73 7e f6 ff call   0x2d7e10
36ff9d 48 c1 e8 03 shr    rax,0x3
36ffa1 48 3b 43 10 cmp    rax,QWORD PTR [rbx+0x10]
36ffa5 76 14 jbe    0x36ffbb
36ffa7 48 8b 53 08 mov    rdx,QWORD PTR [rbx+0x8]
36ffab 48 8b cb mov    rcx,rbx
36ffae 4c 8b c2 mov    r8,rdx
36ffb1 48 8b 12 mov    rdx,QWORD PTR [rdx]
36ffb4 e8 5f fe ff ff call   0x36fe18
36ffb9 eb 26 jmp    0x36ffe1
36ffbb 48 8d 4b 08 lea    rcx,[rbx+0x8]
36ffbf e8 28 00 00 00 call   0x36ffec
36ffc4 48 8d 54 24 30 lea    rdx,[rsp+0x30]
36ffc9 48 8b cb mov    rcx,rbx
36ffcc e8 9b 79 f6 ff call   0x2d796c
36ffd1 48 8b 53 20 mov    rdx,QWORD PTR [rbx+0x20]
36ffd5 4c 8b c0 mov    r8,rax
36ffd8 48 8b 4b 18 mov    rcx,QWORD PTR [rbx+0x18]
36ffdc e8 c3 2a f6 ff call   0x2d2aa4
36ffe1 48 8b 5c 24 38 mov    rbx,QWORD PTR [rsp+0x38]
36ffe6 48 83 c4 20 add    rsp,0x20
36ffea 5f pop    rdi
36ffeb c3 ret

; full range 31ac64..31ac72
31ac64 48 8b 01 mov    rax,QWORD PTR [rcx]
31ac67 48 3b 41 08 cmp    rax,QWORD PTR [rcx+0x8]
31ac6b 74 04 je     0x31ac71
31ac6d 48 89 41 08 mov    QWORD PTR [rcx+0x8],rax
31ac71 c3 ret

; full range 2ef6c4..2ef6e2
2ef6c4 f3 0f 10 01 movss  xmm0,DWORD PTR [rcx]
2ef6c8 0f 2e 02 ucomiss xmm0,DWORD PTR [rdx]
2ef6cb 7a 12 jp     0x2ef6df
2ef6cd 75 10 jne    0x2ef6df
2ef6cf f3 0f 10 41 04 movss  xmm0,DWORD PTR [rcx+0x4]
2ef6d4 0f 2e 42 04 ucomiss xmm0,DWORD PTR [rdx+0x4]
2ef6d8 7a 05 jp     0x2ef6df
2ef6da 75 03 jne    0x2ef6df
2ef6dc 32 c0 xor    al,al
2ef6de c3 ret
2ef6df b0 01 mov    al,0x1
2ef6e1 c3 ret

; full range 3701ac..3701cf
3701ac 48 8b 51 08 mov    rdx,QWORD PTR [rcx+0x8]
3701b0 48 b8 ab aa aa aa aa movabs rax,0x2aaaaaaaaaaaaaab
3701b7 aa aa 2a 
3701ba 48 2b 11 sub    rdx,QWORD PTR [rcx]
3701bd 48 f7 ea imul   rdx
3701c0 48 c1 fa 02 sar    rdx,0x2
3701c4 48 8b c2 mov    rax,rdx
3701c7 48 c1 e8 3f shr    rax,0x3f
3701cb 48 03 c2 add    rax,rdx
3701ce c3 ret

; full range 36e1fc..36e208
36e1fc 48 8b 01 mov    rax,QWORD PTR [rcx]
36e1ff 48 8d 14 52 lea    rdx,[rdx+rdx*2]
36e203 48 8d 04 d0 lea    rax,[rax+rdx*8]
36e207 c3 ret
