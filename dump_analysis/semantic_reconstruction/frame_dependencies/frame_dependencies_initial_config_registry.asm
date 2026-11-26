; pdata function 0x2b2718..0x2b2ba6 unwind=0x3d28a0
2b2718  40 55                          rex push rbp
2b271a  53                             push   rbx
2b271b  56                             push   rsi
2b271c  48 8d ac 24 60 fd ff ff        lea    rbp,[rsp-0x2a0]
2b2724  48 81 ec a0 03 00 00           sub    rsp,0x3a0
2b272b  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
2b2732  e8 6d 8c 01 00                 call   0x2cb3a4
2b2737  48 8d 55 f6                    lea    rdx,[rbp-0xa]
2b273b  48 8b d8                       mov    rbx,rax
2b273e  48 8d 8d c8 02 00 00           lea    rcx,[rbp+0x2c8]
2b2745  e8 fa 91 02 00                 call   0x2db944 ; STRING getter=0x2db944 DisplayName
2b274a  48 8b c8                       mov    rcx,rax
2b274d  e8 ba b6 01 00                 call   0x2cde0c
2b2752  48 8b d0                       mov    rdx,rax
2b2755  48 8d 4d 10                    lea    rcx,[rbp+0x10]
2b2759  e8 6e 9b 01 00                 call   0x2cc2cc
2b275e  0f 57 d2                       xorps  xmm2,xmm2
2b2761  c7 45 30 03 00 00 00           mov    DWORD PTR [rbp+0x30],0x3
2b2768  0f 57 c9                       xorps  xmm1,xmm1
2b276b  48 8d 4d 34                    lea    rcx,[rbp+0x34]
2b276f  e8 cc 9b 01 00                 call   0x2cc340
2b2774  33 f6                          xor    esi,esi
2b2776  48 8d 55 90                    lea    rdx,[rbp-0x70]
2b277a  48 8d 8d d0 02 00 00           lea    rcx,[rbp+0x2d0]
2b2781  40 88 75 3c                    mov    BYTE PTR [rbp+0x3c],sil
2b2785  e8 d6 91 02 00                 call   0x2db960 ; STRING getter=0x2db960 Beamer
2b278a  48 8b c8                       mov    rcx,rax
2b278d  e8 7e a9 02 00                 call   0x2dd110
2b2792  48 8b d0                       mov    rdx,rax
2b2795  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2b2799  e8 2e 9b 01 00                 call   0x2cc2cc
2b279e  0f 57 d2                       xorps  xmm2,xmm2
2b27a1  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2b27a6  0f 57 c9                       xorps  xmm1,xmm1
2b27a9  e8 92 9b 01 00                 call   0x2cc340
2b27ae  0f 57 d2                       xorps  xmm2,xmm2
2b27b1  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2b27b6  0f 57 c9                       xorps  xmm1,xmm1
2b27b9  e8 82 9b 01 00                 call   0x2cc340
2b27be  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2b27c3  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
2b27c8  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2b27cc  e8 b7 8b 02 00                 call   0x2db388
2b27d1  48 8d 55 ca                    lea    rdx,[rbp-0x36]
2b27d5  40 88 75 70                    mov    BYTE PTR [rbp+0x70],sil
2b27d9  48 8d 8d d8 02 00 00           lea    rcx,[rbp+0x2d8]
2b27e0  89 75 74                       mov    DWORD PTR [rbp+0x74],esi
2b27e3  e8 98 91 02 00                 call   0x2db980 ; STRING getter=0x2db980 HeldEntity
2b27e8  48 8b c8                       mov    rcx,rax
2b27eb  e8 dc 5d 02 00                 call   0x2d85cc
2b27f0  48 8b d0                       mov    rdx,rax
2b27f3  48 8d 4d 78                    lea    rcx,[rbp+0x78]
2b27f7  e8 d0 9a 01 00                 call   0x2cc2cc
2b27fc  0f 57 d2                       xorps  xmm2,xmm2
2b27ff  c7 85 98 00 00 00 04 00 00 00  mov    DWORD PTR [rbp+0x98],0x4
2b2809  0f 57 c9                       xorps  xmm1,xmm1
2b280c  48 8d 8d 9c 00 00 00           lea    rcx,[rbp+0x9c]
2b2813  e8 28 9b 01 00                 call   0x2cc340
2b2818  48 8d 95 80 02 00 00           lea    rdx,[rbp+0x280]
2b281f  40 88 b5 a4 00 00 00           mov    BYTE PTR [rbp+0xa4],sil
2b2826  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2b282b  e8 6c 91 02 00                 call   0x2db99c ; STRING getter=0x2db99c Assault Rifle
2b2830  48 8b c8                       mov    rcx,rax
2b2833  e8 e4 5d 02 00                 call   0x2d861c
2b2838  48 8b d0                       mov    rdx,rax
2b283b  48 8d 8d a8 00 00 00           lea    rcx,[rbp+0xa8]
2b2842  e8 85 9a 01 00                 call   0x2cc2cc
2b2847  0f 57 d2                       xorps  xmm2,xmm2
2b284a  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2b284f  0f 57 c9                       xorps  xmm1,xmm1
2b2852  e8 e9 9a 01 00                 call   0x2cc340
2b2857  0f 57 d2                       xorps  xmm2,xmm2
2b285a  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2b285f  0f 57 c9                       xorps  xmm1,xmm1
2b2862  e8 d9 9a 01 00                 call   0x2cc340
2b2867  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
2b286c  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
2b2871  48 8d 8d c8 00 00 00           lea    rcx,[rbp+0xc8]
2b2878  e8 0b 8b 02 00                 call   0x2db388
2b287d  48 8d 55 c0                    lea    rdx,[rbp-0x40]
2b2881  40 88 b5 d8 00 00 00           mov    BYTE PTR [rbp+0xd8],sil
2b2888  48 8d 4c 24 21                 lea    rcx,[rsp+0x21]
2b288d  89 b5 dc 00 00 00              mov    DWORD PTR [rbp+0xdc],esi
2b2893  e8 28 91 02 00                 call   0x2db9c0 ; STRING getter=0x2db9c0 Indicator
2b2898  48 8b c8                       mov    rcx,rax
2b289b  e8 7c b4 01 00                 call   0x2cdd1c
2b28a0  48 8b d0                       mov    rdx,rax
2b28a3  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
2b28aa  e8 1d 9a 01 00                 call   0x2cc2cc
2b28af  0f 57 d2                       xorps  xmm2,xmm2
2b28b2  c7 85 00 01 00 00 04 00 00 00  mov    DWORD PTR [rbp+0x100],0x4
2b28bc  0f 57 c9                       xorps  xmm1,xmm1
2b28bf  48 8d 8d 04 01 00 00           lea    rcx,[rbp+0x104]
2b28c6  e8 75 9a 01 00                 call   0x2cc340
2b28cb  48 8d 54 24 29                 lea    rdx,[rsp+0x29]
2b28d0  40 88 b5 0c 01 00 00           mov    BYTE PTR [rbp+0x10c],sil
2b28d7  48 8d 4c 24 22                 lea    rcx,[rsp+0x22]
2b28dc  e8 fb 90 02 00                 call   0x2db9dc ; STRING getter=0x2db9dc 25m
2b28e1  48 8b c8                       mov    rcx,rax
2b28e4  e8 ff a7 02 00                 call   0x2dd0e8
2b28e9  48 8b d0                       mov    rdx,rax
2b28ec  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
2b28f3  e8 d4 99 01 00                 call   0x2cc2cc
2b28f8  0f 57 d2                       xorps  xmm2,xmm2
2b28fb  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
2b2900  0f 57 c9                       xorps  xmm1,xmm1
2b2903  e8 38 9a 01 00                 call   0x2cc340
2b2908  0f 57 d2                       xorps  xmm2,xmm2
2b290b  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2b2910  0f 57 c9                       xorps  xmm1,xmm1
2b2913  e8 28 9a 01 00                 call   0x2cc340
2b2918  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2b291d  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
2b2922  48 8d 8d 30 01 00 00           lea    rcx,[rbp+0x130]
2b2929  e8 5a 8a 02 00                 call   0x2db388
2b292e  48 8d 55 d5                    lea    rdx,[rbp-0x2b]
2b2932  40 88 b5 40 01 00 00           mov    BYTE PTR [rbp+0x140],sil
2b2939  48 8d 4c 24 23                 lea    rcx,[rsp+0x23]
2b293e  89 b5 44 01 00 00              mov    DWORD PTR [rbp+0x144],esi
2b2944  e8 9f 90 02 00                 call   0x2db9e8 ; STRING getter=0x2db9e8 Indicator0
2b2949  48 8b c8                       mov    rcx,rax
2b294c  e8 7b 5c 02 00                 call   0x2d85cc
2b2951  48 8b d0                       mov    rdx,rax
2b2954  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
2b295b  e8 6c 99 01 00                 call   0x2cc2cc
2b2960  0f 57 d2                       xorps  xmm2,xmm2
2b2963  c7 85 68 01 00 00 01 00 00 00  mov    DWORD PTR [rbp+0x168],0x1
2b296d  0f 57 c9                       xorps  xmm1,xmm1
2b2970  48 8d 8d 6c 01 00 00           lea    rcx,[rbp+0x16c]
2b2977  e8 c4 99 01 00                 call   0x2cc340
2b297c  48 8d 55 97                    lea    rdx,[rbp-0x69]
2b2980  40 88 b5 74 01 00 00           mov    BYTE PTR [rbp+0x174],sil
2b2987  48 8d 4c 24 24                 lea    rcx,[rsp+0x24]
2b298c  e8 73 90 02 00                 call   0x2dba04 ; STRING getter=0x2dba04 Online
2b2991  48 8b c8                       mov    rcx,rax
2b2994  e8 77 a7 02 00                 call   0x2dd110
2b2999  48 8b d0                       mov    rdx,rax
2b299c  48 8d 8d 78 01 00 00           lea    rcx,[rbp+0x178]
2b29a3  e8 24 99 01 00                 call   0x2cc2cc
2b29a8  0f 57 d2                       xorps  xmm2,xmm2
2b29ab  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
2b29b0  0f 57 c9                       xorps  xmm1,xmm1
2b29b3  e8 88 99 01 00                 call   0x2cc340
2b29b8  0f 57 d2                       xorps  xmm2,xmm2
2b29bb  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2b29c0  0f 57 c9                       xorps  xmm1,xmm1
2b29c3  e8 78 99 01 00                 call   0x2cc340
2b29c8  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2b29cd  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
2b29d2  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
2b29d9  e8 aa 89 02 00                 call   0x2db388
2b29de  48 8d 55 e0                    lea    rdx,[rbp-0x20]
2b29e2  40 88 b5 a8 01 00 00           mov    BYTE PTR [rbp+0x1a8],sil
2b29e9  48 8d 4c 24 25                 lea    rcx,[rsp+0x25]
2b29ee  89 b5 ac 01 00 00              mov    DWORD PTR [rbp+0x1ac],esi
2b29f4  e8 2b 90 02 00                 call   0x2dba24 ; STRING getter=0x2dba24 Indicator2
2b29f9  48 8b c8                       mov    rcx,rax
2b29fc  e8 cb 5b 02 00                 call   0x2d85cc
2b2a01  48 8b d0                       mov    rdx,rax
2b2a04  48 8d 8d b0 01 00 00           lea    rcx,[rbp+0x1b0]
2b2a0b  e8 bc 98 01 00                 call   0x2cc2cc
2b2a10  0f 57 d2                       xorps  xmm2,xmm2
2b2a13  c7 85 d0 01 00 00 04 00 00 00  mov    DWORD PTR [rbp+0x1d0],0x4
2b2a1d  0f 57 c9                       xorps  xmm1,xmm1
2b2a20  48 8d 8d d4 01 00 00           lea    rcx,[rbp+0x1d4]
2b2a27  e8 14 99 01 00                 call   0x2cc340
2b2a2c  40 88 b5 dc 01 00 00           mov    BYTE PTR [rbp+0x1dc],sil
2b2a33  48 8d 55 9e                    lea    rdx,[rbp-0x62]
2b2a37  48 8d 4c 24 26                 lea    rcx,[rsp+0x26]
2b2a3c  e8 ff 8f 02 00                 call   0x2dba40
2b2a41  48 8b c8                       mov    rcx,rax
2b2a44  e8 ef a6 02 00                 call   0x2dd138
2b2a49  48 8b d0                       mov    rdx,rax
2b2a4c  48 8d 8d e0 01 00 00           lea    rcx,[rbp+0x1e0]
2b2a53  e8 74 98 01 00                 call   0x2cc2cc
2b2a58  0f 57 d2                       xorps  xmm2,xmm2
2b2a5b  48 8d 4d 88                    lea    rcx,[rbp-0x78]
2b2a5f  0f 57 c9                       xorps  xmm1,xmm1
2b2a62  e8 d9 98 01 00                 call   0x2cc340
2b2a67  0f 57 d2                       xorps  xmm2,xmm2
2b2a6a  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2b2a6e  0f 57 c9                       xorps  xmm1,xmm1
2b2a71  e8 ca 98 01 00                 call   0x2cc340
2b2a76  4c 8d 45 80                    lea    r8,[rbp-0x80]
2b2a7a  48 8d 55 88                    lea    rdx,[rbp-0x78]
2b2a7e  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
2b2a85  e8 fe 88 02 00                 call   0x2db388
2b2a8a  48 8d 55 eb                    lea    rdx,[rbp-0x15]
2b2a8e  40 88 b5 10 02 00 00           mov    BYTE PTR [rbp+0x210],sil
2b2a95  48 8d 4c 24 27                 lea    rcx,[rsp+0x27]
2b2a9a  89 b5 14 02 00 00              mov    DWORD PTR [rbp+0x214],esi
2b2aa0  e8 af 8f 02 00                 call   0x2dba54 ; STRING getter=0x2dba54 Indicator3
2b2aa5  48 8b c8                       mov    rcx,rax
2b2aa8  e8 1f 5b 02 00                 call   0x2d85cc
2b2aad  48 8b d0                       mov    rdx,rax
2b2ab0  48 8d 8d 18 02 00 00           lea    rcx,[rbp+0x218]
2b2ab7  e8 10 98 01 00                 call   0x2cc2cc
2b2abc  0f 57 d2                       xorps  xmm2,xmm2
2b2abf  c7 85 38 02 00 00 02 00 00 00  mov    DWORD PTR [rbp+0x238],0x2
2b2ac9  0f 57 c9                       xorps  xmm1,xmm1
2b2acc  48 8d 8d 3c 02 00 00           lea    rcx,[rbp+0x23c]
2b2ad3  e8 68 98 01 00                 call   0x2cc340
2b2ad8  48 8d 55 a6                    lea    rdx,[rbp-0x5a]
2b2adc  40 88 b5 44 02 00 00           mov    BYTE PTR [rbp+0x244],sil
2b2ae3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2b2ae8  e8 83 8f 02 00                 call   0x2dba70
2b2aed  48 8b c8                       mov    rcx,rax
2b2af0  e8 43 a6 02 00                 call   0x2dd138
2b2af5  48 8b d0                       mov    rdx,rax
2b2af8  48 8d 8d 48 02 00 00           lea    rcx,[rbp+0x248]
2b2aff  e8 c8 97 01 00                 call   0x2cc2cc
2b2b04  0f 57 d2                       xorps  xmm2,xmm2
2b2b07  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
2b2b0c  0f 57 c9                       xorps  xmm1,xmm1
2b2b0f  e8 2c 98 01 00                 call   0x2cc340
2b2b14  0f 57 d2                       xorps  xmm2,xmm2
2b2b17  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2b2b1c  0f 57 c9                       xorps  xmm1,xmm1
2b2b1f  e8 1c 98 01 00                 call   0x2cc340
2b2b24  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2b2b29  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
2b2b2e  48 8d 8d 68 02 00 00           lea    rcx,[rbp+0x268]
2b2b35  e8 4e 88 02 00                 call   0x2db388
2b2b3a  4c 8d 85 80 02 00 00           lea    r8,[rbp+0x280]
2b2b41  40 88 b5 78 02 00 00           mov    BYTE PTR [rbp+0x278],sil
2b2b48  48 8d 55 10                    lea    rdx,[rbp+0x10]
2b2b4c  89 b5 7c 02 00 00              mov    DWORD PTR [rbp+0x27c],esi
2b2b52  48 8d 8d 90 02 00 00           lea    rcx,[rbp+0x290]
2b2b59  e8 0e 99 01 00                 call   0x2cc46c
2b2b5e  4c 8b c3                       mov    r8,rbx
2b2b61  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2b2b65  48 8d 0d 4c 42 12 00           lea    rcx,[rip+0x12424c]        # 0x3d6db8
2b2b6c  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2b2b6f  f3 0f 7f 45 b0                 movdqu XMMWORD PTR [rbp-0x50],xmm0
2b2b74  e8 db 86 02 00                 call   0x2db254
2b2b79  4c 8d 0d a4 8a 02 00           lea    r9,[rip+0x28aa4]        # 0x2db624
2b2b80  8d 56 68                       lea    edx,[rsi+0x68]
2b2b83  44 8d 46 06                    lea    r8d,[rsi+0x6]
2b2b87  48 8d 4d 10                    lea    rcx,[rbp+0x10]
2b2b8b  e8 38 8f 02 00                 call   0x2dbac8
2b2b90  48 8d 0d 7d bd 11 00           lea    rcx,[rip+0x11bd7d]        # 0x3ce914
2b2b97  48 81 c4 a0 03 00 00           add    rsp,0x3a0
2b2b9e  5e                             pop    rsi
2b2b9f  5b                             pop    rbx
2b2ba0  5d                             pop    rbp
2b2ba1  e9 86 a7 01 00                 jmp    0x2cd32c

