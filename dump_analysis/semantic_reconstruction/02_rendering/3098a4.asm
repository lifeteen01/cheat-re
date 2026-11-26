; pdata function 0x3098a4..0x314929 unwind=0x3d2dcc
3098a4  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
3098a9  55                             push   rbp
3098aa  53                             push   rbx
3098ab  56                             push   rsi
3098ac  57                             push   rdi
3098ad  41 54                          push   r12
3098af  41 55                          push   r13
3098b1  41 56                          push   r14
3098b3  41 57                          push   r15
3098b5  48 8d ac 24 a8 ea ff ff        lea    rbp,[rsp-0x1558]
3098bd  b8 58 16 00 00                 mov    eax,0x1658
3098c2  e8 89 37 fc ff                 call   0x2cd050
3098c7  48 2b e0                       sub    rsp,rax
3098ca  0f 29 b4 24 40 16 00 00        movaps XMMWORD PTR [rsp+0x1640],xmm6
3098d2  45 33 ff                       xor    r15d,r15d
3098d5  0f 29 bc 24 30 16 00 00        movaps XMMWORD PTR [rsp+0x1630],xmm7
3098dd  4c 8b e9                       mov    r13,rcx
3098e0  44 0f 29 84 24 20 16 00 00     movaps XMMWORD PTR [rsp+0x1620],xmm8
3098e9  44 0f 29 8c 24 10 16 00 00     movaps XMMWORD PTR [rsp+0x1610],xmm9
3098f2  44 0f 29 94 24 00 16 00 00     movaps XMMWORD PTR [rsp+0x1600],xmm10
3098fb  44 0f 29 9c 24 f0 15 00 00     movaps XMMWORD PTR [rsp+0x15f0],xmm11
309904  44 0f 29 a4 24 e0 15 00 00     movaps XMMWORD PTR [rsp+0x15e0],xmm12
30990d  44 0f 29 ac 24 d0 15 00 00     movaps XMMWORD PTR [rsp+0x15d0],xmm13
309916  44 0f 29 b4 24 c0 15 00 00     movaps XMMWORD PTR [rsp+0x15c0],xmm14
30991f  44 0f 29 bc 24 b0 15 00 00     movaps XMMWORD PTR [rsp+0x15b0],xmm15
309928  44 89 7d d0                    mov    DWORD PTR [rbp-0x30],r15d
30992c  e8 bf 71 fd ff                 call   0x2e0af0
309931  8b f0                          mov    esi,eax
309933  e8 b8 70 fd ff                 call   0x2e09f0
309938  44 8b f0                       mov    r14d,eax
30993b  e8 b0 70 fd ff                 call   0x2e09f0
309940  99                             cdq
309941  2b c2                          sub    eax,edx
309943  d1 f8                          sar    eax,1
309945  66 0f 6e f0                    movd   xmm6,eax
309949  0f 5b f6                       cvtdq2ps xmm6,xmm6
30994c  e8 9f 71 fd ff                 call   0x2e0af0
309951  99                             cdq
309952  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309959  2b c2                          sub    eax,edx
30995b  d1 f8                          sar    eax,1
30995d  0f 28 d6                       movaps xmm2,xmm6
309960  66 0f 6e c8                    movd   xmm1,eax
309964  0f 5b c9                       cvtdq2ps xmm1,xmm1
309967  e8 d4 29 fc ff                 call   0x2cc340
30996c  48 8d 0d c5 2f 0e 00           lea    rcx,[rip+0xe2fc5]        # 0x3ec938 ; CONFIG C.CrossColor value(+0x48)
309973  e8 94 5e fe ff                 call   0x2ef80c
309978  f3 44 0f 2c 85 ac 15 00 00     cvttss2si r8d,DWORD PTR [rbp+0x15ac]
309981  44 8b c8                       mov    r9d,eax
309984  49 8b cd                       mov    rcx,r13
309987  f3 0f 2c 95 a8 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15a8]
30998f  e8 20 aa 05 00                 call   0x3643b4
309994  44 38 3d 0d d8 0d 00           cmp    BYTE PTR [rip+0xdd80d],r15b        # 0x3e71a8 ; CONFIG Bools.bfov value(+0x48)
30999b  74 51                          je     0x3099ee
30999d  48 8d 0d f4 2f 0e 00           lea    rcx,[rip+0xe2ff4]        # 0x3ec998 ; CONFIG C.fov_color value(+0x48)
3099a4  e8 63 5e fe ff                 call   0x2ef80c
3099a9  f3 0f 10 95 ac 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15ac]
3099b1  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
3099b8  f3 0f 10 8d a8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15a8]
3099c0  8b d8                          mov    ebx,eax
3099c2  e8 79 29 fc ff                 call   0x2cc340
3099c7  66 0f 6e 15 19 e8 0c 00        movd   xmm2,DWORD PTR [rip+0xce819]        # 0x3d81e8 ; CONFIG i.AimbotFOV value(+0x48)
3099cf  48 8b d0                       mov    rdx,rax
3099d2  f3 0f 10 05 22 97 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff89722]        # 0x2930fc ; f32=1.35
3099da  44 8b cb                       mov    r9d,ebx
3099dd  0f 5b d2                       cvtdq2ps xmm2,xmm2
3099e0  49 8b cd                       mov    rcx,r13
3099e3  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3099e9  e8 7e 15 05 00                 call   0x35af6c
3099ee  44 38 3d 43 06 0e 00           cmp    BYTE PTR [rip+0xe0643],r15b        # 0x3ea038 ; CONFIG Bools.radar value(+0x48)
3099f5  45 0f 57 db                    xorps  xmm11,xmm11
3099f9  f3 44 0f 10 35 56 97 f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff89756]        # 0x293158 ; f32=3
309a02  f3 44 0f 10 0d 29 97 f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff89729]        # 0x293134 ; f32=2
309a0b  0f 84 36 05 00 00              je     0x309f47
309a11  44 38 3d 20 d4 0d 00           cmp    BYTE PTR [rip+0xdd420],r15b        # 0x3e6e38 ; CONFIG Bools.DisableESPMap value(+0x48)
309a18  74 0d                          je     0x309a27
309a1a  e8 65 c1 00 00                 call   0x315b84
309a1f  84 c0                          test   al,al
309a21  0f 85 20 05 00 00              jne    0x309f47
309a27  0f 57 d2                       xorps  xmm2,xmm2
309a2a  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309a31  0f 57 c9                       xorps  xmm1,xmm1
309a34  e8 07 29 fc ff                 call   0x2cc340
309a39  f3 0f 10 05 f7 3e 0e 00        movss  xmm0,DWORD PTR [rip+0xe3ef7]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309a41  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
309a48  f3 0f 10 15 5c 63 0e 00        movss  xmm2,DWORD PTR [rip+0xe635c]        # 0x3efdac
309a50  48 8b d8                       mov    rbx,rax
309a53  f3 0f 10 0d 4d 63 0e 00        movss  xmm1,DWORD PTR [rip+0xe634d]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309a5b  f3 0f 5c d0                    subss  xmm2,xmm0
309a5f  f3 0f 5c c8                    subss  xmm1,xmm0
309a63  e8 d8 28 fc ff                 call   0x2cc340
309a68  48 8b c8                       mov    rcx,rax
309a6b  4c 8b c3                       mov    r8,rbx
309a6e  ba 02 00 00 00                 mov    edx,0x2
309a73  e8 bc 1c 09 00                 call   0x39b734
309a78  44 38 3d 3a c2 0d 00           cmp    BYTE PTR [rip+0xdc23a],r15b        # 0x3e5cb9
309a7f  74 58                          je     0x309ad9
309a81  0f 57 d2                       xorps  xmm2,xmm2
309a84  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309a8b  0f 57 c9                       xorps  xmm1,xmm1
309a8e  e8 ad 28 fc ff                 call   0x2cc340
309a93  f3 0f 10 05 9d 3e 0e 00        movss  xmm0,DWORD PTR [rip+0xe3e9d]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309a9b  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
309aa2  f3 0f 10 15 02 63 0e 00        movss  xmm2,DWORD PTR [rip+0xe6302]        # 0x3efdac
309aaa  48 8b d8                       mov    rbx,rax
309aad  f3 0f 10 0d f3 62 0e 00        movss  xmm1,DWORD PTR [rip+0xe62f3]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309ab5  f3 0f 5c d0                    subss  xmm2,xmm0
309ab9  f3 0f 5c c8                    subss  xmm1,xmm0
309abd  e8 7e 28 fc ff                 call   0x2cc340
309ac2  48 8b c8                       mov    rcx,rax
309ac5  4c 8b c3                       mov    r8,rbx
309ac8  ba 01 00 00 00                 mov    edx,0x1
309acd  e8 62 1c 09 00                 call   0x39b734
309ad2  44 88 3d e0 c1 0d 00           mov    BYTE PTR [rip+0xdc1e0],r15b        # 0x3e5cb9
309ad9  0f 57 db                       xorps  xmm3,xmm3
309adc  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
309ae3  0f 57 d2                       xorps  xmm2,xmm2
309ae6  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
309aeb  0f 57 c9                       xorps  xmm1,xmm1
309aee  e8 5d 28 fc ff                 call   0x2cc350
309af3  e8 ac 91 08 00                 call   0x392ca4
309af8  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
309afd  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
309b02  0f 57 db                       xorps  xmm3,xmm3
309b05  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
309b0c  0f 57 d2                       xorps  xmm2,xmm2
309b0f  0f 57 c9                       xorps  xmm1,xmm1
309b12  f3 0f 7f 80 48 04 00 00        movdqu XMMWORD PTR [rax+0x448],xmm0
309b1a  e8 31 28 fc ff                 call   0x2cc350
309b1f  e8 80 91 08 00                 call   0x392ca4
309b24  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
309b29  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309b30  f3 0f 7f 80 18 01 00 00        movdqu XMMWORD PTR [rax+0x118],xmm0
309b38  f3 0f 10 0d f8 3d 0e 00        movss  xmm1,DWORD PTR [rip+0xe3df8]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309b40  f3 41 0f 59 c9                 mulss  xmm1,xmm9
309b45  0f 28 d1                       movaps xmm2,xmm1
309b48  e8 f3 27 fc ff                 call   0x2cc340
309b4d  48 8b c8                       mov    rcx,rax
309b50  33 d2                          xor    edx,edx
309b52  e8 19 1c 09 00                 call   0x39b770
309b57  0f b6 1d ba ec f0 ff           movzx  ebx,BYTE PTR [rip+0xfffffffffff0ecba]        # 0x218818
309b5e  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
309b65  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309b6c  e8 bb 87 fe ff                 call   0x2f232c ; STRING getter=0x2f232c Radar
309b71  48 8b c8                       mov    rcx,rax
309b74  e8 63 e9 fc ff                 call   0x2d84dc
309b79  f7 db                          neg    ebx
309b7b  48 8b c8                       mov    rcx,rax
309b7e  45 1b c0                       sbb    r8d,r8d
309b81  33 d2                          xor    edx,edx
309b83  41 83 e0 fc                    and    r8d,0xfffffffc
309b87  41 81 c0 af 00 00 00           add    r8d,0xaf
309b8e  e8 11 34 08 00                 call   0x38cfa4
309b93  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
309b9a  e8 cd 88 08 00                 call   0x39246c
309b9f  f3 0f 10 05 91 3d 0e 00        movss  xmm0,DWORD PTR [rip+0xe3d91]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309ba7  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309bae  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
309bb6  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
309bbe  f3 0f 58 d0                    addss  xmm2,xmm0
309bc2  f3 0f 58 c8                    addss  xmm1,xmm0
309bc6  e8 75 27 fc ff                 call   0x2cc340
309bcb  f3 0f 10 85 a8 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15a8]
309bd3  f3 0f 10 8d ac 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15ac]
309bdb  f3 0f 11 05 c5 61 0e 00        movss  DWORD PTR [rip+0xe61c5],xmm0        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309be3  f3 0f 11 0d c1 61 0e 00        movss  DWORD PTR [rip+0xe61c1],xmm1        # 0x3efdac
309beb  e8 a4 6d 08 00                 call   0x390994
309bf0  44 38 3d f1 08 0e 00           cmp    BYTE PTR [rip+0xe08f1],r15b        # 0x3ea4e8 ; CONFIG Bools.radarbackground value(+0x48)
309bf7  74 4a                          je     0x309c43
309bf9  48 8d 0d 78 0e 0e 00           lea    rcx,[rip+0xe0e78]        # 0x3eaa78 ; CONFIG C.RadarBGColor value(+0x48)
309c00  e8 07 5c fe ff                 call   0x2ef80c
309c05  f3 0f 10 15 9f 61 0e 00        movss  xmm2,DWORD PTR [rip+0xe619f]        # 0x3efdac
309c0d  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309c14  f3 0f 10 0d 8c 61 0e 00        movss  xmm1,DWORD PTR [rip+0xe618c]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309c1c  8b f8                          mov    edi,eax
309c1e  e8 1d 27 fc ff                 call   0x2cc340
309c23  48 8d 0d c6 3c 0e 00           lea    rcx,[rip+0xe3cc6]        # 0x3ed8f0
309c2a  48 8b d8                       mov    rbx,rax
309c2d  e8 ae 5b fe ff                 call   0x2ef7e0
309c32  0f 28 d0                       movaps xmm2,xmm0
309c35  44 8b cf                       mov    r9d,edi
309c38  48 8b d3                       mov    rdx,rbx
309c3b  49 8b cd                       mov    rcx,r13
309c3e  e8 f9 13 05 00                 call   0x35b03c
309c43  44 38 3d de 04 0e 00           cmp    BYTE PTR [rip+0xe04de],r15b        # 0x3ea128 ; CONFIG Bools.radarcross value(+0x48)
309c4a  0f 84 48 01 00 00              je     0x309d98
309c50  f3 44 0f 10 0d 8b 3a f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff83a8b]        # 0x28d6e4 ; f32=255
309c59  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
309c5e  f3 0f 10 1d ba 0d 0e 00        movss  xmm3,DWORD PTR [rip+0xe0dba]        # 0x3eaa20
309c66  f3 0f 10 15 ae 0d 0e 00        movss  xmm2,DWORD PTR [rip+0xe0dae]        # 0x3eaa1c
309c6e  f3 0f 10 0d a2 0d 0e 00        movss  xmm1,DWORD PTR [rip+0xe0da2]        # 0x3eaa18 ; CONFIG C.RadarCrossColor value(+0x48)
309c76  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
309c7d  e8 ca ab fc ff                 call   0x2d484c
309c82  48 8b c8                       mov    rcx,rax
309c85  e8 82 5b fe ff                 call   0x2ef80c
309c8a  f3 44 0f 10 05 a5 3c 0e 00     movss  xmm8,DWORD PTR [rip+0xe3ca5]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309c93  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309c9a  f3 0f 10 3d 0a 61 0e 00        movss  xmm7,DWORD PTR [rip+0xe610a]        # 0x3efdac
309ca2  41 0f 28 d0                    movaps xmm2,xmm8
309ca6  f3 0f 10 35 fa 60 0e 00        movss  xmm6,DWORD PTR [rip+0xe60fa]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309cae  f3 0f 58 d7                    addss  xmm2,xmm7
309cb2  0f 28 ce                       movaps xmm1,xmm6
309cb5  8b f8                          mov    edi,eax
309cb7  e8 84 26 fc ff                 call   0x2cc340
309cbc  f3 41 0f 5c f8                 subss  xmm7,xmm8
309cc1  0f 28 ce                       movaps xmm1,xmm6
309cc4  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
309ccb  48 8b d8                       mov    rbx,rax
309cce  0f 28 d7                       movaps xmm2,xmm7
309cd1  e8 6a 26 fc ff                 call   0x2cc340
309cd6  f3 44 0f 10 15 19 94 f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff89419]        # 0x2930f8 ; f32=1.25
309cdf  48 8b d0                       mov    rdx,rax
309ce2  44 8b cf                       mov    r9d,edi
309ce5  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309cec  4c 8b c3                       mov    r8,rbx
309cef  49 8b cd                       mov    rcx,r13
309cf2  e8 65 25 05 00                 call   0x35c25c
309cf7  f3 0f 10 1d 21 0d 0e 00        movss  xmm3,DWORD PTR [rip+0xe0d21]        # 0x3eaa20
309cff  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
309d04  f3 0f 10 15 10 0d 0e 00        movss  xmm2,DWORD PTR [rip+0xe0d10]        # 0x3eaa1c
309d0c  f3 0f 10 0d 04 0d 0e 00        movss  xmm1,DWORD PTR [rip+0xe0d04]        # 0x3eaa18 ; CONFIG C.RadarCrossColor value(+0x48)
309d14  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
309d1b  e8 2c ab fc ff                 call   0x2d484c
309d20  48 8b c8                       mov    rcx,rax
309d23  e8 e4 5a fe ff                 call   0x2ef80c
309d28  f3 44 0f 10 05 77 60 0e 00     movss  xmm8,DWORD PTR [rip+0xe6077]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309d31  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309d38  f3 0f 10 3d f8 3b 0e 00        movss  xmm7,DWORD PTR [rip+0xe3bf8]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309d40  41 0f 28 c8                    movaps xmm1,xmm8
309d44  f3 0f 10 35 60 60 0e 00        movss  xmm6,DWORD PTR [rip+0xe6060]        # 0x3efdac
309d4c  f3 0f 58 cf                    addss  xmm1,xmm7
309d50  0f 28 d6                       movaps xmm2,xmm6
309d53  8b f8                          mov    edi,eax
309d55  e8 e6 25 fc ff                 call   0x2cc340
309d5a  f3 44 0f 5c c7                 subss  xmm8,xmm7
309d5f  0f 28 d6                       movaps xmm2,xmm6
309d62  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
309d69  48 8b d8                       mov    rbx,rax
309d6c  41 0f 28 c8                    movaps xmm1,xmm8
309d70  e8 cb 25 fc ff                 call   0x2cc340
309d75  48 8b d0                       mov    rdx,rax
309d78  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309d7f  44 8b cf                       mov    r9d,edi
309d82  4c 8b c3                       mov    r8,rbx
309d85  49 8b cd                       mov    rcx,r13
309d88  e8 cf 24 05 00                 call   0x35c25c
309d8d  f3 44 0f 10 0d 9e 93 f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff8939e]        # 0x293134 ; f32=2
309d96  eb 09                          jmp    0x309da1
309d98  f3 44 0f 10 15 57 93 f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff89357]        # 0x2930f8 ; f32=1.25
309da1  44 38 3d 50 01 0e 00           cmp    BYTE PTR [rip+0xe0150],r15b        # 0x3e9ef8 ; CONFIG Bools.DrawRadarCircles value(+0x48)
309da8  0f 84 99 01 00 00              je     0x309f47
309dae  f3 44 0f 10 05 f1 5f 0e 00     movss  xmm8,DWORD PTR [rip+0xe5ff1]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309db7  48 8d 3d fa 0b 0e 00           lea    rdi,[rip+0xe0bfa]        # 0x3ea9b8 ; CONFIG C.RadarCriclesColor value(+0x48)
309dbe  f3 0f 10 3d e6 5f 0e 00        movss  xmm7,DWORD PTR [rip+0xe5fe6]        # 0x3efdac
309dc6  48 8b cf                       mov    rcx,rdi
309dc9  f3 0f 10 35 67 3b 0e 00        movss  xmm6,DWORD PTR [rip+0xe3b67]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
309dd1  e8 36 5a fe ff                 call   0x2ef80c
309dd6  0f 28 d7                       movaps xmm2,xmm7
309dd9  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309de0  41 0f 28 c8                    movaps xmm1,xmm8
309de4  8b d8                          mov    ebx,eax
309de6  e8 55 25 fc ff                 call   0x2cc340
309deb  44 8b cb                       mov    r9d,ebx
309dee  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309df5  0f 28 d6                       movaps xmm2,xmm6
309df8  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
309dff  49 8b cd                       mov    rcx,r13
309e02  e8 65 11 05 00                 call   0x35af6c
309e07  48 8b cf                       mov    rcx,rdi
309e0a  e8 fd 59 fe ff                 call   0x2ef80c
309e0f  0f 28 d7                       movaps xmm2,xmm7
309e12  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309e19  41 0f 28 c8                    movaps xmm1,xmm8
309e1d  8b d8                          mov    ebx,eax
309e1f  e8 1c 25 fc ff                 call   0x2cc340
309e24  0f 5a f6                       cvtps2pd xmm6,xmm6
309e27  44 8b cb                       mov    r9d,ebx
309e2a  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
309e31  49 8b cd                       mov    rcx,r13
309e34  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309e3b  0f 28 c6                       movaps xmm0,xmm6
309e3e  f2 0f 59 05 e2 92 f8 ff        mulsd  xmm0,QWORD PTR [rip+0xfffffffffff892e2]        # 0x293128
309e46  66 0f 5a d0                    cvtpd2ps xmm2,xmm0
309e4a  e8 1d 11 05 00                 call   0x35af6c
309e4f  48 8b cf                       mov    rcx,rdi
309e52  e8 b5 59 fe ff                 call   0x2ef80c
309e57  0f 28 d7                       movaps xmm2,xmm7
309e5a  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309e61  41 0f 28 c8                    movaps xmm1,xmm8
309e65  8b d8                          mov    ebx,eax
309e67  e8 d4 24 fc ff                 call   0x2cc340
309e6c  0f 28 c6                       movaps xmm0,xmm6
309e6f  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309e76  f2 0f 59 05 9a 92 f8 ff        mulsd  xmm0,QWORD PTR [rip+0xfffffffffff8929a]        # 0x293118
309e7e  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
309e85  44 8b cb                       mov    r9d,ebx
309e88  49 8b cd                       mov    rcx,r13
309e8b  66 0f 5a d0                    cvtpd2ps xmm2,xmm0
309e8f  e8 d8 10 05 00                 call   0x35af6c
309e94  48 8b cf                       mov    rcx,rdi
309e97  e8 70 59 fe ff                 call   0x2ef80c
309e9c  0f 28 d7                       movaps xmm2,xmm7
309e9f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309ea6  41 0f 28 c8                    movaps xmm1,xmm8
309eaa  8b d8                          mov    ebx,eax
309eac  e8 8f 24 fc ff                 call   0x2cc340
309eb1  f2 0f 59 35 4f 92 f8 ff        mulsd  xmm6,QWORD PTR [rip+0xfffffffffff8924f]        # 0x293108
309eb9  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
309ec0  44 8b cb                       mov    r9d,ebx
309ec3  49 8b cd                       mov    rcx,r13
309ec6  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309ecd  66 0f 5a d6                    cvtpd2ps xmm2,xmm6
309ed1  e8 96 10 05 00                 call   0x35af6c
309ed6  48 8b cf                       mov    rcx,rdi
309ed9  e8 2e 59 fe ff                 call   0x2ef80c
309ede  0f 28 d7                       movaps xmm2,xmm7
309ee1  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309ee8  41 0f 28 c8                    movaps xmm1,xmm8
309eec  8b d8                          mov    ebx,eax
309eee  e8 4d 24 fc ff                 call   0x2cc340
309ef3  44 8b cb                       mov    r9d,ebx
309ef6  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
309efd  0f 57 d2                       xorps  xmm2,xmm2
309f00  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
309f07  49 8b cd                       mov    rcx,r13
309f0a  e8 5d 10 05 00                 call   0x35af6c
309f0f  48 8b cf                       mov    rcx,rdi
309f12  e8 f5 58 fe ff                 call   0x2ef80c
309f17  f3 0f 10 15 8d 5e 0e 00        movss  xmm2,DWORD PTR [rip+0xe5e8d]        # 0x3efdac
309f1f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
309f26  f3 0f 10 0d 7a 5e 0e 00        movss  xmm1,DWORD PTR [rip+0xe5e7a]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
309f2e  8b d8                          mov    ebx,eax
309f30  e8 0b 24 fc ff                 call   0x2cc340
309f35  48 8b d0                       mov    rdx,rax
309f38  44 8b cb                       mov    r9d,ebx
309f3b  41 0f 28 d6                    movaps xmm2,xmm14
309f3f  49 8b cd                       mov    rcx,r13
309f42  e8 f5 10 05 00                 call   0x35b03c
309f47  e8 50 3b fd ff                 call   0x2dda9c
309f4c  48 8b c8                       mov    rcx,rax
309f4f  48 89 85 a0 01 00 00           mov    QWORD PTR [rbp+0x1a0],rax
309f56  48 8b d8                       mov    rbx,rax
309f59  e8 aa 0f fc ff                 call   0x2caf08
309f5e  84 c0                          test   al,al
309f60  0f 84 70 a9 00 00              je     0x3148d6
309f66  e8 31 67 fd ff                 call   0x2e069c
309f6b  48 8b c8                       mov    rcx,rax
309f6e  48 89 85 08 05 00 00           mov    QWORD PTR [rbp+0x508],rax
309f75  4c 8b e0                       mov    r12,rax
309f78  e8 8b 0f fc ff                 call   0x2caf08
309f7d  84 c0                          test   al,al
309f7f  0f 84 51 a9 00 00              je     0x3148d6
309f85  49 8b cc                       mov    rcx,r12
309f88  e8 c7 ba 00 00                 call   0x315a54
309f8d  48 8b c8                       mov    rcx,rax
309f90  4c 8b c0                       mov    r8,rax
309f93  e8 70 0f fc ff                 call   0x2caf08
309f98  84 c0                          test   al,al
309f9a  0f 84 36 a9 00 00              je     0x3148d6
309fa0  f3 0f 10 05 a8 32 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff832a8]        # 0x28d250 ; f32=0.5
309fa8  48 8d 95 00 0c 00 00           lea    rdx,[rbp+0xc00]
309faf  66 44 0f 6e ee                 movd   xmm13,esi
309fb4  49 8b c8                       mov    rcx,r8
309fb7  45 0f 5b ed                    cvtdq2ps xmm13,xmm13
309fbb  66 45 0f 6e d6                 movd   xmm10,r14d
309fc0  45 0f 5b d2                    cvtdq2ps xmm10,xmm10
309fc4  f3 44 0f 59 e8                 mulss  xmm13,xmm0
309fc9  f3 44 0f 59 d0                 mulss  xmm10,xmm0
309fce  f3 44 0f 11 ad cc 02 00 00     movss  DWORD PTR [rbp+0x2cc],xmm13
309fd7  f3 44 0f 11 95 00 01 00 00     movss  DWORD PTR [rbp+0x100],xmm10
309fe0  e8 bf aa 06 00                 call   0x374aa4
309fe5  48 8d 95 48 01 00 00           lea    rdx,[rbp+0x148]
309fec  49 8b cc                       mov    rcx,r12
309fef  e8 40 2a 06 00                 call   0x36ca34
309ff4  44 38 3d 9d 04 0e 00           cmp    BYTE PTR [rip+0xe049d],r15b        # 0x3ea498 ; CONFIG Bools.battlemode value(+0x48)
309ffb  74 22                          je     0x30a01f
309ffd  b2 01                          mov    dl,0x1
309fff  48 8d 0d 52 5c 0e 00           lea    rcx,[rip+0xe5c52]        # 0x3efc58 ; CONFIG K.battlemodevirtualkey value(+0x48)
30a006  e8 d9 e9 fd ff                 call   0x2e89e4
30a00b  84 c0                          test   al,al
30a00d  74 17                          je     0x30a026
30a00f  44 38 3d a2 bc 0d 00           cmp    BYTE PTR [rip+0xdbca2],r15b        # 0x3e5cb8
30a016  0f 94 05 9b bc 0d 00           sete   BYTE PTR [rip+0xdbc9b]        # 0x3e5cb8
30a01d  eb 07                          jmp    0x30a026
30a01f  44 88 3d 92 bc 0d 00           mov    BYTE PTR [rip+0xdbc92],r15b        # 0x3e5cb8
30a026  44 38 3d bb fa 0d 00           cmp    BYTE PTR [rip+0xdfabb],r15b        # 0x3e9ae8 ; CONFIG Bools.savehouse value(+0x48)
30a02d  74 2a                          je     0x30a059
30a02f  b2 01                          mov    dl,0x1
30a031  48 8d 0d e0 59 0e 00           lea    rcx,[rip+0xe59e0]        # 0x3efa18 ; CONFIG K.savehousevirtualkey value(+0x48)
30a038  e8 a7 e9 fd ff                 call   0x2e89e4
30a03d  84 c0                          test   al,al
30a03f  74 36                          je     0x30a077
30a041  f2 0f 10 85 48 01 00 00        movsd  xmm0,QWORD PTR [rbp+0x148]
30a049  8b 85 50 01 00 00              mov    eax,DWORD PTR [rbp+0x150]
30a04f  f2 0f 11 05 e1 5f 0e 00        movsd  QWORD PTR [rip+0xe5fe1],xmm0        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
30a057  eb 18                          jmp    0x30a071
30a059  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30a05d  e8 5a db 0b 00                 call   0x3c7bbc
30a062  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30a066  f2 0f 11 05 ca 5f 0e 00        movsd  QWORD PTR [rip+0xe5fca],xmm0        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
30a06e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30a071  89 05 c9 5f 0e 00              mov    DWORD PTR [rip+0xe5fc9],eax        # 0x3f0040
30a077  44 38 3d 4a 01 0e 00           cmp    BYTE PTR [rip+0xe014a],r15b        # 0x3ea1c8 ; CONFIG Bools.saveposition value(+0x48)
30a07e  74 2a                          je     0x30a0aa
30a080  b2 01                          mov    dl,0x1
30a082  48 8d 0d 2f 59 0e 00           lea    rcx,[rip+0xe592f]        # 0x3ef9b8 ; CONFIG K.savedposvirtualkey value(+0x48)
30a089  e8 56 e9 fd ff                 call   0x2e89e4
30a08e  84 c0                          test   al,al
30a090  74 36                          je     0x30a0c8
30a092  f2 0f 10 85 48 01 00 00        movsd  xmm0,QWORD PTR [rbp+0x148]
30a09a  8b 85 50 01 00 00              mov    eax,DWORD PTR [rbp+0x150]
30a0a0  f2 0f 11 05 30 5f 0e 00        movsd  QWORD PTR [rip+0xe5f30],xmm0        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
30a0a8  eb 18                          jmp    0x30a0c2
30a0aa  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30a0ae  e8 09 db 0b 00                 call   0x3c7bbc
30a0b3  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30a0b7  f2 0f 11 05 19 5f 0e 00        movsd  QWORD PTR [rip+0xe5f19],xmm0        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
30a0bf  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30a0c2  89 05 18 5f 0e 00              mov    DWORD PTR [rip+0xe5f18],eax        # 0x3effe0
30a0c8  44 38 3d f9 05 0e 00           cmp    BYTE PTR [rip+0xe05f9],r15b        # 0x3ea6c8 ; CONFIG Bools.aimmarker value(+0x48)
30a0cf  f3 44 0f 10 25 7c 31 f8 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff8317c]        # 0x28d254 ; f32=1
30a0d8  0f 84 e5 00 00 00              je     0x30a1c3
30a0de  0f 57 db                       xorps  xmm3,xmm3
30a0e1  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30a0e5  0f 57 d2                       xorps  xmm2,xmm2
30a0e8  0f 57 c9                       xorps  xmm1,xmm1
30a0eb  e8 b8 da 0b 00                 call   0x3c7ba8
30a0f0  48 8b d0                       mov    rdx,rax
30a0f3  48 8d 0d 56 bf 0d 00           lea    rcx,[rip+0xdbf56]        # 0x3e6050
30a0fa  e8 dd 54 fd ff                 call   0x2df5dc
30a0ff  84 c0                          test   al,al
30a101  0f 84 bc 00 00 00              je     0x30a1c3
30a107  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a10e  e8 91 12 fc ff                 call   0x2cb3a4
30a113  f2 0f 10 05 35 bf 0d 00        movsd  xmm0,QWORD PTR [rip+0xdbf35]        # 0x3e6050
30a11b  4c 8d 0d 86 d1 0c 00           lea    r9,[rip+0xcd186]        # 0x3d72a8
30a122  8b 05 30 bf 0d 00              mov    eax,DWORD PTR [rip+0xdbf30]        # 0x3e6058
30a128  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
30a12f  48 8d 55 80                    lea    rdx,[rbp-0x80]
30a133  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30a138  49 8b cc                       mov    rcx,r12
30a13b  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30a13e  e8 dd 2b 06 00                 call   0x36cd20
30a143  84 c0                          test   al,al
30a145  74 7c                          je     0x30a1c3
30a147  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30a14b  48 8b cb                       mov    rcx,rbx
30a14e  e8 11 f0 05 00                 call   0x369164
30a153  48 8b d0                       mov    rdx,rax
30a156  48 8d 0d f3 be 0d 00           lea    rcx,[rip+0xdbef3]        # 0x3e6050
30a15d  e8 ce 5d fd ff                 call   0x2dff30
30a162  48 8d 0d 0f 2a 0e 00           lea    rcx,[rip+0xe2a0f]        # 0x3ecb78 ; CONFIG C.MarkerColor value(+0x48)
30a169  0f 28 f0                       movaps xmm6,xmm0
30a16c  e8 9b 56 fe ff                 call   0x2ef80c
30a171  f3 0f 10 95 ac 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15ac]
30a179  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30a180  f3 0f 10 8d a8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15a8]
30a188  8b d8                          mov    ebx,eax
30a18a  e8 b1 21 fc ff                 call   0x2cc340
30a18f  f3 0f 10 0d 91 90 f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff89091]        # 0x293228 ; f32=150
30a197  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30a19e  f3 0f 5d f1                    minss  xmm6,xmm1
30a1a2  41 0f 28 d4                    movaps xmm2,xmm12
30a1a6  44 8b cb                       mov    r9d,ebx
30a1a9  49 8b cd                       mov    rcx,r13
30a1ac  f3 0f 5e f1                    divss  xmm6,xmm1
30a1b0  f3 0f 5c d6                    subss  xmm2,xmm6
30a1b4  f3 41 0f 59 d6                 mulss  xmm2,xmm14
30a1b9  f3 41 0f 58 d6                 addss  xmm2,xmm14
30a1be  e8 79 0e 05 00                 call   0x35b03c
30a1c3  44 38 3d ce f3 0d 00           cmp    BYTE PTR [rip+0xdf3ce],r15b        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
30a1ca  bf ff 00 00 00                 mov    edi,0xff
30a1cf  0f 84 e9 03 00 00              je     0x30a5be
30a1d5  48 8d 0d 5c e6 f0 ff           lea    rcx,[rip+0xfffffffffff0e65c]        # 0x218838
30a1dc  e8 df d7 fc ff                 call   0x2d79c0
30a1e1  48 8d 0d 50 e6 f0 ff           lea    rcx,[rip+0xfffffffffff0e650]        # 0x218838
30a1e8  48 89 45 78                    mov    QWORD PTR [rbp+0x78],rax
30a1ec  48 8b d8                       mov    rbx,rax
30a1ef  e8 84 77 fc ff                 call   0x2d1978
30a1f4  4c 8b f8                       mov    r15,rax
30a1f7  48 3b c3                       cmp    rax,rbx
30a1fa  0f 84 bb 03 00 00              je     0x30a5bb
30a200  f3 44 0f 10 05 1b 39 f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff8391b]        # 0x28db24 ; f32=30
30a209  f2 41 0f 10 77 04              movsd  xmm6,QWORD PTR [r15+0x4]
30a20f  48 8d 4d 40                    lea    rcx,[rbp+0x40]
30a213  41 8b 5f 0c                    mov    ebx,DWORD PTR [r15+0xc]
30a217  f2 0f 11 75 50                 movsd  QWORD PTR [rbp+0x50],xmm6
30a21c  89 5d 58                       mov    DWORD PTR [rbp+0x58],ebx
30a21f  e8 80 11 fc ff                 call   0x2cb3a4
30a224  4c 8d 0d 7d d0 0c 00           lea    r9,[rip+0xcd07d]        # 0x3d72a8
30a22b  f2 0f 11 75 80                 movsd  QWORD PTR [rbp-0x80],xmm6
30a230  4c 8d 45 40                    lea    r8,[rbp+0x40]
30a234  89 5d 88                       mov    DWORD PTR [rbp-0x78],ebx
30a237  48 8d 55 80                    lea    rdx,[rbp-0x80]
30a23b  49 8b cc                       mov    rcx,r12
30a23e  e8 dd 2a 06 00                 call   0x36cd20
30a243  84 c0                          test   al,al
30a245  0f 84 62 03 00 00              je     0x30a5ad
30a24b  49 8d 5f 10                    lea    rbx,[r15+0x10]
30a24f  48 8b d3                       mov    rdx,rbx
30a252  48 8d 0d 97 bb 0d 00           lea    rcx,[rip+0xdbb97]        # 0x3e5df0
30a259  e8 a6 54 fe ff                 call   0x2ef704
30a25e  48 8b d3                       mov    rdx,rbx
30a261  48 8d 0d c8 bb 0d 00           lea    rcx,[rip+0xdbbc8]        # 0x3e5e30
30a268  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
30a26c  e8 73 54 fe ff                 call   0x2ef6e4
30a271  b9 08 00 00 00                 mov    ecx,0x8
30a276  2b 08                          sub    ecx,DWORD PTR [rax]
30a278  89 8d b8 15 00 00              mov    DWORD PTR [rbp+0x15b8],ecx
30a27e  85 c9                          test   ecx,ecx
30a280  0f 8e 27 03 00 00              jle    0x30a5ad
30a286  e8 91 b5 00 00                 call   0x31581c
30a28b  41 0f 2f f3                    comiss xmm6,xmm11
30a28f  0f 28 f8                       movaps xmm7,xmm0
30a292  0f 86 15 03 00 00              jbe    0x30a5ad
30a298  48 8b d3                       mov    rdx,rbx
30a29b  48 8d 0d 8e bb 0d 00           lea    rcx,[rip+0xdbb8e]        # 0x3e5e30
30a2a2  e8 3d 54 fe ff                 call   0x2ef6e4
30a2a7  f3 0f 2c ff                    cvttss2si edi,xmm7
30a2ab  8b 00                          mov    eax,DWORD PTR [rax]
30a2ad  89 85 5c 01 00 00              mov    DWORD PTR [rbp+0x15c],eax
30a2b3  f3 0f 2c c6                    cvttss2si eax,xmm6
30a2b7  2b f8                          sub    edi,eax
30a2b9  83 ff 3c                       cmp    edi,0x3c
30a2bc  7c 15                          jl     0x30a2d3
30a2be  48 8b d3                       mov    rdx,rbx
30a2c1  48 8d 0d 68 bb 0d 00           lea    rcx,[rip+0xdbb68]        # 0x3e5e30
30a2c8  e8 17 54 fe ff                 call   0x2ef6e4
30a2cd  c7 00 00 00 00 00              mov    DWORD PTR [rax],0x0
30a2d3  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30a2d7  49 8b cc                       mov    rcx,r12
30a2da  e8 55 27 06 00                 call   0x36ca34
30a2df  48 8b c8                       mov    rcx,rax
30a2e2  48 8d 55 50                    lea    rdx,[rbp+0x50]
30a2e6  e8 45 5c fd ff                 call   0x2dff30
30a2eb  44 0f 2f c0                    comiss xmm8,xmm0
30a2ef  0f 86 b3 02 00 00              jbe    0x30a5a8
30a2f5  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30a2fc  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a303  e8 d8 5e fe ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
30a308  48 8b c8                       mov    rcx,rax
30a30b  e8 54 e1 fc ff                 call   0x2d8464
30a310  48 8b d0                       mov    rdx,rax
30a313  48 8d 8d 88 03 00 00           lea    rcx,[rbp+0x388]
30a31a  e8 ad 1f fc ff                 call   0x2cc2cc
30a31f  8b d7                          mov    edx,edi
30a321  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30a325  4c 8b f0                       mov    r14,rax
30a328  e8 e3 f1 fc ff                 call   0x2d9510
30a32d  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30a334  48 8b f0                       mov    rsi,rax
30a337  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a33e  e8 ad 9f fe ff                 call   0x2f42f0 ; STRING getter=0x2f42f0  Timer :
30a343  48 8b c8                       mov    rcx,rax
30a346  e8 41 f8 fd ff                 call   0x2e9b8c
30a34b  48 8b d0                       mov    rdx,rax
30a34e  48 8d 8d 98 05 00 00           lea    rcx,[rbp+0x598]
30a355  e8 72 1f fc ff                 call   0x2cc2cc
30a35a  8b 95 b8 15 00 00              mov    edx,DWORD PTR [rbp+0x15b8]
30a360  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30a367  48 8b f8                       mov    rdi,rax
30a36a  e8 a1 f1 fc ff                 call   0x2d9510
30a36f  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
30a376  48 8b d8                       mov    rbx,rax
30a379  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a380  e8 83 94 fe ff                 call   0x2f3808 ; STRING getter=0x2f3808 [Uses Left : 
30a385  48 8b c8                       mov    rcx,rax
30a388  e8 fb 2d fd ff                 call   0x2dd188
30a38d  48 8b d0                       mov    rdx,rax
30a390  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30a397  e8 30 1f fc ff                 call   0x2cc2cc
30a39c  48 8b d0                       mov    rdx,rax
30a39f  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30a3a6  4c 8b c3                       mov    r8,rbx
30a3a9  e8 92 4b fc ff                 call   0x2cef40
30a3ae  48 8b d0                       mov    rdx,rax
30a3b1  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30a3b8  4c 8b c7                       mov    r8,rdi
30a3bb  e8 80 4b fc ff                 call   0x2cef40
30a3c0  48 8b d0                       mov    rdx,rax
30a3c3  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30a3ca  4c 8b c6                       mov    r8,rsi
30a3cd  e8 6e 4b fc ff                 call   0x2cef40
30a3d2  48 8b d0                       mov    rdx,rax
30a3d5  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30a3dc  4d 8b c6                       mov    r8,r14
30a3df  e8 5c 4b fc ff                 call   0x2cef40
30a3e4  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30a3eb  e8 04 21 fc ff                 call   0x2cc4f4
30a3f0  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30a3f7  e8 f8 20 fc ff                 call   0x2cc4f4
30a3fc  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30a403  e8 ec 20 fc ff                 call   0x2cc4f4
30a408  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30a40f  e8 e0 20 fc ff                 call   0x2cc4f4
30a414  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30a41b  e8 d4 20 fc ff                 call   0x2cc4f4
30a420  48 8d 8d 98 05 00 00           lea    rcx,[rbp+0x598]
30a427  e8 c8 20 fc ff                 call   0x2cc4f4
30a42c  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30a430  e8 bf 20 fc ff                 call   0x2cc4f4
30a435  48 8d 8d 88 03 00 00           lea    rcx,[rbp+0x388]
30a43c  e8 b3 20 fc ff                 call   0x2cc4f4
30a441  be 9b 00 00 00                 mov    esi,0x9b
30a446  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30a44a  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30a44e  8d 7e 64                       lea    edi,[rsi+0x64]
30a451  44 8b cf                       mov    r9d,edi
30a454  44 8b c7                       mov    r8d,edi
30a457  8b d7                          mov    edx,edi
30a459  e8 ba 0e fd ff                 call   0x2db318
30a45e  f3 0f 10 55 44                 movss  xmm2,DWORD PTR [rbp+0x44]
30a463  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
30a46a  f3 0f 10 4d 40                 movss  xmm1,DWORD PTR [rbp+0x40]
30a46f  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
30a473  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30a479  e8 c2 1e fc ff                 call   0x2cc340
30a47e  4c 8b c8                       mov    r9,rax
30a481  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30a485  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30a48a  c7 44 24 28 01 00 00 00        mov    DWORD PTR [rsp+0x28],0x1
30a492  4c 8d 85 10 02 00 00           lea    r8,[rbp+0x210]
30a499  49 8b cd                       mov    rcx,r13
30a49c  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30a4a1  e8 b6 6e 05 00                 call   0x36135c
30a4a6  f3 0f 10 45 44                 movss  xmm0,DWORD PTR [rbp+0x44]
30a4ab  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30a4b2  f3 0f 58 05 1e ea f3 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff3ea1e]        # 0x248ed8 ; f32=16
30a4ba  f3 0f 11 45 44                 movss  DWORD PTR [rbp+0x44],xmm0
30a4bf  66 0f 6e 85 5c 01 00 00        movd   xmm0,DWORD PTR [rbp+0x15c]
30a4c7  0f 5b c0                       cvtdq2ps xmm0,xmm0
30a4ca  f3 41 0f 58 c4                 addss  xmm0,xmm12
30a4cf  f3 0f 59 05 a9 8c f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff88ca9]        # 0x293180 ; f32=5
30a4d7  f3 0f 2c d0                    cvttss2si edx,xmm0
30a4db  e8 30 f0 fc ff                 call   0x2d9510
30a4e0  48 8d 95 e0 0b 00 00           lea    rdx,[rbp+0xbe0]
30a4e7  48 8b d8                       mov    rbx,rax
30a4ea  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a4f1  e8 c6 ad fe ff                 call   0x2f52bc ; STRING getter=0x2f52bc Damage :
30a4f6  48 8b c8                       mov    rcx,rax
30a4f9  e8 8e f6 fd ff                 call   0x2e9b8c
30a4fe  48 8b d0                       mov    rdx,rax
30a501  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30a508  e8 bf 1d fc ff                 call   0x2cc2cc
30a50d  48 8b d0                       mov    rdx,rax
30a510  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30a514  4c 8b c3                       mov    r8,rbx
30a517  e8 24 4a fc ff                 call   0x2cef40
30a51c  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30a523  e8 cc 1f fc ff                 call   0x2cc4f4
30a528  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30a52f  e8 c0 1f fc ff                 call   0x2cc4f4
30a534  44 8b cf                       mov    r9d,edi
30a537  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30a53b  44 8b c7                       mov    r8d,edi
30a53e  48 8d 8d f0 0b 00 00           lea    rcx,[rbp+0xbf0]
30a545  8b d7                          mov    edx,edi
30a547  e8 cc 0d fd ff                 call   0x2db318
30a54c  f3 0f 10 55 44                 movss  xmm2,DWORD PTR [rbp+0x44]
30a551  48 8d 8d 30 04 00 00           lea    rcx,[rbp+0x430]
30a558  f3 0f 10 4d 40                 movss  xmm1,DWORD PTR [rbp+0x40]
30a55d  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
30a561  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30a567  e8 d4 1d fc ff                 call   0x2cc340
30a56c  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30a570  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30a574  4c 8b c8                       mov    r9,rax
30a577  c7 44 24 28 01 00 00 00        mov    DWORD PTR [rsp+0x28],0x1
30a57f  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30a584  49 8b cd                       mov    rcx,r13
30a587  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30a58c  e8 cb 6d 05 00                 call   0x36135c
30a591  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30a595  e8 5a 1f fc ff                 call   0x2cc4f4
30a59a  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30a5a1  e8 4e 1f fc ff                 call   0x2cc4f4
30a5a6  eb 05                          jmp    0x30a5ad
30a5a8  bf ff 00 00 00                 mov    edi,0xff
30a5ad  49 83 c7 14                    add    r15,0x14
30a5b1  4c 3b 7d 78                    cmp    r15,QWORD PTR [rbp+0x78]
30a5b5  0f 85 4e fc ff ff              jne    0x30a209
30a5bb  45 33 ff                       xor    r15d,r15d
30a5be  44 38 3d f3 b6 0d 00           cmp    BYTE PTR [rip+0xdb6f3],r15b        # 0x3e5cb8
30a5c5  be 1a 00 00 00                 mov    esi,0x1a
30a5ca  0f 85 92 05 00 00              jne    0x30ab62
30a5d0  44 38 3d a5 ba 0d 00           cmp    BYTE PTR [rip+0xdbaa5],r15b        # 0x3e607c
30a5d7  0f 84 e2 01 00 00              je     0x30a7bf
30a5dd  44 38 3d 94 f6 0d 00           cmp    BYTE PTR [rip+0xdf694],r15b        # 0x3e9c78 ; CONFIG Bools.drawfishingstate value(+0x48)
30a5e4  0f 84 d5 01 00 00              je     0x30a7bf
30a5ea  0f 57 d2                       xorps  xmm2,xmm2
30a5ed  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a5f4  0f 57 c9                       xorps  xmm1,xmm1
30a5f7  e8 44 1d fc ff                 call   0x2cc340
30a5fc  48 8b d8                       mov    rbx,rax
30a5ff  e8 ec 63 fd ff                 call   0x2e09f0
30a604  41 0f 28 cd                    movaps xmm1,xmm13
30a608  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30a60f  66 0f 6e d0                    movd   xmm2,eax
30a613  0f 5b d2                       cvtdq2ps xmm2,xmm2
30a616  f3 0f 59 15 7a 8a f8 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff88a7a]        # 0x293098 ; f32=0.05
30a61e  e8 1d 1d fc ff                 call   0x2cc340
30a623  48 8b c8                       mov    rcx,rax
30a626  8d 56 e8                       lea    edx,[rsi-0x18]
30a629  4c 8b c3                       mov    r8,rbx
30a62c  e8 03 11 09 00                 call   0x39b734
30a631  44 38 3d 82 b6 0d 00           cmp    BYTE PTR [rip+0xdb682],r15b        # 0x3e5cba
30a638  74 46                          je     0x30a680
30a63a  0f 57 d2                       xorps  xmm2,xmm2
30a63d  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a644  0f 57 c9                       xorps  xmm1,xmm1
30a647  e8 f4 1c fc ff                 call   0x2cc340
30a64c  f3 0f 10 15 68 56 0e 00        movss  xmm2,DWORD PTR [rip+0xe5668]        # 0x3efcbc
30a654  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30a65b  f3 0f 10 0d 55 56 0e 00        movss  xmm1,DWORD PTR [rip+0xe5655]        # 0x3efcb8 ; CONFIG V2.FishingBarPosition value(+0x48)
30a663  48 8b d8                       mov    rbx,rax
30a666  e8 d5 1c fc ff                 call   0x2cc340
30a66b  48 8b c8                       mov    rcx,rax
30a66e  8d 56 e7                       lea    edx,[rsi-0x19]
30a671  4c 8b c3                       mov    r8,rbx
30a674  e8 bb 10 09 00                 call   0x39b734
30a679  44 88 3d 3a b6 0d 00           mov    BYTE PTR [rip+0xdb63a],r15b        # 0x3e5cba
30a680  0f 57 db                       xorps  xmm3,xmm3
30a683  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
30a68a  0f 57 d2                       xorps  xmm2,xmm2
30a68d  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30a692  0f 57 c9                       xorps  xmm1,xmm1
30a695  e8 b6 1c fc ff                 call   0x2cc350
30a69a  e8 05 86 08 00                 call   0x392ca4
30a69f  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
30a6a4  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a6ab  f3 0f 10 35 25 8b f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff88b25]        # 0x2931d8 ; f32=27
30a6b3  f3 0f 10 3d 91 8b f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff88b91]        # 0x29324c ; f32=560
30a6bb  0f 28 d6                       movaps xmm2,xmm6
30a6be  0f 28 cf                       movaps xmm1,xmm7
30a6c1  f3 0f 7f 80 18 01 00 00        movdqu XMMWORD PTR [rax+0x118],xmm0
30a6c9  e8 72 1c fc ff                 call   0x2cc340
30a6ce  48 8b c8                       mov    rcx,rax
30a6d1  33 d2                          xor    edx,edx
30a6d3  e8 98 10 09 00                 call   0x39b770
30a6d8  0f b6 1d 39 e1 f0 ff           movzx  ebx,BYTE PTR [rip+0xfffffffffff0e139]        # 0x218818
30a6df  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30a6e6  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a6ed  e8 8a b9 fe ff                 call   0x2f607c ; STRING getter=0x2f607c Fishing Bar Window
30a6f2  48 8b c8                       mov    rcx,rax
30a6f5  e8 9a 36 fc ff                 call   0x2cdd94
30a6fa  f7 db                          neg    ebx
30a6fc  48 8b c8                       mov    rcx,rax
30a6ff  45 1b c0                       sbb    r8d,r8d
30a702  33 d2                          xor    edx,edx
30a704  41 83 e0 fc                    and    r8d,0xfffffffc
30a708  41 81 c0 af 00 00 00           add    r8d,0xaf
30a70f  e8 90 28 08 00                 call   0x38cfa4
30a714  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30a71b  e8 4c 7d 08 00                 call   0x39246c
30a720  e8 6f 62 08 00                 call   0x390994
30a725  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30a72d  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a734  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30a73c  e8 ff 1b fc ff                 call   0x2cc340
30a741  f3 0f 10 85 a8 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15a8]
30a749  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30a74d  f3 0f 10 8d ac 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15ac]
30a755  41 b9 14 00 00 00              mov    r9d,0x14
30a75b  44 8b c6                       mov    r8d,esi
30a75e  f3 0f 11 05 52 55 0e 00        movss  DWORD PTR [rip+0xe5552],xmm0        # 0x3efcb8 ; CONFIG V2.FishingBarPosition value(+0x48)
30a766  8b d6                          mov    edx,esi
30a768  f3 0f 11 0d 4c 55 0e 00        movss  DWORD PTR [rip+0xe554c],xmm1        # 0x3efcbc
30a770  89 7c 24 20                    mov    DWORD PTR [rsp+0x20],edi
30a774  e8 9f 0b fd ff                 call   0x2db318
30a779  f3 0f 10 1d ff b8 0d 00        movss  xmm3,DWORD PTR [rip+0xdb8ff]        # 0x3e6080
30a781  49 8b cd                       mov    rcx,r13
30a784  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30a78c  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30a794  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
30a797  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30a79c  48 89 44 24 38                 mov    QWORD PTR [rsp+0x38],rax
30a7a1  f3 0f 11 74 24 30              movss  DWORD PTR [rsp+0x30],xmm6
30a7a7  f3 0f 11 7c 24 28              movss  DWORD PTR [rsp+0x28],xmm7
30a7ad  f3 44 0f 11 64 24 20           movss  DWORD PTR [rsp+0x20],xmm12
30a7b4  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
30a7ba  e8 91 10 05 00                 call   0x35b850
30a7bf  48 8d 8d c8 00 00 00           lea    rcx,[rbp+0xc8]
30a7c6  e8 d9 0b fc ff                 call   0x2cb3a4
30a7cb  0f 57 db                       xorps  xmm3,xmm3
30a7ce  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30a7d2  0f 57 d2                       xorps  xmm2,xmm2
30a7d5  0f 57 c9                       xorps  xmm1,xmm1
30a7d8  e8 cb d3 0b 00                 call   0x3c7ba8
30a7dd  48 8b d0                       mov    rdx,rax
30a7e0  48 8d 0d 51 58 0e 00           lea    rcx,[rip+0xe5851]        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
30a7e7  e8 f0 4d fd ff                 call   0x2df5dc
30a7ec  84 c0                          test   al,al
30a7ee  0f 84 98 01 00 00              je     0x30a98c
30a7f4  48 8d 15 3d 58 0e 00           lea    rdx,[rip+0xe583d]        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
30a7fb  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
30a802  e8 29 57 fd ff                 call   0x2dff30
30a807  48 8d 95 b8 15 00 00           lea    rdx,[rbp+0x15b8]
30a80e  0f 28 f0                       movaps xmm6,xmm0
30a811  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a818  e8 1f d5 fe ff                 call   0x2f7d3c ; STRING getter=0x2f7d3c m)
30a81d  48 8b c8                       mov    rcx,rax
30a820  e8 cf 5b 01 00                 call   0x3203f4
30a825  48 8b d0                       mov    rdx,rax
30a828  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30a82f  e8 98 1a fc ff                 call   0x2cc2cc
30a834  f3 0f 2c d6                    cvttss2si edx,xmm6
30a838  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30a83f  48 8b f0                       mov    rsi,rax
30a842  e8 c9 ec fc ff                 call   0x2d9510
30a847  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30a84e  48 8b f8                       mov    rdi,rax
30a851  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a858  e8 83 60 fe ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
30a85d  48 8b c8                       mov    rcx,rax
30a860  e8 ff db fc ff                 call   0x2d8464
30a865  48 8d 95 20 04 00 00           lea    rdx,[rbp+0x420]
30a86c  48 8b d8                       mov    rbx,rax
30a86f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a876  e8 79 c3 fe ff                 call   0x2f6bf4 ; STRING getter=0x2f6bf4 House
30a87b  48 8b c8                       mov    rcx,rax
30a87e  e8 59 dc fc ff                 call   0x2d84dc
30a883  48 8b d0                       mov    rdx,rax
30a886  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30a88d  e8 3a 1a fc ff                 call   0x2cc2cc
30a892  48 8b d0                       mov    rdx,rax
30a895  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30a89c  4c 8b c3                       mov    r8,rbx
30a89f  e8 94 04 fc ff                 call   0x2cad38
30a8a4  48 8b d0                       mov    rdx,rax
30a8a7  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30a8ae  4c 8b c7                       mov    r8,rdi
30a8b1  e8 8a 46 fc ff                 call   0x2cef40
30a8b6  48 8b d0                       mov    rdx,rax
30a8b9  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30a8bd  4c 8b c6                       mov    r8,rsi
30a8c0  e8 7b 46 fc ff                 call   0x2cef40
30a8c5  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30a8cc  e8 23 1c fc ff                 call   0x2cc4f4
30a8d1  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30a8d8  e8 17 1c fc ff                 call   0x2cc4f4
30a8dd  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30a8e4  e8 0b 1c fc ff                 call   0x2cc4f4
30a8e9  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30a8f0  e8 ff 1b fc ff                 call   0x2cc4f4
30a8f5  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30a8fc  e8 f3 1b fc ff                 call   0x2cc4f4
30a901  f2 0f 10 05 2f 57 0e 00        movsd  xmm0,QWORD PTR [rip+0xe572f]        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
30a909  4c 8d 0d 98 c9 0c 00           lea    r9,[rip+0xcc998]        # 0x3d72a8
30a910  8b 05 2a 57 0e 00              mov    eax,DWORD PTR [rip+0xe572a]        # 0x3f0040
30a916  4c 8d 85 c8 00 00 00           lea    r8,[rbp+0xc8]
30a91d  48 8d 55 80                    lea    rdx,[rbp-0x80]
30a921  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30a926  49 8b cc                       mov    rcx,r12
30a929  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30a92c  e8 ef 23 06 00                 call   0x36cd20
30a931  84 c0                          test   al,al
30a933  74 4e                          je     0x30a983
30a935  0f 10 05 5c 08 0e 00           movups xmm0,XMMWORD PTR [rip+0xe085c]        # 0x3eb198 ; CONFIG C.HouseColor value(+0x48)
30a93c  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a943  f3 0f 10 95 cc 00 00 00        movss  xmm2,DWORD PTR [rbp+0xcc]
30a94b  f3 0f 10 8d c8 00 00 00        movss  xmm1,DWORD PTR [rbp+0xc8]
30a953  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30a959  e8 e2 19 fc ff                 call   0x2cc340
30a95e  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30a962  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30a966  4c 8b c8                       mov    r9,rax
30a969  c7 44 24 28 01 00 00 00        mov    DWORD PTR [rsp+0x28],0x1
30a971  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30a976  49 8b cd                       mov    rcx,r13
30a979  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30a97e  e8 d9 69 05 00                 call   0x36135c
30a983  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30a987  e8 68 1b fc ff                 call   0x2cc4f4
30a98c  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
30a993  e8 0c 0a fc ff                 call   0x2cb3a4
30a998  0f 57 db                       xorps  xmm3,xmm3
30a99b  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30a99f  0f 57 d2                       xorps  xmm2,xmm2
30a9a2  0f 57 c9                       xorps  xmm1,xmm1
30a9a5  e8 fe d1 0b 00                 call   0x3c7ba8
30a9aa  48 8b d0                       mov    rdx,rax
30a9ad  48 8d 0d 24 56 0e 00           lea    rcx,[rip+0xe5624]        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
30a9b4  e8 23 4c fd ff                 call   0x2df5dc
30a9b9  84 c0                          test   al,al
30a9bb  0f 84 a1 01 00 00              je     0x30ab62
30a9c1  48 8d 15 10 56 0e 00           lea    rdx,[rip+0xe5610]        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
30a9c8  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
30a9cf  e8 5c 55 fd ff                 call   0x2dff30
30a9d4  48 8d 95 b8 15 00 00           lea    rdx,[rbp+0x15b8]
30a9db  0f 28 f0                       movaps xmm6,xmm0
30a9de  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30a9e5  e8 f6 61 fe ff                 call   0x2f0be0 ; STRING getter=0x2f0be0 m)
30a9ea  48 8b c8                       mov    rcx,rax
30a9ed  e8 02 5a 01 00                 call   0x3203f4
30a9f2  48 8b d0                       mov    rdx,rax
30a9f5  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30a9fc  e8 cb 18 fc ff                 call   0x2cc2cc
30aa01  f3 0f 2c d6                    cvttss2si edx,xmm6
30aa05  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30aa0c  48 8b f0                       mov    rsi,rax
30aa0f  e8 fc ea fc ff                 call   0x2d9510
30aa14  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30aa1b  48 8b f8                       mov    rdi,rax
30aa1e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30aa25  e8 b6 5e fe ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
30aa2a  48 8b c8                       mov    rcx,rax
30aa2d  e8 32 da fc ff                 call   0x2d8464
30aa32  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30aa39  48 8b d8                       mov    rbx,rax
30aa3c  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30aa43  e8 50 59 fe ff                 call   0x2f0398 ; STRING getter=0x2f0398 SavedPos
30aa48  48 8b c8                       mov    rcx,rax
30aa4b  e8 3c f1 fd ff                 call   0x2e9b8c
30aa50  48 8b d0                       mov    rdx,rax
30aa53  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30aa5a  e8 6d 18 fc ff                 call   0x2cc2cc
30aa5f  48 8b d0                       mov    rdx,rax
30aa62  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30aa69  4c 8b c3                       mov    r8,rbx
30aa6c  e8 c7 02 fc ff                 call   0x2cad38
30aa71  48 8b d0                       mov    rdx,rax
30aa74  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30aa7b  4c 8b c7                       mov    r8,rdi
30aa7e  e8 bd 44 fc ff                 call   0x2cef40
30aa83  48 8b d0                       mov    rdx,rax
30aa86  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30aa8a  4c 8b c6                       mov    r8,rsi
30aa8d  e8 ae 44 fc ff                 call   0x2cef40
30aa92  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30aa99  e8 56 1a fc ff                 call   0x2cc4f4
30aa9e  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30aaa5  e8 4a 1a fc ff                 call   0x2cc4f4
30aaaa  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30aab1  e8 3e 1a fc ff                 call   0x2cc4f4
30aab6  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30aabd  e8 32 1a fc ff                 call   0x2cc4f4
30aac2  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30aac9  e8 26 1a fc ff                 call   0x2cc4f4
30aace  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30aad2  48 8d 0d b7 54 0e 00           lea    rcx,[rip+0xe54b7]        # 0x3eff90
30aad9  e8 0a 4d fe ff                 call   0x2ef7e8
30aade  4c 8d 0d c3 c7 0c 00           lea    r9,[rip+0xcc7c3]        # 0x3d72a8
30aae5  49 8b cc                       mov    rcx,r12
30aae8  4c 8d 85 d0 00 00 00           lea    r8,[rbp+0xd0]
30aaef  48 8d 55 80                    lea    rdx,[rbp-0x80]
30aaf3  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30aaf7  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30aafa  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30aaff  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30ab02  e8 19 22 06 00                 call   0x36cd20
30ab07  84 c0                          test   al,al
30ab09  74 4e                          je     0x30ab59
30ab0b  0f 10 05 e6 06 0e 00           movups xmm0,XMMWORD PTR [rip+0xe06e6]        # 0x3eb1f8 ; CONFIG C.SavedPosColor value(+0x48)
30ab12  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ab19  f3 0f 10 95 d4 00 00 00        movss  xmm2,DWORD PTR [rbp+0xd4]
30ab21  f3 0f 10 8d d0 00 00 00        movss  xmm1,DWORD PTR [rbp+0xd0]
30ab29  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30ab2f  e8 0c 18 fc ff                 call   0x2cc340
30ab34  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30ab38  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30ab3c  4c 8b c8                       mov    r9,rax
30ab3f  c7 44 24 28 01 00 00 00        mov    DWORD PTR [rsp+0x28],0x1
30ab47  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30ab4c  49 8b cd                       mov    rcx,r13
30ab4f  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30ab54  e8 03 68 05 00                 call   0x36135c
30ab59  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30ab5d  e8 92 19 fc ff                 call   0x2cc4f4
30ab62  44 38 3d 5f f1 0d 00           cmp    BYTE PTR [rip+0xdf15f],r15b        # 0x3e9cc8 ; CONFIG Bools.tracers value(+0x48)
30ab69  0f 84 ae 02 00 00              je     0x30ae1d
30ab6f  48 8d 35 9a b4 0d 00           lea    rsi,[rip+0xdb49a]        # 0x3e6010
30ab76  48 8b ce                       mov    rcx,rsi
30ab79  e8 96 5b 01 00                 call   0x320714
30ab7e  84 c0                          test   al,al
30ab80  0f 85 97 02 00 00              jne    0x30ae1d
30ab86  e8 91 ac 00 00                 call   0x31581c
30ab8b  48 8d 95 b8 15 00 00           lea    rdx,[rbp+0x15b8]
30ab92  f3 0f 11 85 a8 15 00 00        movss  DWORD PTR [rbp+0x15a8],xmm0
30ab9a  48 8b ce                       mov    rcx,rsi
30ab9d  e8 b6 fd 00 00                 call   0x31a958
30aba2  48 8d 55 78                    lea    rdx,[rbp+0x78]
30aba6  48 8b ce                       mov    rcx,rsi
30aba9  e8 0a db fc ff                 call   0x2d86b8
30abae  48 8b d0                       mov    rdx,rax
30abb1  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30abb8  e8 77 19 fc ff                 call   0x2cc534
30abbd  84 c0                          test   al,al
30abbf  0f 85 58 02 00 00              jne    0x30ae1d
30abc5  f3 44 0f 10 05 2a 85 f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff8852a]        # 0x2930f8 ; f32=1.25
30abce  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30abd5  e8 c6 a1 fc ff                 call   0x2d4da0
30abda  48 8d 95 c0 02 00 00           lea    rdx,[rbp+0x2c0]
30abe1  4c 8d 70 08                    lea    r14,[rax+0x8]
30abe5  49 8b ce                       mov    rcx,r14
30abe8  e8 c3 db fc ff                 call   0x2d87b0
30abed  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
30abf4  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30abfb  48 8b 38                       mov    rdi,QWORD PTR [rax]
30abfe  e8 5d 94 fc ff                 call   0x2d4060
30ac03  48 8d 95 30 04 00 00           lea    rdx,[rbp+0x430]
30ac0a  49 8b ce                       mov    rcx,r14
30ac0d  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
30ac11  e8 9a db fc ff                 call   0x2d87b0
30ac16  48 8d 95 38 05 00 00           lea    rdx,[rbp+0x538]
30ac1d  49 8b ce                       mov    rcx,r14
30ac20  48 8b 18                       mov    rbx,QWORD PTR [rax]
30ac23  e8 68 d1 fc ff                 call   0x2d7d90
30ac28  66 41 0f 7e f1                 movd   r9d,xmm6
30ac2d  48 8d 8d 40 05 00 00           lea    rcx,[rbp+0x540]
30ac34  4c 8b c3                       mov    r8,rbx
30ac37  48 8b 10                       mov    rdx,QWORD PTR [rax]
30ac3a  e8 a9 38 fe ff                 call   0x2ee4e8
30ac3f  4c 8b cf                       mov    r9,rdi
30ac42  48 8d 95 48 05 00 00           lea    rdx,[rbp+0x548]
30ac49  49 8b ce                       mov    rcx,r14
30ac4c  4c 8b 00                       mov    r8,QWORD PTR [rax]
30ac4f  e8 0c 5b 01 00                 call   0x320760
30ac54  49 8b ce                       mov    rcx,r14
30ac57  41 bf 01 00 00 00              mov    r15d,0x1
30ac5d  e8 f6 62 01 00                 call   0x320f58
30ac62  49 3b c7                       cmp    rax,r15
30ac65  0f 86 52 01 00 00              jbe    0x30adbd
30ac6b  49 8d 57 ff                    lea    rdx,[r15-0x1]
30ac6f  49 8b ce                       mov    rcx,r14
30ac72  e8 45 4b fe ff                 call   0x2ef7bc
30ac77  49 8b d7                       mov    rdx,r15
30ac7a  49 8b ce                       mov    rcx,r14
30ac7d  48 8b d8                       mov    rbx,rax
30ac80  e8 37 4b fe ff                 call   0x2ef7bc
30ac85  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
30ac8c  48 8b f8                       mov    rdi,rax
30ac8f  e8 10 07 fc ff                 call   0x2cb3a4
30ac94  48 8d 8d c8 00 00 00           lea    rcx,[rbp+0xc8]
30ac9b  e8 04 07 fc ff                 call   0x2cb3a4
30aca0  8b 4b 08                       mov    ecx,DWORD PTR [rbx+0x8]
30aca3  4c 8d 0d fe c5 0c 00           lea    r9,[rip+0xcc5fe]        # 0x3d72a8
30acaa  f2 0f 10 03                    movsd  xmm0,QWORD PTR [rbx]
30acae  4c 8d 85 d0 00 00 00           lea    r8,[rbp+0xd0]
30acb5  89 4d 88                       mov    DWORD PTR [rbp-0x78],ecx
30acb8  48 8d 55 80                    lea    rdx,[rbp-0x80]
30acbc  49 8b cc                       mov    rcx,r12
30acbf  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30acc4  e8 57 20 06 00                 call   0x36cd20
30acc9  84 c0                          test   al,al
30accb  0f 84 d1 00 00 00              je     0x30ada2
30acd1  f2 0f 10 07                    movsd  xmm0,QWORD PTR [rdi]
30acd5  4c 8d 0d cc c5 0c 00           lea    r9,[rip+0xcc5cc]        # 0x3d72a8
30acdc  8b 47 08                       mov    eax,DWORD PTR [rdi+0x8]
30acdf  4c 8d 85 c8 00 00 00           lea    r8,[rbp+0xc8]
30ace6  48 8d 55 50                    lea    rdx,[rbp+0x50]
30acea  f2 0f 11 45 50                 movsd  QWORD PTR [rbp+0x50],xmm0
30acef  49 8b cc                       mov    rcx,r12
30acf2  89 45 58                       mov    DWORD PTR [rbp+0x58],eax
30acf5  e8 26 20 06 00                 call   0x36cd20
30acfa  84 c0                          test   al,al
30acfc  0f 84 a0 00 00 00              je     0x30ada2
30ad02  f3 0f 10 3d ce 31 0e 00        movss  xmm7,DWORD PTR [rip+0xe31ce]        # 0x3eded8 ; CONFIG F.GlowSmoothness value(+0x48)
30ad0a  48 8d 0d 67 fa 0d 00           lea    rcx,[rip+0xdfa67]        # 0x3ea778 ; CONFIG C.GlowColor value(+0x48)
30ad11  e8 f6 4a fe ff                 call   0x2ef80c
30ad16  48 8d 0d 33 30 0e 00           lea    rcx,[rip+0xe3033]        # 0x3edd50
30ad1d  8b f8                          mov    edi,eax
30ad1f  e8 bc 4a fe ff                 call   0x2ef7e0
30ad24  48 8d 0d ad fa 0d 00           lea    rcx,[rip+0xdfaad]        # 0x3ea7d8 ; CONFIG C.TracerColor value(+0x48)
30ad2b  0f 28 f0                       movaps xmm6,xmm0
30ad2e  e8 d9 4a fe ff                 call   0x2ef80c
30ad33  f3 0f 10 95 cc 00 00 00        movss  xmm2,DWORD PTR [rbp+0xcc]
30ad3b  48 8d 8d 18 05 00 00           lea    rcx,[rbp+0x518]
30ad42  f3 0f 10 8d c8 00 00 00        movss  xmm1,DWORD PTR [rbp+0xc8]
30ad4a  8b f0                          mov    esi,eax
30ad4c  e8 ef 15 fc ff                 call   0x2cc340
30ad51  f3 0f 10 95 d4 00 00 00        movss  xmm2,DWORD PTR [rbp+0xd4]
30ad59  48 8d 8d 20 05 00 00           lea    rcx,[rbp+0x520]
30ad60  f3 0f 10 8d d0 00 00 00        movss  xmm1,DWORD PTR [rbp+0xd0]
30ad68  48 8b d8                       mov    rbx,rax
30ad6b  e8 d0 15 fc ff                 call   0x2cc340
30ad70  f3 0f 11 7c 24 48              movss  DWORD PTR [rsp+0x48],xmm7
30ad76  48 8b d0                       mov    rdx,rax
30ad79  89 7c 24 40                    mov    DWORD PTR [rsp+0x40],edi
30ad7d  44 8b ce                       mov    r9d,esi
30ad80  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
30ad86  4c 8b c3                       mov    r8,rbx
30ad89  c6 44 24 30 01                 mov    BYTE PTR [rsp+0x30],0x1
30ad8e  49 8b cd                       mov    rcx,r13
30ad91  c6 44 24 28 01                 mov    BYTE PTR [rsp+0x28],0x1
30ad96  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
30ad9d  e8 6a 15 05 00                 call   0x35c30c
30ada2  49 8b ce                       mov    rcx,r14
30ada5  49 ff c7                       inc    r15
30ada8  e8 ab 61 01 00                 call   0x320f58
30adad  4c 3b f8                       cmp    r15,rax
30adb0  0f 82 b5 fe ff ff              jb     0x30ac6b
30adb6  48 8d 35 53 b2 0d 00           lea    rsi,[rip+0xdb253]        # 0x3e6010
30adbd  49 8b ce                       mov    rcx,r14
30adc0  e8 db d8 fc ff                 call   0x2d86a0
30adc5  45 33 ff                       xor    r15d,r15d
30adc8  84 c0                          test   al,al
30adca  74 22                          je     0x30adee
30adcc  4c 8b 85 b8 15 00 00           mov    r8,QWORD PTR [rbp+0x15b8]
30add3  48 8d 95 30 05 00 00           lea    rdx,[rbp+0x530]
30adda  48 8b ce                       mov    rcx,rsi
30addd  e8 0e 2d fe ff                 call   0x2edaf0
30ade2  48 8b 08                       mov    rcx,QWORD PTR [rax]
30ade5  48 89 8d b8 15 00 00           mov    QWORD PTR [rbp+0x15b8],rcx
30adec  eb 0c                          jmp    0x30adfa
30adee  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30adf5  e8 06 a0 fc ff                 call   0x2d4e00
30adfa  48 8d 55 78                    lea    rdx,[rbp+0x78]
30adfe  48 8b ce                       mov    rcx,rsi
30ae01  e8 b2 d8 fc ff                 call   0x2d86b8
30ae06  48 8b d0                       mov    rdx,rax
30ae09  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30ae10  e8 1f 17 fc ff                 call   0x2cc534
30ae15  84 c0                          test   al,al
30ae17  0f 84 b1 fd ff ff              je     0x30abce
30ae1d  44 38 3d e4 ea 0d 00           cmp    BYTE PTR [rip+0xdeae4],r15b        # 0x3e9908 ; CONFIG Bools.ShowTime value(+0x48)
30ae24  41 be 0e 00 00 00              mov    r14d,0xe
30ae2a  f2 0f 10 35 2e 83 f8 ff        movsd  xmm6,QWORD PTR [rip+0xfffffffffff8832e]        # 0x293160
30ae32  f3 44 0f 10 05 a5 33 f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff833a5]        # 0x28e1e0 ; f32=8
30ae3b  f3 44 0f 10 3d dc 2c f8 ff     movss  xmm15,DWORD PTR [rip+0xfffffffffff82cdc]        # 0x28db20 ; f32=20
30ae44  0f 84 bc 02 00 00              je     0x30b106
30ae4a  f3 0f 10 05 3a b2 0d 00        movss  xmm0,DWORD PTR [rip+0xdb23a]        # 0x3e608c
30ae52  0f 5a c0                       cvtps2pd xmm0,xmm0
30ae55  f2 0f 59 c6                    mulsd  xmm0,xmm6
30ae59  66 0f 5a c0                    cvtpd2ps xmm0,xmm0
30ae5d  e8 06 9c 00 00                 call   0x314a68
30ae62  0f 57 c9                       xorps  xmm1,xmm1
30ae65  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30ae6c  f3 0f 5a c8                    cvtss2sd xmm1,xmm0
30ae70  f2 0f 5e ce                    divsd  xmm1,xmm6
30ae74  e8 e3 e6 fc ff                 call   0x2d955c
30ae79  45 33 c0                       xor    r8d,r8d
30ae7c  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30ae83  b2 2e                          mov    dl,0x2e
30ae85  e8 a2 da fc ff                 call   0x2d892c
30ae8a  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
30ae8e  74 35                          je     0x30aec5
30ae90  4c 8d 48 03                    lea    r9,[rax+0x3]
30ae94  45 33 c0                       xor    r8d,r8d
30ae97  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
30ae9e  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30aea5  e8 ee e5 fc ff                 call   0x2d9498
30aeaa  48 8b d0                       mov    rdx,rax
30aead  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30aeb4  e8 2b 9d fc ff                 call   0x2d4be4
30aeb9  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30aec0  e8 2f 16 fc ff                 call   0x2cc4f4
30aec5  be ff 00 00 00                 mov    esi,0xff
30aeca  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30aecf  44 8b c6                       mov    r8d,esi
30aed2  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30aed6  45 33 c9                       xor    r9d,r9d
30aed9  33 d2                          xor    edx,edx
30aedb  e8 38 04 fd ff                 call   0x2db318
30aee0  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
30aee7  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30aeee  e8 01 63 fe ff                 call   0x2f11f4 ; STRING getter=0x2f11f4 Day : 
30aef3  48 8b c8                       mov    rcx,rax
30aef6  e8 f9 2d fc ff                 call   0x2cdcf4
30aefb  48 8b d0                       mov    rdx,rax
30aefe  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30af05  e8 c2 13 fc ff                 call   0x2cc2cc
30af0a  f3 0f 10 05 7a b1 0d 00        movss  xmm0,DWORD PTR [rip+0xdb17a]        # 0x3e608c
30af12  f3 0f 10 3d 7a 82 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff8827a]        # 0x293194 ; f32=7
30af1a  0f 2f f8                       comiss xmm7,xmm0
30af1d  72 4e                          jb     0x30af6d
30af1f  45 33 c9                       xor    r9d,r9d
30af22  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30af26  45 33 c0                       xor    r8d,r8d
30af29  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30af2e  8b d6                          mov    edx,esi
30af30  e8 e3 03 fd ff                 call   0x2db318
30af35  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30af3c  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30af43  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30af47  e8 f8 65 fe ff                 call   0x2f1544 ; STRING getter=0x2f1544 Night : 
30af4c  48 8b c8                       mov    rcx,rax
30af4f  e8 38 ec fd ff                 call   0x2e9b8c
30af54  48 8b d0                       mov    rdx,rax
30af57  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30af5e  e8 05 9d fc ff                 call   0x2d4c68
30af63  f3 0f 10 05 21 b1 0d 00        movss  xmm0,DWORD PTR [rip+0xdb121]        # 0x3e608c
30af6b  eb 05                          jmp    0x30af72
30af6d  0f 10 74 24 70                 movups xmm6,XMMWORD PTR [rsp+0x70]
30af72  0f 2f c7                       comiss xmm0,xmm7
30af75  bb 69 00 00 00                 mov    ebx,0x69
30af7a  bf f9 00 00 00                 mov    edi,0xf9
30af7f  76 4f                          jbe    0x30afd0
30af81  44 0f 2f c0                    comiss xmm8,xmm0
30af85  72 49                          jb     0x30afd0
30af87  45 8b ce                       mov    r9d,r14d
30af8a  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30af8e  44 8b c3                       mov    r8d,ebx
30af91  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30af96  8b d7                          mov    edx,edi
30af98  e8 7b 03 fd ff                 call   0x2db318
30af9d  48 8d 55 f8                    lea    rdx,[rbp-0x8]
30afa1  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30afa8  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30afac  e8 07 69 fe ff                 call   0x2f18b8 ; STRING getter=0x2f18b8 Morning : 
30afb1  48 8b c8                       mov    rcx,rax
30afb4  e8 9b ec fd ff                 call   0x2e9c54
30afb9  48 8b d0                       mov    rdx,rax
30afbc  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30afc3  e8 a0 9c fc ff                 call   0x2d4c68
30afc8  f3 0f 10 05 bc b0 0d 00        movss  xmm0,DWORD PTR [rip+0xdb0bc]        # 0x3e608c
30afd0  0f 2f 05 ed 81 f8 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff881ed]        # 0x2931c4 ; f32=19
30afd7  76 52                          jbe    0x30b02b
30afd9  44 0f 2f f8                    comiss xmm15,xmm0
30afdd  76 4c                          jbe    0x30b02b
30afdf  45 8b ce                       mov    r9d,r14d
30afe2  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30afe6  44 8b c3                       mov    r8d,ebx
30afe9  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30afee  8b d7                          mov    edx,edi
30aff0  e8 23 03 fd ff                 call   0x2db318
30aff5  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
30affc  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b003  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b007  e8 60 6b fe ff                 call   0x2f1b6c ; STRING getter=0x2f1b6c Afternoon : 
30b00c  48 8b c8                       mov    rcx,rax
30b00f  e8 e0 d5 fc ff                 call   0x2d85f4
30b014  48 8b d0                       mov    rdx,rax
30b017  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30b01e  e8 45 9c fc ff                 call   0x2d4c68
30b023  f3 0f 10 05 61 b0 0d 00        movss  xmm0,DWORD PTR [rip+0xdb061]        # 0x3e608c
30b02b  41 0f 2f c7                    comiss xmm0,xmm15
30b02f  76 44                          jbe    0x30b075
30b031  45 33 c9                       xor    r9d,r9d
30b034  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b038  45 33 c0                       xor    r8d,r8d
30b03b  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30b040  8b d6                          mov    edx,esi
30b042  e8 d1 02 fd ff                 call   0x2db318
30b047  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30b04e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b055  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b059  e8 aa 6c fe ff                 call   0x2f1d08 ; STRING getter=0x2f1d08 Night : 
30b05e  48 8b c8                       mov    rcx,rax
30b061  e8 26 eb fd ff                 call   0x2e9b8c
30b066  48 8b d0                       mov    rdx,rax
30b069  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30b070  e8 f3 9b fc ff                 call   0x2d4c68
30b075  f3 44 0f 10 05 9e 2a f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff82a9e]        # 0x28db1c ; f32=10
30b07e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b085  f3 0f 10 0d b7 2a f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff82ab7]        # 0x28db44 ; f32=100
30b08d  41 0f 28 d0                    movaps xmm2,xmm8
30b091  e8 aa 12 fc ff                 call   0x2cc340
30b096  4c 8d 85 a0 00 00 00           lea    r8,[rbp+0xa0]
30b09d  48 8b d8                       mov    rbx,rax
30b0a0  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
30b0a7  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30b0ae  e8 9d f5 fd ff                 call   0x2ea650
30b0b3  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30b0b7  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30b0bc  41 be 02 00 00 00              mov    r14d,0x2
30b0c2  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b0c8  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b0cd  4c 8b cb                       mov    r9,rbx
30b0d0  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
30b0d5  4c 8b c0                       mov    r8,rax
30b0d8  49 8b cd                       mov    rcx,r13
30b0db  e8 7c 62 05 00                 call   0x36135c
30b0e0  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30b0e7  e8 08 14 fc ff                 call   0x2cc4f4
30b0ec  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30b0f3  e8 fc 13 fc ff                 call   0x2cc4f4
30b0f8  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30b0ff  e8 f0 13 fc ff                 call   0x2cc4f4
30b104  eb 14                          jmp    0x30b11a
30b106  f3 44 0f 10 05 0d 2a f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff82a0d]        # 0x28db1c ; f32=10
30b10f  be ff 00 00 00                 mov    esi,0xff
30b114  41 be 02 00 00 00              mov    r14d,0x2
30b11a  41 0f 28 fa                    movaps xmm7,xmm10
30b11e  f3 41 0f 58 f8                 addss  xmm7,xmm8
30b123  e8 1c b7 fd ff                 call   0x2e6844
30b128  f3 0f 10 0d fc 29 f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff829fc]        # 0x28db2c ; f32=50
30b130  f3 0f 10 15 70 80 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff88070]        # 0x2931a8 ; f32=12
30b138  84 c0                          test   al,al
30b13a  0f 85 1c 11 00 00              jne    0x30c25c
30b140  44 38 3d 91 f4 0d 00           cmp    BYTE PTR [rip+0xdf491],r15b        # 0x3ea5d8 ; CONFIG Bools.desyncnotvisible value(+0x48)
30b147  74 09                          je     0x30b152
30b149  44 38 3d 50 c1 0c 00           cmp    BYTE PTR [rip+0xcc150],r15b        # 0x3d72a0
30b150  eb 10                          jmp    0x30b162
30b152  44 38 3d 47 c1 0c 00           cmp    BYTE PTR [rip+0xcc147],r15b        # 0x3d72a0
30b159  74 4a                          je     0x30b1a5
30b15b  44 38 3d c6 f4 0d 00           cmp    BYTE PTR [rip+0xdf4c6],r15b        # 0x3ea628 ; CONFIG Bools.ShouldAttempDesync value(+0x48)
30b162  74 41                          je     0x30b1a5
30b164  f3 0f 10 1d 80 c1 0c 00        movss  xmm3,DWORD PTR [rip+0xcc180]        # 0x3d72ec
30b16c  41 0f 28 c5                    movaps xmm0,xmm13
30b170  f3 0f 5c c1                    subss  xmm0,xmm1
30b174  c7 44 24 30 04 00 00 00        mov    DWORD PTR [rsp+0x30],0x4
30b17c  f3 44 0f 2c c7                 cvttss2si r8d,xmm7
30b181  c7 44 24 28 78 00 00 00        mov    DWORD PTR [rsp+0x28],0x78
30b189  49 8b cd                       mov    rcx,r13
30b18c  f3 0f 5c c2                    subss  xmm0,xmm2
30b190  f3 44 0f 11 64 24 20           movss  DWORD PTR [rsp+0x20],xmm12
30b197  f3 0f 2c d0                    cvttss2si edx,xmm0
30b19b  e8 18 09 05 00                 call   0x35bab8
30b1a0  f3 41 0f 58 f8                 addss  xmm7,xmm8
30b1a5  44 38 3d cd ac 0d 00           cmp    BYTE PTR [rip+0xdaccd],r15b        # 0x3e5e79
30b1ac  f3 41 0f 58 fe                 addss  xmm7,xmm14
30b1b1  44 0f 28 c7                    movaps xmm8,xmm7
30b1b5  0f 84 96 00 00 00              je     0x30b251
30b1bb  45 33 c9                       xor    r9d,r9d
30b1be  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b1c2  45 33 c0                       xor    r8d,r8d
30b1c5  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b1c9  8b d6                          mov    edx,esi
30b1cb  e8 48 01 fd ff                 call   0x2db318
30b1d0  0f 28 d7                       movaps xmm2,xmm7
30b1d3  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b1da  41 0f 28 cd                    movaps xmm1,xmm13
30b1de  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b1e2  e8 59 11 fc ff                 call   0x2cc340
30b1e7  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30b1eb  48 8b d8                       mov    rbx,rax
30b1ee  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b1f5  e8 06 6d fe ff                 call   0x2f1f00 ; STRING getter=0x2f1f00 Manipulated
30b1fa  48 8b c8                       mov    rcx,rax
30b1fd  e8 32 2c fc ff                 call   0x2cde34
30b202  48 8b d0                       mov    rdx,rax
30b205  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b209  e8 be 10 fc ff                 call   0x2cc2cc
30b20e  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30b212  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b217  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b21c  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b220  4c 8b cb                       mov    r9,rbx
30b223  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b228  49 8b cd                       mov    rcx,r13
30b22b  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b231  e8 26 61 05 00                 call   0x36135c
30b236  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b23a  e8 b5 12 fc ff                 call   0x2cc4f4
30b23f  f3 0f 10 3d 8d dc f3 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff3dc8d]        # 0x248ed4 ; f32=16
30b247  f3 41 0f 58 f9                 addss  xmm7,xmm9
30b24c  f3 41 0f 58 f8                 addss  xmm7,xmm8
30b251  44 38 3d a9 49 0e 00           cmp    BYTE PTR [rip+0xe49a9],r15b        # 0x3efc01
30b258  0f 84 9c 00 00 00              je     0x30b2fa
30b25e  83 3d 97 49 0e 00 01           cmp    DWORD PTR [rip+0xe4997],0x1        # 0x3efbfc
30b265  0f 85 8f 00 00 00              jne    0x30b2fa
30b26b  45 33 c9                       xor    r9d,r9d
30b26e  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b272  45 33 c0                       xor    r8d,r8d
30b275  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b279  8b d6                          mov    edx,esi
30b27b  e8 98 00 fd ff                 call   0x2db318
30b280  0f 28 d7                       movaps xmm2,xmm7
30b283  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30b28a  41 0f 28 cd                    movaps xmm1,xmm13
30b28e  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b292  e8 a9 10 fc ff                 call   0x2cc340
30b297  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30b29e  48 8b d8                       mov    rbx,rax
30b2a1  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b2a8  e8 87 72 fe ff                 call   0x2f2534 ; STRING getter=0x2f2534 Recoil
30b2ad  48 8b c8                       mov    rcx,rax
30b2b0  e8 3f 2a fc ff                 call   0x2cdcf4
30b2b5  48 8b d0                       mov    rdx,rax
30b2b8  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b2bc  e8 0b 10 fc ff                 call   0x2cc2cc
30b2c1  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30b2c5  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b2ca  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b2cf  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b2d3  4c 8b cb                       mov    r9,rbx
30b2d6  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b2db  49 8b cd                       mov    rcx,r13
30b2de  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b2e4  e8 73 60 05 00                 call   0x36135c
30b2e9  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b2ed  e8 02 12 fc ff                 call   0x2cc4f4
30b2f2  f3 0f 58 3d da db f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3dbda]        # 0x248ed4 ; f32=16
30b2fa  44 38 3d a0 48 0e 00           cmp    BYTE PTR [rip+0xe48a0],r15b        # 0x3efba1
30b301  49 8d 7d 10                    lea    rdi,[r13+0x10]
30b305  0f 84 8c 00 00 00              je     0x30b397
30b30b  45 33 c9                       xor    r9d,r9d
30b30e  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b312  45 33 c0                       xor    r8d,r8d
30b315  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b319  8b d6                          mov    edx,esi
30b31b  e8 f8 ff fc ff                 call   0x2db318
30b320  0f 28 d7                       movaps xmm2,xmm7
30b323  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b32a  41 0f 28 cd                    movaps xmm1,xmm13
30b32e  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b332  e8 09 10 fc ff                 call   0x2cc340
30b337  48 8d 55 08                    lea    rdx,[rbp+0x8]
30b33b  48 8b d8                       mov    rbx,rax
30b33e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b345  e8 7e 73 fe ff                 call   0x2f26c8 ; STRING getter=0x2f26c8 On Ladder
30b34a  48 8b c8                       mov    rcx,rax
30b34d  e8 f2 29 fc ff                 call   0x2cdd44
30b352  48 8b d0                       mov    rdx,rax
30b355  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b359  e8 6e 0f fc ff                 call   0x2cc2cc
30b35e  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30b362  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b367  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b36c  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b370  4c 8b cb                       mov    r9,rbx
30b373  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b378  49 8b cd                       mov    rcx,r13
30b37b  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b381  e8 d6 5f 05 00                 call   0x36135c
30b386  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b38a  e8 65 11 fc ff                 call   0x2cc4f4
30b38f  f3 0f 58 3d 3d db f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3db3d]        # 0x248ed4 ; f32=16
30b397  44 38 3d d3 a0 0d 00           cmp    BYTE PTR [rip+0xda0d3],r15b        # 0x3e5471
30b39e  0f 84 9f 00 00 00              je     0x30b443
30b3a4  83 3d c1 a0 0d 00 01           cmp    DWORD PTR [rip+0xda0c1],0x1        # 0x3e546c
30b3ab  0f 85 92 00 00 00              jne    0x30b443
30b3b1  45 33 c9                       xor    r9d,r9d
30b3b4  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b3b8  45 33 c0                       xor    r8d,r8d
30b3bb  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b3bf  8b d6                          mov    edx,esi
30b3c1  e8 52 ff fc ff                 call   0x2db318
30b3c6  0f 28 d7                       movaps xmm2,xmm7
30b3c9  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b3d0  41 0f 28 cd                    movaps xmm1,xmm13
30b3d4  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b3d8  e8 63 0f fc ff                 call   0x2cc340
30b3dd  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
30b3e4  48 8b d8                       mov    rbx,rax
30b3e7  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b3ee  e8 8d 74 fe ff                 call   0x2f2880 ; STRING getter=0x2f2880 Auto Upgrade
30b3f3  48 8b c8                       mov    rcx,rax
30b3f6  e8 f9 d1 fc ff                 call   0x2d85f4
30b3fb  48 8b d0                       mov    rdx,rax
30b3fe  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b402  e8 c5 0e fc ff                 call   0x2cc2cc
30b407  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30b40a  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b40f  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b414  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b418  4c 8b cb                       mov    r9,rbx
30b41b  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b420  49 8b cd                       mov    rcx,r13
30b423  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b429  e8 2e 5f 05 00                 call   0x36135c
30b42e  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b432  e8 bd 10 fc ff                 call   0x2cc4f4
30b437  f3 0f 58 3d 95 da f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3da95]        # 0x248ed4 ; f32=16
30b43f  49 8d 7d 10                    lea    rdi,[r13+0x10]
30b443  44 38 3d 37 43 0e 00           cmp    BYTE PTR [rip+0xe4337],r15b        # 0x3ef781
30b44a  0f 84 8e 00 00 00              je     0x30b4de
30b450  45 33 c9                       xor    r9d,r9d
30b453  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b457  45 33 c0                       xor    r8d,r8d
30b45a  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b45e  8b d6                          mov    edx,esi
30b460  e8 b3 fe fc ff                 call   0x2db318
30b465  0f 28 d7                       movaps xmm2,xmm7
30b468  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b46f  41 0f 28 cd                    movaps xmm1,xmm13
30b473  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b477  e8 c4 0e fc ff                 call   0x2cc340
30b47c  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30b483  48 8b d8                       mov    rbx,rax
30b486  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b48d  e8 c2 75 fe ff                 call   0x2f2a54 ; STRING getter=0x2f2a54 Inf Jump
30b492  48 8b c8                       mov    rcx,rax
30b495  e8 f2 e6 fd ff                 call   0x2e9b8c
30b49a  48 8b d0                       mov    rdx,rax
30b49d  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b4a1  e8 26 0e fc ff                 call   0x2cc2cc
30b4a6  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30b4a9  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b4ae  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b4b3  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b4b7  4c 8b cb                       mov    r9,rbx
30b4ba  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b4bf  49 8b cd                       mov    rcx,r13
30b4c2  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b4c8  e8 8f 5e 05 00                 call   0x36135c
30b4cd  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b4d1  e8 1e 10 fc ff                 call   0x2cc4f4
30b4d6  f3 0f 58 3d f6 d9 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d9f6]        # 0x248ed4 ; f32=16
30b4de  44 38 3d 7c 41 0e 00           cmp    BYTE PTR [rip+0xe417c],r15b        # 0x3ef661
30b4e5  0f 84 8b 00 00 00              je     0x30b576
30b4eb  45 33 c9                       xor    r9d,r9d
30b4ee  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b4f2  45 33 c0                       xor    r8d,r8d
30b4f5  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b4f9  8b d6                          mov    edx,esi
30b4fb  e8 18 fe fc ff                 call   0x2db318
30b500  0f 28 d7                       movaps xmm2,xmm7
30b503  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b50a  41 0f 28 cd                    movaps xmm1,xmm13
30b50e  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b512  e8 29 0e fc ff                 call   0x2cc340
30b517  48 8d 55 08                    lea    rdx,[rbp+0x8]
30b51b  48 8b d8                       mov    rbx,rax
30b51e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b525  e8 56 77 fe ff                 call   0x2f2c80 ; STRING getter=0x2f2c80 Crouching
30b52a  48 8b c8                       mov    rcx,rax
30b52d  e8 12 28 fc ff                 call   0x2cdd44
30b532  48 8b d0                       mov    rdx,rax
30b535  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b539  e8 8e 0d fc ff                 call   0x2cc2cc
30b53e  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30b541  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b546  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b54b  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b54f  4c 8b cb                       mov    r9,rbx
30b552  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b557  49 8b cd                       mov    rcx,r13
30b55a  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b560  e8 f7 5d 05 00                 call   0x36135c
30b565  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b569  e8 86 0f fc ff                 call   0x2cc4f4
30b56e  f3 0f 58 3d 5e d9 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d95e]        # 0x248ed4 ; f32=16
30b576  44 38 3d fb a8 0d 00           cmp    BYTE PTR [rip+0xda8fb],r15b        # 0x3e5e78
30b57d  0f 84 8b 00 00 00              je     0x30b60e
30b583  45 33 c9                       xor    r9d,r9d
30b586  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b58a  45 33 c0                       xor    r8d,r8d
30b58d  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b591  8b d6                          mov    edx,esi
30b593  e8 80 fd fc ff                 call   0x2db318
30b598  0f 28 d7                       movaps xmm2,xmm7
30b59b  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b5a2  41 0f 28 cd                    movaps xmm1,xmm13
30b5a6  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b5aa  e8 91 0d fc ff                 call   0x2cc340
30b5af  48 8d 55 20                    lea    rdx,[rbp+0x20]
30b5b3  48 8b d8                       mov    rbx,rax
30b5b6  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b5bd  e8 72 79 fe ff                 call   0x2f2f34 ; STRING getter=0x2f2f34 Grenade Hit Possible
30b5c2  48 8b c8                       mov    rcx,rax
30b5c5  e8 f2 4e 01 00                 call   0x3204bc
30b5ca  48 8b d0                       mov    rdx,rax
30b5cd  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b5d1  e8 f6 0c fc ff                 call   0x2cc2cc
30b5d6  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30b5d9  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b5de  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b5e3  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b5e7  4c 8b cb                       mov    r9,rbx
30b5ea  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b5ef  49 8b cd                       mov    rcx,r13
30b5f2  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b5f8  e8 5f 5d 05 00                 call   0x36135c
30b5fd  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b601  e8 ee 0e fc ff                 call   0x2cc4f4
30b606  f3 0f 58 3d c6 d8 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d8c6]        # 0x248ed4 ; f32=16
30b60e  44 38 3d 23 8c 0d 00           cmp    BYTE PTR [rip+0xd8c23],r15b        # 0x3e4238
30b615  0f 84 98 00 00 00              je     0x30b6b3
30b61b  44 38 3d df cc 0c 00           cmp    BYTE PTR [rip+0xcccdf],r15b        # 0x3d8301
30b622  0f 84 8b 00 00 00              je     0x30b6b3
30b628  45 33 c9                       xor    r9d,r9d
30b62b  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
30b62f  45 33 c0                       xor    r8d,r8d
30b632  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b636  8b d6                          mov    edx,esi
30b638  e8 db fc fc ff                 call   0x2db318
30b63d  0f 28 d7                       movaps xmm2,xmm7
30b640  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30b647  41 0f 28 cd                    movaps xmm1,xmm13
30b64b  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b64f  e8 ec 0c fc ff                 call   0x2cc340
30b654  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30b658  48 8b d8                       mov    rbx,rax
30b65b  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b662  e8 65 7a fe ff                 call   0x2f30cc ; STRING getter=0x2f30cc LV Possible
30b667  48 8b c8                       mov    rcx,rax
30b66a  e8 c5 27 fc ff                 call   0x2cde34
30b66f  48 8b d0                       mov    rdx,rax
30b672  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b676  e8 51 0c fc ff                 call   0x2cc2cc
30b67b  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30b67e  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30b683  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
30b688  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30b68c  4c 8b cb                       mov    r9,rbx
30b68f  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30b694  49 8b cd                       mov    rcx,r13
30b697  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b69d  e8 ba 5c 05 00                 call   0x36135c
30b6a2  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b6a6  e8 49 0e fc ff                 call   0x2cc4f4
30b6ab  f3 0f 58 3d 21 d8 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d821]        # 0x248ed4 ; f32=16
30b6b3  44 38 3d 2e e9 0d 00           cmp    BYTE PTR [rip+0xde92e],r15b        # 0x3e9fe8 ; CONFIG Bools.signpainter value(+0x48)
30b6ba  0f 84 c5 04 00 00              je     0x30bb85
30b6c0  48 8b 8d a0 01 00 00           mov    rcx,QWORD PTR [rbp+0x1a0]
30b6c7  e8 28 ec 05 00                 call   0x36a2f4
30b6cc  48 8b c8                       mov    rcx,rax
30b6cf  4c 8b f8                       mov    r15,rax
30b6d2  e8 31 f8 fb ff                 call   0x2caf08
30b6d7  84 c0                          test   al,al
30b6d9  0f 84 a3 04 00 00              je     0x30bb82
30b6df  49 8b cf                       mov    rcx,r15
30b6e2  e8 6d a3 fd ff                 call   0x2e5a54
30b6e7  48 8b c8                       mov    rcx,rax
30b6ea  48 8b d0                       mov    rdx,rax
30b6ed  e8 16 f8 fb ff                 call   0x2caf08
30b6f2  84 c0                          test   al,al
30b6f4  0f 84 88 04 00 00              je     0x30bb82
30b6fa  48 8b ca                       mov    rcx,rdx
30b6fd  e8 52 ac fc ff                 call   0x2d6354
30b702  48 8d 55 f8                    lea    rdx,[rbp-0x8]
30b706  48 89 85 b8 15 00 00           mov    QWORD PTR [rbp+0x15b8],rax
30b70d  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b714  48 8b d8                       mov    rbx,rax
30b717  e8 40 7b fe ff                 call   0x2f325c ; STRING getter=0x2f325c PhotoFrame
30b71c  48 8b c8                       mov    rcx,rax
30b71f  e8 30 e5 fd ff                 call   0x2e9c54
30b724  48 be 25 23 22 84 e4 9c f2 cb  movabs rsi,0xcbf29ce484222325
30b72e  48 8b c8                       mov    rcx,rax
30b731  48 8b d6                       mov    rdx,rsi
30b734  e8 13 a4 fd ff                 call   0x2e5b4c
30b739  48 3b d8                       cmp    rbx,rax
30b73c  0f 85 aa 02 00 00              jne    0x30b9ec
30b742  49 8b cf                       mov    rcx,r15
30b745  e8 be 4d 06 00                 call   0x370508
30b74a  48 8b c8                       mov    rcx,rax
30b74d  48 8b d0                       mov    rdx,rax
30b750  e8 b3 f7 fb ff                 call   0x2caf08
30b755  84 c0                          test   al,al
30b757  0f 84 8f 02 00 00              je     0x30b9ec
30b75d  48 8b ca                       mov    rcx,rdx
30b760  e8 b7 7e 06 00                 call   0x37361c
30b765  48 8b c8                       mov    rcx,rax
30b768  48 8b f8                       mov    rdi,rax
30b76b  e8 98 f7 fb ff                 call   0x2caf08
30b770  84 c0                          test   al,al
30b772  0f 84 74 02 00 00              je     0x30b9ec
30b778  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30b77f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b786  e8 51 7c fe ff                 call   0x2f33dc ; STRING getter=0x2f33dc large
30b78b  48 8b c8                       mov    rcx,rax
30b78e  e8 49 cd fc ff                 call   0x2d84dc
30b793  48 8d 95 f0 01 00 00           lea    rdx,[rbp+0x1f0]
30b79a  48 8b cf                       mov    rcx,rdi
30b79d  48 8b d8                       mov    rbx,rax
30b7a0  be 01 00 00 00                 mov    esi,0x1
30b7a5  e8 6e c6 fc ff                 call   0x2d7e18
30b7aa  48 8b c8                       mov    rcx,rax
30b7ad  e8 3a 20 fc ff                 call   0x2cd7ec
30b7b2  48 8b c8                       mov    rcx,rax
30b7b5  48 8b d3                       mov    rdx,rbx
30b7b8  e8 a3 f1 0b 00                 call   0x3ca960
30b7bd  48 85 c0                       test   rax,rax
30b7c0  75 4b                          jne    0x30b80d
30b7c2  48 8d 55 08                    lea    rdx,[rbp+0x8]
30b7c6  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b7cd  e8 b6 7d fe ff                 call   0x2f3588 ; STRING getter=0x2f3588 landscape
30b7d2  48 8b c8                       mov    rcx,rax
30b7d5  e8 6a 25 fc ff                 call   0x2cdd44
30b7da  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
30b7e1  48 8b cf                       mov    rcx,rdi
30b7e4  48 8b d8                       mov    rbx,rax
30b7e7  be 03 00 00 00                 mov    esi,0x3
30b7ec  e8 27 c6 fc ff                 call   0x2d7e18
30b7f1  48 8b c8                       mov    rcx,rax
30b7f4  e8 f3 1f fc ff                 call   0x2cd7ec
30b7f9  48 8b c8                       mov    rcx,rax
30b7fc  48 8b d3                       mov    rdx,rbx
30b7ff  e8 5c f1 0b 00                 call   0x3ca960
30b804  48 85 c0                       test   rax,rax
30b807  75 04                          jne    0x30b80d
30b809  32 db                          xor    bl,bl
30b80b  eb 09                          jmp    0x30b816
30b80d  8b c6                          mov    eax,esi
30b80f  b3 01                          mov    bl,0x1
30b811  41 23 c6                       and    eax,r14d
30b814  74 0f                          je     0x30b825
30b816  83 e6 fd                       and    esi,0xfffffffd
30b819  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30b820  e8 cf 0c fc ff                 call   0x2cc4f4
30b825  83 e6 fe                       and    esi,0xfffffffe
30b828  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30b82f  89 75 d0                       mov    DWORD PTR [rbp-0x30],esi
30b832  e8 bd 0c fc ff                 call   0x2cc4f4
30b837  8a c3                          mov    al,bl
30b839  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30b840  f6 d8                          neg    al
30b842  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b849  1b f6                          sbb    esi,esi
30b84b  81 e6 f0 00 00 00              and    esi,0xf0
30b851  f6 db                          neg    bl
30b853  45 1b f6                       sbb    r14d,r14d
30b856  41 81 e6 40 01 00 00           and    r14d,0x140
30b85d  e8 76 80 fe ff                 call   0x2f38d8 ; STRING getter=0x2f38d8 portrait
30b862  48 8b c8                       mov    rcx,rax
30b865  e8 22 e3 fd ff                 call   0x2e9b8c
30b86a  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
30b871  48 8b cf                       mov    rcx,rdi
30b874  48 8b d8                       mov    rbx,rax
30b877  e8 9c c5 fc ff                 call   0x2d7e18
30b87c  48 8b c8                       mov    rcx,rax
30b87f  e8 68 1f fc ff                 call   0x2cd7ec
30b884  48 8b c8                       mov    rcx,rax
30b887  48 8b d3                       mov    rdx,rbx
30b88a  e8 d1 f0 0b 00                 call   0x3ca960
30b88f  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30b896  48 8b d8                       mov    rbx,rax
30b899  e8 56 0c fc ff                 call   0x2cc4f4
30b89e  48 85 db                       test   rbx,rbx
30b8a1  74 0a                          je     0x30b8ad
30b8a3  be 80 01 00 00                 mov    esi,0x180
30b8a8  8d 5e c0                       lea    ebx,[rsi-0x40]
30b8ab  eb 03                          jmp    0x30b8b0
30b8ad  41 8b de                       mov    ebx,r14d
30b8b0  ba ff 00 00 00                 mov    edx,0xff
30b8b5  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30b8b9  45 33 c9                       xor    r9d,r9d
30b8bc  89 54 24 20                    mov    DWORD PTR [rsp+0x20],edx
30b8c0  45 33 c0                       xor    r8d,r8d
30b8c3  e8 50 fa fc ff                 call   0x2db318
30b8c8  0f 28 d7                       movaps xmm2,xmm7
30b8cb  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
30b8d2  41 0f 28 cd                    movaps xmm1,xmm13
30b8d6  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30b8da  e8 61 0a fc ff                 call   0x2cc340
30b8df  8b d6                          mov    edx,esi
30b8e1  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30b8e8  4c 8b f0                       mov    r14,rax
30b8eb  e8 20 dc fc ff                 call   0x2d9510
30b8f0  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30b8f7  48 8b f0                       mov    rsi,rax
30b8fa  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b901  e8 3e 82 fe ff                 call   0x2f3b44 ; STRING getter=0x2f3b44 x
30b906  48 8b c8                       mov    rcx,rax
30b909  e8 56 cb fc ff                 call   0x2d8464
30b90e  8b d3                          mov    edx,ebx
30b910  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30b917  48 8b f8                       mov    rdi,rax
30b91a  e8 f1 db fc ff                 call   0x2d9510
30b91f  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30b926  48 8b d8                       mov    rbx,rax
30b929  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b930  e8 df 80 fe ff                 call   0x2f3a14 ; STRING getter=0x2f3a14 PhotoFrame must be 
30b935  48 8b c8                       mov    rcx,rax
30b938  e8 57 4b 01 00                 call   0x320494
30b93d  48 8b d0                       mov    rdx,rax
30b940  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b944  4c 8b c3                       mov    r8,rbx
30b947  e8 90 ed fd ff                 call   0x2ea6dc
30b94c  48 8b d0                       mov    rdx,rax
30b94f  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30b956  4c 8b c7                       mov    r8,rdi
30b959  e8 da f3 fb ff                 call   0x2cad38
30b95e  48 8b d0                       mov    rdx,rax
30b961  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30b968  4c 8b c6                       mov    r8,rsi
30b96b  e8 d0 35 fc ff                 call   0x2cef40
30b970  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30b974  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30b979  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30b981  4d 8b ce                       mov    r9,r14
30b984  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
30b989  4c 8b c0                       mov    r8,rax
30b98c  49 8b cd                       mov    rcx,r13
30b98f  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30b995  e8 c2 59 05 00                 call   0x36135c
30b99a  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30b9a1  e8 4e 0b fc ff                 call   0x2cc4f4
30b9a6  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30b9ad  e8 42 0b fc ff                 call   0x2cc4f4
30b9b2  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30b9b6  e8 39 0b fc ff                 call   0x2cc4f4
30b9bb  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30b9c2  e8 2d 0b fc ff                 call   0x2cc4f4
30b9c7  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30b9ce  e8 21 0b fc ff                 call   0x2cc4f4
30b9d3  f3 0f 58 3d f9 d4 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d4f9]        # 0x248ed4 ; f32=16
30b9db  48 8b 9d b8 15 00 00           mov    rbx,QWORD PTR [rbp+0x15b8]
30b9e2  48 be 25 23 22 84 e4 9c f2 cb  movabs rsi,0xcbf29ce484222325
30b9ec  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
30b9f3  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30b9fa  e8 39 82 fe ff                 call   0x2f3c38 ; STRING getter=0x2f3c38 NeonSign
30b9ff  48 8b c8                       mov    rcx,rax
30ba02  e8 85 e1 fd ff                 call   0x2e9b8c
30ba07  48 8b c8                       mov    rcx,rax
30ba0a  48 8b d6                       mov    rdx,rsi
30ba0d  e8 3a a1 fd ff                 call   0x2e5b4c
30ba12  48 3b d8                       cmp    rbx,rax
30ba15  74 2f                          je     0x30ba46
30ba17  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
30ba1e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ba25  e8 42 83 fe ff                 call   0x2f3d6c
30ba2a  48 8b c8                       mov    rcx,rax
30ba2d  e8 e2 7b fd ff                 call   0x2e3614
30ba32  48 8b c8                       mov    rcx,rax
30ba35  48 8b d6                       mov    rdx,rsi
30ba38  e8 0f a1 fd ff                 call   0x2e5b4c
30ba3d  48 3b d8                       cmp    rbx,rax
30ba40  0f 85 3c 01 00 00              jne    0x30bb82
30ba46  45 8b b7 88 03 00 00           mov    r14d,DWORD PTR [r15+0x388]
30ba4d  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30ba51  41 8b 9f 8c 03 00 00           mov    ebx,DWORD PTR [r15+0x38c]
30ba58  b8 ff 00 00 00                 mov    eax,0xff
30ba5d  8b d0                          mov    edx,eax
30ba5f  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
30ba63  45 33 c9                       xor    r9d,r9d
30ba66  45 33 c0                       xor    r8d,r8d
30ba69  e8 aa f8 fc ff                 call   0x2db318
30ba6e  0f 28 d7                       movaps xmm2,xmm7
30ba71  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30ba78  41 0f 28 cd                    movaps xmm1,xmm13
30ba7c  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30ba80  e8 bb 08 fc ff                 call   0x2cc340
30ba85  8b d3                          mov    edx,ebx
30ba87  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30ba8e  4c 8b f8                       mov    r15,rax
30ba91  e8 7a da fc ff                 call   0x2d9510
30ba96  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30ba9d  48 8b f0                       mov    rsi,rax
30baa0  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30baa7  e8 98 80 fe ff                 call   0x2f3b44 ; STRING getter=0x2f3b44 x
30baac  48 8b c8                       mov    rcx,rax
30baaf  e8 b0 c9 fc ff                 call   0x2d8464
30bab4  41 8b d6                       mov    edx,r14d
30bab7  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30babe  48 8b f8                       mov    rdi,rax
30bac1  e8 4a da fc ff                 call   0x2d9510
30bac6  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
30bacd  48 8b d8                       mov    rbx,rax
30bad0  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bad7  e8 e8 83 fe ff                 call   0x2f3ec4 ; STRING getter=0x2f3ec4 Sign must be 
30badc  48 8b c8                       mov    rcx,rax
30badf  e8 a4 16 fd ff                 call   0x2dd188
30bae4  48 8b d0                       mov    rdx,rax
30bae7  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30baeb  4c 8b c3                       mov    r8,rbx
30baee  e8 e9 eb fd ff                 call   0x2ea6dc
30baf3  48 8b d0                       mov    rdx,rax
30baf6  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30bafd  4c 8b c7                       mov    r8,rdi
30bb00  e8 33 f2 fb ff                 call   0x2cad38
30bb05  48 8b d0                       mov    rdx,rax
30bb08  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30bb0f  4c 8b c6                       mov    r8,rsi
30bb12  e8 29 34 fc ff                 call   0x2cef40
30bb17  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30bb1b  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30bb20  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30bb28  4d 8b cf                       mov    r9,r15
30bb2b  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
30bb30  4c 8b c0                       mov    r8,rax
30bb33  49 8b cd                       mov    rcx,r13
30bb36  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30bb3c  e8 1b 58 05 00                 call   0x36135c
30bb41  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30bb48  e8 a7 09 fc ff                 call   0x2cc4f4
30bb4d  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30bb54  e8 9b 09 fc ff                 call   0x2cc4f4
30bb59  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bb5d  e8 92 09 fc ff                 call   0x2cc4f4
30bb62  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30bb69  e8 86 09 fc ff                 call   0x2cc4f4
30bb6e  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30bb75  e8 7a 09 fc ff                 call   0x2cc4f4
30bb7a  f3 0f 58 3d 52 d3 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d352]        # 0x248ed4 ; f32=16
30bb82  45 33 ff                       xor    r15d,r15d
30bb85  44 38 3d f5 3e 0e 00           cmp    BYTE PTR [rip+0xe3ef5],r15b        # 0x3efa81
30bb8c  0f 84 a4 00 00 00              je     0x30bc36
30bb92  83 3d e3 3e 0e 00 01           cmp    DWORD PTR [rip+0xe3ee3],0x1        # 0x3efa7c
30bb99  0f 85 97 00 00 00              jne    0x30bc36
30bb9f  b8 ff 00 00 00                 mov    eax,0xff
30bba4  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30bba8  8b d0                          mov    edx,eax
30bbaa  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
30bbae  45 33 c9                       xor    r9d,r9d
30bbb1  45 33 c0                       xor    r8d,r8d
30bbb4  e8 5f f7 fc ff                 call   0x2db318
30bbb9  0f 28 d7                       movaps xmm2,xmm7
30bbbc  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30bbc3  41 0f 28 cd                    movaps xmm1,xmm13
30bbc7  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30bbcb  e8 70 07 fc ff                 call   0x2cc340
30bbd0  48 8d 95 b8 15 00 00           lea    rdx,[rbp+0x15b8]
30bbd7  48 8b d8                       mov    rbx,rax
30bbda  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bbe1  e8 ea 84 fe ff                 call   0x2f40d0
30bbe6  48 8b c8                       mov    rcx,rax
30bbe9  e8 26 7a fd ff                 call   0x2e3614
30bbee  48 8b d0                       mov    rdx,rax
30bbf1  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bbf5  e8 d2 06 fc ff                 call   0x2cc2cc
30bbfa  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30bbfe  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30bc03  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30bc0b  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30bc0f  4c 8b cb                       mov    r9,rbx
30bc12  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30bc17  49 8b cd                       mov    rcx,r13
30bc1a  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30bc20  e8 37 57 05 00                 call   0x36135c
30bc25  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bc29  e8 c6 08 fc ff                 call   0x2cc4f4
30bc2e  f3 0f 58 3d 9e d2 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d29e]        # 0x248ed4 ; f32=16
30bc36  44 38 3d c4 39 0e 00           cmp    BYTE PTR [rip+0xe39c4],r15b        # 0x3ef601
30bc3d  0f 84 a4 00 00 00              je     0x30bce7
30bc43  83 3d b2 39 0e 00 01           cmp    DWORD PTR [rip+0xe39b2],0x1        # 0x3ef5fc
30bc4a  0f 85 97 00 00 00              jne    0x30bce7
30bc50  b8 ff 00 00 00                 mov    eax,0xff
30bc55  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30bc59  8b d0                          mov    edx,eax
30bc5b  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
30bc5f  45 33 c9                       xor    r9d,r9d
30bc62  45 33 c0                       xor    r8d,r8d
30bc65  e8 ae f6 fc ff                 call   0x2db318
30bc6a  0f 28 d7                       movaps xmm2,xmm7
30bc6d  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30bc74  41 0f 28 cd                    movaps xmm1,xmm13
30bc78  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30bc7c  e8 bf 06 fc ff                 call   0x2cc340
30bc81  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30bc88  48 8b d8                       mov    rbx,rax
30bc8b  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bc92  e8 a5 84 fe ff                 call   0x2f413c ; STRING getter=0x2f413c LTW
30bc97  48 8b c8                       mov    rcx,rax
30bc9a  e8 7d 47 01 00                 call   0x32041c
30bc9f  48 8b d0                       mov    rdx,rax
30bca2  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bca6  e8 21 06 fc ff                 call   0x2cc2cc
30bcab  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30bcaf  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30bcb4  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30bcbc  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30bcc0  4c 8b cb                       mov    r9,rbx
30bcc3  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30bcc8  49 8b cd                       mov    rcx,r13
30bccb  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30bcd1  e8 86 56 05 00                 call   0x36135c
30bcd6  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bcda  e8 15 08 fc ff                 call   0x2cc4f4
30bcdf  f3 0f 58 3d ed d1 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d1ed]        # 0x248ed4 ; f32=16
30bce7  44 38 3d b3 38 0e 00           cmp    BYTE PTR [rip+0xe38b3],r15b        # 0x3ef5a1
30bcee  41 be ff 00 00 00              mov    r14d,0xff
30bcf4  0f 84 ab 00 00 00              je     0x30bda5
30bcfa  44 39 3d 97 38 0e 00           cmp    DWORD PTR [rip+0xe3897],r15d        # 0x3ef598 ; CONFIG K.AutoAuthVirtual value(+0x48)
30bd01  0f 84 9e 00 00 00              je     0x30bda5
30bd07  83 3d 8e 38 0e 00 01           cmp    DWORD PTR [rip+0xe388e],0x1        # 0x3ef59c
30bd0e  0f 85 91 00 00 00              jne    0x30bda5
30bd14  45 33 c9                       xor    r9d,r9d
30bd17  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30bd1c  45 33 c0                       xor    r8d,r8d
30bd1f  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30bd23  41 8b d6                       mov    edx,r14d
30bd26  e8 ed f5 fc ff                 call   0x2db318
30bd2b  0f 28 d7                       movaps xmm2,xmm7
30bd2e  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30bd35  41 0f 28 cd                    movaps xmm1,xmm13
30bd39  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30bd3d  e8 fe 05 fc ff                 call   0x2cc340
30bd42  48 8d 55 08                    lea    rdx,[rbp+0x8]
30bd46  48 8b d8                       mov    rbx,rax
30bd49  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bd50  e8 3b 84 fe ff                 call   0x2f4190 ; STRING getter=0x2f4190 Auto Auth
30bd55  48 8b c8                       mov    rcx,rax
30bd58  e8 e7 1f fc ff                 call   0x2cdd44
30bd5d  48 8b d0                       mov    rdx,rax
30bd60  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bd64  e8 63 05 fc ff                 call   0x2cc2cc
30bd69  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30bd6d  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30bd72  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30bd7a  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30bd7e  4c 8b cb                       mov    r9,rbx
30bd81  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30bd86  49 8b cd                       mov    rcx,r13
30bd89  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30bd8f  e8 c8 55 05 00                 call   0x36135c
30bd94  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bd98  e8 57 07 fc ff                 call   0x2cc4f4
30bd9d  f3 0f 58 3d 2f d1 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d12f]        # 0x248ed4 ; f32=16
30bda5  44 38 3d f5 c4 0c 00           cmp    BYTE PTR [rip+0xcc4f5],r15b        # 0x3d82a1
30bdac  49 8d 7d 10                    lea    rdi,[r13+0x10]
30bdb0  0f 84 a3 00 00 00              je     0x30be59
30bdb6  83 3d df c4 0c 00 01           cmp    DWORD PTR [rip+0xcc4df],0x1        # 0x3d829c
30bdbd  0f 85 96 00 00 00              jne    0x30be59
30bdc3  45 33 c9                       xor    r9d,r9d
30bdc6  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30bdcb  45 33 c0                       xor    r8d,r8d
30bdce  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30bdd2  41 8b d6                       mov    edx,r14d
30bdd5  e8 3e f5 fc ff                 call   0x2db318
30bdda  0f 28 d7                       movaps xmm2,xmm7
30bddd  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30bde4  41 0f 28 cd                    movaps xmm1,xmm13
30bde8  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30bdec  e8 4f 05 fc ff                 call   0x2cc340
30bdf1  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30bdf5  48 8b d8                       mov    rbx,rax
30bdf8  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bdff  e8 c4 85 fe ff                 call   0x2f43c8 ; STRING getter=0x2f43c8 Interactive
30be04  48 8b c8                       mov    rcx,rax
30be07  e8 28 20 fc ff                 call   0x2cde34
30be0c  48 8b d0                       mov    rdx,rax
30be0f  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30be13  e8 b4 04 fc ff                 call   0x2cc2cc
30be18  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30be1b  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30be20  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30be28  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30be2c  4c 8b cb                       mov    r9,rbx
30be2f  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30be34  49 8b cd                       mov    rcx,r13
30be37  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30be3d  e8 1a 55 05 00                 call   0x36135c
30be42  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30be46  e8 a9 06 fc ff                 call   0x2cc4f4
30be4b  f3 0f 58 3d 81 d0 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3d081]        # 0x248ed4 ; f32=16
30be53  49 8d 75 10                    lea    rsi,[r13+0x10]
30be57  eb 03                          jmp    0x30be5c
30be59  48 8b f7                       mov    rsi,rdi
30be5c  44 38 3d 81 9f 0d 00           cmp    BYTE PTR [rip+0xd9f81],r15b        # 0x3e5de4
30be63  8a 05 2f d7 0d 00              mov    al,BYTE PTR [rip+0xdd72f]        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
30be69  74 58                          je     0x30bec3
30be6b  84 c0                          test   al,al
30be6d  74 51                          je     0x30bec0
30be6f  48 8d 0d f2 c9 f0 ff           lea    rcx,[rip+0xfffffffffff0c9f2]        # 0x218868
30be76  e8 71 19 fc ff                 call   0x2cd7ec
30be7b  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
30be82  48 8b d8                       mov    rbx,rax
30be85  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30be8c  e8 df 85 fe ff                 call   0x2f4470
30be91  48 8b c8                       mov    rcx,rax
30be94  e8 7b 77 fd ff                 call   0x2e3614
30be99  48 8b d0                       mov    rdx,rax
30be9c  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30bea3  e8 24 04 fc ff                 call   0x2cc2cc
30bea8  48 8b d0                       mov    rdx,rax
30beab  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30beaf  4c 8b c3                       mov    r8,rbx
30beb2  e8 81 ee fb ff                 call   0x2cad38
30beb7  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30bebe  eb 6c                          jmp    0x30bf2c
30bec0  48 8b fe                       mov    rdi,rsi
30bec3  84 c0                          test   al,al
30bec5  0f 84 cf 00 00 00              je     0x30bf9a
30becb  8b 15 17 9f 0d 00              mov    edx,DWORD PTR [rip+0xd9f17]        # 0x3e5de8
30bed1  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30bed8  e8 33 d6 fc ff                 call   0x2d9510
30bedd  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30bee4  48 8b d8                       mov    rbx,rax
30bee7  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30beee  e8 fd 85 fe ff                 call   0x2f44f0 ; STRING getter=0x2f44f0 Failed Attempts : 
30bef3  48 8b c8                       mov    rcx,rax
30bef6  e8 99 1e fc ff                 call   0x2cdd94
30befb  48 8b d0                       mov    rdx,rax
30befe  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30bf05  e8 c2 03 fc ff                 call   0x2cc2cc
30bf0a  48 8b d0                       mov    rdx,rax
30bf0d  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bf11  4c 8b c3                       mov    r8,rbx
30bf14  e8 27 30 fc ff                 call   0x2cef40
30bf19  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30bf20  e8 cf 05 fc ff                 call   0x2cc4f4
30bf25  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30bf2c  e8 c3 05 fc ff                 call   0x2cc4f4
30bf31  45 33 c9                       xor    r9d,r9d
30bf34  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30bf39  45 33 c0                       xor    r8d,r8d
30bf3c  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30bf40  41 8b d6                       mov    edx,r14d
30bf43  e8 d0 f3 fc ff                 call   0x2db318
30bf48  0f 28 d7                       movaps xmm2,xmm7
30bf4b  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bf52  41 0f 28 cd                    movaps xmm1,xmm13
30bf56  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
30bf5a  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30bf60  e8 db 03 fc ff                 call   0x2cc340
30bf65  48 8b 17                       mov    rdx,QWORD PTR [rdi]
30bf68  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30bf6c  4c 8b c8                       mov    r9,rax
30bf6f  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30bf77  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30bf7c  49 8b cd                       mov    rcx,r13
30bf7f  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30bf84  e8 d3 53 05 00                 call   0x36135c
30bf89  f3 0f 58 3d 43 cf f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3cf43]        # 0x248ed4 ; f32=16
30bf91  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30bf95  e8 5a 05 fc ff                 call   0x2cc4f4
30bf9a  44 38 3d a0 38 0e 00           cmp    BYTE PTR [rip+0xe38a0],r15b        # 0x3ef841
30bfa1  0f 84 a0 00 00 00              je     0x30c047
30bfa7  44 38 3d d3 3a 0e 00           cmp    BYTE PTR [rip+0xe3ad3],r15b        # 0x3efa81
30bfae  0f 84 93 00 00 00              je     0x30c047
30bfb4  45 33 c9                       xor    r9d,r9d
30bfb7  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30bfbc  45 33 c0                       xor    r8d,r8d
30bfbf  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30bfc3  41 8b d6                       mov    edx,r14d
30bfc6  e8 4d f3 fc ff                 call   0x2db318
30bfcb  0f 28 d7                       movaps xmm2,xmm7
30bfce  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30bfd5  41 0f 28 cd                    movaps xmm1,xmm13
30bfd9  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30bfdd  e8 5e 03 fc ff                 call   0x2cc340
30bfe2  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30bfe9  48 8b d8                       mov    rbx,rax
30bfec  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30bff3  e8 e4 85 fe ff                 call   0x2f45dc ; STRING getter=0x2f45dc Noclip  Collision
30bff8  48 8b c8                       mov    rcx,rax
30bffb  e8 dc db fd ff                 call   0x2e9bdc
30c000  48 8b d0                       mov    rdx,rax
30c003  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c007  e8 c0 02 fc ff                 call   0x2cc2cc
30c00c  48 8b 16                       mov    rdx,QWORD PTR [rsi]
30c00f  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30c014  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30c01c  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30c020  4c 8b cb                       mov    r9,rbx
30c023  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30c028  49 8b cd                       mov    rcx,r13
30c02b  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30c031  e8 26 53 05 00                 call   0x36135c
30c036  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c03a  e8 b5 04 fc ff                 call   0x2cc4f4
30c03f  f3 0f 58 3d 8d ce f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3ce8d]        # 0x248ed4 ; f32=16
30c047  44 38 3d 93 3a 0e 00           cmp    BYTE PTR [rip+0xe3a93],r15b        # 0x3efae1
30c04e  44 0f 28 c7                    movaps xmm8,xmm7
30c052  0f 84 ac 00 00 00              je     0x30c104
30c058  83 3d 7d 3a 0e 00 01           cmp    DWORD PTR [rip+0xe3a7d],0x1        # 0x3efadc
30c05f  0f 85 9f 00 00 00              jne    0x30c104
30c065  45 33 c9                       xor    r9d,r9d
30c068  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30c06d  45 33 c0                       xor    r8d,r8d
30c070  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30c074  41 8b d6                       mov    edx,r14d
30c077  e8 9c f2 fc ff                 call   0x2db318
30c07c  0f 28 d7                       movaps xmm2,xmm7
30c07f  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30c086  41 0f 28 cd                    movaps xmm1,xmm13
30c08a  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30c08e  e8 ad 02 fc ff                 call   0x2cc340
30c093  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30c09a  48 8b d8                       mov    rbx,rax
30c09d  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c0a4  e8 c7 85 fe ff                 call   0x2f4670 ; STRING getter=0x2f4670 Spider
30c0a9  48 8b c8                       mov    rcx,rax
30c0ac  e8 43 1c fc ff                 call   0x2cdcf4
30c0b1  48 8b d0                       mov    rdx,rax
30c0b4  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c0b8  e8 0f 02 fc ff                 call   0x2cc2cc
30c0bd  48 8b 16                       mov    rdx,QWORD PTR [rsi]
30c0c0  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30c0c5  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30c0cd  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30c0d1  4c 8b cb                       mov    r9,rbx
30c0d4  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30c0d9  49 8b cd                       mov    rcx,r13
30c0dc  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30c0e2  e8 75 52 05 00                 call   0x36135c
30c0e7  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c0eb  e8 04 04 fc ff                 call   0x2cc4f4
30c0f0  f3 0f 10 3d dc cd f3 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff3cddc]        # 0x248ed4 ; f32=16
30c0f8  f3 41 0f 58 f9                 addss  xmm7,xmm9
30c0fd  f3 41 0f 58 f8                 addss  xmm7,xmm8
30c102  eb 04                          jmp    0x30c108
30c104  41 0f 28 f8                    movaps xmm7,xmm8
30c108  44 38 3d 62 9d 0d 00           cmp    BYTE PTR [rip+0xd9d62],r15b        # 0x3e5e71
30c10f  0f 84 91 00 00 00              je     0x30c1a6
30c115  45 33 c9                       xor    r9d,r9d
30c118  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30c11d  45 33 c0                       xor    r8d,r8d
30c120  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30c124  41 8b d6                       mov    edx,r14d
30c127  e8 ec f1 fc ff                 call   0x2db318
30c12c  0f 28 d7                       movaps xmm2,xmm7
30c12f  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30c136  41 0f 28 cd                    movaps xmm1,xmm13
30c13a  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30c13e  e8 fd 01 fc ff                 call   0x2cc340
30c143  48 8d 55 08                    lea    rdx,[rbp+0x8]
30c147  48 8b d8                       mov    rbx,rax
30c14a  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c151  e8 a6 85 fe ff                 call   0x2f46fc ; STRING getter=0x2f46fc Debugging
30c156  48 8b c8                       mov    rcx,rax
30c159  e8 e6 1b fc ff                 call   0x2cdd44
30c15e  48 8b d0                       mov    rdx,rax
30c161  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c165  e8 62 01 fc ff                 call   0x2cc2cc
30c16a  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30c16e  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30c173  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30c17b  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30c17f  4c 8b cb                       mov    r9,rbx
30c182  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30c187  49 8b cd                       mov    rcx,r13
30c18a  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30c190  e8 c7 51 05 00                 call   0x36135c
30c195  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c199  e8 56 03 fc ff                 call   0x2cc4f4
30c19e  f3 0f 58 3d 2e cd f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3cd2e]        # 0x248ed4 ; f32=16
30c1a6  44 38 3d 94 33 0e 00           cmp    BYTE PTR [rip+0xe3394],r15b        # 0x3ef541
30c1ad  0f 84 a0 00 00 00              je     0x30c253
30c1b3  83 3d 82 33 0e 00 01           cmp    DWORD PTR [rip+0xe3382],0x1        # 0x3ef53c
30c1ba  0f 85 93 00 00 00              jne    0x30c253
30c1c0  45 33 c9                       xor    r9d,r9d
30c1c3  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
30c1c8  45 33 c0                       xor    r8d,r8d
30c1cb  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30c1cf  41 8b d6                       mov    edx,r14d
30c1d2  e8 41 f1 fc ff                 call   0x2db318
30c1d7  0f 28 d7                       movaps xmm2,xmm7
30c1da  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30c1e1  41 0f 28 cd                    movaps xmm1,xmm13
30c1e5  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30c1e9  e8 52 01 fc ff                 call   0x2cc340
30c1ee  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30c1f5  48 8b d8                       mov    rbx,rax
30c1f8  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c1ff  e8 a0 85 fe ff                 call   0x2f47a4 ; STRING getter=0x2f47a4 Resetting Crafting
30c204  48 8b c8                       mov    rcx,rax
30c207  e8 88 1b fc ff                 call   0x2cdd94
30c20c  48 8b d0                       mov    rdx,rax
30c20f  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c213  e8 b4 00 fc ff                 call   0x2cc2cc
30c218  48 8b 16                       mov    rdx,QWORD PTR [rsi]
30c21b  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30c220  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30c228  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30c22c  4c 8b cb                       mov    r9,rbx
30c22f  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30c234  49 8b cd                       mov    rcx,r13
30c237  66 0f 7f 74 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm6
30c23d  e8 1a 51 05 00                 call   0x36135c
30c242  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30c246  e8 a9 02 fc ff                 call   0x2cc4f4
30c24b  f3 0f 58 3d 81 cc f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3cc81]        # 0x248ed4 ; f32=16
30c253  f3 44 0f 10 05 c0 18 f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff818c0]        # 0x28db1c ; f32=10
30c25c  0f 57 d2                       xorps  xmm2,xmm2
30c25f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c266  0f 57 c9                       xorps  xmm1,xmm1
30c269  e8 d2 00 fc ff                 call   0x2cc340
30c26e  f3 0f 10 15 e6 3a 0e 00        movss  xmm2,DWORD PTR [rip+0xe3ae6]        # 0x3efd5c
30c276  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30c27d  f3 0f 10 0d d3 3a 0e 00        movss  xmm1,DWORD PTR [rip+0xe3ad3]        # 0x3efd58 ; CONFIG V2.ViolationsPosition value(+0x48)
30c285  48 8b d8                       mov    rbx,rax
30c288  e8 b3 00 fc ff                 call   0x2cc340
30c28d  48 8b c8                       mov    rcx,rax
30c290  4c 8b c3                       mov    r8,rbx
30c293  ba 02 00 00 00                 mov    edx,0x2
30c298  e8 97 f4 08 00                 call   0x39b734
30c29d  44 38 3d 1a 9a 0d 00           cmp    BYTE PTR [rip+0xd9a1a],r15b        # 0x3e5cbe
30c2a4  74 4c                          je     0x30c2f2
30c2a6  0f 57 d2                       xorps  xmm2,xmm2
30c2a9  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c2b0  0f 57 c9                       xorps  xmm1,xmm1
30c2b3  e8 88 00 fc ff                 call   0x2cc340
30c2b8  f3 0f 10 15 9c 3a 0e 00        movss  xmm2,DWORD PTR [rip+0xe3a9c]        # 0x3efd5c
30c2c0  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30c2c7  f3 0f 10 0d 89 3a 0e 00        movss  xmm1,DWORD PTR [rip+0xe3a89]        # 0x3efd58 ; CONFIG V2.ViolationsPosition value(+0x48)
30c2cf  48 8b d8                       mov    rbx,rax
30c2d2  e8 69 00 fc ff                 call   0x2cc340
30c2d7  be 01 00 00 00                 mov    esi,0x1
30c2dc  48 8b c8                       mov    rcx,rax
30c2df  8b d6                          mov    edx,esi
30c2e1  4c 8b c3                       mov    r8,rbx
30c2e4  e8 4b f4 08 00                 call   0x39b734
30c2e9  44 88 3d ce 99 0d 00           mov    BYTE PTR [rip+0xd99ce],r15b        # 0x3e5cbe
30c2f0  eb 05                          jmp    0x30c2f7
30c2f2  be 01 00 00 00                 mov    esi,0x1
30c2f7  0f 57 db                       xorps  xmm3,xmm3
30c2fa  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
30c301  0f 57 d2                       xorps  xmm2,xmm2
30c304  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30c309  0f 57 c9                       xorps  xmm1,xmm1
30c30c  e8 3f 00 fc ff                 call   0x2cc350
30c311  e8 8e 69 08 00                 call   0x392ca4
30c316  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
30c31b  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c322  f3 44 0f 10 35 11 6f f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff86f11]        # 0x29323c ; f32=240
30c32b  f3 0f 10 15 d5 6e f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff86ed5]        # 0x293208 ; f32=84.615
30c333  41 0f 28 ce                    movaps xmm1,xmm14
30c337  f3 0f 7f 80 18 01 00 00        movdqu XMMWORD PTR [rax+0x118],xmm0
30c33f  e8 fc ff fb ff                 call   0x2cc340
30c344  48 8b c8                       mov    rcx,rax
30c347  33 d2                          xor    edx,edx
30c349  e8 22 f4 08 00                 call   0x39b770
30c34e  0f b6 1d c3 c4 f0 ff           movzx  ebx,BYTE PTR [rip+0xfffffffffff0c4c3]        # 0x218818
30c355  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30c35c  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c363  e8 f0 84 fe ff                 call   0x2f4858 ; STRING getter=0x2f4858 Anti Violations Bar
30c368  48 8b c8                       mov    rcx,rax
30c36b  e8 24 41 01 00                 call   0x320494
30c370  f7 db                          neg    ebx
30c372  48 8b c8                       mov    rcx,rax
30c375  45 1b c0                       sbb    r8d,r8d
30c378  33 d2                          xor    edx,edx
30c37a  41 83 e0 fc                    and    r8d,0xfffffffc
30c37e  41 83 c0 2f                    add    r8d,0x2f
30c382  e8 1d 0c 08 00                 call   0x38cfa4
30c387  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30c38e  e8 d9 60 08 00                 call   0x39246c
30c393  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30c39b  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30c3a2  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30c3aa  e8 91 ff fb ff                 call   0x2cc340
30c3af  f3 0f 10 85 b8 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15b8]
30c3b7  48 8d 1d aa 3e 0e 00           lea    rbx,[rip+0xe3eaa]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
30c3be  f3 0f 10 8d bc 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15bc]
30c3c6  48 8d 55 90                    lea    rdx,[rbp-0x70]
30c3ca  48 8b cb                       mov    rcx,rbx
30c3cd  f3 0f 11 05 83 39 0e 00        movss  DWORD PTR [rip+0xe3983],xmm0        # 0x3efd58 ; CONFIG V2.ViolationsPosition value(+0x48)
30c3d5  4c 8b c6                       mov    r8,rsi
30c3d8  f3 0f 11 0d 7c 39 0e 00        movss  DWORD PTR [rip+0xe397c],xmm1        # 0x3efd5c
30c3e0  e8 0b d5 fd ff                 call   0x2e98f0
30c3e5  48 8b c8                       mov    rcx,rax
30c3e8  e8 83 89 fc ff                 call   0x2d4d70
30c3ed  f3 44 0f 10 15 c6 6d f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff86dc6]        # 0x2931bc ; f32=16
30c3f6  bf 0a 00 00 00                 mov    edi,0xa
30c3fb  f3 0f 10 35 8d 6d f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff86d8d]        # 0x293190 ; f32=6.5
30c403  f3 44 0f 10 0d 24 6d f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff86d24]        # 0x293130 ; f32=1.9
30c40c  84 c0                          test   al,al
30c40e  0f 84 b8 01 00 00              je     0x30c5cc
30c414  44 38 3d 8d da 0d 00           cmp    BYTE PTR [rip+0xdda8d],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c41b  0f 84 ab 01 00 00              je     0x30c5cc
30c421  8b 05 c1 28 0e 00              mov    eax,DWORD PTR [rip+0xe28c1]        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c427  85 c0                          test   eax,eax
30c429  0f 85 93 00 00 00              jne    0x30c4c2
30c42f  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30c437  49 8b cd                       mov    rcx,r13
30c43a  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30c442  f3 41 0f 58 d0                 addss  xmm2,xmm8
30c447  f3 0f 58 0d c9 6d f8 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff86dc9]        # 0x293218 ; f32=119.231
30c44f  f3 0f 10 1d 3d 9c 0d 00        movss  xmm3,DWORD PTR [rip+0xd9c3d]        # 0x3e6094
30c457  f3 44 0f 11 54 24 30           movss  DWORD PTR [rsp+0x30],xmm10
30c45e  f3 44 0f 11 74 24 28           movss  DWORD PTR [rsp+0x28],xmm14
30c465  f3 0f 11 95 b4 15 00 00        movss  DWORD PTR [rbp+0x15b4],xmm2
30c46d  f3 0f 11 8d b0 15 00 00        movss  DWORD PTR [rbp+0x15b0],xmm1
30c475  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30c47b  e8 7c ec 04 00                 call   0x35b0fc
30c480  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30c488  49 8b cd                       mov    rcx,r13
30c48b  f3 0f 58 15 91 16 f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff81691]        # 0x28db24 ; f32=30
30c493  f3 0f 10 1d f5 9b 0d 00        movss  xmm3,DWORD PTR [rip+0xd9bf5]        # 0x3e6090
30c49b  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30c4a3  f3 44 0f 11 54 24 30           movss  DWORD PTR [rsp+0x30],xmm10
30c4aa  f3 44 0f 11 74 24 28           movss  DWORD PTR [rsp+0x28],xmm14
30c4b1  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
30c4b8  e8 3f ec 04 00                 call   0x35b0fc
30c4bd  e9 0a 01 00 00                 jmp    0x30c5cc
30c4c2  3b c6                          cmp    eax,esi
30c4c4  75 7d                          jne    0x30c543
30c4c6  f3 44 0f 2c 85 b4 15 00 00     cvttss2si r8d,DWORD PTR [rbp+0x15b4]
30c4cf  c7 44 24 30 08 00 00 00        mov    DWORD PTR [rsp+0x30],0x8
30c4d7  49 8b cd                       mov    rcx,r13
30c4da  c7 44 24 28 f0 00 00 00        mov    DWORD PTR [rsp+0x28],0xf0
30c4e2  f3 0f 2c 95 b0 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c4ea  f3 0f 10 1d a2 9b 0d 00        movss  xmm3,DWORD PTR [rip+0xd9ba2]        # 0x3e6094
30c4f2  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30c4f8  e8 bb f5 04 00                 call   0x35bab8
30c4fd  f3 0f 10 85 b4 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15b4]
30c505  49 8b cd                       mov    rcx,r13
30c508  f3 0f 2c 95 b0 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c510  c7 44 24 30 08 00 00 00        mov    DWORD PTR [rsp+0x30],0x8
30c518  c7 44 24 28 f0 00 00 00        mov    DWORD PTR [rsp+0x28],0xf0
30c520  f3 0f 10 1d 68 9b 0d 00        movss  xmm3,DWORD PTR [rip+0xd9b68]        # 0x3e6090
30c528  f3 41 0f 58 c7                 addss  xmm0,xmm15
30c52d  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
30c534  f3 44 0f 2c c0                 cvttss2si r8d,xmm0
30c539  e8 7a f5 04 00                 call   0x35bab8
30c53e  e9 89 00 00 00                 jmp    0x30c5cc
30c543  83 f8 02                       cmp    eax,0x2
30c546  0f 85 80 00 00 00              jne    0x30c5cc
30c54c  f3 44 0f 2c 85 b4 15 00 00     cvttss2si r8d,DWORD PTR [rbp+0x15b4]
30c555  89 7c 24 38                    mov    DWORD PTR [rsp+0x38],edi
30c559  49 8b cd                       mov    rcx,r13
30c55c  c7 44 24 30 08 00 00 00        mov    DWORD PTR [rsp+0x30],0x8
30c564  c7 44 24 28 f0 00 00 00        mov    DWORD PTR [rsp+0x28],0xf0
30c56c  f3 0f 2c 95 b0 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c574  f3 0f 10 1d 18 9b 0d 00        movss  xmm3,DWORD PTR [rip+0xd9b18]        # 0x3e6094
30c57c  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30c582  e8 a5 5d 05 00                 call   0x36232c
30c587  f3 0f 10 85 b4 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15b4]
30c58f  49 8b cd                       mov    rcx,r13
30c592  f3 0f 2c 95 b0 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c59a  89 7c 24 38                    mov    DWORD PTR [rsp+0x38],edi
30c59e  c7 44 24 30 08 00 00 00        mov    DWORD PTR [rsp+0x30],0x8
30c5a6  c7 44 24 28 f0 00 00 00        mov    DWORD PTR [rsp+0x28],0xf0
30c5ae  f3 0f 10 1d da 9a 0d 00        movss  xmm3,DWORD PTR [rip+0xd9ada]        # 0x3e6090
30c5b6  f3 41 0f 58 c7                 addss  xmm0,xmm15
30c5bb  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
30c5c2  f3 44 0f 2c c0                 cvttss2si r8d,xmm0
30c5c7  e8 60 5d 05 00                 call   0x36232c
30c5cc  41 b8 04 00 00 00              mov    r8d,0x4
30c5d2  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30c5d7  48 8b cb                       mov    rcx,rbx
30c5da  e8 11 d3 fd ff                 call   0x2e98f0
30c5df  48 8b c8                       mov    rcx,rax
30c5e2  e8 89 87 fc ff                 call   0x2d4d70
30c5e7  f3 44 0f 10 05 98 6b f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff86b98]        # 0x293188 ; f32=6
30c5f0  f3 44 0f 10 3d 7f 6b f8 ff     movss  xmm15,DWORD PTR [rip+0xfffffffffff86b7f]        # 0x293178 ; f32=4
30c5f9  84 c0                          test   al,al
30c5fb  0f 84 e5 00 00 00              je     0x30c6e6
30c601  44 38 3d a0 d8 0d 00           cmp    BYTE PTR [rip+0xdd8a0],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c608  0f 84 d8 00 00 00              je     0x30c6e6
30c60e  f3 0f 10 1d 82 9a 0d 00        movss  xmm3,DWORD PTR [rip+0xd9a82]        # 0x3e6098
30c616  8b 05 cc 26 0e 00              mov    eax,DWORD PTR [rip+0xe26cc]        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c61c  f3 41 0f 58 df                 addss  xmm3,xmm15
30c621  85 c0                          test   eax,eax
30c623  75 3a                          jne    0x30c65f
30c625  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30c62d  49 8b cd                       mov    rcx,r13
30c630  f3 0f 58 15 f8 14 f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff814f8]        # 0x28db30 ; f32=60
30c638  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30c640  f3 44 0f 11 54 24 30           movss  DWORD PTR [rsp+0x30],xmm10
30c647  f3 44 0f 11 74 24 28           movss  DWORD PTR [rsp+0x28],xmm14
30c64e  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
30c655  e8 a2 ea 04 00                 call   0x35b0fc
30c65a  e9 87 00 00 00                 jmp    0x30c6e6
30c65f  3b c6                          cmp    eax,esi
30c661  75 3e                          jne    0x30c6a1
30c663  f3 0f 10 85 b4 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15b4]
30c66b  49 8b cd                       mov    rcx,r13
30c66e  f3 0f 58 05 b2 14 f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff814b2]        # 0x28db28 ; f32=40
30c676  f3 0f 2c 95 b0 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c67e  c7 44 24 30 08 00 00 00        mov    DWORD PTR [rsp+0x30],0x8
30c686  c7 44 24 28 f0 00 00 00        mov    DWORD PTR [rsp+0x28],0xf0
30c68e  f3 44 0f 2c c0                 cvttss2si r8d,xmm0
30c693  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
30c69a  e8 19 f4 04 00                 call   0x35bab8
30c69f  eb 45                          jmp    0x30c6e6
30c6a1  83 f8 02                       cmp    eax,0x2
30c6a4  75 40                          jne    0x30c6e6
30c6a6  f3 0f 10 85 b4 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15b4]
30c6ae  49 8b cd                       mov    rcx,r13
30c6b1  f3 0f 58 05 6f 14 f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff8146f]        # 0x28db28 ; f32=40
30c6b9  f3 0f 2c 95 b0 15 00 00        cvttss2si edx,DWORD PTR [rbp+0x15b0]
30c6c1  89 7c 24 38                    mov    DWORD PTR [rsp+0x38],edi
30c6c5  c7 44 24 30 08 00 00 00        mov    DWORD PTR [rsp+0x30],0x8
30c6cd  c7 44 24 28 f0 00 00 00        mov    DWORD PTR [rsp+0x28],0xf0
30c6d5  f3 44 0f 2c c0                 cvttss2si r8d,xmm0
30c6da  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
30c6e1  e8 46 5c 05 00                 call   0x36232c
30c6e6  e8 a9 42 08 00                 call   0x390994
30c6eb  4c 8b c6                       mov    r8,rsi
30c6ee  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30c6f3  48 8b cb                       mov    rcx,rbx
30c6f6  e8 f5 d1 fd ff                 call   0x2e98f0
30c6fb  48 8b c8                       mov    rcx,rax
30c6fe  e8 6d 86 fc ff                 call   0x2d4d70
30c703  84 c0                          test   al,al
30c705  74 68                          je     0x30c76f
30c707  44 38 3d 9a d7 0d 00           cmp    BYTE PTR [rip+0xdd79a],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c70e  74 5f                          je     0x30c76f
30c710  83 3d d1 25 0e 00 03           cmp    DWORD PTR [rip+0xe25d1],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c717  75 56                          jne    0x30c76f
30c719  41 b8 04 00 00 00              mov    r8d,0x4
30c71f  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30c724  48 8b cb                       mov    rcx,rbx
30c727  e8 c4 d1 fd ff                 call   0x2e98f0
30c72c  48 8b c8                       mov    rcx,rax
30c72f  e8 3c 86 fc ff                 call   0x2d4d70
30c734  84 c0                          test   al,al
30c736  75 37                          jne    0x30c76f
30c738  f3 0f 10 05 54 99 0d 00        movss  xmm0,DWORD PTR [rip+0xd9954]        # 0x3e6094
30c740  41 0f 28 cd                    movaps xmm1,xmm13
30c744  f3 0f 10 1d 44 99 0d 00        movss  xmm3,DWORD PTR [rip+0xd9944]        # 0x3e6090
30c74c  49 8b cd                       mov    rcx,r13
30c74f  f3 0f 10 95 00 01 00 00        movss  xmm2,DWORD PTR [rbp+0x100]
30c757  f3 0f 11 74 24 30              movss  DWORD PTR [rsp+0x30],xmm6
30c75d  f3 0f 11 44 24 28              movss  DWORD PTR [rsp+0x28],xmm0
30c763  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
30c76a  e8 99 ed 04 00                 call   0x35b508
30c76f  41 b8 04 00 00 00              mov    r8d,0x4
30c775  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30c77a  48 8b cb                       mov    rcx,rbx
30c77d  e8 6e d1 fd ff                 call   0x2e98f0
30c782  48 8b c8                       mov    rcx,rax
30c785  e8 e6 85 fc ff                 call   0x2d4d70
30c78a  84 c0                          test   al,al
30c78c  0f 84 3e 01 00 00              je     0x30c8d0
30c792  44 38 3d 0f d7 0d 00           cmp    BYTE PTR [rip+0xdd70f],r15b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
30c799  0f 84 31 01 00 00              je     0x30c8d0
30c79f  83 3d 42 25 0e 00 03           cmp    DWORD PTR [rip+0xe2542],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c7a6  0f 85 24 01 00 00              jne    0x30c8d0
30c7ac  f3 44 0f 10 15 e3 98 0d 00     movss  xmm10,DWORD PTR [rip+0xd98e3]        # 0x3e6098
30c7b5  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30c7ba  4c 8b c6                       mov    r8,rsi
30c7bd  f3 45 0f 58 d7                 addss  xmm10,xmm15
30c7c2  48 8b cb                       mov    rcx,rbx
30c7c5  e8 26 d1 fd ff                 call   0x2e98f0
30c7ca  48 8b c8                       mov    rcx,rax
30c7cd  e8 9e 85 fc ff                 call   0x2d4d70
30c7d2  84 c0                          test   al,al
30c7d4  74 4a                          je     0x30c820
30c7d6  f3 0f 10 05 b6 98 0d 00        movss  xmm0,DWORD PTR [rip+0xd98b6]        # 0x3e6094
30c7de  41 0f 28 cd                    movaps xmm1,xmm13
30c7e2  f3 0f 10 1d a6 98 0d 00        movss  xmm3,DWORD PTR [rip+0xd98a6]        # 0x3e6090
30c7ea  49 8b cd                       mov    rcx,r13
30c7ed  f3 0f 10 95 00 01 00 00        movss  xmm2,DWORD PTR [rbp+0x100]
30c7f5  f3 44 0f 11 44 24 40           movss  DWORD PTR [rsp+0x40],xmm8
30c7fc  f3 44 0f 11 54 24 38           movss  DWORD PTR [rsp+0x38],xmm10
30c803  f3 0f 11 74 24 30              movss  DWORD PTR [rsp+0x30],xmm6
30c809  f3 0f 11 44 24 28              movss  DWORD PTR [rsp+0x28],xmm0
30c80f  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
30c816  e8 1d 01 05 00                 call   0x35c938
30c81b  e9 b0 00 00 00                 jmp    0x30c8d0
30c820  83 3d c1 24 0e 00 03           cmp    DWORD PTR [rip+0xe24c1],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
30c827  0f 85 a3 00 00 00              jne    0x30c8d0
30c82d  4c 8b c6                       mov    r8,rsi
30c830  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30c835  48 8b cb                       mov    rcx,rbx
30c838  e8 b3 d0 fd ff                 call   0x2e98f0
30c83d  48 8b c8                       mov    rcx,rax
30c840  e8 2b 85 fc ff                 call   0x2d4d70
30c845  84 c0                          test   al,al
30c847  0f 85 83 00 00 00              jne    0x30c8d0
30c84d  f3 0f 10 35 13 0e 0e 00        movss  xmm6,DWORD PTR [rip+0xe0e13]        # 0x3ed668 ; CONFIG F.outerRadius value(+0x48)
30c855  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30c85a  f3 0f 59 35 e6 69 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff869e6]        # 0x293248 ; f32=485.47
30c862  ba ff 00 00 00                 mov    edx,0xff
30c867  45 33 c9                       xor    r9d,r9d
30c86a  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
30c872  44 8d 42 a6                    lea    r8d,[rdx-0x5a]
30c876  e8 9d ea fc ff                 call   0x2db318
30c87b  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
30c880  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30c885  40 88 74 24 40                 mov    BYTE PTR [rsp+0x40],sil
30c88a  f3 0f 10 95 00 01 00 00        movss  xmm2,DWORD PTR [rbp+0x100]
30c892  0f 28 ce                       movaps xmm1,xmm6
30c895  f3 0f 5c 0d ff 68 f8 ff        subss  xmm1,DWORD PTR [rip+0xfffffffffff868ff]        # 0x29319c ; f32=8.44568
30c89d  48 89 44 24 38                 mov    QWORD PTR [rsp+0x38],rax
30c8a2  41 0f 28 da                    movaps xmm3,xmm10
30c8a6  49 8b cd                       mov    rcx,r13
30c8a9  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30c8af  f3 41 0f 5f cb                 maxss  xmm1,xmm11
30c8b4  f3 0f 11 4c 24 30              movss  DWORD PTR [rsp+0x30],xmm1
30c8ba  41 0f 28 cd                    movaps xmm1,xmm13
30c8be  f3 0f 11 74 24 28              movss  DWORD PTR [rsp+0x28],xmm6
30c8c4  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
30c8cb  e8 68 e3 04 00                 call   0x35ac38
30c8d0  44 38 3d 6a 32 0e 00           cmp    BYTE PTR [rip+0xe326a],r15b        # 0x3efb41
30c8d7  0f 84 71 04 00 00              je     0x30cd4e
30c8dd  f3 0f 10 05 d3 0d 0e 00        movss  xmm0,DWORD PTR [rip+0xe0dd3]        # 0x3ed6b8 ; CONFIG F.teleportdistance value(+0x48)
30c8e5  f2 0f 10 35 73 68 f8 ff        movsd  xmm6,QWORD PTR [rip+0xfffffffffff86873]        # 0x293160
30c8ed  0f 5a c0                       cvtps2pd xmm0,xmm0
30c8f0  f2 0f 59 c6                    mulsd  xmm0,xmm6
30c8f4  66 0f 5a c0                    cvtpd2ps xmm0,xmm0
30c8f8  e8 6b 81 00 00                 call   0x314a68
30c8fd  0f 57 c9                       xorps  xmm1,xmm1
30c900  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30c907  f3 0f 5a c8                    cvtss2sd xmm1,xmm0
30c90b  f2 0f 5e ce                    divsd  xmm1,xmm6
30c90f  e8 48 cc fc ff                 call   0x2d955c
30c914  45 33 c0                       xor    r8d,r8d
30c917  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30c91e  b2 2e                          mov    dl,0x2e
30c920  e8 07 c0 fc ff                 call   0x2d892c
30c925  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
30c929  74 35                          je     0x30c960
30c92b  4c 8d 48 03                    lea    r9,[rax+0x3]
30c92f  45 33 c0                       xor    r8d,r8d
30c932  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
30c939  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30c940  e8 53 cb fc ff                 call   0x2d9498
30c945  48 8b d0                       mov    rdx,rax
30c948  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30c94f  e8 90 82 fc ff                 call   0x2d4be4
30c954  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30c95b  e8 94 fb fb ff                 call   0x2cc4f4
30c960  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
30c967  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c96e  e8 89 7f fe ff                 call   0x2f48fc ; STRING getter=0x2f48fc /5.0m
30c973  48 8b c8                       mov    rcx,rax
30c976  e8 61 bb fc ff                 call   0x2d84dc
30c97b  48 8d 55 20                    lea    rdx,[rbp+0x20]
30c97f  48 8b d8                       mov    rbx,rax
30c982  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30c989  e8 12 7f fe ff                 call   0x2f48a0 ; STRING getter=0x2f48a0 Teleport Distance : 
30c98e  48 8b c8                       mov    rcx,rax
30c991  e8 26 3b 01 00                 call   0x3204bc
30c996  48 8b d0                       mov    rdx,rax
30c999  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30c9a0  e8 27 f9 fb ff                 call   0x2cc2cc
30c9a5  48 8b d0                       mov    rdx,rax
30c9a8  4c 8d 85 80 00 00 00           lea    r8,[rbp+0x80]
30c9af  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30c9b6  e8 a9 25 fc ff                 call   0x2cef64
30c9bb  48 8b d0                       mov    rdx,rax
30c9be  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30c9c5  4c 8b c3                       mov    r8,rbx
30c9c8  e8 6b e3 fb ff                 call   0x2cad38
30c9cd  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30c9d4  e8 1b fb fb ff                 call   0x2cc4f4
30c9d9  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30c9e0  e8 0f fb fb ff                 call   0x2cc4f4
30c9e5  45 33 c9                       xor    r9d,r9d
30c9e8  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
30c9f0  45 33 c0                       xor    r8d,r8d
30c9f3  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30c9f7  ba ff 00 00 00                 mov    edx,0xff
30c9fc  e8 17 e9 fc ff                 call   0x2db318
30ca01  0f 28 d7                       movaps xmm2,xmm7
30ca04  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ca0b  41 0f 28 cd                    movaps xmm1,xmm13
30ca0f  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
30ca13  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30ca19  e8 22 f9 fb ff                 call   0x2cc340
30ca1e  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30ca22  4c 8d 85 10 02 00 00           lea    r8,[rbp+0x210]
30ca29  4c 8b c8                       mov    r9,rax
30ca2c  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30ca34  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30ca39  49 8b cd                       mov    rcx,r13
30ca3c  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30ca41  e8 16 49 05 00                 call   0x36135c
30ca46  48 8d 0d 13 bf f0 ff           lea    rcx,[rip+0xfffffffffff0bf13]        # 0x218960
30ca4d  e8 4e bc fc ff                 call   0x2d86a0
30ca52  84 c0                          test   al,al
30ca54  0f 85 17 01 00 00              jne    0x30cb71
30ca5a  f3 0f 58 3d 72 c4 f3 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff3c472]        # 0x248ed4 ; f32=16
30ca62  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
30ca69  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ca70  e8 17 81 fe ff                 call   0x2f4b8c ; STRING getter=0x2f4b8c /66 Positions
30ca75  48 8b c8                       mov    rcx,rax
30ca78  e8 0b 07 fd ff                 call   0x2dd188
30ca7d  48 8d 0d dc be f0 ff           lea    rcx,[rip+0xfffffffffff0bedc]        # 0x218960
30ca84  48 8b f8                       mov    rdi,rax
30ca87  e8 d8 44 01 00                 call   0x320f64
30ca8c  48 8b d0                       mov    rdx,rax
30ca8f  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30ca96  e8 75 ca fc ff                 call   0x2d9510
30ca9b  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30ca9f  48 8b d8                       mov    rbx,rax
30caa2  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30caa9  e8 8e 80 fe ff                 call   0x2f4b3c ; STRING getter=0x2f4b3c Simulating 
30caae  48 8b c8                       mov    rcx,rax
30cab1  e8 7e 13 fc ff                 call   0x2cde34
30cab6  48 8b d0                       mov    rdx,rax
30cab9  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30cac0  e8 07 f8 fb ff                 call   0x2cc2cc
30cac5  48 8b d0                       mov    rdx,rax
30cac8  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30cacf  4c 8b c3                       mov    r8,rbx
30cad2  e8 69 24 fc ff                 call   0x2cef40
30cad7  48 8b d0                       mov    rdx,rax
30cada  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30cade  4c 8b c7                       mov    r8,rdi
30cae1  e8 52 e2 fb ff                 call   0x2cad38
30cae6  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
30caed  e8 02 fa fb ff                 call   0x2cc4f4
30caf2  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30caf9  e8 f6 f9 fb ff                 call   0x2cc4f4
30cafe  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
30cb05  e8 ea f9 fb ff                 call   0x2cc4f4
30cb0a  45 33 c9                       xor    r9d,r9d
30cb0d  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
30cb15  45 33 c0                       xor    r8d,r8d
30cb18  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30cb1c  ba ff 00 00 00                 mov    edx,0xff
30cb21  e8 f2 e7 fc ff                 call   0x2db318
30cb26  0f 28 d7                       movaps xmm2,xmm7
30cb29  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30cb30  41 0f 28 cd                    movaps xmm1,xmm13
30cb34  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
30cb38  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
30cb3e  e8 fd f7 fb ff                 call   0x2cc340
30cb43  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
30cb47  4c 8d 45 d8                    lea    r8,[rbp-0x28]
30cb4b  4c 8b c8                       mov    r9,rax
30cb4e  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
30cb56  48 8d 44 24 70                 lea    rax,[rsp+0x70]
30cb5b  49 8b cd                       mov    rcx,r13
30cb5e  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
30cb63  e8 f4 47 05 00                 call   0x36135c
30cb68  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30cb6c  e8 83 f9 fb ff                 call   0x2cc4f4
30cb71  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
30cb78  e8 77 f9 fb ff                 call   0x2cc4f4
30cb7d  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30cb84  e8 6b f9 fb ff                 call   0x2cc4f4
30cb89  44 38 3d b1 2f 0e 00           cmp    BYTE PTR [rip+0xe2fb1],r15b        # 0x3efb41
30cb90  0f 84 b8 01 00 00              je     0x30cd4e
30cb96  48 8d 0d c3 bd f0 ff           lea    rcx,[rip+0xfffffffffff0bdc3]        # 0x218960
30cb9d  e8 c2 43 01 00                 call   0x320f64
30cba2  48 3b c6                       cmp    rax,rsi
30cba5  0f 86 a3 01 00 00              jbe    0x30cd4e
30cbab  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30cbb2  e8 ed e7 fb ff                 call   0x2cb3a4
30cbb7  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30cbbe  e8 e1 e7 fb ff                 call   0x2cb3a4
30cbc3  48 8d 0d 96 bd f0 ff           lea    rcx,[rip+0xfffffffffff0bd96]        # 0x218960
30cbca  45 8b f7                       mov    r14d,r15d
30cbcd  e8 92 43 01 00                 call   0x320f64
30cbd2  48 3b c6                       cmp    rax,rsi
30cbd5  0f 84 73 01 00 00              je     0x30cd4e
30cbdb  f3 0f 10 3d 69 65 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff86569]        # 0x29314c ; f32=2.571
30cbe3  f3 44 0f 10 05 14 65 f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff86514]        # 0x293100 ; f32=1.45
30cbec  f3 44 0f 10 0d 27 0f f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff80f27]        # 0x28db1c ; f32=10
30cbf5  49 63 de                       movsxd rbx,r14d
30cbf8  48 8d 0d 61 bd f0 ff           lea    rcx,[rip+0xfffffffffff0bd61]        # 0x218960
30cbff  48 8d 53 01                    lea    rdx,[rbx+0x1]
30cc03  e8 c8 2b fe ff                 call   0x2ef7d0
30cc08  48 8b d3                       mov    rdx,rbx
30cc0b  48 8d 0d 4e bd f0 ff           lea    rcx,[rip+0xfffffffffff0bd4e]        # 0x218960
30cc12  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
30cc16  8b 78 08                       mov    edi,DWORD PTR [rax+0x8]
30cc19  e8 b2 2b fe ff                 call   0x2ef7d0
30cc1e  4c 8d 0d 83 a6 0c 00           lea    r9,[rip+0xca683]        # 0x3d72a8
30cc25  49 8b cc                       mov    rcx,r12
30cc28  4c 8d 85 b0 15 00 00           lea    r8,[rbp+0x15b0]
30cc2f  48 8d 55 80                    lea    rdx,[rbp-0x80]
30cc33  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30cc37  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30cc3a  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30cc3f  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30cc42  e8 d9 00 06 00                 call   0x36cd20
30cc47  84 c0                          test   al,al
30cc49  0f 84 e1 00 00 00              je     0x30cd30
30cc4f  4c 8d 0d 52 a6 0c 00           lea    r9,[rip+0xca652]        # 0x3d72a8
30cc56  f2 0f 11 75 50                 movsd  QWORD PTR [rbp+0x50],xmm6
30cc5b  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
30cc62  89 7d 58                       mov    DWORD PTR [rbp+0x58],edi
30cc65  48 8d 55 50                    lea    rdx,[rbp+0x50]
30cc69  49 8b cc                       mov    rcx,r12
30cc6c  e8 af 00 06 00                 call   0x36cd20
30cc71  84 c0                          test   al,al
30cc73  0f 84 b7 00 00 00              je     0x30cd30
30cc79  bb ff 00 00 00                 mov    ebx,0xff
30cc7e  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30cc83  8b d3                          mov    edx,ebx
30cc85  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
30cc89  45 33 c9                       xor    r9d,r9d
30cc8c  45 33 c0                       xor    r8d,r8d
30cc8f  e8 84 e6 fc ff                 call   0x2db318
30cc94  48 8b c8                       mov    rcx,rax
30cc97  e8 70 2b fe ff                 call   0x2ef80c
30cc9c  45 33 c9                       xor    r9d,r9d
30cc9f  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
30cca3  45 33 c0                       xor    r8d,r8d
30cca6  48 8d 4d 90                    lea    rcx,[rbp-0x70]
30ccaa  8b d3                          mov    edx,ebx
30ccac  8b f0                          mov    esi,eax
30ccae  e8 65 e6 fc ff                 call   0x2db318
30ccb3  48 8b c8                       mov    rcx,rax
30ccb6  e8 51 2b fe ff                 call   0x2ef80c
30ccbb  f3 0f 10 95 ac 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15ac]
30ccc3  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30ccca  f3 0f 10 8d a8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15a8]
30ccd2  8b f8                          mov    edi,eax
30ccd4  e8 67 f6 fb ff                 call   0x2cc340
30ccd9  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30cce1  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
30cce8  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30ccf0  48 8b d8                       mov    rbx,rax
30ccf3  e8 48 f6 fb ff                 call   0x2cc340
30ccf8  f3 44 0f 11 4c 24 48           movss  DWORD PTR [rsp+0x48],xmm9
30ccff  48 8b d0                       mov    rdx,rax
30cd02  89 74 24 40                    mov    DWORD PTR [rsp+0x40],esi
30cd06  44 8b cf                       mov    r9d,edi
30cd09  f3 0f 11 7c 24 38              movss  DWORD PTR [rsp+0x38],xmm7
30cd0f  be 01 00 00 00                 mov    esi,0x1
30cd14  40 88 74 24 30                 mov    BYTE PTR [rsp+0x30],sil
30cd19  4c 8b c3                       mov    r8,rbx
30cd1c  40 88 74 24 28                 mov    BYTE PTR [rsp+0x28],sil
30cd21  49 8b cd                       mov    rcx,r13
30cd24  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
30cd2b  e8 dc f5 04 00                 call   0x35c30c
30cd30  48 8d 0d 29 bc f0 ff           lea    rcx,[rip+0xfffffffffff0bc29]        # 0x218960
30cd37  44 03 f6                       add    r14d,esi
30cd3a  e8 25 42 01 00                 call   0x320f64
30cd3f  48 2b c6                       sub    rax,rsi
30cd42  49 63 ce                       movsxd rcx,r14d
30cd45  48 3b c8                       cmp    rcx,rax
30cd48  0f 82 a7 fe ff ff              jb     0x30cbf5
30cd4e  0f 57 d2                       xorps  xmm2,xmm2
30cd51  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30cd58  0f 57 c9                       xorps  xmm1,xmm1
30cd5b  e8 e0 f5 fb ff                 call   0x2cc340
30cd60  f3 0f 10 15 a4 2f 0e 00        movss  xmm2,DWORD PTR [rip+0xe2fa4]        # 0x3efd0c
30cd68  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30cd6f  f3 0f 10 0d 91 2f 0e 00        movss  xmm1,DWORD PTR [rip+0xe2f91]        # 0x3efd08 ; CONFIG V2.WarningBarPosition value(+0x48)
30cd77  48 8b d8                       mov    rbx,rax
30cd7a  e8 c1 f5 fb ff                 call   0x2cc340
30cd7f  48 8b c8                       mov    rcx,rax
30cd82  4c 8b c3                       mov    r8,rbx
30cd85  ba 02 00 00 00                 mov    edx,0x2
30cd8a  e8 a5 e9 08 00                 call   0x39b734
30cd8f  44 38 3d 29 8f 0d 00           cmp    BYTE PTR [rip+0xd8f29],r15b        # 0x3e5cbf
30cd96  74 45                          je     0x30cddd
30cd98  0f 57 d2                       xorps  xmm2,xmm2
30cd9b  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30cda2  0f 57 c9                       xorps  xmm1,xmm1
30cda5  e8 96 f5 fb ff                 call   0x2cc340
30cdaa  f3 0f 10 15 5a 2f 0e 00        movss  xmm2,DWORD PTR [rip+0xe2f5a]        # 0x3efd0c
30cdb2  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30cdb9  f3 0f 10 0d 47 2f 0e 00        movss  xmm1,DWORD PTR [rip+0xe2f47]        # 0x3efd08 ; CONFIG V2.WarningBarPosition value(+0x48)
30cdc1  48 8b d8                       mov    rbx,rax
30cdc4  e8 77 f5 fb ff                 call   0x2cc340
30cdc9  48 8b c8                       mov    rcx,rax
30cdcc  4c 8b c3                       mov    r8,rbx
30cdcf  8b d6                          mov    edx,esi
30cdd1  e8 5e e9 08 00                 call   0x39b734
30cdd6  44 88 3d e2 8e 0d 00           mov    BYTE PTR [rip+0xd8ee2],r15b        # 0x3e5cbf
30cddd  f3 0f 10 05 ff 08 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff808ff]        # 0x28d6e4 ; f32=255
30cde5  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30cdea  0f 57 db                       xorps  xmm3,xmm3
30cded  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
30cdf3  0f 57 d2                       xorps  xmm2,xmm2
30cdf6  0f 57 c9                       xorps  xmm1,xmm1
30cdf9  e8 52 f5 fb ff                 call   0x2cc350
30cdfe  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30ce02  e8 9d 5e 08 00                 call   0x392ca4
30ce07  0f 57 db                       xorps  xmm3,xmm3
30ce0a  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
30ce11  0f 57 d2                       xorps  xmm2,xmm2
30ce14  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30ce19  0f 57 c9                       xorps  xmm1,xmm1
30ce1c  f3 0f 7f b0 a8 01 00 00        movdqu XMMWORD PTR [rax+0x1a8],xmm6
30ce24  e8 27 f5 fb ff                 call   0x2cc350
30ce29  e8 76 5e 08 00                 call   0x392ca4
30ce2e  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
30ce33  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ce3a  f3 0f 10 15 c6 63 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff863c6]        # 0x293208 ; f32=84.615
30ce42  41 0f 28 ce                    movaps xmm1,xmm14
30ce46  f3 0f 7f 80 18 01 00 00        movdqu XMMWORD PTR [rax+0x118],xmm0
30ce4e  e8 ed f4 fb ff                 call   0x2cc340
30ce53  48 8b c8                       mov    rcx,rax
30ce56  33 d2                          xor    edx,edx
30ce58  e8 13 e9 08 00                 call   0x39b770
30ce5d  8a 0d b5 b9 f0 ff              mov    cl,BYTE PTR [rip+0xfffffffffff0b9b5]        # 0x218818
30ce63  8a 05 df c6 0d 00              mov    al,BYTE PTR [rip+0xdc6df]        # 0x3e9548 ; CONFIG Bools.lookingat value(+0x48)
30ce69  84 c9                          test   cl,cl
30ce6b  74 09                          je     0x30ce76
30ce6d  bf aa 00 00 00                 mov    edi,0xaa
30ce72  84 c0                          test   al,al
30ce74  75 05                          jne    0x30ce7b
30ce76  bf ae 00 00 00                 mov    edi,0xae
30ce7b  84 c9                          test   cl,cl
30ce7d  74 07                          je     0x30ce86
30ce7f  41 8b df                       mov    ebx,r15d
30ce82  84 c0                          test   al,al
30ce84  75 02                          jne    0x30ce88
30ce86  8b de                          mov    ebx,esi
30ce88  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30ce8f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ce96  e8 85 7d fe ff                 call   0x2f4c20 ; STRING getter=0x2f4c20 Warning Bar Window
30ce9b  48 8b c8                       mov    rcx,rax
30ce9e  e8 f1 0e fc ff                 call   0x2cdd94
30cea3  0b df                          or     ebx,edi
30cea5  48 8b c8                       mov    rcx,rax
30cea8  44 8b c3                       mov    r8d,ebx
30ceab  33 d2                          xor    edx,edx
30cead  e8 f2 00 08 00                 call   0x38cfa4
30ceb2  48 8d 8d 08 01 00 00           lea    rcx,[rbp+0x108]
30ceb9  e8 ae 55 08 00                 call   0x39246c
30cebe  44 38 3d 53 b9 f0 ff           cmp    BYTE PTR [rip+0xfffffffffff0b953],r15b        # 0x218818
30cec5  f3 44 0f 10 35 56 0c f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff80c56]        # 0x28db24 ; f32=30
30cece  74 05                          je     0x30ced5
30ced0  0f 57 c0                       xorps  xmm0,xmm0
30ced3  eb 04                          jmp    0x30ced9
30ced5  41 0f 28 c6                    movaps xmm0,xmm14
30ced9  f3 0f 10 95 0c 01 00 00        movss  xmm2,DWORD PTR [rbp+0x10c]
30cee1  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30cee8  f3 0f 10 8d 08 01 00 00        movss  xmm1,DWORD PTR [rbp+0x108]
30cef0  f3 0f 58 d0                    addss  xmm2,xmm0
30cef4  f3 0f 11 95 0c 01 00 00        movss  DWORD PTR [rbp+0x10c],xmm2
30cefc  f3 41 0f 5c d6                 subss  xmm2,xmm14
30cf01  e8 3a f4 fb ff                 call   0x2cc340
30cf06  f3 0f 10 85 a8 15 00 00        movss  xmm0,DWORD PTR [rbp+0x15a8]
30cf0e  f3 0f 10 8d ac 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15ac]
30cf16  f3 0f 11 05 ea 2d 0e 00        movss  DWORD PTR [rip+0xe2dea],xmm0        # 0x3efd08 ; CONFIG V2.WarningBarPosition value(+0x48)
30cf1e  f3 0f 11 0d e6 2d 0e 00        movss  DWORD PTR [rip+0xe2de6],xmm1        # 0x3efd0c
30cf26  e8 69 3a 08 00                 call   0x390994
30cf2b  f3 0f 10 85 08 01 00 00        movss  xmm0,DWORD PTR [rbp+0x108]
30cf33  40 8a ce                       mov    cl,sil
30cf36  f3 0f 10 8d 0c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x10c]
30cf3e  f3 0f 58 05 ce 62 f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff862ce]        # 0x293214 ; f32=116
30cf46  f3 0f 58 0d 5e 62 f8 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff8625e]        # 0x2931ac ; f32=12.821
30cf4e  f3 0f 11 85 08 01 00 00        movss  DWORD PTR [rbp+0x108],xmm0
30cf56  f3 0f 11 8d 0c 01 00 00        movss  DWORD PTR [rbp+0x10c],xmm1
30cf5e  e8 51 7c 00 00                 call   0x314bb4
30cf63  48 89 85 c0 05 00 00           mov    QWORD PTR [rbp+0x5c0],rax
30cf6a  e8 41 33 fd ff                 call   0x2e02b0
30cf6f  48 8b 9d a0 01 00 00           mov    rbx,QWORD PTR [rbp+0x1a0]
30cf76  48 8d 95 d8 04 00 00           lea    rdx,[rbp+0x4d8]
30cf7d  48 8b cb                       mov    rcx,rbx
30cf80  48 89 45 18                    mov    QWORD PTR [rbp+0x18],rax
30cf84  4c 8b f0                       mov    r14,rax
30cf87  e8 74 b1 05 00                 call   0x368100
30cf8c  48 8b cb                       mov    rcx,rbx
30cf8f  e8 f0 ba 05 00                 call   0x368a84
30cf94  48 8b c8                       mov    rcx,rax
30cf97  48 8b f0                       mov    rsi,rax
30cf9a  e8 69 df fb ff                 call   0x2caf08
30cf9f  84 c0                          test   al,al
30cfa1  0f 84 70 1a 00 00              je     0x30ea17
30cfa7  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
30cfae  48 8b cb                       mov    rcx,rbx
30cfb1  e8 ae c1 05 00                 call   0x369164
30cfb6  48 8b ce                       mov    rcx,rsi
30cfb9  e8 22 47 06 00                 call   0x3716e0
30cfbe  48 8b ce                       mov    rcx,rsi
30cfc1  4c 8b f8                       mov    r15,rax
30cfc4  e8 ef 4e 06 00                 call   0x371eb8
30cfc9  48 8b ce                       mov    rcx,rsi
30cfcc  4c 8b f0                       mov    r14,rax
30cfcf  e8 e0 51 06 00                 call   0x3721b4
30cfd4  48 8b ce                       mov    rcx,rsi
30cfd7  48 8b f8                       mov    rdi,rax
30cfda  e8 85 44 06 00                 call   0x371464
30cfdf  48 8b cf                       mov    rcx,rdi
30cfe2  48 8b d8                       mov    rbx,rax
30cfe5  e8 1e df fb ff                 call   0x2caf08
30cfea  84 c0                          test   al,al
30cfec  0f 84 5a 06 00 00              je     0x30d64c
30cff2  45 33 ff                       xor    r15d,r15d
30cff5  44 38 bf 98 03 00 00           cmp    BYTE PTR [rdi+0x398],r15b
30cffc  0f 84 11 1a 00 00              je     0x30ea13
30d002  48 8b ce                       mov    rcx,rsi
30d005  e8 26 46 06 00                 call   0x371630
30d00a  48 8b c8                       mov    rcx,rax
30d00d  48 8b d8                       mov    rbx,rax
30d010  e8 f3 de fb ff                 call   0x2caf08
30d015  84 c0                          test   al,al
30d017  0f 84 f6 19 00 00              je     0x30ea13
30d01d  48 8b cb                       mov    rcx,rbx
30d020  e8 97 5a 06 00                 call   0x372abc
30d025  48 8b c8                       mov    rcx,rax
30d028  48 8b f8                       mov    rdi,rax
30d02b  e8 d8 de fb ff                 call   0x2caf08
30d030  84 c0                          test   al,al
30d032  0f 84 db 19 00 00              je     0x30ea13
30d038  44 38 3d a9 ac 0c 00           cmp    BYTE PTR [rip+0xcaca9],r15b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
30d03f  f3 44 0f 10 4b 40              movss  xmm9,DWORD PTR [rbx+0x40]
30d045  74 12                          je     0x30d059
30d047  f3 0f 10 05 59 b0 0c 00        movss  xmm0,DWORD PTR [rip+0xcb059]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
30d04f  f3 0f 5d 05 a1 0a f8 ff        minss  xmm0,DWORD PTR [rip+0xfffffffffff80aa1]        # 0x28daf8
30d057  eb 04                          jmp    0x30d05d
30d059  41 0f 28 c4                    movaps xmm0,xmm12
30d05d  f3 44 0f 10 47 44              movss  xmm8,DWORD PTR [rdi+0x44]
30d063  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30d06a  f3 0f 10 7f 38                 movss  xmm7,DWORD PTR [rdi+0x38]
30d06f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30d076  f3 0f 10 77 34                 movss  xmm6,DWORD PTR [rdi+0x34]
30d07b  f3 44 0f 59 c8                 mulss  xmm9,xmm0
30d080  0f 57 c0                       xorps  xmm0,xmm0
30d083  0f 11 85 80 00 00 00           movups XMMWORD PTR [rbp+0x80],xmm0
30d08a  0f 11 85 90 00 00 00           movups XMMWORD PTR [rbp+0x90],xmm0
30d091  45 0f 5a c0                    cvtps2pd xmm8,xmm8
30d095  0f 5a ff                       cvtps2pd xmm7,xmm7
30d098  0f 5a f6                       cvtps2pd xmm6,xmm6
30d09b  e8 fc 7b fe ff                 call   0x2f4c9c ; STRING getter=0x2f4c9c %.2f/%.2f/%.2f/%.2f
30d0a0  48 8b c8                       mov    rcx,rax
30d0a3  e8 ec 33 01 00                 call   0x320494
30d0a8  48 8b d0                       mov    rdx,rax
30d0ab  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30d0b2  41 0f 5a d1                    cvtps2pd xmm2,xmm9
30d0b6  f2 44 0f 11 44 24 28           movsd  QWORD PTR [rsp+0x28],xmm8
30d0bd  0f 28 de                       movaps xmm3,xmm6
30d0c0  66 49 0f 7e d0                 movq   r8,xmm2
30d0c5  f2 0f 11 7c 24 20              movsd  QWORD PTR [rsp+0x20],xmm7
30d0cb  66 49 0f 7e f1                 movq   r9,xmm6
30d0d0  e8 3f 16 fe ff                 call   0x2ee714
30d0d5  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30d0dc  e8 73 92 fc ff                 call   0x2d6354
30d0e1  48 8b c8                       mov    rcx,rax
30d0e4  48 8b d8                       mov    rbx,rax
30d0e7  e8 34 3d fd ff                 call   0x2e0e20
30d0ec  48 89 05 25 86 0d 00           mov    QWORD PTR [rip+0xd8625],rax        # 0x3e5718
30d0f3  48 85 c0                       test   rax,rax
30d0f6  75 39                          jne    0x30d131
30d0f8  f3 0f 10 47 44                 movss  xmm0,DWORD PTR [rdi+0x44]
30d0fd  41 0f 28 c9                    movaps xmm1,xmm9
30d101  f3 0f 10 5f 34                 movss  xmm3,DWORD PTR [rdi+0x34]
30d106  48 8b cb                       mov    rcx,rbx
30d109  f3 0f 10 57 38                 movss  xmm2,DWORD PTR [rdi+0x38]
30d10e  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
30d114  e8 4b 2d fd ff                 call   0x2dfe64
30d119  48 89 05 f8 85 0d 00           mov    QWORD PTR [rip+0xd85f8],rax        # 0x3e5718
30d120  48 85 c0                       test   rax,rax
30d123  0f 84 ad 77 00 00              je     0x3148d6
30d129  48 8b c8                       mov    rcx,rax
30d12c  e8 3f 69 fd ff                 call   0x2e3a70
30d131  44 38 3d 40 d5 0d 00           cmp    BYTE PTR [rip+0xdd540],r15b        # 0x3ea678 ; CONFIG Bools.simulateproj value(+0x48)
30d138  0f 84 d5 18 00 00              je     0x30ea13
30d13e  48 8b 8d a0 01 00 00           mov    rcx,QWORD PTR [rbp+0x1a0]
30d145  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30d149  e8 b2 af 05 00                 call   0x368100
30d14e  48 8b c8                       mov    rcx,rax
30d151  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
30d158  41 0f 28 d1                    movaps xmm2,xmm9
30d15c  e8 0b 25 fd ff                 call   0x2df66c
30d161  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30d165  e8 52 aa 0b 00                 call   0x3c7bbc
30d16a  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30d171  e8 2e e2 fb ff                 call   0x2cb3a4
30d176  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30d17d  e8 22 e2 fb ff                 call   0x2cb3a4
30d182  e8 e5 98 fd ff                 call   0x2e6a6c
30d187  f3 0f 10 15 5d 10 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff8105d]        # 0x28e1ec ; f32=-9.81
30d18f  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30d193  f3 0f 10 77 34                 movss  xmm6,DWORD PTR [rdi+0x34]
30d198  8b d8                          mov    ebx,eax
30d19a  0f 57 db                       xorps  xmm3,xmm3
30d19d  0f 57 c9                       xorps  xmm1,xmm1
30d1a0  81 cb 00 09 a3 48              or     ebx,0x48a30900
30d1a6  e8 fd a9 0b 00                 call   0x3c7ba8
30d1ab  f3 0f 10 57 38                 movss  xmm2,DWORD PTR [rdi+0x38]
30d1b0  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30d1b4  48 8b c8                       mov    rcx,rax
30d1b7  e8 b0 24 fd ff                 call   0x2df66c
30d1bc  89 5c 24 38                    mov    DWORD PTR [rsp+0x38],ebx
30d1c0  4c 8d 4d a0                    lea    r9,[rbp-0x60]
30d1c4  f3 0f 11 74 24 30              movss  DWORD PTR [rsp+0x30],xmm6
30d1ca  4c 8d 85 30 01 00 00           lea    r8,[rbp+0x130]
30d1d1  f3 0f 10 35 07 10 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff81007]        # 0x28e1e0 ; f32=8
30d1d9  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
30d1e0  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d1e4  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d1e8  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d1eb  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30d1ee  48 8d 45 80                    lea    rax,[rbp-0x80]
30d1f2  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
30d1f7  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30d1fd  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30d202  e8 55 b6 00 00                 call   0x31885c
30d207  f3 0f 10 4d a8                 movss  xmm1,DWORD PTR [rbp-0x58]
30d20c  f3 0f 10 45 a0                 movss  xmm0,DWORD PTR [rbp-0x60]
30d211  e8 96 b4 0b 00                 call   0x3c86ac
30d216  0f 28 f0                       movaps xmm6,xmm0
30d219  f3 0f 10 45 a4                 movss  xmm0,DWORD PTR [rbp-0x5c]
30d21e  e8 c5 b3 0b 00                 call   0x3c85e8
30d223  f3 44 0f 10 35 74 60 f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff86074]        # 0x2932a0
30d22c  48 8d 4d 08                    lea    rcx,[rbp+0x8]
30d230  41 0f 57 c6                    xorps  xmm0,xmm14
30d234  0f 57 db                       xorps  xmm3,xmm3
30d237  0f 28 c8                       movaps xmm1,xmm0
30d23a  0f 28 d6                       movaps xmm2,xmm6
30d23d  e8 66 a9 0b 00                 call   0x3c7ba8
30d242  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30d246  e8 0d 69 fd ff                 call   0x2e3b58
30d24b  84 c0                          test   al,al
30d24d  74 22                          je     0x30d271
30d24f  0f 57 db                       xorps  xmm3,xmm3
30d252  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d256  41 0f 28 d4                    movaps xmm2,xmm12
30d25a  0f 57 c9                       xorps  xmm1,xmm1
30d25d  e8 46 a9 0b 00                 call   0x3c7ba8
30d262  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d266  f2 0f 11 45 a0                 movsd  QWORD PTR [rbp-0x60],xmm0
30d26b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d26e  89 45 a8                       mov    DWORD PTR [rbp-0x58],eax
30d271  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30d275  e8 42 a9 0b 00                 call   0x3c7bbc
30d27a  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30d27e  e8 39 a9 0b 00                 call   0x3c7bbc
30d283  f3 0f 10 75 a4                 movss  xmm6,DWORD PTR [rbp-0x5c]
30d288  0f 28 c6                       movaps xmm0,xmm6
30d28b  f3 41 0f 5c c4                 subss  xmm0,xmm12
30d290  e8 97 64 fd ff                 call   0x2e372c
30d295  f3 0f 10 3d 2f 08 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff8082f]        # 0x28dacc ; f32=1e-06
30d29d  0f 2f f8                       comiss xmm7,xmm0
30d2a0  76 26                          jbe    0x30d2c8
30d2a2  0f 57 db                       xorps  xmm3,xmm3
30d2a5  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d2a9  0f 57 d2                       xorps  xmm2,xmm2
30d2ac  41 0f 28 cc                    movaps xmm1,xmm12
30d2b0  e8 f3 a8 0b 00                 call   0x3c7ba8
30d2b5  f3 0f 10 1d a3 5f f8 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff85fa3]        # 0x293260 ; f32=-1
30d2bd  0f 57 d2                       xorps  xmm2,xmm2
30d2c0  0f 57 c9                       xorps  xmm1,xmm1
30d2c3  e9 a4 00 00 00                 jmp    0x30d36c
30d2c8  f3 41 0f 58 f4                 addss  xmm6,xmm12
30d2cd  0f 28 c6                       movaps xmm0,xmm6
30d2d0  e8 57 64 fd ff                 call   0x2e372c
30d2d5  0f 2f f8                       comiss xmm7,xmm0
30d2d8  76 19                          jbe    0x30d2f3
30d2da  0f 57 db                       xorps  xmm3,xmm3
30d2dd  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d2e1  0f 57 d2                       xorps  xmm2,xmm2
30d2e4  41 0f 28 cc                    movaps xmm1,xmm12
30d2e8  e8 bb a8 0b 00                 call   0x3c7ba8
30d2ed  41 0f 28 dc                    movaps xmm3,xmm12
30d2f1  eb ca                          jmp    0x30d2bd
30d2f3  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30d2f8  e8 9b 2e fd ff                 call   0x2e0198
30d2fd  44 0f 28 c8                    movaps xmm9,xmm0
30d301  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d306  e8 8d 2e fd ff                 call   0x2e0198
30d30b  44 0f 28 d0                    movaps xmm10,xmm0
30d30f  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30d314  e8 4f 2c fd ff                 call   0x2dff68
30d319  44 0f 28 c0                    movaps xmm8,xmm0
30d31d  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d322  e8 41 2c fd ff                 call   0x2dff68
30d327  0f 28 f8                       movaps xmm7,xmm0
30d32a  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d32f  e8 64 2e fd ff                 call   0x2e0198
30d334  0f 28 f0                       movaps xmm6,xmm0
30d337  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d33c  41 0f 57 f6                    xorps  xmm6,xmm14
30d340  e8 23 2c fd ff                 call   0x2dff68
30d345  0f 28 c8                       movaps xmm1,xmm0
30d348  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d34c  0f 28 de                       movaps xmm3,xmm6
30d34f  0f 57 d2                       xorps  xmm2,xmm2
30d352  e8 51 a8 0b 00                 call   0x3c7ba8
30d357  f3 41 0f 59 f9                 mulss  xmm7,xmm9
30d35c  41 0f 28 d0                    movaps xmm2,xmm8
30d360  f3 45 0f 59 d1                 mulss  xmm10,xmm9
30d365  0f 28 df                       movaps xmm3,xmm7
30d368  41 0f 28 ca                    movaps xmm1,xmm10
30d36c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d370  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30d374  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
30d379  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d37c  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
30d37f  e8 24 a8 0b 00                 call   0x3c7ba8
30d384  bf 32 00 00 00                 mov    edi,0x32
30d389  4c 8d 35 f0 35 0e 00           lea    r14,[rip+0xe35f0]        # 0x3f0980
30d390  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d394  f2 0f 11 45 f8                 movsd  QWORD PTR [rbp-0x8],xmm0
30d399  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d39c  89 45 00                       mov    DWORD PTR [rbp+0x0],eax
30d39f  8b 05 33 38 0e 00              mov    eax,DWORD PTR [rip+0xe3833]        # 0x3f0bd8
30d3a5  a8 01                          test   al,0x1
30d3a7  75 1e                          jne    0x30d3c7
30d3a9  83 c8 01                       or     eax,0x1
30d3ac  4c 8d 0d 09 a8 0b 00           lea    r9,[rip+0xba809]        # 0x3c7bbc
30d3b3  44 8b c7                       mov    r8d,edi
30d3b6  89 05 1c 38 0e 00              mov    DWORD PTR [rip+0xe381c],eax        # 0x3f0bd8
30d3bc  8d 57 da                       lea    edx,[rdi-0x26]
30d3bf  49 8b ce                       mov    rcx,r14
30d3c2  e8 6d 2a fd ff                 call   0x2dfe34
30d3c7  41 8b f7                       mov    esi,r15d
30d3ca  66 0f 6e f6                    movd   xmm6,esi
30d3ce  0f 5b f6                       cvtdq2ps xmm6,xmm6
30d3d1  f3 0f 59 35 c7 5c f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff85cc7]        # 0x2930a0 ; f32=0.125664
30d3d9  0f 28 c6                       movaps xmm0,xmm6
30d3dc  e8 87 2b fd ff                 call   0x2dff68
30d3e1  0f 28 f8                       movaps xmm7,xmm0
30d3e4  0f 28 c6                       movaps xmm0,xmm6
30d3e7  f3 0f 59 3d 99 0a 0e 00        mulss  xmm7,DWORD PTR [rip+0xe0a99]        # 0x3ede88 ; CONFIG F.ProjectileRadius value(+0x48)
30d3ef  e8 a4 2d fd ff                 call   0x2e0198
30d3f4  0f 28 f0                       movaps xmm6,xmm0
30d3f7  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d3fb  f3 0f 59 35 85 0a 0e 00        mulss  xmm6,DWORD PTR [rip+0xe0a85]        # 0x3ede88 ; CONFIG F.ProjectileRadius value(+0x48)
30d403  e8 44 d5 00 00                 call   0x31a94c
30d408  0f 28 d7                       movaps xmm2,xmm7
30d40b  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30d40f  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30d413  48 8b d8                       mov    rbx,rax
30d416  e8 51 22 fd ff                 call   0x2df66c
30d41b  4c 8b c0                       mov    r8,rax
30d41e  48 8d 55 68                    lea    rdx,[rbp+0x68]
30d422  48 8b cb                       mov    rcx,rbx
30d425  e8 de 22 fd ff                 call   0x2df708
30d42a  0f 28 d6                       movaps xmm2,xmm6
30d42d  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30d434  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30d438  48 8b d8                       mov    rbx,rax
30d43b  e8 2c 22 fd ff                 call   0x2df66c
30d440  4c 8b c0                       mov    r8,rax
30d443  48 8d 95 78 04 00 00           lea    rdx,[rbp+0x478]
30d44a  48 8b cb                       mov    rcx,rbx
30d44d  e8 b6 22 fd ff                 call   0x2df708
30d452  8b ce                          mov    ecx,esi
30d454  ff c6                          inc    esi
30d456  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d45a  48 8d 14 49                    lea    rdx,[rcx+rcx*2]
30d45e  f2 41 0f 11 04 96              movsd  QWORD PTR [r14+rdx*4],xmm0
30d464  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d467  41 89 44 96 08                 mov    DWORD PTR [r14+rdx*4+0x8],eax
30d46c  3b f7                          cmp    esi,edi
30d46e  0f 8c 56 ff ff ff              jl     0x30d3ca
30d474  4c 8d 0d 29 df fb ff           lea    r9,[rip+0xfffffffffffbdf29]        # 0x2cb3a4
30d47b  4c 8b c7                       mov    r8,rdi
30d47e  ba 08 00 00 00                 mov    edx,0x8
30d483  48 8d 8d 20 13 00 00           lea    rcx,[rbp+0x1320]
30d48a  e8 a5 29 fd ff                 call   0x2dfe34
30d48f  40 b6 01                       mov    sil,0x1
30d492  4c 8d 35 0f 9e 0c 00           lea    r14,[rip+0xc9e0f]        # 0x3d72a8
30d499  49 8b df                       mov    rbx,r15
30d49c  4c 8d 2d dd 34 0e 00           lea    r13,[rip+0xe34dd]        # 0x3f0980
30d4a3  48 8d 04 5b                    lea    rax,[rbx+rbx*2]
30d4a7  4d 8b ce                       mov    r9,r14
30d4aa  f2 41 0f 10 44 85 00           movsd  xmm0,QWORD PTR [r13+rax*4+0x0]
30d4b1  4c 8d 85 20 13 00 00           lea    r8,[rbp+0x1320]
30d4b8  41 8b 44 85 08                 mov    eax,DWORD PTR [r13+rax*4+0x8]
30d4bd  4d 8d 04 d8                    lea    r8,[r8+rbx*8]
30d4c1  48 8d 55 80                    lea    rdx,[rbp-0x80]
30d4c5  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30d4ca  49 8b cc                       mov    rcx,r12
30d4cd  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30d4d0  e8 4b f8 05 00                 call   0x36cd20
30d4d5  f6 d8                          neg    al
30d4d7  1a c9                          sbb    cl,cl
30d4d9  48 ff c3                       inc    rbx
30d4dc  40 22 ce                       and    cl,sil
30d4df  40 8a f1                       mov    sil,cl
30d4e2  48 3b df                       cmp    rbx,rdi
30d4e5  75 bc                          jne    0x30d4a3
30d4e7  4c 8b ad a0 15 00 00           mov    r13,QWORD PTR [rbp+0x15a0]
30d4ee  84 c9                          test   cl,cl
30d4f0  74 2f                          je     0x30d521
30d4f2  44 38 3d bf 9b 0d 00           cmp    BYTE PTR [rip+0xd9bbf],r15b        # 0x3e70b8 ; CONFIG Bools.DrawHitPoint value(+0x48)
30d4f9  74 26                          je     0x30d521
30d4fb  48 8d 0d 16 f6 0d 00           lea    rcx,[rip+0xdf616]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30d502  e8 05 23 fe ff                 call   0x2ef80c
30d507  f3 0f 10 15 1d 06 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff8061d]        # 0x28db2c ; f32=50
30d50f  48 8d 95 20 13 00 00           lea    rdx,[rbp+0x1320]
30d516  44 8b c8                       mov    r9d,eax
30d519  49 8b cd                       mov    rcx,r13
30d51c  e8 e3 d2 04 00                 call   0x35a804
30d521  44 38 3d 40 9b 0d 00           cmp    BYTE PTR [rip+0xd9b40],r15b        # 0x3e7068 ; CONFIG Bools.DrawPath value(+0x48)
30d528  0f 84 07 01 00 00              je     0x30d635
30d52e  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d532  49 8b df                       mov    rbx,r15
30d535  e8 2a 3a 01 00                 call   0x320f64
30d53a  48 83 f8 01                    cmp    rax,0x1
30d53e  0f 84 f1 00 00 00              je     0x30d635
30d544  f3 0f 10 3d f8 5b f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff85bf8]        # 0x293144 ; f32=2.5
30d54c  48 8d 7b 01                    lea    rdi,[rbx+0x1]
30d550  48 8b d7                       mov    rdx,rdi
30d553  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d557  e8 74 22 fe ff                 call   0x2ef7d0
30d55c  48 8b d3                       mov    rdx,rbx
30d55f  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d563  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
30d567  8b 70 08                       mov    esi,DWORD PTR [rax+0x8]
30d56a  e8 61 22 fe ff                 call   0x2ef7d0
30d56f  4d 8b ce                       mov    r9,r14
30d572  4c 8d 85 b0 15 00 00           lea    r8,[rbp+0x15b0]
30d579  48 8d 55 80                    lea    rdx,[rbp-0x80]
30d57d  49 8b cc                       mov    rcx,r12
30d580  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d584  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d587  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30d58c  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30d58f  e8 8c f7 05 00                 call   0x36cd20
30d594  84 c0                          test   al,al
30d596  0f 84 81 00 00 00              je     0x30d61d
30d59c  4d 8b ce                       mov    r9,r14
30d59f  f2 0f 11 75 50                 movsd  QWORD PTR [rbp+0x50],xmm6
30d5a4  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
30d5ab  89 75 58                       mov    DWORD PTR [rbp+0x58],esi
30d5ae  48 8d 55 50                    lea    rdx,[rbp+0x50]
30d5b2  49 8b cc                       mov    rcx,r12
30d5b5  e8 66 f7 05 00                 call   0x36cd20
30d5ba  84 c0                          test   al,al
30d5bc  74 5f                          je     0x30d61d
30d5be  48 8d 0d 53 f5 0d 00           lea    rcx,[rip+0xdf553]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30d5c5  e8 42 22 fe ff                 call   0x2ef80c
30d5ca  f3 0f 10 95 ac 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15ac]
30d5d2  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30d5d9  f3 0f 10 8d a8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15a8]
30d5e1  8b d8                          mov    ebx,eax
30d5e3  e8 58 ed fb ff                 call   0x2cc340
30d5e8  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30d5f0  48 8d 4d 78                    lea    rcx,[rbp+0x78]
30d5f4  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30d5fc  e8 3f ed fb ff                 call   0x2cc340
30d601  44 8b cb                       mov    r9d,ebx
30d604  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
30d60a  4c 8d 85 b8 15 00 00           lea    r8,[rbp+0x15b8]
30d611  49 8b cd                       mov    rcx,r13
30d614  48 8d 55 78                    lea    rdx,[rbp+0x78]
30d618  e8 3f ec 04 00                 call   0x35c25c
30d61d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d621  48 8b df                       mov    rbx,rdi
30d624  e8 3b 39 01 00                 call   0x320f64
30d629  48 ff c8                       dec    rax
30d62c  48 3b f8                       cmp    rdi,rax
30d62f  0f 82 17 ff ff ff              jb     0x30d54c
30d635  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d639  e8 06 1e fe ff                 call   0x2ef444
30d63e  f3 44 0f 10 35 dd 04 f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff804dd]        # 0x28db24 ; f32=30
30d647  e9 c7 13 00 00                 jmp    0x30ea13
30d64c  49 8b ce                       mov    rcx,r14
30d64f  e8 b4 d8 fb ff                 call   0x2caf08
30d654  84 c0                          test   al,al
30d656  0f 84 1a 06 00 00              je     0x30dc76
30d65c  49 8b ce                       mov    rcx,r14
30d65f  e8 d4 e2 05 00                 call   0x36b938
30d664  48 8b c8                       mov    rcx,rax
30d667  48 8b d0                       mov    rdx,rax
30d66a  e8 99 d8 fb ff                 call   0x2caf08
30d66f  45 33 ff                       xor    r15d,r15d
30d672  84 c0                          test   al,al
30d674  0f 84 99 13 00 00              je     0x30ea13
30d67a  48 8b ca                       mov    rcx,rdx
30d67d  e8 ae 54 06 00                 call   0x372b30
30d682  48 8b c8                       mov    rcx,rax
30d685  48 8b f8                       mov    rdi,rax
30d688  e8 7b d8 fb ff                 call   0x2caf08
30d68d  84 c0                          test   al,al
30d68f  0f 84 7e 13 00 00              je     0x30ea13
30d695  f3 44 0f 10 47 3c              movss  xmm8,DWORD PTR [rdi+0x3c]
30d69b  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30d6a2  f3 45 0f 59 86 ac 03 00 00     mulss  xmm8,DWORD PTR [r14+0x3ac]
30d6ab  e8 f4 dc fb ff                 call   0x2cb3a4
30d6b0  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30d6b7  e8 e8 dc fb ff                 call   0x2cb3a4
30d6bc  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30d6c0  e8 f7 a4 0b 00                 call   0x3c7bbc
30d6c5  f3 0f 10 7f 34                 movss  xmm7,DWORD PTR [rdi+0x34]
30d6ca  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30d6d1  f3 0f 10 77 38                 movss  xmm6,DWORD PTR [rdi+0x38]
30d6d6  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30d6dd  0f 57 c0                       xorps  xmm0,xmm0
30d6e0  0f 11 85 80 00 00 00           movups XMMWORD PTR [rbp+0x80],xmm0
30d6e7  0f 11 85 90 00 00 00           movups XMMWORD PTR [rbp+0x90],xmm0
30d6ee  0f 5a ff                       cvtps2pd xmm7,xmm7
30d6f1  0f 5a f6                       cvtps2pd xmm6,xmm6
30d6f4  e8 b7 76 fe ff                 call   0x2f4db0 ; STRING getter=0x2f4db0 %.2f/%.2f/%.2f/%.2f
30d6f9  48 8b c8                       mov    rcx,rax
30d6fc  e8 93 2d 01 00                 call   0x320494
30d701  48 8b d0                       mov    rdx,rax
30d704  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30d70b  41 0f 5a d0                    cvtps2pd xmm2,xmm8
30d70f  0f 28 de                       movaps xmm3,xmm6
30d712  f2 0f 11 7c 24 20              movsd  QWORD PTR [rsp+0x20],xmm7
30d718  66 49 0f 7e d0                 movq   r8,xmm2
30d71d  66 49 0f 7e f1                 movq   r9,xmm6
30d722  e8 ed 0f fe ff                 call   0x2ee714
30d727  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30d72e  e8 21 8c fc ff                 call   0x2d6354
30d733  48 8b c8                       mov    rcx,rax
30d736  48 8b d8                       mov    rbx,rax
30d739  e8 e2 36 fd ff                 call   0x2e0e20
30d73e  48 89 05 d3 7f 0d 00           mov    QWORD PTR [rip+0xd7fd3],rax        # 0x3e5718
30d745  48 85 c0                       test   rax,rax
30d748  75 35                          jne    0x30d77f
30d74a  f3 0f 10 5f 34                 movss  xmm3,DWORD PTR [rdi+0x34]
30d74f  41 0f 28 c8                    movaps xmm1,xmm8
30d753  f3 0f 10 57 38                 movss  xmm2,DWORD PTR [rdi+0x38]
30d758  48 8b cb                       mov    rcx,rbx
30d75b  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
30d762  e8 fd 26 fd ff                 call   0x2dfe64
30d767  48 89 05 aa 7f 0d 00           mov    QWORD PTR [rip+0xd7faa],rax        # 0x3e5718
30d76e  48 85 c0                       test   rax,rax
30d771  0f 84 5f 71 00 00              je     0x3148d6
30d777  48 8b c8                       mov    rcx,rax
30d77a  e8 f1 62 fd ff                 call   0x2e3a70
30d77f  44 38 3d f2 ce 0d 00           cmp    BYTE PTR [rip+0xdcef2],r15b        # 0x3ea678 ; CONFIG Bools.simulateproj value(+0x48)
30d786  0f 84 87 12 00 00              je     0x30ea13
30d78c  41 0f 28 d4                    movaps xmm2,xmm12
30d790  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30d794  48 8d 8d d8 04 00 00           lea    rcx,[rbp+0x4d8]
30d79b  e8 cc 1e fd ff                 call   0x2df66c
30d7a0  4c 8b c0                       mov    r8,rax
30d7a3  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
30d7aa  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
30d7b1  e8 52 1f fd ff                 call   0x2df708
30d7b6  e8 b1 92 fd ff                 call   0x2e6a6c
30d7bb  f3 0f 10 15 29 0a f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff80a29]        # 0x28e1ec ; f32=-9.81
30d7c3  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30d7c7  8b d8                          mov    ebx,eax
30d7c9  0f 57 db                       xorps  xmm3,xmm3
30d7cc  0f 57 c9                       xorps  xmm1,xmm1
30d7cf  81 cb 00 09 a3 48              or     ebx,0x48a30900
30d7d5  e8 ce a3 0b 00                 call   0x3c7ba8
30d7da  f3 0f 10 57 38                 movss  xmm2,DWORD PTR [rdi+0x38]
30d7df  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30d7e3  48 8b c8                       mov    rcx,rax
30d7e6  e8 81 1e fd ff                 call   0x2df66c
30d7eb  41 0f 28 d0                    movaps xmm2,xmm8
30d7ef  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30d7f6  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
30d7f9  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d7fd  89 4d 88                       mov    DWORD PTR [rbp-0x78],ecx
30d800  48 8d 8d d8 04 00 00           lea    rcx,[rbp+0x4d8]
30d807  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30d80c  e8 5b 1e fd ff                 call   0x2df66c
30d811  f3 0f 10 35 c7 09 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff809c7]        # 0x28e1e0 ; f32=8
30d819  4c 8d 4d a0                    lea    r9,[rbp-0x60]
30d81d  4c 8b c0                       mov    r8,rax
30d820  89 5c 24 30                    mov    DWORD PTR [rsp+0x30],ebx
30d824  48 8d 45 80                    lea    rax,[rbp-0x80]
30d828  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
30d82d  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
30d834  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30d838  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30d83e  e8 5d ad 00 00                 call   0x3185a0
30d843  f3 0f 10 4d a8                 movss  xmm1,DWORD PTR [rbp-0x58]
30d848  f3 0f 10 45 a0                 movss  xmm0,DWORD PTR [rbp-0x60]
30d84d  e8 5a ae 0b 00                 call   0x3c86ac
30d852  0f 28 f0                       movaps xmm6,xmm0
30d855  f3 0f 10 45 a4                 movss  xmm0,DWORD PTR [rbp-0x5c]
30d85a  e8 89 ad 0b 00                 call   0x3c85e8
30d85f  f3 44 0f 10 35 38 5a f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff85a38]        # 0x2932a0
30d868  48 8d 4d 08                    lea    rcx,[rbp+0x8]
30d86c  41 0f 57 c6                    xorps  xmm0,xmm14
30d870  0f 57 db                       xorps  xmm3,xmm3
30d873  0f 28 c8                       movaps xmm1,xmm0
30d876  0f 28 d6                       movaps xmm2,xmm6
30d879  e8 2a a3 0b 00                 call   0x3c7ba8
30d87e  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30d882  e8 d1 62 fd ff                 call   0x2e3b58
30d887  84 c0                          test   al,al
30d889  74 22                          je     0x30d8ad
30d88b  0f 57 db                       xorps  xmm3,xmm3
30d88e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d892  41 0f 28 d4                    movaps xmm2,xmm12
30d896  0f 57 c9                       xorps  xmm1,xmm1
30d899  e8 0a a3 0b 00                 call   0x3c7ba8
30d89e  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d8a2  f2 0f 11 45 a0                 movsd  QWORD PTR [rbp-0x60],xmm0
30d8a7  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d8aa  89 45 a8                       mov    DWORD PTR [rbp-0x58],eax
30d8ad  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30d8b1  e8 06 a3 0b 00                 call   0x3c7bbc
30d8b6  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30d8ba  e8 fd a2 0b 00                 call   0x3c7bbc
30d8bf  f3 0f 10 75 a4                 movss  xmm6,DWORD PTR [rbp-0x5c]
30d8c4  0f 28 c6                       movaps xmm0,xmm6
30d8c7  f3 41 0f 5c c4                 subss  xmm0,xmm12
30d8cc  e8 5b 5e fd ff                 call   0x2e372c
30d8d1  f3 0f 10 3d f3 01 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff801f3]        # 0x28dacc ; f32=1e-06
30d8d9  0f 2f f8                       comiss xmm7,xmm0
30d8dc  76 26                          jbe    0x30d904
30d8de  0f 57 db                       xorps  xmm3,xmm3
30d8e1  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d8e5  0f 57 d2                       xorps  xmm2,xmm2
30d8e8  41 0f 28 cc                    movaps xmm1,xmm12
30d8ec  e8 b7 a2 0b 00                 call   0x3c7ba8
30d8f1  f3 0f 10 1d 67 59 f8 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff85967]        # 0x293260 ; f32=-1
30d8f9  0f 57 d2                       xorps  xmm2,xmm2
30d8fc  0f 57 c9                       xorps  xmm1,xmm1
30d8ff  e9 a4 00 00 00                 jmp    0x30d9a8
30d904  f3 41 0f 58 f4                 addss  xmm6,xmm12
30d909  0f 28 c6                       movaps xmm0,xmm6
30d90c  e8 1b 5e fd ff                 call   0x2e372c
30d911  0f 2f f8                       comiss xmm7,xmm0
30d914  76 19                          jbe    0x30d92f
30d916  0f 57 db                       xorps  xmm3,xmm3
30d919  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d91d  0f 57 d2                       xorps  xmm2,xmm2
30d920  41 0f 28 cc                    movaps xmm1,xmm12
30d924  e8 7f a2 0b 00                 call   0x3c7ba8
30d929  41 0f 28 dc                    movaps xmm3,xmm12
30d92d  eb ca                          jmp    0x30d8f9
30d92f  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30d934  e8 5f 28 fd ff                 call   0x2e0198
30d939  44 0f 28 c8                    movaps xmm9,xmm0
30d93d  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d942  e8 51 28 fd ff                 call   0x2e0198
30d947  44 0f 28 d0                    movaps xmm10,xmm0
30d94b  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30d950  e8 13 26 fd ff                 call   0x2dff68
30d955  44 0f 28 c0                    movaps xmm8,xmm0
30d959  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d95e  e8 05 26 fd ff                 call   0x2dff68
30d963  0f 28 f8                       movaps xmm7,xmm0
30d966  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d96b  e8 28 28 fd ff                 call   0x2e0198
30d970  0f 28 f0                       movaps xmm6,xmm0
30d973  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30d978  41 0f 57 f6                    xorps  xmm6,xmm14
30d97c  e8 e7 25 fd ff                 call   0x2dff68
30d981  0f 28 c8                       movaps xmm1,xmm0
30d984  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30d988  0f 28 de                       movaps xmm3,xmm6
30d98b  0f 57 d2                       xorps  xmm2,xmm2
30d98e  e8 15 a2 0b 00                 call   0x3c7ba8
30d993  f3 41 0f 59 f9                 mulss  xmm7,xmm9
30d998  41 0f 28 d0                    movaps xmm2,xmm8
30d99c  f3 45 0f 59 d1                 mulss  xmm10,xmm9
30d9a1  0f 28 df                       movaps xmm3,xmm7
30d9a4  41 0f 28 ca                    movaps xmm1,xmm10
30d9a8  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d9ac  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30d9b0  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
30d9b5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d9b8  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
30d9bb  e8 e8 a1 0b 00                 call   0x3c7ba8
30d9c0  bf 32 00 00 00                 mov    edi,0x32
30d9c5  4c 8d 35 14 32 0e 00           lea    r14,[rip+0xe3214]        # 0x3f0be0
30d9cc  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30d9d0  f2 0f 11 45 f8                 movsd  QWORD PTR [rbp-0x8],xmm0
30d9d5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30d9d8  89 45 00                       mov    DWORD PTR [rbp+0x0],eax
30d9db  8b 05 f7 31 0e 00              mov    eax,DWORD PTR [rip+0xe31f7]        # 0x3f0bd8
30d9e1  a8 02                          test   al,0x2
30d9e3  75 1e                          jne    0x30da03
30d9e5  83 c8 02                       or     eax,0x2
30d9e8  4c 8d 0d cd a1 0b 00           lea    r9,[rip+0xba1cd]        # 0x3c7bbc
30d9ef  44 8b c7                       mov    r8d,edi
30d9f2  89 05 e0 31 0e 00              mov    DWORD PTR [rip+0xe31e0],eax        # 0x3f0bd8
30d9f8  8d 57 da                       lea    edx,[rdi-0x26]
30d9fb  49 8b ce                       mov    rcx,r14
30d9fe  e8 31 24 fd ff                 call   0x2dfe34
30da03  41 8b f7                       mov    esi,r15d
30da06  66 0f 6e f6                    movd   xmm6,esi
30da0a  0f 5b f6                       cvtdq2ps xmm6,xmm6
30da0d  f3 0f 59 35 8b 56 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff8568b]        # 0x2930a0 ; f32=0.125664
30da15  0f 28 c6                       movaps xmm0,xmm6
30da18  e8 4b 25 fd ff                 call   0x2dff68
30da1d  0f 28 f8                       movaps xmm7,xmm0
30da20  0f 28 c6                       movaps xmm0,xmm6
30da23  f3 0f 59 3d 0d 04 0e 00        mulss  xmm7,DWORD PTR [rip+0xe040d]        # 0x3ede38 ; CONFIG F.BoomRadius value(+0x48)
30da2b  e8 68 27 fd ff                 call   0x2e0198
30da30  0f 28 f0                       movaps xmm6,xmm0
30da33  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30da37  f3 0f 59 35 f9 03 0e 00        mulss  xmm6,DWORD PTR [rip+0xe03f9]        # 0x3ede38 ; CONFIG F.BoomRadius value(+0x48)
30da3f  e8 08 cf 00 00                 call   0x31a94c
30da44  0f 28 d7                       movaps xmm2,xmm7
30da47  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30da4b  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30da4f  48 8b d8                       mov    rbx,rax
30da52  e8 15 1c fd ff                 call   0x2df66c
30da57  4c 8b c0                       mov    r8,rax
30da5a  48 8d 55 68                    lea    rdx,[rbp+0x68]
30da5e  48 8b cb                       mov    rcx,rbx
30da61  e8 a2 1c fd ff                 call   0x2df708
30da66  0f 28 d6                       movaps xmm2,xmm6
30da69  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30da70  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30da74  48 8b d8                       mov    rbx,rax
30da77  e8 f0 1b fd ff                 call   0x2df66c
30da7c  4c 8b c0                       mov    r8,rax
30da7f  48 8d 95 78 04 00 00           lea    rdx,[rbp+0x478]
30da86  48 8b cb                       mov    rcx,rbx
30da89  e8 7a 1c fd ff                 call   0x2df708
30da8e  8b ce                          mov    ecx,esi
30da90  ff c6                          inc    esi
30da92  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30da96  48 8d 14 49                    lea    rdx,[rcx+rcx*2]
30da9a  f2 41 0f 11 04 96              movsd  QWORD PTR [r14+rdx*4],xmm0
30daa0  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30daa3  41 89 44 96 08                 mov    DWORD PTR [r14+rdx*4+0x8],eax
30daa8  3b f7                          cmp    esi,edi
30daaa  0f 8c 56 ff ff ff              jl     0x30da06
30dab0  4c 8d 0d ed d8 fb ff           lea    r9,[rip+0xfffffffffffbd8ed]        # 0x2cb3a4
30dab7  4c 8b c7                       mov    r8,rdi
30daba  ba 08 00 00 00                 mov    edx,0x8
30dabf  48 8d 8d 20 13 00 00           lea    rcx,[rbp+0x1320]
30dac6  e8 69 23 fd ff                 call   0x2dfe34
30dacb  40 b6 01                       mov    sil,0x1
30dace  4c 8d 35 d3 97 0c 00           lea    r14,[rip+0xc97d3]        # 0x3d72a8
30dad5  49 8b df                       mov    rbx,r15
30dad8  4c 8d 2d 01 31 0e 00           lea    r13,[rip+0xe3101]        # 0x3f0be0
30dadf  48 8d 04 5b                    lea    rax,[rbx+rbx*2]
30dae3  4d 8b ce                       mov    r9,r14
30dae6  f2 41 0f 10 44 85 00           movsd  xmm0,QWORD PTR [r13+rax*4+0x0]
30daed  4c 8d 85 20 13 00 00           lea    r8,[rbp+0x1320]
30daf4  41 8b 44 85 08                 mov    eax,DWORD PTR [r13+rax*4+0x8]
30daf9  4d 8d 04 d8                    lea    r8,[r8+rbx*8]
30dafd  48 8d 55 80                    lea    rdx,[rbp-0x80]
30db01  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30db06  49 8b cc                       mov    rcx,r12
30db09  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30db0c  e8 0f f2 05 00                 call   0x36cd20
30db11  f6 d8                          neg    al
30db13  1a c9                          sbb    cl,cl
30db15  48 ff c3                       inc    rbx
30db18  40 22 ce                       and    cl,sil
30db1b  40 8a f1                       mov    sil,cl
30db1e  48 3b df                       cmp    rbx,rdi
30db21  75 bc                          jne    0x30dadf
30db23  4c 8b ad a0 15 00 00           mov    r13,QWORD PTR [rbp+0x15a0]
30db2a  84 c9                          test   cl,cl
30db2c  74 2f                          je     0x30db5d
30db2e  44 38 3d 83 95 0d 00           cmp    BYTE PTR [rip+0xd9583],r15b        # 0x3e70b8 ; CONFIG Bools.DrawHitPoint value(+0x48)
30db35  74 26                          je     0x30db5d
30db37  48 8d 0d da ef 0d 00           lea    rcx,[rip+0xdefda]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30db3e  e8 c9 1c fe ff                 call   0x2ef80c
30db43  f3 0f 10 15 e1 ff f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7ffe1]        # 0x28db2c ; f32=50
30db4b  48 8d 95 20 13 00 00           lea    rdx,[rbp+0x1320]
30db52  44 8b c8                       mov    r9d,eax
30db55  49 8b cd                       mov    rcx,r13
30db58  e8 a7 cc 04 00                 call   0x35a804
30db5d  44 38 3d 04 95 0d 00           cmp    BYTE PTR [rip+0xd9504],r15b        # 0x3e7068 ; CONFIG Bools.DrawPath value(+0x48)
30db64  0f 84 cb fa ff ff              je     0x30d635
30db6a  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30db6e  49 8b df                       mov    rbx,r15
30db71  e8 ee 33 01 00                 call   0x320f64
30db76  48 83 f8 01                    cmp    rax,0x1
30db7a  0f 84 b5 fa ff ff              je     0x30d635
30db80  f3 0f 10 3d bc 55 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff855bc]        # 0x293144 ; f32=2.5
30db88  48 8d 7b 01                    lea    rdi,[rbx+0x1]
30db8c  48 8b d7                       mov    rdx,rdi
30db8f  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30db93  e8 38 1c fe ff                 call   0x2ef7d0
30db98  48 8b d3                       mov    rdx,rbx
30db9b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30db9f  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
30dba3  8b 70 08                       mov    esi,DWORD PTR [rax+0x8]
30dba6  e8 25 1c fe ff                 call   0x2ef7d0
30dbab  4d 8b ce                       mov    r9,r14
30dbae  4c 8d 85 b8 15 00 00           lea    r8,[rbp+0x15b8]
30dbb5  48 8d 55 80                    lea    rdx,[rbp-0x80]
30dbb9  49 8b cc                       mov    rcx,r12
30dbbc  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30dbc0  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30dbc3  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30dbc8  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30dbcb  e8 50 f1 05 00                 call   0x36cd20
30dbd0  84 c0                          test   al,al
30dbd2  0f 84 81 00 00 00              je     0x30dc59
30dbd8  4d 8b ce                       mov    r9,r14
30dbdb  f2 0f 11 75 50                 movsd  QWORD PTR [rbp+0x50],xmm6
30dbe0  4c 8d 85 b0 15 00 00           lea    r8,[rbp+0x15b0]
30dbe7  89 75 58                       mov    DWORD PTR [rbp+0x58],esi
30dbea  48 8d 55 50                    lea    rdx,[rbp+0x50]
30dbee  49 8b cc                       mov    rcx,r12
30dbf1  e8 2a f1 05 00                 call   0x36cd20
30dbf6  84 c0                          test   al,al
30dbf8  74 5f                          je     0x30dc59
30dbfa  48 8d 0d 17 ef 0d 00           lea    rcx,[rip+0xdef17]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30dc01  e8 06 1c fe ff                 call   0x2ef80c
30dc06  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30dc0e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30dc15  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30dc1d  8b d8                          mov    ebx,eax
30dc1f  e8 1c e7 fb ff                 call   0x2cc340
30dc24  f3 0f 10 95 bc 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15bc]
30dc2c  48 8d 4d 78                    lea    rcx,[rbp+0x78]
30dc30  f3 0f 10 8d b8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b8]
30dc38  e8 03 e7 fb ff                 call   0x2cc340
30dc3d  44 8b cb                       mov    r9d,ebx
30dc40  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
30dc46  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
30dc4d  49 8b cd                       mov    rcx,r13
30dc50  48 8d 55 78                    lea    rdx,[rbp+0x78]
30dc54  e8 03 e6 04 00                 call   0x35c25c
30dc59  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30dc5d  48 8b df                       mov    rbx,rdi
30dc60  e8 ff 32 01 00                 call   0x320f64
30dc65  48 ff c8                       dec    rax
30dc68  48 3b f8                       cmp    rdi,rax
30dc6b  0f 82 17 ff ff ff              jb     0x30db88
30dc71  e9 bf f9 ff ff                 jmp    0x30d635
30dc76  48 8b cb                       mov    rcx,rbx
30dc79  e8 8a d2 fb ff                 call   0x2caf08
30dc7e  84 c0                          test   al,al
30dc80  0f 84 e8 06 00 00              je     0x30e36e
30dc86  48 8b cb                       mov    rcx,rbx
30dc89  e8 aa dc 05 00                 call   0x36b938
30dc8e  48 8b c8                       mov    rcx,rax
30dc91  4c 8b f0                       mov    r14,rax
30dc94  e8 6f d2 fb ff                 call   0x2caf08
30dc99  45 33 ff                       xor    r15d,r15d
30dc9c  84 c0                          test   al,al
30dc9e  0f 84 6f 0d 00 00              je     0x30ea13
30dca4  49 8b ce                       mov    rcx,r14
30dca7  e8 10 4e 06 00                 call   0x372abc
30dcac  48 8b c8                       mov    rcx,rax
30dcaf  48 8b f8                       mov    rdi,rax
30dcb2  e8 51 d2 fb ff                 call   0x2caf08
30dcb7  84 c0                          test   al,al
30dcb9  0f 84 54 0d 00 00              je     0x30ea13
30dcbf  48 8b ce                       mov    rcx,rsi
30dcc2  e8 85 38 06 00                 call   0x37154c
30dcc7  48 8b c8                       mov    rcx,rax
30dcca  48 8b d0                       mov    rdx,rax
30dccd  e8 36 d2 fb ff                 call   0x2caf08
30dcd2  84 c0                          test   al,al
30dcd4  0f 84 39 0d 00 00              je     0x30ea13
30dcda  48 8b ca                       mov    rcx,rdx
30dcdd  e8 3a 49 06 00                 call   0x37261c
30dce2  3d 71 3d b7 34                 cmp    eax,0x34b73d71
30dce7  75 0d                          jne    0x30dcf6
30dce9  48 8b cb                       mov    rcx,rbx
30dcec  e8 13 d8 05 00                 call   0x36b504
30dcf1  0f 28 f8                       movaps xmm7,xmm0
30dcf4  eb 08                          jmp    0x30dcfe
30dcf6  f3 0f 10 bb ac 03 00 00        movss  xmm7,DWORD PTR [rbx+0x3ac]
30dcfe  48 8b cb                       mov    rcx,rbx
30dd01  e8 52 da 05 00                 call   0x36b758
30dd06  0f 2f 05 c3 04 f8 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff804c3]        # 0x28e1d0 ; f32=1.3
30dd0d  8a 05 25 65 0d 00              mov    al,BYTE PTR [rip+0xd6525]        # 0x3e4238
30dd13  73 45                          jae    0x30dd5a
30dd15  44 38 3d e5 a5 0c 00           cmp    BYTE PTR [rip+0xca5e5],r15b        # 0x3d8301
30dd1c  74 0e                          je     0x30dd2c
30dd1e  84 c0                          test   al,al
30dd20  74 0a                          je     0x30dd2c
30dd22  f3 0f 10 35 5a 83 0d 00        movss  xmm6,DWORD PTR [rip+0xd835a]        # 0x3e6084
30dd2a  eb 24                          jmp    0x30dd50
30dd2c  44 38 3d 85 a2 0c 00           cmp    BYTE PTR [rip+0xca285],r15b        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
30dd33  74 0a                          je     0x30dd3f
30dd35  f3 0f 10 35 bb fd f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff7fdbb]        # 0x28daf8 ; f32=1.495
30dd3d  eb 1f                          jmp    0x30dd5e
30dd3f  44 38 3d a2 9f 0c 00           cmp    BYTE PTR [rip+0xc9fa2],r15b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
30dd46  74 12                          je     0x30dd5a
30dd48  f3 0f 10 35 58 a3 0c 00        movss  xmm6,DWORD PTR [rip+0xca358]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
30dd50  f3 0f 5d 35 a0 fd f7 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff7fda0]        # 0x28daf8
30dd58  eb 04                          jmp    0x30dd5e
30dd5a  41 0f 28 f4                    movaps xmm6,xmm12
30dd5e  41 0f 2e c3                    ucomiss xmm0,xmm11
30dd62  7a 02                          jp     0x30dd66
30dd64  74 13                          je     0x30dd79
30dd66  84 c0                          test   al,al
30dd68  75 0f                          jne    0x30dd79
30dd6a  48 8b cb                       mov    rcx,rbx
30dd6d  e8 e6 d9 05 00                 call   0x36b758
30dd72  f3 0f 59 c6                    mulss  xmm0,xmm6
30dd76  0f 28 f0                       movaps xmm6,xmm0
30dd79  f3 45 0f 10 4e 44              movss  xmm9,DWORD PTR [r14+0x44]
30dd7f  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30dd86  f3 45 0f 58 4e 40              addss  xmm9,DWORD PTR [r14+0x40]
30dd8c  f3 44 0f 10 47 44              movss  xmm8,DWORD PTR [rdi+0x44]
30dd92  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30dd99  0f 57 c0                       xorps  xmm0,xmm0
30dd9c  0f 11 85 80 00 00 00           movups XMMWORD PTR [rbp+0x80],xmm0
30dda3  f3 44 0f 59 cf                 mulss  xmm9,xmm7
30dda8  f3 0f 10 7f 38                 movss  xmm7,DWORD PTR [rdi+0x38]
30ddad  0f 11 85 90 00 00 00           movups XMMWORD PTR [rbp+0x90],xmm0
30ddb4  f3 44 0f 59 ce                 mulss  xmm9,xmm6
30ddb9  f3 0f 10 77 34                 movss  xmm6,DWORD PTR [rdi+0x34]
30ddbe  0f 5a f6                       cvtps2pd xmm6,xmm6
30ddc1  45 0f 5a c0                    cvtps2pd xmm8,xmm8
30ddc5  0f 5a ff                       cvtps2pd xmm7,xmm7
30ddc8  e8 cf 70 fe ff                 call   0x2f4e9c ; STRING getter=0x2f4e9c %.2f/%.2f/%.2f/%.2f
30ddcd  48 8b c8                       mov    rcx,rax
30ddd0  e8 bf 26 01 00                 call   0x320494
30ddd5  48 8b d0                       mov    rdx,rax
30ddd8  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30dddf  41 0f 5a d1                    cvtps2pd xmm2,xmm9
30dde3  f2 44 0f 11 44 24 28           movsd  QWORD PTR [rsp+0x28],xmm8
30ddea  0f 28 de                       movaps xmm3,xmm6
30dded  66 49 0f 7e d0                 movq   r8,xmm2
30ddf2  f2 0f 11 7c 24 20              movsd  QWORD PTR [rsp+0x20],xmm7
30ddf8  66 49 0f 7e f1                 movq   r9,xmm6
30ddfd  e8 12 09 fe ff                 call   0x2ee714
30de02  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30de09  e8 46 85 fc ff                 call   0x2d6354
30de0e  48 8b c8                       mov    rcx,rax
30de11  48 8b d8                       mov    rbx,rax
30de14  e8 07 30 fd ff                 call   0x2e0e20
30de19  48 89 05 f8 78 0d 00           mov    QWORD PTR [rip+0xd78f8],rax        # 0x3e5718
30de20  48 85 c0                       test   rax,rax
30de23  75 39                          jne    0x30de5e
30de25  f3 0f 10 47 44                 movss  xmm0,DWORD PTR [rdi+0x44]
30de2a  41 0f 28 c9                    movaps xmm1,xmm9
30de2e  f3 0f 10 5f 34                 movss  xmm3,DWORD PTR [rdi+0x34]
30de33  48 8b cb                       mov    rcx,rbx
30de36  f3 0f 10 57 38                 movss  xmm2,DWORD PTR [rdi+0x38]
30de3b  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
30de41  e8 1e 20 fd ff                 call   0x2dfe64
30de46  48 89 05 cb 78 0d 00           mov    QWORD PTR [rip+0xd78cb],rax        # 0x3e5718
30de4d  48 85 c0                       test   rax,rax
30de50  0f 84 80 6a 00 00              je     0x3148d6
30de56  48 8b c8                       mov    rcx,rax
30de59  e8 12 5c fd ff                 call   0x2e3a70
30de5e  48 8d 0d cb c7 0d 00           lea    rcx,[rip+0xdc7cb]        # 0x3ea630
30de65  e8 92 19 fe ff                 call   0x2ef7fc
30de6a  84 c0                          test   al,al
30de6c  0f 84 a1 0b 00 00              je     0x30ea13
30de72  48 8b 8d a0 01 00 00           mov    rcx,QWORD PTR [rbp+0x1a0]
30de79  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30de7d  e8 7e a2 05 00                 call   0x368100
30de82  48 8b c8                       mov    rcx,rax
30de85  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
30de8c  41 0f 28 d1                    movaps xmm2,xmm9
30de90  e8 d7 17 fd ff                 call   0x2df66c
30de95  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30de99  e8 1e 9d 0b 00                 call   0x3c7bbc
30de9e  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30dea5  e8 fa d4 fb ff                 call   0x2cb3a4
30deaa  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30deb1  e8 ee d4 fb ff                 call   0x2cb3a4
30deb6  e8 b1 8b fd ff                 call   0x2e6a6c
30debb  f3 0f 10 15 29 03 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff80329]        # 0x28e1ec ; f32=-9.81
30dec3  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30dec7  f3 0f 10 77 34                 movss  xmm6,DWORD PTR [rdi+0x34]
30decc  8b d8                          mov    ebx,eax
30dece  0f 57 db                       xorps  xmm3,xmm3
30ded1  0f 57 c9                       xorps  xmm1,xmm1
30ded4  81 cb 00 09 a3 48              or     ebx,0x48a30900
30deda  e8 c9 9c 0b 00                 call   0x3c7ba8
30dedf  f3 0f 10 57 38                 movss  xmm2,DWORD PTR [rdi+0x38]
30dee4  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30dee8  48 8b c8                       mov    rcx,rax
30deeb  e8 7c 17 fd ff                 call   0x2df66c
30def0  89 5c 24 38                    mov    DWORD PTR [rsp+0x38],ebx
30def4  4c 8d 4d a0                    lea    r9,[rbp-0x60]
30def8  f3 0f 11 74 24 30              movss  DWORD PTR [rsp+0x30],xmm6
30defe  4c 8d 85 30 01 00 00           lea    r8,[rbp+0x130]
30df05  f3 0f 10 35 d3 02 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff802d3]        # 0x28e1e0 ; f32=8
30df0d  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
30df14  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30df18  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30df1c  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30df1f  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30df22  48 8d 45 80                    lea    rax,[rbp-0x80]
30df26  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
30df2b  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30df31  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30df36  e8 21 a9 00 00                 call   0x31885c
30df3b  f3 0f 10 4d a8                 movss  xmm1,DWORD PTR [rbp-0x58]
30df40  f3 0f 10 45 a0                 movss  xmm0,DWORD PTR [rbp-0x60]
30df45  e8 62 a7 0b 00                 call   0x3c86ac
30df4a  0f 28 f0                       movaps xmm6,xmm0
30df4d  f3 0f 10 45 a4                 movss  xmm0,DWORD PTR [rbp-0x5c]
30df52  e8 91 a6 0b 00                 call   0x3c85e8
30df57  f3 44 0f 10 35 40 53 f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff85340]        # 0x2932a0
30df60  48 8d 4d 08                    lea    rcx,[rbp+0x8]
30df64  41 0f 57 c6                    xorps  xmm0,xmm14
30df68  0f 57 db                       xorps  xmm3,xmm3
30df6b  0f 28 c8                       movaps xmm1,xmm0
30df6e  0f 28 d6                       movaps xmm2,xmm6
30df71  e8 32 9c 0b 00                 call   0x3c7ba8
30df76  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30df7a  e8 d9 5b fd ff                 call   0x2e3b58
30df7f  84 c0                          test   al,al
30df81  74 22                          je     0x30dfa5
30df83  0f 57 db                       xorps  xmm3,xmm3
30df86  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30df8a  41 0f 28 d4                    movaps xmm2,xmm12
30df8e  0f 57 c9                       xorps  xmm1,xmm1
30df91  e8 12 9c 0b 00                 call   0x3c7ba8
30df96  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30df9a  f2 0f 11 45 a0                 movsd  QWORD PTR [rbp-0x60],xmm0
30df9f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30dfa2  89 45 a8                       mov    DWORD PTR [rbp-0x58],eax
30dfa5  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30dfa9  e8 0e 9c 0b 00                 call   0x3c7bbc
30dfae  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30dfb2  e8 05 9c 0b 00                 call   0x3c7bbc
30dfb7  f3 0f 10 75 a4                 movss  xmm6,DWORD PTR [rbp-0x5c]
30dfbc  0f 28 c6                       movaps xmm0,xmm6
30dfbf  f3 41 0f 5c c4                 subss  xmm0,xmm12
30dfc4  e8 63 57 fd ff                 call   0x2e372c
30dfc9  f3 0f 10 3d fb fa f7 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff7fafb]        # 0x28dacc ; f32=1e-06
30dfd1  0f 2f f8                       comiss xmm7,xmm0
30dfd4  76 26                          jbe    0x30dffc
30dfd6  0f 57 db                       xorps  xmm3,xmm3
30dfd9  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30dfdd  0f 57 d2                       xorps  xmm2,xmm2
30dfe0  41 0f 28 cc                    movaps xmm1,xmm12
30dfe4  e8 bf 9b 0b 00                 call   0x3c7ba8
30dfe9  f3 0f 10 1d 6f 52 f8 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff8526f]        # 0x293260 ; f32=-1
30dff1  0f 57 d2                       xorps  xmm2,xmm2
30dff4  0f 57 c9                       xorps  xmm1,xmm1
30dff7  e9 a4 00 00 00                 jmp    0x30e0a0
30dffc  f3 41 0f 58 f4                 addss  xmm6,xmm12
30e001  0f 28 c6                       movaps xmm0,xmm6
30e004  e8 23 57 fd ff                 call   0x2e372c
30e009  0f 2f f8                       comiss xmm7,xmm0
30e00c  76 19                          jbe    0x30e027
30e00e  0f 57 db                       xorps  xmm3,xmm3
30e011  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e015  0f 57 d2                       xorps  xmm2,xmm2
30e018  41 0f 28 cc                    movaps xmm1,xmm12
30e01c  e8 87 9b 0b 00                 call   0x3c7ba8
30e021  41 0f 28 dc                    movaps xmm3,xmm12
30e025  eb ca                          jmp    0x30dff1
30e027  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30e02c  e8 67 21 fd ff                 call   0x2e0198
30e031  44 0f 28 c8                    movaps xmm9,xmm0
30e035  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e03a  e8 59 21 fd ff                 call   0x2e0198
30e03f  44 0f 28 d0                    movaps xmm10,xmm0
30e043  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30e048  e8 1b 1f fd ff                 call   0x2dff68
30e04d  44 0f 28 c0                    movaps xmm8,xmm0
30e051  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e056  e8 0d 1f fd ff                 call   0x2dff68
30e05b  0f 28 f8                       movaps xmm7,xmm0
30e05e  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e063  e8 30 21 fd ff                 call   0x2e0198
30e068  0f 28 f0                       movaps xmm6,xmm0
30e06b  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e070  41 0f 57 f6                    xorps  xmm6,xmm14
30e074  e8 ef 1e fd ff                 call   0x2dff68
30e079  0f 28 c8                       movaps xmm1,xmm0
30e07c  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e080  0f 28 de                       movaps xmm3,xmm6
30e083  0f 57 d2                       xorps  xmm2,xmm2
30e086  e8 1d 9b 0b 00                 call   0x3c7ba8
30e08b  f3 41 0f 59 f9                 mulss  xmm7,xmm9
30e090  41 0f 28 d0                    movaps xmm2,xmm8
30e094  f3 45 0f 59 d1                 mulss  xmm10,xmm9
30e099  0f 28 df                       movaps xmm3,xmm7
30e09c  41 0f 28 ca                    movaps xmm1,xmm10
30e0a0  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e0a4  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30e0a8  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
30e0ad  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e0b0  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
30e0b3  e8 f0 9a 0b 00                 call   0x3c7ba8
30e0b8  bf 32 00 00 00                 mov    edi,0x32
30e0bd  4c 8d 35 7c 2d 0e 00           lea    r14,[rip+0xe2d7c]        # 0x3f0e40
30e0c4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e0c8  f2 0f 11 45 f8                 movsd  QWORD PTR [rbp-0x8],xmm0
30e0cd  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e0d0  89 45 00                       mov    DWORD PTR [rbp+0x0],eax
30e0d3  8b 05 ff 2a 0e 00              mov    eax,DWORD PTR [rip+0xe2aff]        # 0x3f0bd8
30e0d9  a8 04                          test   al,0x4
30e0db  75 1e                          jne    0x30e0fb
30e0dd  83 c8 04                       or     eax,0x4
30e0e0  4c 8d 0d d5 9a 0b 00           lea    r9,[rip+0xb9ad5]        # 0x3c7bbc
30e0e7  44 8b c7                       mov    r8d,edi
30e0ea  89 05 e8 2a 0e 00              mov    DWORD PTR [rip+0xe2ae8],eax        # 0x3f0bd8
30e0f0  8d 57 da                       lea    edx,[rdi-0x26]
30e0f3  49 8b ce                       mov    rcx,r14
30e0f6  e8 39 1d fd ff                 call   0x2dfe34
30e0fb  41 8b f7                       mov    esi,r15d
30e0fe  66 0f 6e f6                    movd   xmm6,esi
30e102  0f 5b f6                       cvtdq2ps xmm6,xmm6
30e105  f3 0f 59 35 93 4f f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff84f93]        # 0x2930a0 ; f32=0.125664
30e10d  0f 28 c6                       movaps xmm0,xmm6
30e110  e8 53 1e fd ff                 call   0x2dff68
30e115  0f 28 f8                       movaps xmm7,xmm0
30e118  0f 28 c6                       movaps xmm0,xmm6
30e11b  f3 0f 59 3d 65 fd 0d 00        mulss  xmm7,DWORD PTR [rip+0xdfd65]        # 0x3ede88 ; CONFIG F.ProjectileRadius value(+0x48)
30e123  e8 70 20 fd ff                 call   0x2e0198
30e128  0f 28 f0                       movaps xmm6,xmm0
30e12b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e12f  f3 0f 59 35 51 fd 0d 00        mulss  xmm6,DWORD PTR [rip+0xdfd51]        # 0x3ede88 ; CONFIG F.ProjectileRadius value(+0x48)
30e137  e8 10 c8 00 00                 call   0x31a94c
30e13c  0f 28 d7                       movaps xmm2,xmm7
30e13f  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30e143  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30e147  48 8b d8                       mov    rbx,rax
30e14a  e8 1d 15 fd ff                 call   0x2df66c
30e14f  4c 8b c0                       mov    r8,rax
30e152  48 8d 55 68                    lea    rdx,[rbp+0x68]
30e156  48 8b cb                       mov    rcx,rbx
30e159  e8 aa 15 fd ff                 call   0x2df708
30e15e  0f 28 d6                       movaps xmm2,xmm6
30e161  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30e168  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30e16c  48 8b d8                       mov    rbx,rax
30e16f  e8 f8 14 fd ff                 call   0x2df66c
30e174  4c 8b c0                       mov    r8,rax
30e177  48 8d 95 78 04 00 00           lea    rdx,[rbp+0x478]
30e17e  48 8b cb                       mov    rcx,rbx
30e181  e8 82 15 fd ff                 call   0x2df708
30e186  8b ce                          mov    ecx,esi
30e188  ff c6                          inc    esi
30e18a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e18e  48 8d 14 49                    lea    rdx,[rcx+rcx*2]
30e192  f2 41 0f 11 04 96              movsd  QWORD PTR [r14+rdx*4],xmm0
30e198  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e19b  41 89 44 96 08                 mov    DWORD PTR [r14+rdx*4+0x8],eax
30e1a0  3b f7                          cmp    esi,edi
30e1a2  0f 8c 56 ff ff ff              jl     0x30e0fe
30e1a8  4c 8d 0d f5 d1 fb ff           lea    r9,[rip+0xfffffffffffbd1f5]        # 0x2cb3a4
30e1af  4c 8b c7                       mov    r8,rdi
30e1b2  ba 08 00 00 00                 mov    edx,0x8
30e1b7  48 8d 8d 20 13 00 00           lea    rcx,[rbp+0x1320]
30e1be  e8 71 1c fd ff                 call   0x2dfe34
30e1c3  40 b6 01                       mov    sil,0x1
30e1c6  4c 8d 35 db 90 0c 00           lea    r14,[rip+0xc90db]        # 0x3d72a8
30e1cd  49 8b df                       mov    rbx,r15
30e1d0  4c 8d 2d 69 2c 0e 00           lea    r13,[rip+0xe2c69]        # 0x3f0e40
30e1d7  48 8d 04 5b                    lea    rax,[rbx+rbx*2]
30e1db  4d 8b ce                       mov    r9,r14
30e1de  f2 41 0f 10 44 85 00           movsd  xmm0,QWORD PTR [r13+rax*4+0x0]
30e1e5  4c 8d 85 20 13 00 00           lea    r8,[rbp+0x1320]
30e1ec  41 8b 44 85 08                 mov    eax,DWORD PTR [r13+rax*4+0x8]
30e1f1  4d 8d 04 d8                    lea    r8,[r8+rbx*8]
30e1f5  48 8d 55 80                    lea    rdx,[rbp-0x80]
30e1f9  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30e1fe  49 8b cc                       mov    rcx,r12
30e201  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30e204  e8 17 eb 05 00                 call   0x36cd20
30e209  f6 d8                          neg    al
30e20b  1a c9                          sbb    cl,cl
30e20d  48 ff c3                       inc    rbx
30e210  40 22 ce                       and    cl,sil
30e213  40 8a f1                       mov    sil,cl
30e216  48 3b df                       cmp    rbx,rdi
30e219  75 bc                          jne    0x30e1d7
30e21b  4c 8b ad a0 15 00 00           mov    r13,QWORD PTR [rbp+0x15a0]
30e222  84 c9                          test   cl,cl
30e224  74 2f                          je     0x30e255
30e226  44 38 3d 8b 8e 0d 00           cmp    BYTE PTR [rip+0xd8e8b],r15b        # 0x3e70b8 ; CONFIG Bools.DrawHitPoint value(+0x48)
30e22d  74 26                          je     0x30e255
30e22f  48 8d 0d e2 e8 0d 00           lea    rcx,[rip+0xde8e2]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30e236  e8 d1 15 fe ff                 call   0x2ef80c
30e23b  f3 0f 10 15 e9 f8 f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7f8e9]        # 0x28db2c ; f32=50
30e243  48 8d 95 20 13 00 00           lea    rdx,[rbp+0x1320]
30e24a  44 8b c8                       mov    r9d,eax
30e24d  49 8b cd                       mov    rcx,r13
30e250  e8 af c5 04 00                 call   0x35a804
30e255  44 38 3d 0c 8e 0d 00           cmp    BYTE PTR [rip+0xd8e0c],r15b        # 0x3e7068 ; CONFIG Bools.DrawPath value(+0x48)
30e25c  0f 84 d3 f3 ff ff              je     0x30d635
30e262  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e266  49 8b df                       mov    rbx,r15
30e269  e8 f6 2c 01 00                 call   0x320f64
30e26e  48 83 f8 01                    cmp    rax,0x1
30e272  0f 84 bd f3 ff ff              je     0x30d635
30e278  f3 0f 10 3d c4 4e f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff84ec4]        # 0x293144 ; f32=2.5
30e280  48 8d 7b 01                    lea    rdi,[rbx+0x1]
30e284  48 8b d7                       mov    rdx,rdi
30e287  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e28b  e8 40 15 fe ff                 call   0x2ef7d0
30e290  48 8b d3                       mov    rdx,rbx
30e293  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e297  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
30e29b  8b 70 08                       mov    esi,DWORD PTR [rax+0x8]
30e29e  e8 2d 15 fe ff                 call   0x2ef7d0
30e2a3  4d 8b ce                       mov    r9,r14
30e2a6  4c 8d 85 b0 15 00 00           lea    r8,[rbp+0x15b0]
30e2ad  48 8d 55 80                    lea    rdx,[rbp-0x80]
30e2b1  49 8b cc                       mov    rcx,r12
30e2b4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e2b8  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e2bb  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30e2c0  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30e2c3  e8 58 ea 05 00                 call   0x36cd20
30e2c8  84 c0                          test   al,al
30e2ca  0f 84 81 00 00 00              je     0x30e351
30e2d0  4d 8b ce                       mov    r9,r14
30e2d3  f2 0f 11 75 50                 movsd  QWORD PTR [rbp+0x50],xmm6
30e2d8  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
30e2df  89 75 58                       mov    DWORD PTR [rbp+0x58],esi
30e2e2  48 8d 55 50                    lea    rdx,[rbp+0x50]
30e2e6  49 8b cc                       mov    rcx,r12
30e2e9  e8 32 ea 05 00                 call   0x36cd20
30e2ee  84 c0                          test   al,al
30e2f0  74 5f                          je     0x30e351
30e2f2  48 8d 0d 1f e8 0d 00           lea    rcx,[rip+0xde81f]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30e2f9  e8 0e 15 fe ff                 call   0x2ef80c
30e2fe  f3 0f 10 95 ac 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15ac]
30e306  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30e30d  f3 0f 10 8d a8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15a8]
30e315  8b d8                          mov    ebx,eax
30e317  e8 24 e0 fb ff                 call   0x2cc340
30e31c  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30e324  48 8d 4d 78                    lea    rcx,[rbp+0x78]
30e328  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30e330  e8 0b e0 fb ff                 call   0x2cc340
30e335  44 8b cb                       mov    r9d,ebx
30e338  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
30e33e  4c 8d 85 b8 15 00 00           lea    r8,[rbp+0x15b8]
30e345  49 8b cd                       mov    rcx,r13
30e348  48 8d 55 78                    lea    rdx,[rbp+0x78]
30e34c  e8 0b df 04 00                 call   0x35c25c
30e351  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e355  48 8b df                       mov    rbx,rdi
30e358  e8 07 2c 01 00                 call   0x320f64
30e35d  48 ff c8                       dec    rax
30e360  48 3b f8                       cmp    rdi,rax
30e363  0f 82 17 ff ff ff              jb     0x30e280
30e369  e9 c7 f2 ff ff                 jmp    0x30d635
30e36e  49 8b cf                       mov    rcx,r15
30e371  e8 92 cb fb ff                 call   0x2caf08
30e376  84 c0                          test   al,al
30e378  0f 84 92 06 00 00              je     0x30ea10
30e37e  0f 57 c0                       xorps  xmm0,xmm0
30e381  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
30e388  0f 11 85 78 05 00 00           movups XMMWORD PTR [rbp+0x578],xmm0
30e38f  0f 11 85 84 05 00 00           movups XMMWORD PTR [rbp+0x584],xmm0
30e396  0f 11 85 68 05 00 00           movups XMMWORD PTR [rbp+0x568],xmm0
30e39d  e8 62 6b fd ff                 call   0x2e4f04
30e3a2  f3 0f 10 15 02 4d f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff84d02]        # 0x2930ac ; f32=0.25
30e3aa  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30e3ae  48 8d 8d d8 04 00 00           lea    rcx,[rbp+0x4d8]
30e3b5  e8 b2 12 fd ff                 call   0x2df66c
30e3ba  4c 8b c0                       mov    r8,rax
30e3bd  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
30e3c4  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
30e3cb  e8 38 13 fd ff                 call   0x2df708
30e3d0  f3 41 0f 10 87 f8 03 00 00     movss  xmm0,DWORD PTR [r15+0x3f8]
30e3d9  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
30e3e0  0f 5a c0                       cvtps2pd xmm0,xmm0
30e3e3  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30e3ea  f2 0f 5c 05 1e 4d f8 ff        subsd  xmm0,QWORD PTR [rip+0xfffffffffff84d1e]        # 0x293110
30e3f2  66 0f 5a f8                    cvtpd2ps xmm7,xmm0
30e3f6  0f 57 c0                       xorps  xmm0,xmm0
30e3f9  0f 5a f7                       cvtps2pd xmm6,xmm7
30e3fc  0f 11 85 80 00 00 00           movups XMMWORD PTR [rbp+0x80],xmm0
30e403  0f 11 85 90 00 00 00           movups XMMWORD PTR [rbp+0x90],xmm0
30e40a  e8 19 6b fe ff                 call   0x2f4f28 ; STRING getter=0x2f4f28 %.2f/%.2f/%.2f/%.2f
30e40f  48 8b c8                       mov    rcx,rax
30e412  e8 7d 20 01 00                 call   0x320494
30e417  48 8b d0                       mov    rdx,rax
30e41a  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30e421  0f 28 d6                       movaps xmm2,xmm6
30e424  66 49 0f 7e f0                 movq   r8,xmm6
30e429  e8 e6 02 fe ff                 call   0x2ee714
30e42e  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
30e435  e8 1a 7f fc ff                 call   0x2d6354
30e43a  48 8b c8                       mov    rcx,rax
30e43d  48 8b d8                       mov    rbx,rax
30e440  e8 db 29 fd ff                 call   0x2e0e20
30e445  45 33 ff                       xor    r15d,r15d
30e448  48 89 05 c9 72 0d 00           mov    QWORD PTR [rip+0xd72c9],rax        # 0x3e5718
30e44f  48 85 c0                       test   rax,rax
30e452  75 31                          jne    0x30e485
30e454  0f 57 db                       xorps  xmm3,xmm3
30e457  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
30e45e  41 0f 28 d4                    movaps xmm2,xmm12
30e462  0f 28 cf                       movaps xmm1,xmm7
30e465  48 8b cb                       mov    rcx,rbx
30e468  e8 f7 19 fd ff                 call   0x2dfe64
30e46d  48 89 05 a4 72 0d 00           mov    QWORD PTR [rip+0xd72a4],rax        # 0x3e5718
30e474  48 85 c0                       test   rax,rax
30e477  0f 84 59 64 00 00              je     0x3148d6
30e47d  48 8b c8                       mov    rcx,rax
30e480  e8 eb 55 fd ff                 call   0x2e3a70
30e485  44 38 3d ec c1 0d 00           cmp    BYTE PTR [rip+0xdc1ec],r15b        # 0x3ea678 ; CONFIG Bools.simulateproj value(+0x48)
30e48c  0f 84 81 05 00 00              je     0x30ea13
30e492  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30e496  48 8d 8d d8 04 00 00           lea    rcx,[rbp+0x4d8]
30e49d  e8 d6 2d fd ff                 call   0x2e1278
30e4a2  48 8b c8                       mov    rcx,rax
30e4a5  48 8d 55 68                    lea    rdx,[rbp+0x68]
30e4a9  0f 28 d7                       movaps xmm2,xmm7
30e4ac  e8 bb 11 fd ff                 call   0x2df66c
30e4b1  f3 0f 10 15 97 ed f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7ed97]        # 0x28d250 ; f32=0.5
30e4b9  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30e4c0  48 8d 0d 99 7b 0d 00           lea    rcx,[rip+0xd7b99]        # 0x3e6060
30e4c7  48 8b d8                       mov    rbx,rax
30e4ca  e8 9d 11 fd ff                 call   0x2df66c
30e4cf  4c 8b c0                       mov    r8,rax
30e4d2  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
30e4d9  48 8b cb                       mov    rcx,rbx
30e4dc  e8 27 12 fd ff                 call   0x2df708
30e4e1  48 8b ce                       mov    rcx,rsi
30e4e4  e8 6b 75 fd ff                 call   0x2e5a54
30e4e9  48 8b c8                       mov    rcx,rax
30e4ec  4c 8b c0                       mov    r8,rax
30e4ef  e8 14 ca fb ff                 call   0x2caf08
30e4f4  84 c0                          test   al,al
30e4f6  0f 84 17 05 00 00              je     0x30ea13
30e4fc  49 8b c8                       mov    rcx,r8
30e4ff  e8 50 7e fc ff                 call   0x2d6354
30e504  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
30e50b  48 8b d8                       mov    rbx,rax
30e50e  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30e515  e8 3e 6a fe ff                 call   0x2f4f58 ; STRING getter=0x2f4f58 GrenadeWeapon
30e51a  48 8b c8                       mov    rcx,rax
30e51d  e8 66 ec fc ff                 call   0x2dd188
30e522  48 8b c8                       mov    rcx,rax
30e525  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
30e52f  e8 18 76 fd ff                 call   0x2e5b4c
30e534  48 3b d8                       cmp    rbx,rax
30e537  75 0a                          jne    0x30e543
30e539  f3 0f 10 35 07 4c f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff84c07]        # 0x293148 ; f32=2.5625
30e541  eb 08                          jmp    0x30e54b
30e543  f3 0f 10 35 95 fc f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff7fc95]        # 0x28e1e0 ; f32=8
30e54b  48 8d 8d b0 15 00 00           lea    rcx,[rbp+0x15b0]
30e552  e8 4d ce fb ff                 call   0x2cb3a4
30e557  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30e55e  e8 41 ce fb ff                 call   0x2cb3a4
30e563  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30e567  e8 50 96 0b 00                 call   0x3c7bbc
30e56c  e8 fb 84 fd ff                 call   0x2e6a6c
30e571  f3 0f 10 15 73 fc f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7fc73]        # 0x28e1ec ; f32=-9.81
30e579  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e57d  8b d8                          mov    ebx,eax
30e57f  0f 57 db                       xorps  xmm3,xmm3
30e582  0f 57 c9                       xorps  xmm1,xmm1
30e585  81 cb 00 09 a3 48              or     ebx,0x48a30900
30e58b  e8 18 96 0b 00                 call   0x3c7ba8
30e590  48 8b c8                       mov    rcx,rax
30e593  48 8d 55 68                    lea    rdx,[rbp+0x68]
30e597  41 0f 28 d4                    movaps xmm2,xmm12
30e59b  e8 cc 10 fd ff                 call   0x2df66c
30e5a0  89 5c 24 30                    mov    DWORD PTR [rsp+0x30],ebx
30e5a4  4c 8d 4d a0                    lea    r9,[rbp-0x60]
30e5a8  4c 8d 85 30 01 00 00           lea    r8,[rbp+0x130]
30e5af  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
30e5b6  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e5ba  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e5be  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e5c1  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30e5c4  48 8d 45 80                    lea    rax,[rbp-0x80]
30e5c8  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
30e5cd  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30e5d3  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30e5d8  e8 c3 9f 00 00                 call   0x3185a0
30e5dd  f3 0f 10 4d a8                 movss  xmm1,DWORD PTR [rbp-0x58]
30e5e2  f3 0f 10 45 a0                 movss  xmm0,DWORD PTR [rbp-0x60]
30e5e7  e8 c0 a0 0b 00                 call   0x3c86ac
30e5ec  0f 28 f0                       movaps xmm6,xmm0
30e5ef  f3 0f 10 45 a4                 movss  xmm0,DWORD PTR [rbp-0x5c]
30e5f4  e8 ef 9f 0b 00                 call   0x3c85e8
30e5f9  f3 44 0f 10 35 9e 4c f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff84c9e]        # 0x2932a0
30e602  48 8d 4d 08                    lea    rcx,[rbp+0x8]
30e606  41 0f 57 c6                    xorps  xmm0,xmm14
30e60a  0f 57 db                       xorps  xmm3,xmm3
30e60d  0f 28 c8                       movaps xmm1,xmm0
30e610  0f 28 d6                       movaps xmm2,xmm6
30e613  e8 90 95 0b 00                 call   0x3c7ba8
30e618  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30e61c  e8 37 55 fd ff                 call   0x2e3b58
30e621  84 c0                          test   al,al
30e623  74 22                          je     0x30e647
30e625  0f 57 db                       xorps  xmm3,xmm3
30e628  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e62c  41 0f 28 d4                    movaps xmm2,xmm12
30e630  0f 57 c9                       xorps  xmm1,xmm1
30e633  e8 70 95 0b 00                 call   0x3c7ba8
30e638  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e63c  f2 0f 11 45 a0                 movsd  QWORD PTR [rbp-0x60],xmm0
30e641  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e644  89 45 a8                       mov    DWORD PTR [rbp-0x58],eax
30e647  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30e64b  e8 6c 95 0b 00                 call   0x3c7bbc
30e650  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30e654  e8 63 95 0b 00                 call   0x3c7bbc
30e659  f3 0f 10 75 a4                 movss  xmm6,DWORD PTR [rbp-0x5c]
30e65e  0f 28 c6                       movaps xmm0,xmm6
30e661  f3 41 0f 5c c4                 subss  xmm0,xmm12
30e666  e8 c1 50 fd ff                 call   0x2e372c
30e66b  f3 0f 10 3d 59 f4 f7 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff7f459]        # 0x28dacc ; f32=1e-06
30e673  0f 2f f8                       comiss xmm7,xmm0
30e676  76 26                          jbe    0x30e69e
30e678  0f 57 db                       xorps  xmm3,xmm3
30e67b  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e67f  0f 57 d2                       xorps  xmm2,xmm2
30e682  41 0f 28 cc                    movaps xmm1,xmm12
30e686  e8 1d 95 0b 00                 call   0x3c7ba8
30e68b  f3 0f 10 1d cd 4b f8 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff84bcd]        # 0x293260 ; f32=-1
30e693  0f 57 d2                       xorps  xmm2,xmm2
30e696  0f 57 c9                       xorps  xmm1,xmm1
30e699  e9 a4 00 00 00                 jmp    0x30e742
30e69e  f3 41 0f 58 f4                 addss  xmm6,xmm12
30e6a3  0f 28 c6                       movaps xmm0,xmm6
30e6a6  e8 81 50 fd ff                 call   0x2e372c
30e6ab  0f 2f f8                       comiss xmm7,xmm0
30e6ae  76 19                          jbe    0x30e6c9
30e6b0  0f 57 db                       xorps  xmm3,xmm3
30e6b3  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e6b7  0f 57 d2                       xorps  xmm2,xmm2
30e6ba  41 0f 28 cc                    movaps xmm1,xmm12
30e6be  e8 e5 94 0b 00                 call   0x3c7ba8
30e6c3  41 0f 28 dc                    movaps xmm3,xmm12
30e6c7  eb ca                          jmp    0x30e693
30e6c9  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30e6ce  e8 c5 1a fd ff                 call   0x2e0198
30e6d3  44 0f 28 c8                    movaps xmm9,xmm0
30e6d7  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e6dc  e8 b7 1a fd ff                 call   0x2e0198
30e6e1  44 0f 28 d0                    movaps xmm10,xmm0
30e6e5  f3 0f 10 45 08                 movss  xmm0,DWORD PTR [rbp+0x8]
30e6ea  e8 79 18 fd ff                 call   0x2dff68
30e6ef  44 0f 28 c0                    movaps xmm8,xmm0
30e6f3  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e6f8  e8 6b 18 fd ff                 call   0x2dff68
30e6fd  0f 28 f8                       movaps xmm7,xmm0
30e700  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e705  e8 8e 1a fd ff                 call   0x2e0198
30e70a  0f 28 f0                       movaps xmm6,xmm0
30e70d  f3 0f 10 45 0c                 movss  xmm0,DWORD PTR [rbp+0xc]
30e712  41 0f 57 f6                    xorps  xmm6,xmm14
30e716  e8 4d 18 fd ff                 call   0x2dff68
30e71b  0f 28 c8                       movaps xmm1,xmm0
30e71e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30e722  0f 28 de                       movaps xmm3,xmm6
30e725  0f 57 d2                       xorps  xmm2,xmm2
30e728  e8 7b 94 0b 00                 call   0x3c7ba8
30e72d  f3 41 0f 59 f9                 mulss  xmm7,xmm9
30e732  41 0f 28 d0                    movaps xmm2,xmm8
30e736  f3 45 0f 59 d1                 mulss  xmm10,xmm9
30e73b  0f 28 df                       movaps xmm3,xmm7
30e73e  41 0f 28 ca                    movaps xmm1,xmm10
30e742  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e746  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30e74a  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
30e74f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e752  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
30e755  e8 4e 94 0b 00                 call   0x3c7ba8
30e75a  bf 32 00 00 00                 mov    edi,0x32
30e75f  4c 8d 35 3a 29 0e 00           lea    r14,[rip+0xe293a]        # 0x3f10a0
30e766  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e76a  f2 0f 11 45 f8                 movsd  QWORD PTR [rbp-0x8],xmm0
30e76f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e772  89 45 00                       mov    DWORD PTR [rbp+0x0],eax
30e775  8b 05 5d 24 0e 00              mov    eax,DWORD PTR [rip+0xe245d]        # 0x3f0bd8
30e77b  a8 08                          test   al,0x8
30e77d  75 1e                          jne    0x30e79d
30e77f  83 c8 08                       or     eax,0x8
30e782  4c 8d 0d 33 94 0b 00           lea    r9,[rip+0xb9433]        # 0x3c7bbc
30e789  44 8b c7                       mov    r8d,edi
30e78c  89 05 46 24 0e 00              mov    DWORD PTR [rip+0xe2446],eax        # 0x3f0bd8
30e792  8d 57 da                       lea    edx,[rdi-0x26]
30e795  49 8b ce                       mov    rcx,r14
30e798  e8 97 16 fd ff                 call   0x2dfe34
30e79d  41 8b f7                       mov    esi,r15d
30e7a0  66 0f 6e f6                    movd   xmm6,esi
30e7a4  0f 5b f6                       cvtdq2ps xmm6,xmm6
30e7a7  f3 0f 59 35 f1 48 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff848f1]        # 0x2930a0 ; f32=0.125664
30e7af  0f 28 c6                       movaps xmm0,xmm6
30e7b2  e8 b1 17 fd ff                 call   0x2dff68
30e7b7  0f 28 f8                       movaps xmm7,xmm0
30e7ba  0f 28 c6                       movaps xmm0,xmm6
30e7bd  f3 0f 59 3d 73 f6 0d 00        mulss  xmm7,DWORD PTR [rip+0xdf673]        # 0x3ede38 ; CONFIG F.BoomRadius value(+0x48)
30e7c5  e8 ce 19 fd ff                 call   0x2e0198
30e7ca  0f 28 f0                       movaps xmm6,xmm0
30e7cd  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e7d1  f3 0f 59 35 5f f6 0d 00        mulss  xmm6,DWORD PTR [rip+0xdf65f]        # 0x3ede38 ; CONFIG F.BoomRadius value(+0x48)
30e7d9  e8 6e c1 00 00                 call   0x31a94c
30e7de  0f 28 d7                       movaps xmm2,xmm7
30e7e1  48 8d 55 b0                    lea    rdx,[rbp-0x50]
30e7e5  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30e7e9  48 8b d8                       mov    rbx,rax
30e7ec  e8 7b 0e fd ff                 call   0x2df66c
30e7f1  4c 8b c0                       mov    r8,rax
30e7f4  48 8d 55 68                    lea    rdx,[rbp+0x68]
30e7f8  48 8b cb                       mov    rcx,rbx
30e7fb  e8 08 0f fd ff                 call   0x2df708
30e800  0f 28 d6                       movaps xmm2,xmm6
30e803  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30e80a  48 8d 4d f8                    lea    rcx,[rbp-0x8]
30e80e  48 8b d8                       mov    rbx,rax
30e811  e8 56 0e fd ff                 call   0x2df66c
30e816  4c 8b c0                       mov    r8,rax
30e819  48 8d 95 78 04 00 00           lea    rdx,[rbp+0x478]
30e820  48 8b cb                       mov    rcx,rbx
30e823  e8 e0 0e fd ff                 call   0x2df708
30e828  8b ce                          mov    ecx,esi
30e82a  ff c6                          inc    esi
30e82c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e830  48 8d 14 49                    lea    rdx,[rcx+rcx*2]
30e834  f2 41 0f 11 04 96              movsd  QWORD PTR [r14+rdx*4],xmm0
30e83a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e83d  41 89 44 96 08                 mov    DWORD PTR [r14+rdx*4+0x8],eax
30e842  3b f7                          cmp    esi,edi
30e844  0f 8c 56 ff ff ff              jl     0x30e7a0
30e84a  4c 8d 0d 53 cb fb ff           lea    r9,[rip+0xfffffffffffbcb53]        # 0x2cb3a4
30e851  4c 8b c7                       mov    r8,rdi
30e854  ba 08 00 00 00                 mov    edx,0x8
30e859  48 8d 8d 20 13 00 00           lea    rcx,[rbp+0x1320]
30e860  e8 cf 15 fd ff                 call   0x2dfe34
30e865  40 b6 01                       mov    sil,0x1
30e868  4c 8d 35 39 8a 0c 00           lea    r14,[rip+0xc8a39]        # 0x3d72a8
30e86f  49 8b df                       mov    rbx,r15
30e872  4c 8d 2d 27 28 0e 00           lea    r13,[rip+0xe2827]        # 0x3f10a0
30e879  48 8d 04 5b                    lea    rax,[rbx+rbx*2]
30e87d  4d 8b ce                       mov    r9,r14
30e880  f2 41 0f 10 44 85 00           movsd  xmm0,QWORD PTR [r13+rax*4+0x0]
30e887  4c 8d 85 20 13 00 00           lea    r8,[rbp+0x1320]
30e88e  41 8b 44 85 08                 mov    eax,DWORD PTR [r13+rax*4+0x8]
30e893  4d 8d 04 d8                    lea    r8,[r8+rbx*8]
30e897  48 8d 55 80                    lea    rdx,[rbp-0x80]
30e89b  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30e8a0  49 8b cc                       mov    rcx,r12
30e8a3  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30e8a6  e8 75 e4 05 00                 call   0x36cd20
30e8ab  f6 d8                          neg    al
30e8ad  1a c9                          sbb    cl,cl
30e8af  48 ff c3                       inc    rbx
30e8b2  40 22 ce                       and    cl,sil
30e8b5  40 8a f1                       mov    sil,cl
30e8b8  48 3b df                       cmp    rbx,rdi
30e8bb  75 bc                          jne    0x30e879
30e8bd  4c 8b ad a0 15 00 00           mov    r13,QWORD PTR [rbp+0x15a0]
30e8c4  84 c9                          test   cl,cl
30e8c6  74 2f                          je     0x30e8f7
30e8c8  44 38 3d e9 87 0d 00           cmp    BYTE PTR [rip+0xd87e9],r15b        # 0x3e70b8 ; CONFIG Bools.DrawHitPoint value(+0x48)
30e8cf  74 26                          je     0x30e8f7
30e8d1  48 8d 0d 40 e2 0d 00           lea    rcx,[rip+0xde240]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30e8d8  e8 2f 0f fe ff                 call   0x2ef80c
30e8dd  f3 0f 10 15 47 f2 f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7f247]        # 0x28db2c ; f32=50
30e8e5  48 8d 95 20 13 00 00           lea    rdx,[rbp+0x1320]
30e8ec  44 8b c8                       mov    r9d,eax
30e8ef  49 8b cd                       mov    rcx,r13
30e8f2  e8 0d bf 04 00                 call   0x35a804
30e8f7  44 38 3d 6a 87 0d 00           cmp    BYTE PTR [rip+0xd876a],r15b        # 0x3e7068 ; CONFIG Bools.DrawPath value(+0x48)
30e8fe  0f 84 31 ed ff ff              je     0x30d635
30e904  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e908  49 8b df                       mov    rbx,r15
30e90b  e8 54 26 01 00                 call   0x320f64
30e910  48 83 f8 01                    cmp    rax,0x1
30e914  0f 84 1b ed ff ff              je     0x30d635
30e91a  f3 0f 10 3d 22 48 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff84822]        # 0x293144 ; f32=2.5
30e922  48 8d 7b 01                    lea    rdi,[rbx+0x1]
30e926  48 8b d7                       mov    rdx,rdi
30e929  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e92d  e8 9e 0e fe ff                 call   0x2ef7d0
30e932  48 8b d3                       mov    rdx,rbx
30e935  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e939  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
30e93d  8b 70 08                       mov    esi,DWORD PTR [rax+0x8]
30e940  e8 8b 0e fe ff                 call   0x2ef7d0
30e945  4d 8b ce                       mov    r9,r14
30e948  4c 8d 85 b0 15 00 00           lea    r8,[rbp+0x15b0]
30e94f  48 8d 55 80                    lea    rdx,[rbp-0x80]
30e953  49 8b cc                       mov    rcx,r12
30e956  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30e95a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30e95d  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
30e962  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
30e965  e8 b6 e3 05 00                 call   0x36cd20
30e96a  84 c0                          test   al,al
30e96c  0f 84 81 00 00 00              je     0x30e9f3
30e972  4d 8b ce                       mov    r9,r14
30e975  f2 0f 11 75 50                 movsd  QWORD PTR [rbp+0x50],xmm6
30e97a  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
30e981  89 75 58                       mov    DWORD PTR [rbp+0x58],esi
30e984  48 8d 55 50                    lea    rdx,[rbp+0x50]
30e988  49 8b cc                       mov    rcx,r12
30e98b  e8 90 e3 05 00                 call   0x36cd20
30e990  84 c0                          test   al,al
30e992  74 5f                          je     0x30e9f3
30e994  48 8d 0d 7d e1 0d 00           lea    rcx,[rip+0xde17d]        # 0x3ecb18 ; CONFIG C.SimProjectileColor value(+0x48)
30e99b  e8 6c 0e fe ff                 call   0x2ef80c
30e9a0  f3 0f 10 95 ac 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15ac]
30e9a8  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
30e9af  f3 0f 10 8d a8 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15a8]
30e9b7  8b d8                          mov    ebx,eax
30e9b9  e8 82 d9 fb ff                 call   0x2cc340
30e9be  f3 0f 10 95 b4 15 00 00        movss  xmm2,DWORD PTR [rbp+0x15b4]
30e9c6  48 8d 4d 78                    lea    rcx,[rbp+0x78]
30e9ca  f3 0f 10 8d b0 15 00 00        movss  xmm1,DWORD PTR [rbp+0x15b0]
30e9d2  e8 69 d9 fb ff                 call   0x2cc340
30e9d7  44 8b cb                       mov    r9d,ebx
30e9da  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
30e9e0  4c 8d 85 b8 15 00 00           lea    r8,[rbp+0x15b8]
30e9e7  49 8b cd                       mov    rcx,r13
30e9ea  48 8d 55 78                    lea    rdx,[rbp+0x78]
30e9ee  e8 69 d8 04 00                 call   0x35c25c
30e9f3  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30e9f7  48 8b df                       mov    rbx,rdi
30e9fa  e8 65 25 01 00                 call   0x320f64
30e9ff  48 ff c8                       dec    rax
30ea02  48 3b f8                       cmp    rdi,rax
30ea05  0f 82 17 ff ff ff              jb     0x30e922
30ea0b  e9 25 ec ff ff                 jmp    0x30d635
30ea10  45 33 ff                       xor    r15d,r15d
30ea13  4c 8b 75 18                    mov    r14,QWORD PTR [rbp+0x18]
30ea17  e8 5c 6d 00 00                 call   0x315778
30ea1c  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
30ea23  f3 0f 11 85 20 04 00 00        movss  DWORD PTR [rbp+0x420],xmm0
30ea2b  44 0f 28 c8                    movaps xmm9,xmm0
30ea2f  e8 24 5d fc ff                 call   0x2d4758
30ea34  48 8b b5 a0 01 00 00           mov    rsi,QWORD PTR [rbp+0x1a0]
30ea3b  33 d2                          xor    edx,edx
30ea3d  48 8b ce                       mov    rcx,rsi
30ea40  e8 e7 e8 fb ff                 call   0x2cd32c
30ea45  48 8d 95 a8 07 00 00           lea    rdx,[rbp+0x7a8]
30ea4c  48 89 85 b0 0b 00 00           mov    QWORD PTR [rbp+0xbb0],rax
30ea53  48 8b ce                       mov    rcx,rsi
30ea56  e8 09 a7 05 00                 call   0x369164
30ea5b  48 8d 8d 48 03 00 00           lea    rcx,[rbp+0x348]
30ea62  44 88 7d d4                    mov    BYTE PTR [rbp-0x2c],r15b
30ea66  e8 89 3e 08 00                 call   0x3928f4
30ea6b  48 8d 95 98 05 00 00           lea    rdx,[rbp+0x598]
30ea72  48 8d 0d 57 9d f0 ff           lea    rcx,[rip+0xfffffffffff09d57]        # 0x2187d0
30ea79  e8 7e 50 fd ff                 call   0x2e3afc
30ea7e  48 8b c8                       mov    rcx,rax
30ea81  48 8b d8                       mov    rbx,rax
30ea84  e8 ef 2e fc ff                 call   0x2d1978
30ea89  48 8b cb                       mov    rcx,rbx
30ea8c  48 89 85 c8 00 00 00           mov    QWORD PTR [rbp+0xc8],rax
30ea93  e8 28 8f fc ff                 call   0x2d79c0
30ea98  48 8b c8                       mov    rcx,rax
30ea9b  48 89 85 c0 02 00 00           mov    QWORD PTR [rbp+0x2c0],rax
30eaa2  48 8b 85 c8 00 00 00           mov    rax,QWORD PTR [rbp+0xc8]
30eaa9  48 3b c1                       cmp    rax,rcx
30eaac  0f 84 fd 56 00 00              je     0x3141af
30eab2  48 8b 18                       mov    rbx,QWORD PTR [rax]
30eab5  48 8b cb                       mov    rcx,rbx
30eab8  48 89 5c 24 58                 mov    QWORD PTR [rsp+0x58],rbx
30eabd  e8 46 c4 fb ff                 call   0x2caf08
30eac2  84 c0                          test   al,al
30eac4  0f 84 a0 56 00 00              je     0x31416a
30eaca  48 8b cb                       mov    rcx,rbx
30eacd  e8 ca 23 fd ff                 call   0x2e0e9c
30ead2  84 c0                          test   al,al
30ead4  0f 84 90 56 00 00              je     0x31416a
30eada  44 38 3d d7 ad 0d 00           cmp    BYTE PTR [rip+0xdadd7],r15b        # 0x3e98b8 ; CONFIG Bools.HandcuffStuff value(+0x48)
30eae1  48 8b 85 c8 00 00 00           mov    rax,QWORD PTR [rbp+0xc8]
30eae8  40 8a 78 08                    mov    dil,BYTE PTR [rax+0x8]
30eaec  74 5f                          je     0x30eb4d
30eaee  40 84 ff                       test   dil,dil
30eaf1  75 5a                          jne    0x30eb4d
30eaf3  f2 0f 10 85 a8 07 00 00        movsd  xmm0,QWORD PTR [rbp+0x7a8]
30eafb  48 8d 95 c0 07 00 00           lea    rdx,[rbp+0x7c0]
30eb02  8b 85 b0 07 00 00              mov    eax,DWORD PTR [rbp+0x7b0]
30eb08  48 8b cb                       mov    rcx,rbx
30eb0b  f2 0f 11 85 c0 07 00 00        movsd  QWORD PTR [rbp+0x7c0],xmm0
30eb13  89 85 c8 07 00 00              mov    DWORD PTR [rbp+0x7c8],eax
30eb19  e8 92 7b 05 00                 call   0x3666b0
30eb1e  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30eb23  0f 28 f0                       movaps xmm6,xmm0
30eb26  e8 b9 b6 05 00                 call   0x36a1e4
30eb2b  84 c0                          test   al,al
30eb2d  74 1e                          je     0x30eb4d
30eb2f  f3 0f 10 05 19 46 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff84619]        # 0x293150 ; f32=2.8
30eb37  0f 2f c6                       comiss xmm0,xmm6
30eb3a  72 11                          jb     0x30eb4d
30eb3c  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
30eb41  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
30eb48  e8 b7 21 01 00                 call   0x320d04
30eb4d  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30eb52  48 8d 95 c4 11 00 00           lea    rdx,[rbp+0x11c4]
30eb59  41 b8 07 00 00 00              mov    r8d,0x7
30eb5f  e8 84 a0 05 00                 call   0x368be8
30eb64  f3 0f 10 15 f0 46 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff846f0]        # 0x29325c ; f32=-0.9
30eb6c  48 8d 8d d0 11 00 00           lea    rcx,[rbp+0x11d0]
30eb73  0f 57 db                       xorps  xmm3,xmm3
30eb76  0f 57 c9                       xorps  xmm1,xmm1
30eb79  48 8b d8                       mov    rbx,rax
30eb7c  e8 27 90 0b 00                 call   0x3c7ba8
30eb81  4c 8b c0                       mov    r8,rax
30eb84  48 8d 55 a0                    lea    rdx,[rbp-0x60]
30eb88  48 8b cb                       mov    rcx,rbx
30eb8b  e8 78 0b fd ff                 call   0x2df708
30eb90  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30eb95  48 8d 95 dc 11 00 00           lea    rdx,[rbp+0x11dc]
30eb9c  41 b8 35 00 00 00              mov    r8d,0x35
30eba2  e8 41 a0 05 00                 call   0x368be8
30eba7  f3 0f 10 15 f9 44 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff844f9]        # 0x2930a8 ; f32=0.2
30ebaf  48 8d 8d e8 11 00 00           lea    rcx,[rbp+0x11e8]
30ebb6  0f 57 db                       xorps  xmm3,xmm3
30ebb9  0f 57 c9                       xorps  xmm1,xmm1
30ebbc  48 8b d8                       mov    rbx,rax
30ebbf  e8 e4 8f 0b 00                 call   0x3c7ba8
30ebc4  4c 8b c0                       mov    r8,rax
30ebc7  48 8d 95 c8 04 00 00           lea    rdx,[rbp+0x4c8]
30ebce  48 8b cb                       mov    rcx,rbx
30ebd1  e8 32 0b fd ff                 call   0x2df708
30ebd6  48 8d 8d f4 11 00 00           lea    rcx,[rbp+0x11f4]
30ebdd  e8 da 8f 0b 00                 call   0x3c7bbc
30ebe2  48 8b d0                       mov    rdx,rax
30ebe5  48 8d 4d a0                    lea    rcx,[rbp-0x60]
30ebe9  e8 c2 09 fd ff                 call   0x2df5b0
30ebee  84 c0                          test   al,al
30ebf0  0f 85 74 55 00 00              jne    0x31416a
30ebf6  48 8d 8d 00 12 00 00           lea    rcx,[rbp+0x1200]
30ebfd  e8 ba 8f 0b 00                 call   0x3c7bbc
30ec02  48 8b d0                       mov    rdx,rax
30ec05  48 8d 8d c8 04 00 00           lea    rcx,[rbp+0x4c8]
30ec0c  e8 9f 09 fd ff                 call   0x2df5b0
30ec11  84 c0                          test   al,al
30ec13  0f 85 51 55 00 00              jne    0x31416a
30ec19  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30ec1e  e8 31 6e 00 00                 call   0x315a54
30ec23  48 8b c8                       mov    rcx,rax
30ec26  4c 8b c0                       mov    r8,rax
30ec29  e8 da c2 fb ff                 call   0x2caf08
30ec2e  84 c0                          test   al,al
30ec30  0f 84 34 55 00 00              je     0x31416a
30ec36  48 8d 95 0c 12 00 00           lea    rdx,[rbp+0x120c]
30ec3d  49 8b c8                       mov    rcx,r8
30ec40  e8 8f 5b 06 00                 call   0x3747d4
30ec45  48 8d 95 d0 07 00 00           lea    rdx,[rbp+0x7d0]
30ec4c  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30ec50  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30ec54  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30ec57  f2 0f 11 85 d0 07 00 00        movsd  QWORD PTR [rbp+0x7d0],xmm0
30ec5f  89 85 d8 07 00 00              mov    DWORD PTR [rbp+0x7d8],eax
30ec65  e8 b6 64 00 00                 call   0x315120
30ec6a  4c 8d 45 c0                    lea    r8,[rbp-0x40]
30ec6e  48 8d 95 78 04 00 00           lea    rdx,[rbp+0x478]
30ec75  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
30ec7c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30ec80  f3 0f 10 70 0c                 movss  xmm6,DWORD PTR [rax+0xc]
30ec85  f3 0f 10 78 10                 movss  xmm7,DWORD PTR [rax+0x10]
30ec8a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30ec8d  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
30ec92  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
30ec95  e8 32 0a fd ff                 call   0x2df6cc
30ec9a  48 8d 95 e0 07 00 00           lea    rdx,[rbp+0x7e0]
30eca1  48 8d 8d 78 04 00 00           lea    rcx,[rbp+0x478]
30eca8  e8 cb 25 fd ff                 call   0x2e1278
30ecad  f2 0f 10 85 e0 07 00 00        movsd  xmm0,QWORD PTR [rbp+0x7e0]
30ecb5  48 8d 8d 18 12 00 00           lea    rcx,[rbp+0x1218]
30ecbc  8b 85 e8 07 00 00              mov    eax,DWORD PTR [rbp+0x7e8]
30ecc2  0f 57 db                       xorps  xmm3,xmm3
30ecc5  41 0f 28 d4                    movaps xmm2,xmm12
30ecc9  f2 0f 11 45 50                 movsd  QWORD PTR [rbp+0x50],xmm0
30ecce  0f 57 c9                       xorps  xmm1,xmm1
30ecd1  89 45 58                       mov    DWORD PTR [rbp+0x58],eax
30ecd4  e8 cf 8e 0b 00                 call   0x3c7ba8
30ecd9  48 8b c8                       mov    rcx,rax
30ecdc  4c 8d 45 50                    lea    r8,[rbp+0x50]
30ece0  48 8d 95 24 12 00 00           lea    rdx,[rbp+0x1224]
30ece7  e8 e4 11 fd ff                 call   0x2dfed0
30ecec  48 8b c8                       mov    rcx,rax
30ecef  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
30ecf6  e8 7d 25 fd ff                 call   0x2e1278
30ecfb  4c 8d 85 30 02 00 00           lea    r8,[rbp+0x230]
30ed02  48 8d 95 30 12 00 00           lea    rdx,[rbp+0x1230]
30ed09  48 8d 4d 50                    lea    rcx,[rbp+0x50]
30ed0d  e8 be 11 fd ff                 call   0x2dfed0
30ed12  48 8b c8                       mov    rcx,rax
30ed15  48 8d 95 98 04 00 00           lea    rdx,[rbp+0x498]
30ed1c  e8 57 25 fd ff                 call   0x2e1278
30ed21  0f 28 d6                       movaps xmm2,xmm6
30ed24  48 8d 95 3c 12 00 00           lea    rdx,[rbp+0x123c]
30ed2b  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
30ed32  e8 35 09 fd ff                 call   0x2df66c
30ed37  4c 8b c0                       mov    r8,rax
30ed3a  48 8d 95 48 12 00 00           lea    rdx,[rbp+0x1248]
30ed41  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30ed45  e8 be 09 fd ff                 call   0x2df708
30ed4a  0f 28 d7                       movaps xmm2,xmm7
30ed4d  48 8d 95 54 12 00 00           lea    rdx,[rbp+0x1254]
30ed54  48 8d 8d 98 04 00 00           lea    rcx,[rbp+0x498]
30ed5b  48 8b d8                       mov    rbx,rax
30ed5e  e8 09 09 fd ff                 call   0x2df66c
30ed63  4c 8b c0                       mov    r8,rax
30ed66  48 8d 95 68 03 00 00           lea    rdx,[rbp+0x368]
30ed6d  48 8b cb                       mov    rcx,rbx
30ed70  e8 93 09 fd ff                 call   0x2df708
30ed75  0f 28 d6                       movaps xmm2,xmm6
30ed78  48 8d 95 60 12 00 00           lea    rdx,[rbp+0x1260]
30ed7f  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
30ed86  e8 e1 08 fd ff                 call   0x2df66c
30ed8b  4c 8b c0                       mov    r8,rax
30ed8e  48 8d 95 6c 12 00 00           lea    rdx,[rbp+0x126c]
30ed95  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30ed99  e8 6a 09 fd ff                 call   0x2df708
30ed9e  0f 28 d7                       movaps xmm2,xmm7
30eda1  48 8d 95 78 12 00 00           lea    rdx,[rbp+0x1278]
30eda8  48 8d 8d 98 04 00 00           lea    rcx,[rbp+0x498]
30edaf  48 8b d8                       mov    rbx,rax
30edb2  e8 b5 08 fd ff                 call   0x2df66c
30edb7  4c 8b c0                       mov    r8,rax
30edba  48 8d 95 a8 04 00 00           lea    rdx,[rbp+0x4a8]
30edc1  48 8b cb                       mov    rcx,rbx
30edc4  e8 03 09 fd ff                 call   0x2df6cc
30edc9  0f 28 d6                       movaps xmm2,xmm6
30edcc  48 8d 95 84 12 00 00           lea    rdx,[rbp+0x1284]
30edd3  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
30edda  e8 8d 08 fd ff                 call   0x2df66c
30eddf  4c 8b c0                       mov    r8,rax
30ede2  48 8d 95 90 12 00 00           lea    rdx,[rbp+0x1290]
30ede9  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30eded  e8 da 08 fd ff                 call   0x2df6cc
30edf2  0f 28 d7                       movaps xmm2,xmm7
30edf5  48 8d 95 9c 12 00 00           lea    rdx,[rbp+0x129c]
30edfc  48 8d 8d 98 04 00 00           lea    rcx,[rbp+0x498]
30ee03  48 8b d8                       mov    rbx,rax
30ee06  e8 61 08 fd ff                 call   0x2df66c
30ee0b  4c 8b c0                       mov    r8,rax
30ee0e  48 8d 95 b8 04 00 00           lea    rdx,[rbp+0x4b8]
30ee15  48 8b cb                       mov    rcx,rbx
30ee18  e8 af 08 fd ff                 call   0x2df6cc
30ee1d  0f 28 d6                       movaps xmm2,xmm6
30ee20  48 8d 95 a8 12 00 00           lea    rdx,[rbp+0x12a8]
30ee27  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
30ee2e  e8 39 08 fd ff                 call   0x2df66c
30ee33  4c 8b c0                       mov    r8,rax
30ee36  48 8d 95 b4 12 00 00           lea    rdx,[rbp+0x12b4]
30ee3d  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30ee41  e8 86 08 fd ff                 call   0x2df6cc
30ee46  0f 28 d7                       movaps xmm2,xmm7
30ee49  48 8d 95 c0 12 00 00           lea    rdx,[rbp+0x12c0]
30ee50  48 8d 8d 98 04 00 00           lea    rcx,[rbp+0x498]
30ee57  48 8b d8                       mov    rbx,rax
30ee5a  e8 0d 08 fd ff                 call   0x2df66c
30ee5f  4c 8b c0                       mov    r8,rax
30ee62  48 8d 95 58 03 00 00           lea    rdx,[rbp+0x358]
30ee69  48 8b cb                       mov    rcx,rbx
30ee6c  e8 97 08 fd ff                 call   0x2df708
30ee71  40 84 ff                       test   dil,dil
30ee74  0f 84 4f 18 00 00              je     0x3106c9
30ee7a  44 38 3d a7 85 0d 00           cmp    BYTE PTR [rip+0xd85a7],r15b        # 0x3e7428 ; CONFIG Bools.Scientist value(+0x48)
30ee81  0f 84 42 18 00 00              je     0x3106c9
30ee87  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30ee8c  e8 7b a8 05 00                 call   0x36970c
30ee91  44 0f 28 f0                    movaps xmm14,xmm0
30ee95  45 0f 2f de                    comiss xmm11,xmm14
30ee99  0f 83 cb 52 00 00              jae    0x31416a
30ee9f  48 8d 55 c0                    lea    rdx,[rbp-0x40]
30eea3  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
30eeaa  e8 81 10 fd ff                 call   0x2dff30
30eeaf  66 0f 6e 0d e1 92 0c 00        movd   xmm1,DWORD PTR [rip+0xc92e1]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
30eeb7  0f 5b c9                       cvtdq2ps xmm1,xmm1
30eeba  0f 2f c8                       comiss xmm1,xmm0
30eebd  0f 82 a7 52 00 00              jb     0x31416a
30eec3  0f 10 05 4e d9 0d 00           movups xmm0,XMMWORD PTR [rip+0xdd94e]        # 0x3ec818 ; CONFIG C.NPCcolor value(+0x48)
30eeca  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30eecf  48 8d 95 cc 12 00 00           lea    rdx,[rbp+0x12cc]
30eed6  bf 2f 00 00 00                 mov    edi,0x2f
30eedb  44 8b c7                       mov    r8d,edi
30eede  0f 11 85 10 01 00 00           movups XMMWORD PTR [rbp+0x110],xmm0
30eee5  e8 fe 9c 05 00                 call   0x368be8
30eeea  f3 0f 10 15 b6 41 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff841b6]        # 0x2930a8 ; f32=0.2
30eef2  48 8d 8d d8 12 00 00           lea    rcx,[rbp+0x12d8]
30eef9  0f 57 db                       xorps  xmm3,xmm3
30eefc  0f 57 c9                       xorps  xmm1,xmm1
30eeff  48 8b d8                       mov    rbx,rax
30ef02  e8 a1 8c 0b 00                 call   0x3c7ba8
30ef07  4c 8b c0                       mov    r8,rax
30ef0a  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
30ef11  48 8b cb                       mov    rcx,rbx
30ef14  e8 ef 07 fd ff                 call   0x2df708
30ef19  44 38 3d 98 8b 0d 00           cmp    BYTE PTR [rip+0xd8b98],r15b        # 0x3e7ab8 ; CONFIG Bools.Snapline value(+0x48)
30ef20  0f 84 eb 00 00 00              je     0x30f011
30ef26  48 8d 8d 90 04 00 00           lea    rcx,[rbp+0x490]
30ef2d  e8 72 c4 fb ff                 call   0x2cb3a4
30ef32  49 8b ce                       mov    rcx,r14
30ef35  e8 ce bf fb ff                 call   0x2caf08
30ef3a  84 c0                          test   al,al
30ef3c  0f 84 cf 00 00 00              je     0x30f011
30ef42  49 8b ce                       mov    rcx,r14
30ef45  e8 52 1f fd ff                 call   0x2e0e9c
30ef4a  84 c0                          test   al,al
30ef4c  0f 84 bf 00 00 00              je     0x30f011
30ef52  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30ef57  4c 3b f1                       cmp    r14,rcx
30ef5a  0f 85 b1 00 00 00              jne    0x30f011
30ef60  44 8b c7                       mov    r8d,edi
30ef63  48 8d 95 b8 11 00 00           lea    rdx,[rbp+0x11b8]
30ef6a  e8 79 9c 05 00                 call   0x368be8
30ef6f  48 8d 1d 32 83 0c 00           lea    rbx,[rip+0xc8332]        # 0x3d72a8
30ef76  49 8b cc                       mov    rcx,r12
30ef79  4c 8b cb                       mov    r9,rbx
30ef7c  4c 8d 85 90 04 00 00           lea    r8,[rbp+0x490]
30ef83  48 8d 95 f0 07 00 00           lea    rdx,[rbp+0x7f0]
30ef8a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30ef8e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30ef91  f2 0f 11 85 f0 07 00 00        movsd  QWORD PTR [rbp+0x7f0],xmm0
30ef99  89 85 f8 07 00 00              mov    DWORD PTR [rbp+0x7f8],eax
30ef9f  e8 7c dd 05 00                 call   0x36cd20
30efa4  84 c0                          test   al,al
30efa6  74 70                          je     0x30f018
30efa8  48 8d 0d 29 d9 0d 00           lea    rcx,[rip+0xdd929]        # 0x3ec8d8 ; CONFIG C.SnapColor value(+0x48)
30efaf  e8 58 08 fe ff                 call   0x2ef80c
30efb4  f3 0f 10 95 94 04 00 00        movss  xmm2,DWORD PTR [rbp+0x494]
30efbc  48 8d 8d f8 06 00 00           lea    rcx,[rbp+0x6f8]
30efc3  f3 0f 10 8d 90 04 00 00        movss  xmm1,DWORD PTR [rbp+0x490]
30efcb  8b d8                          mov    ebx,eax
30efcd  e8 6e d3 fb ff                 call   0x2cc340
30efd2  f3 0f 10 95 00 01 00 00        movss  xmm2,DWORD PTR [rbp+0x100]
30efda  48 8d 8d 00 07 00 00           lea    rcx,[rbp+0x700]
30efe1  41 0f 28 cd                    movaps xmm1,xmm13
30efe5  e8 56 d3 fb ff                 call   0x2cc340
30efea  f3 0f 10 05 06 41 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff84106]        # 0x2930f8 ; f32=1.25
30eff2  4c 8d 85 f8 06 00 00           lea    r8,[rbp+0x6f8]
30eff9  44 8b cb                       mov    r9d,ebx
30effc  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
30f002  48 8d 95 00 07 00 00           lea    rdx,[rbp+0x700]
30f009  49 8b cd                       mov    rcx,r13
30f00c  e8 4b d2 04 00                 call   0x35c25c
30f011  48 8d 1d 90 82 0c 00           lea    rbx,[rip+0xc8290]        # 0x3d72a8
30f018  f3 0f 10 85 34 03 00 00        movss  xmm0,DWORD PTR [rbp+0x334]
30f020  4c 8d 0d 7d c3 fb ff           lea    r9,[rip+0xfffffffffffbc37d]        # 0x2cb3a4
30f027  8b bd 70 03 00 00              mov    edi,DWORD PTR [rbp+0x370]
30f02d  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
30f034  f2 44 0f 10 85 a8 04 00 00     movsd  xmm8,QWORD PTR [rbp+0x4a8]
30f03d  ba 08 00 00 00                 mov    edx,0x8
30f042  8b b5 b0 04 00 00              mov    esi,DWORD PTR [rbp+0x4b0]
30f048  f2 44 0f 10 8d b8 04 00 00     movsd  xmm9,QWORD PTR [rbp+0x4b8]
30f051  44 8b b5 c0 04 00 00           mov    r14d,DWORD PTR [rbp+0x4c0]
30f058  44 8b bd 60 03 00 00           mov    r15d,DWORD PTR [rbp+0x360]
30f05f  44 8d 42 fc                    lea    r8d,[rdx-0x4]
30f063  f3 0f 11 85 5c 03 00 00        movss  DWORD PTR [rbp+0x35c],xmm0
30f06b  f2 44 0f 10 95 58 03 00 00     movsd  xmm10,QWORD PTR [rbp+0x358]
30f074  f3 0f 11 85 6c 03 00 00        movss  DWORD PTR [rbp+0x36c],xmm0
30f07c  f2 0f 10 bd 68 03 00 00        movsd  xmm7,QWORD PTR [rbp+0x368]
30f084  e8 ab 0d fd ff                 call   0x2dfe34
30f089  80 3d 78 85 0d 00 00           cmp    BYTE PTR [rip+0xd8578],0x0        # 0x3e7608 ; CONFIG Bools.Skeleton value(+0x48)
30f090  0f 84 42 0e 00 00              je     0x30fed8
30f096  48 8d 8d f0 03 00 00           lea    rcx,[rbp+0x3f0]
30f09d  e8 02 c3 fb ff                 call   0x2cb3a4
30f0a2  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
30f0a9  e8 f6 c2 fb ff                 call   0x2cb3a4
30f0ae  48 8d 8d 60 01 00 00           lea    rcx,[rbp+0x160]
30f0b5  e8 ea c2 fb ff                 call   0x2cb3a4
30f0ba  48 8d 8d f8 03 00 00           lea    rcx,[rbp+0x3f8]
30f0c1  e8 de c2 fb ff                 call   0x2cb3a4
30f0c6  48 8d 8d 50 02 00 00           lea    rcx,[rbp+0x250]
30f0cd  e8 d2 c2 fb ff                 call   0x2cb3a4
30f0d2  48 8d 8d 28 03 00 00           lea    rcx,[rbp+0x328]
30f0d9  e8 c6 c2 fb ff                 call   0x2cb3a4
30f0de  48 8d 8d 18 03 00 00           lea    rcx,[rbp+0x318]
30f0e5  e8 ba c2 fb ff                 call   0x2cb3a4
30f0ea  48 8d 8d 20 03 00 00           lea    rcx,[rbp+0x320]
30f0f1  e8 ae c2 fb ff                 call   0x2cb3a4
30f0f6  48 8d 8d 00 04 00 00           lea    rcx,[rbp+0x400]
30f0fd  e8 a2 c2 fb ff                 call   0x2cb3a4
30f102  48 8d 8d e8 02 00 00           lea    rcx,[rbp+0x2e8]
30f109  e8 96 c2 fb ff                 call   0x2cb3a4
30f10e  48 8d 8d 10 03 00 00           lea    rcx,[rbp+0x310]
30f115  e8 8a c2 fb ff                 call   0x2cb3a4
30f11a  48 8d 8d 68 02 00 00           lea    rcx,[rbp+0x268]
30f121  e8 7e c2 fb ff                 call   0x2cb3a4
30f126  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
30f12d  e8 72 c2 fb ff                 call   0x2cb3a4
30f132  48 8d 8d d8 02 00 00           lea    rcx,[rbp+0x2d8]
30f139  e8 66 c2 fb ff                 call   0x2cb3a4
30f13e  48 8d 8d e0 02 00 00           lea    rcx,[rbp+0x2e0]
30f145  e8 5a c2 fb ff                 call   0x2cb3a4
30f14a  48 8d 8d 08 04 00 00           lea    rcx,[rbp+0x408]
30f151  e8 4e c2 fb ff                 call   0x2cb3a4
30f156  48 8d 8d 58 02 00 00           lea    rcx,[rbp+0x258]
30f15d  e8 42 c2 fb ff                 call   0x2cb3a4
30f162  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
30f169  e8 36 c2 fb ff                 call   0x2cb3a4
30f16e  48 8d 8d 18 04 00 00           lea    rcx,[rbp+0x418]
30f175  e8 2a c2 fb ff                 call   0x2cb3a4
30f17a  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f17f  48 8d 95 fc 0f 00 00           lea    rdx,[rbp+0xffc]
30f186  41 b8 2f 00 00 00              mov    r8d,0x2f
30f18c  e8 57 9a 05 00                 call   0x368be8
30f191  4c 8b cb                       mov    r9,rbx
30f194  4c 8d 85 f0 03 00 00           lea    r8,[rbp+0x3f0]
30f19b  48 8d 95 00 08 00 00           lea    rdx,[rbp+0x800]
30f1a2  49 8b cc                       mov    rcx,r12
30f1a5  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f1a9  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f1ac  f2 0f 11 85 00 08 00 00        movsd  QWORD PTR [rbp+0x800],xmm0
30f1b4  89 85 08 08 00 00              mov    DWORD PTR [rbp+0x808],eax
30f1ba  e8 61 db 05 00                 call   0x36cd20
30f1bf  84 c0                          test   al,al
30f1c1  0f 84 11 0d 00 00              je     0x30fed8
30f1c7  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f1cc  48 8d 95 08 10 00 00           lea    rdx,[rbp+0x1008]
30f1d3  41 b8 2e 00 00 00              mov    r8d,0x2e
30f1d9  e8 0a 9a 05 00                 call   0x368be8
30f1de  4c 8b cb                       mov    r9,rbx
30f1e1  4c 8d 85 68 01 00 00           lea    r8,[rbp+0x168]
30f1e8  48 8d 95 10 08 00 00           lea    rdx,[rbp+0x810]
30f1ef  49 8b cc                       mov    rcx,r12
30f1f2  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f1f6  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f1f9  f2 0f 11 85 10 08 00 00        movsd  QWORD PTR [rbp+0x810],xmm0
30f201  89 85 18 08 00 00              mov    DWORD PTR [rbp+0x818],eax
30f207  e8 14 db 05 00                 call   0x36cd20
30f20c  84 c0                          test   al,al
30f20e  0f 84 c4 0c 00 00              je     0x30fed8
30f214  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f219  48 8d 95 14 10 00 00           lea    rdx,[rbp+0x1014]
30f220  41 b8 0e 00 00 00              mov    r8d,0xe
30f226  e8 bd 99 05 00                 call   0x368be8
30f22b  4c 8b cb                       mov    r9,rbx
30f22e  4c 8d 85 60 01 00 00           lea    r8,[rbp+0x160]
30f235  48 8d 95 20 08 00 00           lea    rdx,[rbp+0x820]
30f23c  49 8b cc                       mov    rcx,r12
30f23f  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f243  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f246  f2 0f 11 85 20 08 00 00        movsd  QWORD PTR [rbp+0x820],xmm0
30f24e  89 85 28 08 00 00              mov    DWORD PTR [rbp+0x828],eax
30f254  e8 c7 da 05 00                 call   0x36cd20
30f259  84 c0                          test   al,al
30f25b  0f 84 77 0c 00 00              je     0x30fed8
30f261  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f266  48 8d 95 20 10 00 00           lea    rdx,[rbp+0x1020]
30f26d  41 b8 3b 00 00 00              mov    r8d,0x3b
30f273  e8 70 99 05 00                 call   0x368be8
30f278  4c 8b cb                       mov    r9,rbx
30f27b  4c 8d 85 f8 03 00 00           lea    r8,[rbp+0x3f8]
30f282  48 8d 95 30 08 00 00           lea    rdx,[rbp+0x830]
30f289  49 8b cc                       mov    rcx,r12
30f28c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f290  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f293  f2 0f 11 85 30 08 00 00        movsd  QWORD PTR [rbp+0x830],xmm0
30f29b  89 85 38 08 00 00              mov    DWORD PTR [rbp+0x838],eax
30f2a1  e8 7a da 05 00                 call   0x36cd20
30f2a6  84 c0                          test   al,al
30f2a8  0f 84 2a 0c 00 00              je     0x30fed8
30f2ae  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f2b3  48 8d 95 2c 10 00 00           lea    rdx,[rbp+0x102c]
30f2ba  41 b8 38 00 00 00              mov    r8d,0x38
30f2c0  e8 23 99 05 00                 call   0x368be8
30f2c5  4c 8b cb                       mov    r9,rbx
30f2c8  4c 8d 85 50 02 00 00           lea    r8,[rbp+0x250]
30f2cf  48 8d 95 40 08 00 00           lea    rdx,[rbp+0x840]
30f2d6  49 8b cc                       mov    rcx,r12
30f2d9  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f2dd  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f2e0  f2 0f 11 85 40 08 00 00        movsd  QWORD PTR [rbp+0x840],xmm0
30f2e8  89 85 48 08 00 00              mov    DWORD PTR [rbp+0x848],eax
30f2ee  e8 2d da 05 00                 call   0x36cd20
30f2f3  84 c0                          test   al,al
30f2f5  0f 84 dd 0b 00 00              je     0x30fed8
30f2fb  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f300  48 8d 95 38 10 00 00           lea    rdx,[rbp+0x1038]
30f307  41 b8 37 00 00 00              mov    r8d,0x37
30f30d  e8 d6 98 05 00                 call   0x368be8
30f312  4c 8b cb                       mov    r9,rbx
30f315  4c 8d 85 28 03 00 00           lea    r8,[rbp+0x328]
30f31c  48 8d 95 50 08 00 00           lea    rdx,[rbp+0x850]
30f323  49 8b cc                       mov    rcx,r12
30f326  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f32a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f32d  f2 0f 11 85 50 08 00 00        movsd  QWORD PTR [rbp+0x850],xmm0
30f335  89 85 58 08 00 00              mov    DWORD PTR [rbp+0x858],eax
30f33b  e8 e0 d9 05 00                 call   0x36cd20
30f340  84 c0                          test   al,al
30f342  0f 84 90 0b 00 00              je     0x30fed8
30f348  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f34d  48 8d 95 44 10 00 00           lea    rdx,[rbp+0x1044]
30f354  41 b8 13 00 00 00              mov    r8d,0x13
30f35a  e8 89 98 05 00                 call   0x368be8
30f35f  4c 8b cb                       mov    r9,rbx
30f362  4c 8d 85 18 03 00 00           lea    r8,[rbp+0x318]
30f369  48 8d 95 60 08 00 00           lea    rdx,[rbp+0x860]
30f370  49 8b cc                       mov    rcx,r12
30f373  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f377  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f37a  f2 0f 11 85 60 08 00 00        movsd  QWORD PTR [rbp+0x860],xmm0
30f382  89 85 68 08 00 00              mov    DWORD PTR [rbp+0x868],eax
30f388  e8 93 d9 05 00                 call   0x36cd20
30f38d  84 c0                          test   al,al
30f38f  0f 84 43 0b 00 00              je     0x30fed8
30f395  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f39a  48 8d 95 50 10 00 00           lea    rdx,[rbp+0x1050]
30f3a1  41 b8 14 00 00 00              mov    r8d,0x14
30f3a7  e8 3c 98 05 00                 call   0x368be8
30f3ac  4c 8b cb                       mov    r9,rbx
30f3af  4c 8d 85 20 03 00 00           lea    r8,[rbp+0x320]
30f3b6  48 8d 95 70 08 00 00           lea    rdx,[rbp+0x870]
30f3bd  49 8b cc                       mov    rcx,r12
30f3c0  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f3c4  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f3c7  f2 0f 11 85 70 08 00 00        movsd  QWORD PTR [rbp+0x870],xmm0
30f3cf  89 85 78 08 00 00              mov    DWORD PTR [rbp+0x878],eax
30f3d5  e8 46 d9 05 00                 call   0x36cd20
30f3da  84 c0                          test   al,al
30f3dc  0f 84 f6 0a 00 00              je     0x30fed8
30f3e2  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f3e7  48 8d 95 5c 10 00 00           lea    rdx,[rbp+0x105c]
30f3ee  41 b8 17 00 00 00              mov    r8d,0x17
30f3f4  e8 ef 97 05 00                 call   0x368be8
30f3f9  4c 8b cb                       mov    r9,rbx
30f3fc  4c 8d 85 00 04 00 00           lea    r8,[rbp+0x400]
30f403  48 8d 95 80 08 00 00           lea    rdx,[rbp+0x880]
30f40a  49 8b cc                       mov    rcx,r12
30f40d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f411  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f414  f2 0f 11 85 80 08 00 00        movsd  QWORD PTR [rbp+0x880],xmm0
30f41c  89 85 88 08 00 00              mov    DWORD PTR [rbp+0x888],eax
30f422  e8 f9 d8 05 00                 call   0x36cd20
30f427  84 c0                          test   al,al
30f429  0f 84 a9 0a 00 00              je     0x30fed8
30f42f  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f434  48 8d 95 68 10 00 00           lea    rdx,[rbp+0x1068]
30f43b  41 b8 08 00 00 00              mov    r8d,0x8
30f441  e8 a2 97 05 00                 call   0x368be8
30f446  4c 8b cb                       mov    r9,rbx
30f449  4c 8d 85 e8 02 00 00           lea    r8,[rbp+0x2e8]
30f450  48 8d 95 90 08 00 00           lea    rdx,[rbp+0x890]
30f457  49 8b cc                       mov    rcx,r12
30f45a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f45e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f461  f2 0f 11 85 90 08 00 00        movsd  QWORD PTR [rbp+0x890],xmm0
30f469  89 85 98 08 00 00              mov    DWORD PTR [rbp+0x898],eax
30f46f  e8 ac d8 05 00                 call   0x36cd20
30f474  84 c0                          test   al,al
30f476  0f 84 5c 0a 00 00              je     0x30fed8
30f47c  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f481  48 8d 95 74 10 00 00           lea    rdx,[rbp+0x1074]
30f488  41 b8 0a 00 00 00              mov    r8d,0xa
30f48e  e8 55 97 05 00                 call   0x368be8
30f493  4c 8b cb                       mov    r9,rbx
30f496  4c 8d 85 10 03 00 00           lea    r8,[rbp+0x310]
30f49d  48 8d 95 a0 08 00 00           lea    rdx,[rbp+0x8a0]
30f4a4  49 8b cc                       mov    rcx,r12
30f4a7  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f4ab  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f4ae  f2 0f 11 85 a0 08 00 00        movsd  QWORD PTR [rbp+0x8a0],xmm0
30f4b6  89 85 a8 08 00 00              mov    DWORD PTR [rbp+0x8a8],eax
30f4bc  e8 5f d8 05 00                 call   0x36cd20
30f4c1  84 c0                          test   al,al
30f4c3  0f 84 0f 0a 00 00              je     0x30fed8
30f4c9  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f4ce  48 8d 95 80 10 00 00           lea    rdx,[rbp+0x1080]
30f4d5  41 b8 03 00 00 00              mov    r8d,0x3
30f4db  e8 08 97 05 00                 call   0x368be8
30f4e0  4c 8b cb                       mov    r9,rbx
30f4e3  4c 8d 85 e0 02 00 00           lea    r8,[rbp+0x2e0]
30f4ea  48 8d 95 b0 08 00 00           lea    rdx,[rbp+0x8b0]
30f4f1  49 8b cc                       mov    rcx,r12
30f4f4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f4f8  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f4fb  f2 0f 11 85 b0 08 00 00        movsd  QWORD PTR [rbp+0x8b0],xmm0
30f503  89 85 b8 08 00 00              mov    DWORD PTR [rbp+0x8b8],eax
30f509  e8 12 d8 05 00                 call   0x36cd20
30f50e  84 c0                          test   al,al
30f510  0f 84 c2 09 00 00              je     0x30fed8
30f516  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f51b  48 8d 95 8c 10 00 00           lea    rdx,[rbp+0x108c]
30f522  41 b8 0b 00 00 00              mov    r8d,0xb
30f528  e8 bb 96 05 00                 call   0x368be8
30f52d  4c 8b cb                       mov    r9,rbx
30f530  4c 8d 85 68 02 00 00           lea    r8,[rbp+0x268]
30f537  48 8d 95 c0 08 00 00           lea    rdx,[rbp+0x8c0]
30f53e  49 8b cc                       mov    rcx,r12
30f541  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f545  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f548  f2 0f 11 85 c0 08 00 00        movsd  QWORD PTR [rbp+0x8c0],xmm0
30f550  89 85 c8 08 00 00              mov    DWORD PTR [rbp+0x8c8],eax
30f556  e8 c5 d7 05 00                 call   0x36cd20
30f55b  84 c0                          test   al,al
30f55d  0f 84 75 09 00 00              je     0x30fed8
30f563  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f568  48 8d 95 98 10 00 00           lea    rdx,[rbp+0x1098]
30f56f  41 b8 04 00 00 00              mov    r8d,0x4
30f575  e8 6e 96 05 00                 call   0x368be8
30f57a  4c 8b cb                       mov    r9,rbx
30f57d  4c 8d 85 60 02 00 00           lea    r8,[rbp+0x260]
30f584  48 8d 95 d0 08 00 00           lea    rdx,[rbp+0x8d0]
30f58b  49 8b cc                       mov    rcx,r12
30f58e  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f592  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f595  f2 0f 11 85 d0 08 00 00        movsd  QWORD PTR [rbp+0x8d0],xmm0
30f59d  89 85 d8 08 00 00              mov    DWORD PTR [rbp+0x8d8],eax
30f5a3  e8 78 d7 05 00                 call   0x36cd20
30f5a8  84 c0                          test   al,al
30f5aa  0f 84 28 09 00 00              je     0x30fed8
30f5b0  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f5b5  48 8d 95 a4 10 00 00           lea    rdx,[rbp+0x10a4]
30f5bc  41 b8 01 00 00 00              mov    r8d,0x1
30f5c2  e8 21 96 05 00                 call   0x368be8
30f5c7  4c 8b cb                       mov    r9,rbx
30f5ca  4c 8d 85 d8 02 00 00           lea    r8,[rbp+0x2d8]
30f5d1  48 8d 95 e0 08 00 00           lea    rdx,[rbp+0x8e0]
30f5d8  49 8b cc                       mov    rcx,r12
30f5db  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f5df  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f5e2  f2 0f 11 85 e0 08 00 00        movsd  QWORD PTR [rbp+0x8e0],xmm0
30f5ea  89 85 e8 08 00 00              mov    DWORD PTR [rbp+0x8e8],eax
30f5f0  e8 2b d7 05 00                 call   0x36cd20
30f5f5  84 c0                          test   al,al
30f5f7  0f 84 db 08 00 00              je     0x30fed8
30f5fd  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f602  48 8d 95 b0 10 00 00           lea    rdx,[rbp+0x10b0]
30f609  41 b8 07 00 00 00              mov    r8d,0x7
30f60f  e8 d4 95 05 00                 call   0x368be8
30f614  4c 8b cb                       mov    r9,rbx
30f617  4c 8d 85 08 04 00 00           lea    r8,[rbp+0x408]
30f61e  48 8d 95 f0 08 00 00           lea    rdx,[rbp+0x8f0]
30f625  49 8b cc                       mov    rcx,r12
30f628  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f62c  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f62f  f2 0f 11 85 f0 08 00 00        movsd  QWORD PTR [rbp+0x8f0],xmm0
30f637  89 85 f8 08 00 00              mov    DWORD PTR [rbp+0x8f8],eax
30f63d  e8 de d6 05 00                 call   0x36cd20
30f642  84 c0                          test   al,al
30f644  0f 84 8e 08 00 00              je     0x30fed8
30f64a  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f64f  48 8d 95 bc 10 00 00           lea    rdx,[rbp+0x10bc]
30f656  41 b8 05 00 00 00              mov    r8d,0x5
30f65c  e8 87 95 05 00                 call   0x368be8
30f661  4c 8b cb                       mov    r9,rbx
30f664  4c 8d 85 10 04 00 00           lea    r8,[rbp+0x410]
30f66b  48 8d 95 00 09 00 00           lea    rdx,[rbp+0x900]
30f672  49 8b cc                       mov    rcx,r12
30f675  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f679  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f67c  f2 0f 11 85 00 09 00 00        movsd  QWORD PTR [rbp+0x900],xmm0
30f684  89 85 08 09 00 00              mov    DWORD PTR [rbp+0x908],eax
30f68a  e8 91 d6 05 00                 call   0x36cd20
30f68f  84 c0                          test   al,al
30f691  0f 84 41 08 00 00              je     0x30fed8
30f697  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f69c  48 8d 95 c8 10 00 00           lea    rdx,[rbp+0x10c8]
30f6a3  41 b8 0c 00 00 00              mov    r8d,0xc
30f6a9  e8 3a 95 05 00                 call   0x368be8
30f6ae  4c 8b cb                       mov    r9,rbx
30f6b1  4c 8d 85 18 04 00 00           lea    r8,[rbp+0x418]
30f6b8  48 8d 95 10 09 00 00           lea    rdx,[rbp+0x910]
30f6bf  49 8b cc                       mov    rcx,r12
30f6c2  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f6c6  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f6c9  f2 0f 11 85 10 09 00 00        movsd  QWORD PTR [rbp+0x910],xmm0
30f6d1  89 85 18 09 00 00              mov    DWORD PTR [rbp+0x918],eax
30f6d7  e8 44 d6 05 00                 call   0x36cd20
30f6dc  84 c0                          test   al,al
30f6de  0f 84 f4 07 00 00              je     0x30fed8
30f6e4  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
30f6e9  48 8d 95 d4 10 00 00           lea    rdx,[rbp+0x10d4]
30f6f0  45 33 c0                       xor    r8d,r8d
30f6f3  e8 f0 94 05 00                 call   0x368be8
30f6f8  4c 8b cb                       mov    r9,rbx
30f6fb  4c 8d 85 58 02 00 00           lea    r8,[rbp+0x258]
30f702  48 8d 95 20 09 00 00           lea    rdx,[rbp+0x920]
30f709  49 8b cc                       mov    rcx,r12
30f70c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30f710  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
30f713  f2 0f 11 85 20 09 00 00        movsd  QWORD PTR [rbp+0x920],xmm0
30f71b  89 85 28 09 00 00              mov    DWORD PTR [rbp+0x928],eax
30f721  e8 fa d5 05 00                 call   0x36cd20
30f726  84 c0                          test   al,al
30f728  0f 84 aa 07 00 00              je     0x30fed8
30f72e  f3 0f 10 35 e2 de 0d 00        movss  xmm6,DWORD PTR [rip+0xddee2]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f736  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f73d  e8 ca 00 fe ff                 call   0x2ef80c
30f742  f3 0f 10 95 6c 01 00 00        movss  xmm2,DWORD PTR [rbp+0x16c]
30f74a  48 8d 8d b8 0b 00 00           lea    rcx,[rbp+0xbb8]
30f751  f3 0f 10 8d 68 01 00 00        movss  xmm1,DWORD PTR [rbp+0x168]
30f759  8b d8                          mov    ebx,eax
30f75b  e8 e0 cb fb ff                 call   0x2cc340
30f760  f3 0f 10 95 f4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3f4]
30f768  48 8d 8d 08 07 00 00           lea    rcx,[rbp+0x708]
30f76f  f3 0f 10 8d f0 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3f0]
30f777  e8 c4 cb fb ff                 call   0x2cc340
30f77c  44 8b cb                       mov    r9d,ebx
30f77f  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30f785  4c 8d 85 b8 0b 00 00           lea    r8,[rbp+0xbb8]
30f78c  49 8b cd                       mov    rcx,r13
30f78f  48 8d 95 08 07 00 00           lea    rdx,[rbp+0x708]
30f796  e8 c1 ca 04 00                 call   0x35c25c
30f79b  f3 0f 10 35 75 de 0d 00        movss  xmm6,DWORD PTR [rip+0xdde75]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f7a3  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f7aa  e8 5d 00 fe ff                 call   0x2ef80c
30f7af  f3 0f 10 95 6c 01 00 00        movss  xmm2,DWORD PTR [rbp+0x16c]
30f7b7  48 8d 8d 10 07 00 00           lea    rcx,[rbp+0x710]
30f7be  f3 0f 10 8d 68 01 00 00        movss  xmm1,DWORD PTR [rbp+0x168]
30f7c6  8b d8                          mov    ebx,eax
30f7c8  e8 73 cb fb ff                 call   0x2cc340
30f7cd  f3 0f 10 95 64 01 00 00        movss  xmm2,DWORD PTR [rbp+0x164]
30f7d5  48 8d 8d 18 07 00 00           lea    rcx,[rbp+0x718]
30f7dc  f3 0f 10 8d 60 01 00 00        movss  xmm1,DWORD PTR [rbp+0x160]
30f7e4  e8 57 cb fb ff                 call   0x2cc340
30f7e9  44 8b cb                       mov    r9d,ebx
30f7ec  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30f7f2  4c 8d 85 10 07 00 00           lea    r8,[rbp+0x710]
30f7f9  49 8b cd                       mov    rcx,r13
30f7fc  48 8d 95 18 07 00 00           lea    rdx,[rbp+0x718]
30f803  e8 54 ca 04 00                 call   0x35c25c
30f808  f3 0f 10 35 08 de 0d 00        movss  xmm6,DWORD PTR [rip+0xdde08]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f810  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f817  e8 f0 ff fd ff                 call   0x2ef80c
30f81c  f3 0f 10 95 2c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x32c]
30f824  48 8d 8d 20 07 00 00           lea    rcx,[rbp+0x720]
30f82b  f3 0f 10 8d 28 03 00 00        movss  xmm1,DWORD PTR [rbp+0x328]
30f833  8b d8                          mov    ebx,eax
30f835  e8 06 cb fb ff                 call   0x2cc340
30f83a  f3 0f 10 95 6c 01 00 00        movss  xmm2,DWORD PTR [rbp+0x16c]
30f842  48 8d 8d 28 07 00 00           lea    rcx,[rbp+0x728]
30f849  f3 0f 10 8d 68 01 00 00        movss  xmm1,DWORD PTR [rbp+0x168]
30f851  e8 ea ca fb ff                 call   0x2cc340
30f856  44 8b cb                       mov    r9d,ebx
30f859  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30f85f  4c 8d 85 20 07 00 00           lea    r8,[rbp+0x720]
30f866  49 8b cd                       mov    rcx,r13
30f869  48 8d 95 28 07 00 00           lea    rdx,[rbp+0x728]
30f870  e8 e7 c9 04 00                 call   0x35c25c
30f875  f3 0f 10 35 9b dd 0d 00        movss  xmm6,DWORD PTR [rip+0xddd9b]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f87d  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f884  e8 83 ff fd ff                 call   0x2ef80c
30f889  f3 0f 10 95 54 02 00 00        movss  xmm2,DWORD PTR [rbp+0x254]
30f891  48 8d 8d 30 07 00 00           lea    rcx,[rbp+0x730]
30f898  f3 0f 10 8d 50 02 00 00        movss  xmm1,DWORD PTR [rbp+0x250]
30f8a0  8b d8                          mov    ebx,eax
30f8a2  e8 99 ca fb ff                 call   0x2cc340
30f8a7  f3 0f 10 95 fc 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3fc]
30f8af  48 8d 8d 38 07 00 00           lea    rcx,[rbp+0x738]
30f8b6  f3 0f 10 8d f8 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3f8]
30f8be  e8 7d ca fb ff                 call   0x2cc340
30f8c3  44 8b cb                       mov    r9d,ebx
30f8c6  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30f8cc  4c 8d 85 30 07 00 00           lea    r8,[rbp+0x730]
30f8d3  49 8b cd                       mov    rcx,r13
30f8d6  48 8d 95 38 07 00 00           lea    rdx,[rbp+0x738]
30f8dd  e8 7a c9 04 00                 call   0x35c25c
30f8e2  f3 0f 10 35 2e dd 0d 00        movss  xmm6,DWORD PTR [rip+0xddd2e]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f8ea  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f8f1  e8 16 ff fd ff                 call   0x2ef80c
30f8f6  f3 0f 10 95 1c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x31c]
30f8fe  48 8d 8d 40 07 00 00           lea    rcx,[rbp+0x740]
30f905  f3 0f 10 8d 18 03 00 00        movss  xmm1,DWORD PTR [rbp+0x318]
30f90d  8b d8                          mov    ebx,eax
30f90f  e8 2c ca fb ff                 call   0x2cc340
30f914  f3 0f 10 95 6c 01 00 00        movss  xmm2,DWORD PTR [rbp+0x16c]
30f91c  f3 0f 10 8d 68 01 00 00        movss  xmm1,DWORD PTR [rbp+0x168]
30f924  48 8d 8d 48 07 00 00           lea    rcx,[rbp+0x748]
30f92b  e8 10 ca fb ff                 call   0x2cc340
30f930  44 8b cb                       mov    r9d,ebx
30f933  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30f939  4c 8d 85 40 07 00 00           lea    r8,[rbp+0x740]
30f940  49 8b cd                       mov    rcx,r13
30f943  48 8d 95 48 07 00 00           lea    rdx,[rbp+0x748]
30f94a  e8 0d c9 04 00                 call   0x35c25c
30f94f  f3 0f 10 35 c1 dc 0d 00        movss  xmm6,DWORD PTR [rip+0xddcc1]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f957  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f95e  e8 a9 fe fd ff                 call   0x2ef80c
30f963  f3 0f 10 95 04 04 00 00        movss  xmm2,DWORD PTR [rbp+0x404]
30f96b  48 8d 8d 50 07 00 00           lea    rcx,[rbp+0x750]
30f972  f3 0f 10 8d 00 04 00 00        movss  xmm1,DWORD PTR [rbp+0x400]
30f97a  8b d8                          mov    ebx,eax
30f97c  e8 bf c9 fb ff                 call   0x2cc340
30f981  f3 0f 10 95 24 03 00 00        movss  xmm2,DWORD PTR [rbp+0x324]
30f989  48 8d 8d 58 07 00 00           lea    rcx,[rbp+0x758]
30f990  f3 0f 10 8d 20 03 00 00        movss  xmm1,DWORD PTR [rbp+0x320]
30f998  e8 a3 c9 fb ff                 call   0x2cc340
30f99d  44 8b cb                       mov    r9d,ebx
30f9a0  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30f9a6  4c 8d 85 50 07 00 00           lea    r8,[rbp+0x750]
30f9ad  49 8b cd                       mov    rcx,r13
30f9b0  48 8d 95 58 07 00 00           lea    rdx,[rbp+0x758]
30f9b7  e8 a0 c8 04 00                 call   0x35c25c
30f9bc  f3 0f 10 35 54 dc 0d 00        movss  xmm6,DWORD PTR [rip+0xddc54]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30f9c4  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30f9cb  e8 3c fe fd ff                 call   0x2ef80c
30f9d0  f3 0f 10 95 ec 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2ec]
30f9d8  48 8d 8d 60 07 00 00           lea    rcx,[rbp+0x760]
30f9df  f3 0f 10 8d e8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e8]
30f9e7  8b d8                          mov    ebx,eax
30f9e9  e8 52 c9 fb ff                 call   0x2cc340
30f9ee  f3 0f 10 95 64 01 00 00        movss  xmm2,DWORD PTR [rbp+0x164]
30f9f6  48 8d 8d 68 07 00 00           lea    rcx,[rbp+0x768]
30f9fd  f3 0f 10 8d 60 01 00 00        movss  xmm1,DWORD PTR [rbp+0x160]
30fa05  e8 36 c9 fb ff                 call   0x2cc340
30fa0a  44 8b cb                       mov    r9d,ebx
30fa0d  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fa13  4c 8d 85 60 07 00 00           lea    r8,[rbp+0x760]
30fa1a  49 8b cd                       mov    rcx,r13
30fa1d  48 8d 95 68 07 00 00           lea    rdx,[rbp+0x768]
30fa24  e8 33 c8 04 00                 call   0x35c25c
30fa29  f3 0f 10 35 e7 db 0d 00        movss  xmm6,DWORD PTR [rip+0xddbe7]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fa31  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fa38  e8 cf fd fd ff                 call   0x2ef80c
30fa3d  f3 0f 10 95 14 03 00 00        movss  xmm2,DWORD PTR [rbp+0x314]
30fa45  48 8d 8d 70 07 00 00           lea    rcx,[rbp+0x770]
30fa4c  f3 0f 10 8d 10 03 00 00        movss  xmm1,DWORD PTR [rbp+0x310]
30fa54  8b d8                          mov    ebx,eax
30fa56  e8 e5 c8 fb ff                 call   0x2cc340
30fa5b  f3 0f 10 95 6c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x26c]
30fa63  48 8d 8d 78 07 00 00           lea    rcx,[rbp+0x778]
30fa6a  f3 0f 10 8d 68 02 00 00        movss  xmm1,DWORD PTR [rbp+0x268]
30fa72  e8 c9 c8 fb ff                 call   0x2cc340
30fa77  44 8b cb                       mov    r9d,ebx
30fa7a  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fa80  4c 8d 85 70 07 00 00           lea    r8,[rbp+0x770]
30fa87  49 8b cd                       mov    rcx,r13
30fa8a  48 8d 95 78 07 00 00           lea    rdx,[rbp+0x778]
30fa91  e8 c6 c7 04 00                 call   0x35c25c
30fa96  f3 0f 10 35 7a db 0d 00        movss  xmm6,DWORD PTR [rip+0xddb7a]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fa9e  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30faa5  e8 62 fd fd ff                 call   0x2ef80c
30faaa  f3 0f 10 95 64 02 00 00        movss  xmm2,DWORD PTR [rbp+0x264]
30fab2  48 8d 8d 80 07 00 00           lea    rcx,[rbp+0x780]
30fab9  f3 0f 10 8d 60 02 00 00        movss  xmm1,DWORD PTR [rbp+0x260]
30fac1  8b d8                          mov    ebx,eax
30fac3  e8 78 c8 fb ff                 call   0x2cc340
30fac8  f3 0f 10 95 e4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2e4]
30fad0  48 8d 8d 88 07 00 00           lea    rcx,[rbp+0x788]
30fad7  f3 0f 10 8d e0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e0]
30fadf  e8 5c c8 fb ff                 call   0x2cc340
30fae4  44 8b cb                       mov    r9d,ebx
30fae7  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30faed  4c 8d 85 80 07 00 00           lea    r8,[rbp+0x780]
30faf4  49 8b cd                       mov    rcx,r13
30faf7  48 8d 95 88 07 00 00           lea    rdx,[rbp+0x788]
30fafe  e8 59 c7 04 00                 call   0x35c25c
30fb03  f3 0f 10 35 0d db 0d 00        movss  xmm6,DWORD PTR [rip+0xddb0d]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fb0b  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fb12  e8 f5 fc fd ff                 call   0x2ef80c
30fb17  f3 0f 10 95 dc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2dc]
30fb1f  48 8d 8d 90 07 00 00           lea    rcx,[rbp+0x790]
30fb26  f3 0f 10 8d d8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d8]
30fb2e  8b d8                          mov    ebx,eax
30fb30  e8 0b c8 fb ff                 call   0x2cc340
30fb35  f3 0f 10 95 64 01 00 00        movss  xmm2,DWORD PTR [rbp+0x164]
30fb3d  48 8d 8d 98 07 00 00           lea    rcx,[rbp+0x798]
30fb44  f3 0f 10 8d 60 01 00 00        movss  xmm1,DWORD PTR [rbp+0x160]
30fb4c  e8 ef c7 fb ff                 call   0x2cc340
30fb51  44 8b cb                       mov    r9d,ebx
30fb54  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fb5a  4c 8d 85 90 07 00 00           lea    r8,[rbp+0x790]
30fb61  49 8b cd                       mov    rcx,r13
30fb64  48 8d 95 98 07 00 00           lea    rdx,[rbp+0x798]
30fb6b  e8 ec c6 04 00                 call   0x35c25c
30fb70  f3 0f 10 35 a0 da 0d 00        movss  xmm6,DWORD PTR [rip+0xddaa0]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fb78  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fb7f  e8 88 fc fd ff                 call   0x2ef80c
30fb84  f3 0f 10 95 dc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2dc]
30fb8c  48 8d 8d a0 07 00 00           lea    rcx,[rbp+0x7a0]
30fb93  f3 0f 10 8d d8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d8]
30fb9b  8b d8                          mov    ebx,eax
30fb9d  e8 9e c7 fb ff                 call   0x2cc340
30fba2  f3 0f 10 95 e4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2e4]
30fbaa  48 8d 8d 30 0b 00 00           lea    rcx,[rbp+0xb30]
30fbb1  f3 0f 10 8d e0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e0]
30fbb9  e8 82 c7 fb ff                 call   0x2cc340
30fbbe  44 8b cb                       mov    r9d,ebx
30fbc1  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fbc7  4c 8d 85 a0 07 00 00           lea    r8,[rbp+0x7a0]
30fbce  49 8b cd                       mov    rcx,r13
30fbd1  48 8d 95 30 0b 00 00           lea    rdx,[rbp+0xb30]
30fbd8  e8 7f c6 04 00                 call   0x35c25c
30fbdd  f3 0f 10 35 33 da 0d 00        movss  xmm6,DWORD PTR [rip+0xdda33]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fbe5  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fbec  e8 1b fc fd ff                 call   0x2ef80c
30fbf1  f3 0f 10 95 ec 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2ec]
30fbf9  48 8d 8d 38 0b 00 00           lea    rcx,[rbp+0xb38]
30fc00  f3 0f 10 8d e8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e8]
30fc08  8b d8                          mov    ebx,eax
30fc0a  e8 31 c7 fb ff                 call   0x2cc340
30fc0f  f3 0f 10 95 14 03 00 00        movss  xmm2,DWORD PTR [rbp+0x314]
30fc17  48 8d 8d 40 0b 00 00           lea    rcx,[rbp+0xb40]
30fc1e  f3 0f 10 8d 10 03 00 00        movss  xmm1,DWORD PTR [rbp+0x310]
30fc26  e8 15 c7 fb ff                 call   0x2cc340
30fc2b  44 8b cb                       mov    r9d,ebx
30fc2e  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fc34  4c 8d 85 38 0b 00 00           lea    r8,[rbp+0xb38]
30fc3b  49 8b cd                       mov    rcx,r13
30fc3e  48 8d 95 40 0b 00 00           lea    rdx,[rbp+0xb40]
30fc45  e8 12 c6 04 00                 call   0x35c25c
30fc4a  f3 0f 10 35 c6 d9 0d 00        movss  xmm6,DWORD PTR [rip+0xdd9c6]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fc52  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fc59  e8 ae fb fd ff                 call   0x2ef80c
30fc5e  f3 0f 10 95 1c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x31c]
30fc66  48 8d 8d 48 0b 00 00           lea    rcx,[rbp+0xb48]
30fc6d  f3 0f 10 8d 18 03 00 00        movss  xmm1,DWORD PTR [rbp+0x318]
30fc75  8b d8                          mov    ebx,eax
30fc77  e8 c4 c6 fb ff                 call   0x2cc340
30fc7c  f3 0f 10 95 24 03 00 00        movss  xmm2,DWORD PTR [rbp+0x324]
30fc84  48 8d 8d 50 0b 00 00           lea    rcx,[rbp+0xb50]
30fc8b  f3 0f 10 8d 20 03 00 00        movss  xmm1,DWORD PTR [rbp+0x320]
30fc93  e8 a8 c6 fb ff                 call   0x2cc340
30fc98  44 8b cb                       mov    r9d,ebx
30fc9b  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fca1  4c 8d 85 48 0b 00 00           lea    r8,[rbp+0xb48]
30fca8  49 8b cd                       mov    rcx,r13
30fcab  48 8d 95 50 0b 00 00           lea    rdx,[rbp+0xb50]
30fcb2  e8 a5 c5 04 00                 call   0x35c25c
30fcb7  f3 0f 10 35 59 d9 0d 00        movss  xmm6,DWORD PTR [rip+0xdd959]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fcbf  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fcc6  e8 41 fb fd ff                 call   0x2ef80c
30fccb  f3 0f 10 95 2c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x32c]
30fcd3  48 8d 8d 58 0b 00 00           lea    rcx,[rbp+0xb58]
30fcda  f3 0f 10 8d 28 03 00 00        movss  xmm1,DWORD PTR [rbp+0x328]
30fce2  8b d8                          mov    ebx,eax
30fce4  e8 57 c6 fb ff                 call   0x2cc340
30fce9  f3 0f 10 95 54 02 00 00        movss  xmm2,DWORD PTR [rbp+0x254]
30fcf1  f3 0f 10 8d 50 02 00 00        movss  xmm1,DWORD PTR [rbp+0x250]
30fcf9  48 8d 8d 60 0b 00 00           lea    rcx,[rbp+0xb60]
30fd00  e8 3b c6 fb ff                 call   0x2cc340
30fd05  44 8b cb                       mov    r9d,ebx
30fd08  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fd0e  4c 8d 85 58 0b 00 00           lea    r8,[rbp+0xb58]
30fd15  49 8b cd                       mov    rcx,r13
30fd18  48 8d 95 60 0b 00 00           lea    rdx,[rbp+0xb60]
30fd1f  e8 38 c5 04 00                 call   0x35c25c
30fd24  f3 0f 10 35 ec d8 0d 00        movss  xmm6,DWORD PTR [rip+0xdd8ec]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fd2c  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fd33  e8 d4 fa fd ff                 call   0x2ef80c
30fd38  f3 0f 10 95 5c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x25c]
30fd40  48 8d 8d 68 0b 00 00           lea    rcx,[rbp+0xb68]
30fd47  f3 0f 10 8d 58 02 00 00        movss  xmm1,DWORD PTR [rbp+0x258]
30fd4f  8b d8                          mov    ebx,eax
30fd51  e8 ea c5 fb ff                 call   0x2cc340
30fd56  f3 0f 10 95 64 01 00 00        movss  xmm2,DWORD PTR [rbp+0x164]
30fd5e  48 8d 8d 70 0b 00 00           lea    rcx,[rbp+0xb70]
30fd65  f3 0f 10 8d 60 01 00 00        movss  xmm1,DWORD PTR [rbp+0x160]
30fd6d  e8 ce c5 fb ff                 call   0x2cc340
30fd72  44 8b cb                       mov    r9d,ebx
30fd75  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fd7b  4c 8d 85 68 0b 00 00           lea    r8,[rbp+0xb68]
30fd82  49 8b cd                       mov    rcx,r13
30fd85  48 8d 95 70 0b 00 00           lea    rdx,[rbp+0xb70]
30fd8c  e8 cb c4 04 00                 call   0x35c25c
30fd91  f3 0f 10 35 7f d8 0d 00        movss  xmm6,DWORD PTR [rip+0xdd87f]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fd99  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fda0  e8 67 fa fd ff                 call   0x2ef80c
30fda5  f3 0f 10 95 5c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x25c]
30fdad  48 8d 8d 78 0b 00 00           lea    rcx,[rbp+0xb78]
30fdb4  f3 0f 10 8d 58 02 00 00        movss  xmm1,DWORD PTR [rbp+0x258]
30fdbc  8b d8                          mov    ebx,eax
30fdbe  e8 7d c5 fb ff                 call   0x2cc340
30fdc3  f3 0f 10 95 0c 04 00 00        movss  xmm2,DWORD PTR [rbp+0x40c]
30fdcb  48 8d 8d 80 0b 00 00           lea    rcx,[rbp+0xb80]
30fdd2  f3 0f 10 8d 08 04 00 00        movss  xmm1,DWORD PTR [rbp+0x408]
30fdda  e8 61 c5 fb ff                 call   0x2cc340
30fddf  44 8b cb                       mov    r9d,ebx
30fde2  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fde8  4c 8d 85 78 0b 00 00           lea    r8,[rbp+0xb78]
30fdef  49 8b cd                       mov    rcx,r13
30fdf2  48 8d 95 80 0b 00 00           lea    rdx,[rbp+0xb80]
30fdf9  e8 5e c4 04 00                 call   0x35c25c
30fdfe  f3 0f 10 35 12 d8 0d 00        movss  xmm6,DWORD PTR [rip+0xdd812]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fe06  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fe0d  e8 fa f9 fd ff                 call   0x2ef80c
30fe12  f3 0f 10 95 64 02 00 00        movss  xmm2,DWORD PTR [rbp+0x264]
30fe1a  48 8d 8d 88 0b 00 00           lea    rcx,[rbp+0xb88]
30fe21  f3 0f 10 8d 60 02 00 00        movss  xmm1,DWORD PTR [rbp+0x260]
30fe29  8b d8                          mov    ebx,eax
30fe2b  e8 10 c5 fb ff                 call   0x2cc340
30fe30  f3 0f 10 95 14 04 00 00        movss  xmm2,DWORD PTR [rbp+0x414]
30fe38  48 8d 8d 90 0b 00 00           lea    rcx,[rbp+0xb90]
30fe3f  f3 0f 10 8d 10 04 00 00        movss  xmm1,DWORD PTR [rbp+0x410]
30fe47  e8 f4 c4 fb ff                 call   0x2cc340
30fe4c  44 8b cb                       mov    r9d,ebx
30fe4f  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fe55  4c 8d 85 88 0b 00 00           lea    r8,[rbp+0xb88]
30fe5c  49 8b cd                       mov    rcx,r13
30fe5f  48 8d 95 90 0b 00 00           lea    rdx,[rbp+0xb90]
30fe66  e8 f1 c3 04 00                 call   0x35c25c
30fe6b  f3 0f 10 35 a5 d7 0d 00        movss  xmm6,DWORD PTR [rip+0xdd7a5]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
30fe73  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
30fe7a  e8 8d f9 fd ff                 call   0x2ef80c
30fe7f  f3 0f 10 95 6c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x26c]
30fe87  48 8d 8d 98 0b 00 00           lea    rcx,[rbp+0xb98]
30fe8e  f3 0f 10 8d 68 02 00 00        movss  xmm1,DWORD PTR [rbp+0x268]
30fe96  8b d8                          mov    ebx,eax
30fe98  e8 a3 c4 fb ff                 call   0x2cc340
30fe9d  f3 0f 10 95 1c 04 00 00        movss  xmm2,DWORD PTR [rbp+0x41c]
30fea5  48 8d 8d a0 0b 00 00           lea    rcx,[rbp+0xba0]
30feac  f3 0f 10 8d 18 04 00 00        movss  xmm1,DWORD PTR [rbp+0x418]
30feb4  e8 87 c4 fb ff                 call   0x2cc340
30feb9  44 8b cb                       mov    r9d,ebx
30febc  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
30fec2  4c 8d 85 98 0b 00 00           lea    r8,[rbp+0xb98]
30fec9  49 8b cd                       mov    rcx,r13
30fecc  48 8d 95 a0 0b 00 00           lea    rdx,[rbp+0xba0]
30fed3  e8 84 c3 04 00                 call   0x35c25c
30fed8  89 bd 38 09 00 00              mov    DWORD PTR [rbp+0x938],edi
30fede  4c 8d 85 a0 00 00 00           lea    r8,[rbp+0xa0]
30fee5  48 8d 3d bc 73 0c 00           lea    rdi,[rip+0xc73bc]        # 0x3d72a8
30feec  f2 0f 11 bd 30 09 00 00        movsd  QWORD PTR [rbp+0x930],xmm7
30fef4  4c 8b cf                       mov    r9,rdi
30fef7  48 8d 95 30 09 00 00           lea    rdx,[rbp+0x930]
30fefe  49 8b cc                       mov    rcx,r12
30ff01  e8 1a ce 05 00                 call   0x36cd20
30ff06  84 c0                          test   al,al
30ff08  0f 84 59 42 00 00              je     0x314167
30ff0e  4c 8b cf                       mov    r9,rdi
30ff11  f2 44 0f 11 85 40 09 00 00     movsd  QWORD PTR [rbp+0x940],xmm8
30ff1a  4c 8d 85 a8 00 00 00           lea    r8,[rbp+0xa8]
30ff21  89 b5 48 09 00 00              mov    DWORD PTR [rbp+0x948],esi
30ff27  48 8d 95 40 09 00 00           lea    rdx,[rbp+0x940]
30ff2e  49 8b cc                       mov    rcx,r12
30ff31  e8 ea cd 05 00                 call   0x36cd20
30ff36  84 c0                          test   al,al
30ff38  0f 84 29 42 00 00              je     0x314167
30ff3e  4c 8b cf                       mov    r9,rdi
30ff41  f2 44 0f 11 8d 50 09 00 00     movsd  QWORD PTR [rbp+0x950],xmm9
30ff4a  4c 8d 85 b0 00 00 00           lea    r8,[rbp+0xb0]
30ff51  44 89 b5 58 09 00 00           mov    DWORD PTR [rbp+0x958],r14d
30ff58  48 8d 95 50 09 00 00           lea    rdx,[rbp+0x950]
30ff5f  49 8b cc                       mov    rcx,r12
30ff62  e8 b9 cd 05 00                 call   0x36cd20
30ff67  84 c0                          test   al,al
30ff69  0f 84 f8 41 00 00              je     0x314167
30ff6f  4c 8b cf                       mov    r9,rdi
30ff72  f2 44 0f 11 95 60 09 00 00     movsd  QWORD PTR [rbp+0x960],xmm10
30ff7b  4c 8d 85 b8 00 00 00           lea    r8,[rbp+0xb8]
30ff82  44 89 bd 68 09 00 00           mov    DWORD PTR [rbp+0x968],r15d
30ff89  48 8d 95 60 09 00 00           lea    rdx,[rbp+0x960]
30ff90  49 8b cc                       mov    rcx,r12
30ff93  e8 88 cd 05 00                 call   0x36cd20
30ff98  45 33 ff                       xor    r15d,r15d
30ff9b  84 c0                          test   al,al
30ff9d  0f 84 c7 41 00 00              je     0x31416a
30ffa3  48 8d 15 0e 6e 0c 00           lea    rdx,[rip+0xc6e0e]        # 0x3d6db8
30ffaa  48 8d 4d 20                    lea    rcx,[rbp+0x20]
30ffae  e8 c9 ec fd ff                 call   0x2eec7c
30ffb3  44 38 3d 2e 78 0d 00           cmp    BYTE PTR [rip+0xd782e],r15b        # 0x3e77e8 ; CONFIG Bools.DrawDistance value(+0x48)
30ffba  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
30ffc1  74 63                          je     0x310026
30ffc3  48 8d 95 88 04 00 00           lea    rdx,[rbp+0x488]
30ffca  e8 c1 09 fe ff                 call   0x2f0990 ; STRING getter=0x2f0990 m
30ffcf  48 8b c8                       mov    rcx,rax
30ffd2  e8 8d 84 fc ff                 call   0x2d8464
30ffd7  48 8b d0                       mov    rdx,rax
30ffda  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
30ffe1  e8 e6 c2 fb ff                 call   0x2cc2cc
30ffe6  44 8b 75 d0                    mov    r14d,DWORD PTR [rbp-0x30]
30ffea  48 8d 95 48 01 00 00           lea    rdx,[rbp+0x148]
30fff1  41 83 ce 0c                    or     r14d,0xc
30fff5  48 8d 4d c0                    lea    rcx,[rbp-0x40]
30fff9  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
30fffd  48 8b d8                       mov    rbx,rax
310000  e8 2b ff fc ff                 call   0x2dff30
310005  f3 0f 2c d0                    cvttss2si edx,xmm0
310009  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310010  e8 fb 94 fc ff                 call   0x2d9510
310015  48 8b d0                       mov    rdx,rax
310018  48 8d 4d d8                    lea    rcx,[rbp-0x28]
31001c  4c 8b c3                       mov    r8,rbx
31001f  e8 1c ef fb ff                 call   0x2cef40
310024  eb 24                          jmp    0x31004a
310026  48 8d 95 d1 01 00 00           lea    rdx,[rbp+0x1d1]
31002d  e8 fe c6 fb ff                 call   0x2cc730
310032  48 8b c8                       mov    rcx,rax
310035  e8 6a dc fb ff                 call   0x2cdca4
31003a  48 8b d0                       mov    rdx,rax
31003d  48 8d 4d d8                    lea    rcx,[rbp-0x28]
310041  e8 86 c2 fb ff                 call   0x2cc2cc
310046  44 8b 75 d0                    mov    r14d,DWORD PTR [rbp-0x30]
31004a  41 f6 c6 08                    test   r14b,0x8
31004e  74 14                          je     0x310064
310050  41 83 e6 f7                    and    r14d,0xfffffff7
310054  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
31005b  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
31005f  e8 90 c4 fb ff                 call   0x2cc4f4
310064  41 f6 c6 04                    test   r14b,0x4
310068  74 14                          je     0x31007e
31006a  41 83 e6 fb                    and    r14d,0xfffffffb
31006e  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
310075  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
310079  e8 76 c4 fb ff                 call   0x2cc4f4
31007e  48 8d 95 b9 01 00 00           lea    rdx,[rbp+0x1b9]
310085  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
31008c  e8 9f c6 fb ff                 call   0x2cc730
310091  48 8b c8                       mov    rcx,rax
310094  e8 0b dc fb ff                 call   0x2cdca4
310099  48 8b d0                       mov    rdx,rax
31009c  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
3100a3  e8 24 c2 fb ff                 call   0x2cc2cc
3100a8  48 8d 95 b8 01 00 00           lea    rdx,[rbp+0x1b8]
3100af  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
3100b6  e8 75 c6 fb ff                 call   0x2cc730
3100bb  48 8b c8                       mov    rcx,rax
3100be  e8 e1 db fb ff                 call   0x2cdca4
3100c3  48 8b d0                       mov    rdx,rax
3100c6  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
3100cd  e8 fa c1 fb ff                 call   0x2cc2cc
3100d2  44 38 3d cf 75 0d 00           cmp    BYTE PTR [rip+0xd75cf],r15b        # 0x3e76a8 ; CONFIG Bools.HeldItem value(+0x48)
3100d9  41 8b ff                       mov    edi,r15d
3100dc  0f 84 93 00 00 00              je     0x310175
3100e2  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3100e7  ba 90 00 00 00                 mov    edx,0x90
3100ec  e8 4b ed fc ff                 call   0x2dee3c
3100f1  48 8b 10                       mov    rdx,QWORD PTR [rax]
3100f4  48 8b ca                       mov    rcx,rdx
3100f7  e8 0c ae fb ff                 call   0x2caf08
3100fc  84 c0                          test   al,al
3100fe  74 75                          je     0x310175
310100  44 39 7a 18                    cmp    DWORD PTR [rdx+0x18],r15d
310104  7e 6f                          jle    0x310175
310106  4c 8b 42 10                    mov    r8,QWORD PTR [rdx+0x10]
31010a  49 8b c8                       mov    rcx,r8
31010d  e8 f6 ad fb ff                 call   0x2caf08
310112  84 c0                          test   al,al
310114  74 5f                          je     0x310175
310116  49 8b 48 20                    mov    rcx,QWORD PTR [r8+0x20]
31011a  e8 e9 ad fb ff                 call   0x2caf08
31011f  84 c0                          test   al,al
310121  74 52                          je     0x310175
310123  49 8b 48 20                    mov    rcx,QWORD PTR [r8+0x20]
310127  e8 3c 75 05 00                 call   0x367668
31012c  8b d0                          mov    edx,eax
31012e  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
310135  8b d8                          mov    ebx,eax
310137  e8 38 64 00 00                 call   0x316574
31013c  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
310143  e8 4c 85 fc ff                 call   0x2d8694
310148  84 c0                          test   al,al
31014a  75 13                          jne    0x31015f
31014c  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
310153  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
31015a  e8 c5 4a fc ff                 call   0x2d4c24
31015f  44 38 3d 92 75 0d 00           cmp    BYTE PTR [rip+0xd7592],r15b        # 0x3e76f8 ; CONFIG Bools.UseIcon value(+0x48)
310166  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
31016d  0f 45 fb                       cmovne edi,ebx
310170  e8 7f c3 fb ff                 call   0x2cc4f4
310175  44 38 3d 1c 76 0d 00           cmp    BYTE PTR [rip+0xd761c],r15b        # 0x3e7798 ; CONFIG Bools.name value(+0x48)
31017c  74 27                          je     0x3101a5
31017e  48 8d 55 f8                    lea    rdx,[rbp-0x8]
310182  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
310189  e8 22 54 fe ff                 call   0x2f55b0 ; STRING getter=0x2f55b0 Scientist
31018e  48 8b c8                       mov    rcx,rax
310191  e8 ae db fb ff                 call   0x2cdd44
310196  48 8b d0                       mov    rdx,rax
310199  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
3101a0  e8 c3 4a fc ff                 call   0x2d4c68
3101a5  48 8d 95 e0 0e 00 00           lea    rdx,[rbp+0xee0]
3101ac  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3101b0  e8 fb 85 fc ff                 call   0x2d87b0
3101b5  48 8d 95 e8 0e 00 00           lea    rdx,[rbp+0xee8]
3101bc  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3101c0  48 8b 18                       mov    rbx,QWORD PTR [rax]
3101c3  e8 c8 7b fc ff                 call   0x2d7d90
3101c8  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
3101cf  48 8d 8d f0 0e 00 00           lea    rcx,[rbp+0xef0]
3101d6  4c 8b c3                       mov    r8,rbx
3101d9  48 8b 10                       mov    rdx,QWORD PTR [rax]
3101dc  e8 8b dc fd ff                 call   0x2ede6c
3101e1  48 8b c8                       mov    rcx,rax
3101e4  e8 ef e3 fb ff                 call   0x2ce5d8
3101e9  48 8d 95 f0 02 00 00           lea    rdx,[rbp+0x2f0]
3101f0  48 8d 48 30                    lea    rcx,[rax+0x30]
3101f4  e8 2b 4a fc ff                 call   0x2d4c24
3101f9  48 8d 95 f8 0e 00 00           lea    rdx,[rbp+0xef8]
310200  48 8d 4d 20                    lea    rcx,[rbp+0x20]
310204  e8 a7 85 fc ff                 call   0x2d87b0
310209  48 8d 95 00 0f 00 00           lea    rdx,[rbp+0xf00]
310210  48 8d 4d 20                    lea    rcx,[rbp+0x20]
310214  48 8b 18                       mov    rbx,QWORD PTR [rax]
310217  e8 74 7b fc ff                 call   0x2d7d90
31021c  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
310223  48 8d 8d a8 0b 00 00           lea    rcx,[rbp+0xba8]
31022a  4c 8b c3                       mov    r8,rbx
31022d  48 8b 10                       mov    rdx,QWORD PTR [rax]
310230  e8 b3 dc fd ff                 call   0x2edee8
310235  48 8d 8d a8 0b 00 00           lea    rcx,[rbp+0xba8]
31023c  e8 97 e3 fb ff                 call   0x2ce5d8
310241  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
310248  48 8b d8                       mov    rbx,rax
31024b  48 8d 48 30                    lea    rcx,[rax+0x30]
31024f  e8 d0 49 fc ff                 call   0x2d4c24
310254  48 8d 95 08 0f 00 00           lea    rdx,[rbp+0xf08]
31025b  89 7b 64                       mov    DWORD PTR [rbx+0x64],edi
31025e  48 8d 4d 20                    lea    rcx,[rbp+0x20]
310262  e8 49 85 fc ff                 call   0x2d87b0
310267  48 8d 95 10 0f 00 00           lea    rdx,[rbp+0xf10]
31026e  48 8d 4d 20                    lea    rcx,[rbp+0x20]
310272  48 8b 18                       mov    rbx,QWORD PTR [rax]
310275  e8 16 7b fc ff                 call   0x2d7d90
31027a  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
310281  48 8d 8d 18 0f 00 00           lea    rcx,[rbp+0xf18]
310288  4c 8b c3                       mov    r8,rbx
31028b  48 8b 10                       mov    rdx,QWORD PTR [rax]
31028e  e8 d1 dc fd ff                 call   0x2edf64
310293  48 8b c8                       mov    rcx,rax
310296  e8 3d e3 fb ff                 call   0x2ce5d8
31029b  48 8d 55 d8                    lea    rdx,[rbp-0x28]
31029f  48 8d 48 30                    lea    rcx,[rax+0x30]
3102a3  e8 7c 49 fc ff                 call   0x2d4c24
3102a8  48 8d 95 d0 01 00 00           lea    rdx,[rbp+0x1d0]
3102af  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
3102b6  e8 75 c4 fb ff                 call   0x2cc730
3102bb  48 8b c8                       mov    rcx,rax
3102be  e8 e1 d9 fb ff                 call   0x2cdca4
3102c3  48 8d 95 20 0f 00 00           lea    rdx,[rbp+0xf20]
3102ca  48 8b f8                       mov    rdi,rax
3102cd  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3102d1  e8 da 84 fc ff                 call   0x2d87b0
3102d6  48 8d 95 28 0f 00 00           lea    rdx,[rbp+0xf28]
3102dd  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3102e1  48 8b 18                       mov    rbx,QWORD PTR [rax]
3102e4  e8 a7 7a fc ff                 call   0x2d7d90
3102e9  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
3102f0  48 8d 8d 30 0f 00 00           lea    rcx,[rbp+0xf30]
3102f7  4c 8b c3                       mov    r8,rbx
3102fa  48 8b 10                       mov    rdx,QWORD PTR [rax]
3102fd  e8 de dc fd ff                 call   0x2edfe0
310302  48 8b c8                       mov    rcx,rax
310305  e8 ce e2 fb ff                 call   0x2ce5d8
31030a  48 8b d7                       mov    rdx,rdi
31030d  48 8d 48 30                    lea    rcx,[rax+0x30]
310311  e8 52 49 fc ff                 call   0x2d4c68
310316  48 8d 95 af 01 00 00           lea    rdx,[rbp+0x1af]
31031d  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
310324  e8 07 c4 fb ff                 call   0x2cc730
310329  48 8b c8                       mov    rcx,rax
31032c  e8 73 d9 fb ff                 call   0x2cdca4
310331  48 8d 95 38 0f 00 00           lea    rdx,[rbp+0xf38]
310338  48 8b f8                       mov    rdi,rax
31033b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
31033f  e8 6c 84 fc ff                 call   0x2d87b0
310344  48 8d 95 40 0f 00 00           lea    rdx,[rbp+0xf40]
31034b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
31034f  48 8b 18                       mov    rbx,QWORD PTR [rax]
310352  e8 39 7a fc ff                 call   0x2d7d90
310357  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
31035e  48 8d 8d 48 0f 00 00           lea    rcx,[rbp+0xf48]
310365  4c 8b c3                       mov    r8,rbx
310368  48 8b 10                       mov    rdx,QWORD PTR [rax]
31036b  e8 ec dc fd ff                 call   0x2ee05c
310370  48 8b c8                       mov    rcx,rax
310373  e8 60 e2 fb ff                 call   0x2ce5d8
310378  48 8b d7                       mov    rdx,rdi
31037b  48 8d 48 30                    lea    rcx,[rax+0x30]
31037f  e8 e4 48 fc ff                 call   0x2d4c68
310384  48 8d 95 ae 01 00 00           lea    rdx,[rbp+0x1ae]
31038b  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
310392  e8 99 c3 fb ff                 call   0x2cc730
310397  48 8b c8                       mov    rcx,rax
31039a  e8 05 d9 fb ff                 call   0x2cdca4
31039f  48 8d 95 50 0f 00 00           lea    rdx,[rbp+0xf50]
3103a6  48 8b f8                       mov    rdi,rax
3103a9  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3103ad  e8 fe 83 fc ff                 call   0x2d87b0
3103b2  48 8d 95 58 0f 00 00           lea    rdx,[rbp+0xf58]
3103b9  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3103bd  48 8b 18                       mov    rbx,QWORD PTR [rax]
3103c0  e8 cb 79 fc ff                 call   0x2d7d90
3103c5  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
3103cc  48 8d 8d 60 0f 00 00           lea    rcx,[rbp+0xf60]
3103d3  4c 8b c3                       mov    r8,rbx
3103d6  48 8b 10                       mov    rdx,QWORD PTR [rax]
3103d9  e8 fa dc fd ff                 call   0x2ee0d8
3103de  48 8b c8                       mov    rcx,rax
3103e1  e8 f2 e1 fb ff                 call   0x2ce5d8
3103e6  48 8b d7                       mov    rdx,rdi
3103e9  48 8d 48 30                    lea    rcx,[rax+0x30]
3103ed  e8 76 48 fc ff                 call   0x2d4c68
3103f2  44 38 3d 1f 99 0d 00           cmp    BYTE PTR [rip+0xd991f],r15b        # 0x3e9d18 ; CONFIG Bools.CornerBox value(+0x48)
3103f9  74 22                          je     0x31041d
3103fb  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
310402  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
310409  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
310410  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
310418  e8 07 b3 06 00                 call   0x37b724
31041d  48 8d 0d a4 58 0d 00           lea    rcx,[rip+0xd58a4]        # 0x3e5cc8
310424  44 89 bd a8 15 00 00           mov    DWORD PTR [rbp+0x15a8],r15d
31042b  e8 b8 d6 fd ff                 call   0x2edae8
310430  48 8d 0d 91 58 0d 00           lea    rcx,[rip+0xd5891]        # 0x3e5cc8
310437  48 8b d8                       mov    rbx,rax
31043a  e8 65 af fb ff                 call   0x2cb3a4
31043f  48 8b c8                       mov    rcx,rax
310442  4c 8d 85 a8 15 00 00           lea    r8,[rbp+0x15a8]
310449  48 8b d3                       mov    rdx,rbx
31044c  e8 d7 d6 fd ff                 call   0x2edb28
310451  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
310458  33 d2                          xor    edx,edx
31045a  48 8d 4d 20                    lea    rcx,[rbp+0x20]
31045e  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
310466  e8 5d f3 fd ff                 call   0x2ef7c8
31046b  48 8b d0                       mov    rdx,rax
31046e  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
310475  e8 f6 af fc ff                 call   0x2db470
31047a  48 8b d0                       mov    rdx,rax
31047d  4c 8d 85 80 01 00 00           lea    r8,[rbp+0x180]
310484  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
31048b  e8 08 b8 06 00                 call   0x37bc98
310490  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
310497  ba 01 00 00 00                 mov    edx,0x1
31049c  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3104a0  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
3104a8  e8 1b f3 fd ff                 call   0x2ef7c8
3104ad  48 8b d0                       mov    rdx,rax
3104b0  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
3104b7  e8 b4 af fc ff                 call   0x2db470
3104bc  48 8b d0                       mov    rdx,rax
3104bf  4c 8d 85 80 01 00 00           lea    r8,[rbp+0x180]
3104c6  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
3104cd  e8 c6 b7 06 00                 call   0x37bc98
3104d2  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
3104d9  ba 02 00 00 00                 mov    edx,0x2
3104de  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3104e2  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
3104ea  e8 d9 f2 fd ff                 call   0x2ef7c8
3104ef  48 8b d0                       mov    rdx,rax
3104f2  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
3104f9  e8 72 af fc ff                 call   0x2db470
3104fe  48 8b d0                       mov    rdx,rax
310501  4c 8d 85 80 01 00 00           lea    r8,[rbp+0x180]
310508  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
31050f  e8 84 b7 06 00                 call   0x37bc98
310514  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
31051b  ba 03 00 00 00                 mov    edx,0x3
310520  48 8d 4d 20                    lea    rcx,[rbp+0x20]
310524  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
31052c  e8 97 f2 fd ff                 call   0x2ef7c8
310531  48 8b d0                       mov    rdx,rax
310534  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
31053b  e8 30 af fc ff                 call   0x2db470
310540  48 8b d0                       mov    rdx,rax
310543  4c 8d 85 80 01 00 00           lea    r8,[rbp+0x180]
31054a  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
310551  e8 42 b7 06 00                 call   0x37bc98
310556  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
31055d  ba 04 00 00 00                 mov    edx,0x4
310562  48 8d 4d 20                    lea    rcx,[rbp+0x20]
310566  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
31056e  e8 55 f2 fd ff                 call   0x2ef7c8
310573  48 8b d0                       mov    rdx,rax
310576  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
31057d  e8 ee ae fc ff                 call   0x2db470
310582  48 8b d0                       mov    rdx,rax
310585  4c 8d 85 80 01 00 00           lea    r8,[rbp+0x180]
31058c  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
310593  e8 00 b7 06 00                 call   0x37bc98
310598  0f 10 85 10 01 00 00           movups xmm0,XMMWORD PTR [rbp+0x110]
31059f  ba 05 00 00 00                 mov    edx,0x5
3105a4  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3105a8  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
3105b0  e8 13 f2 fd ff                 call   0x2ef7c8
3105b5  48 8b d0                       mov    rdx,rax
3105b8  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
3105bf  e8 ac ae fc ff                 call   0x2db470
3105c4  48 8b d0                       mov    rdx,rax
3105c7  4c 8d 85 80 01 00 00           lea    r8,[rbp+0x180]
3105ce  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
3105d5  e8 be b6 06 00                 call   0x37bc98
3105da  4c 8d 85 b0 00 00 00           lea    r8,[rbp+0xb0]
3105e1  48 8d 95 68 0f 00 00           lea    rdx,[rbp+0xf68]
3105e8  48 8d 8d a8 00 00 00           lea    rcx,[rbp+0xa8]
3105ef  e8 10 f4 fd ff                 call   0x2efa04
3105f4  f3 0f 10 15 38 2b f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff82b38]        # 0x293134 ; f32=2
3105fc  48 8d 95 e8 04 00 00           lea    rdx,[rbp+0x4e8]
310603  48 8b c8                       mov    rcx,rax
310606  e8 29 f4 fd ff                 call   0x2efa34
31060b  f3 0f 10 0d bd 88 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff388bd]        # 0x248ed0 ; f32=16
310613  66 0f 6e 35 bd 56 0d 00        movd   xmm6,DWORD PTR [rip+0xd56bd]        # 0x3e5cd8
31061b  0f 28 d1                       movaps xmm2,xmm1
31061e  f3 0f 59 15 1a 2b f8 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff82b1a]        # 0x293140 ; f32=2.31
310626  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31062b  f3 0f 10 bd e8 04 00 00        movss  xmm7,DWORD PTR [rbp+0x4e8]
310633  0f 5b f6                       cvtdq2ps xmm6,xmm6
310636  0f 28 c2                       movaps xmm0,xmm2
310639  f3 0f 59 05 0f cc f7 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff7cc0f]        # 0x28d250 ; f32=0.5
310641  f3 0f 59 f1                    mulss  xmm6,xmm1
310645  f3 0f 59 0d 6b 2a f8 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff82a6b]        # 0x2930b8 ; f32=0.38
31064d  f3 0f 5c f8                    subss  xmm7,xmm0
310651  f3 0f 10 85 ec 04 00 00        movss  xmm0,DWORD PTR [rbp+0x4ec]
310659  f3 0f 58 05 47 d1 0d 00        addss  xmm0,DWORD PTR [rip+0xdd147]        # 0x3ed7a8 ; CONFIG F.PlayerSpacing value(+0x48)
310661  f3 0f 2c d9                    cvttss2si ebx,xmm1
310665  f3 0f 58 f0                    addss  xmm6,xmm0
310669  f3 0f 2c fa                    cvttss2si edi,xmm2
31066d  f3 41 0f 58 f7                 addss  xmm6,xmm15
310672  e8 5d 8d 05 00                 call   0x3693d4
310677  89 5c 24 30                    mov    DWORD PTR [rsp+0x30],ebx
31067b  41 0f 28 de                    movaps xmm3,xmm14
31067f  f3 44 0f 2c c6                 cvttss2si r8d,xmm6
310684  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
310688  49 8b cd                       mov    rcx,r13
31068b  f3 0f 2c d7                    cvttss2si edx,xmm7
31068f  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
310695  e8 ea af 04 00                 call   0x35b684
31069a  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
3106a1  e8 4e be fb ff                 call   0x2cc4f4
3106a6  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
3106ad  e8 42 be fb ff                 call   0x2cc4f4
3106b2  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3106b6  e8 39 be fb ff                 call   0x2cc4f4
3106bb  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3106bf  e8 00 af fc ff                 call   0x2db5c4
3106c4  e9 a1 3a 00 00                 jmp    0x31416a
3106c9  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3106ce  e8 dd 8c 05 00                 call   0x3693b0
3106d3  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3106d8  88 85 a8 15 00 00              mov    BYTE PTR [rbp+0x15a8],al
3106de  e8 61 7b 05 00                 call   0x368244
3106e3  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3106e8  8a d8                          mov    bl,al
3106ea  88 45 60                       mov    BYTE PTR [rbp+0x60],al
3106ed  e8 96 ab 05 00                 call   0x36b288
3106f2  88 45 d5                       mov    BYTE PTR [rbp-0x2b],al
3106f5  84 c0                          test   al,al
3106f7  75 04                          jne    0x3106fd
3106f9  84 db                          test   bl,bl
3106fb  74 0d                          je     0x31070a
3106fd  44 38 3d 34 71 0d 00           cmp    BYTE PTR [rip+0xd7134],r15b        # 0x3e7838 ; CONFIG Bools.Wounded value(+0x48)
310704  0f 84 60 3a 00 00              je     0x31416a
31070a  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31070f  e8 a4 a5 05 00                 call   0x36acb8
310714  40 8a f0                       mov    sil,al
310717  84 c0                          test   al,al
310719  74 0d                          je     0x310728
31071b  44 38 3d 36 6f 0d 00           cmp    BYTE PTR [rip+0xd6f36],r15b        # 0x3e7658 ; CONFIG Bools.SafeZone value(+0x48)
310722  0f 84 42 3a 00 00              je     0x31416a
310728  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31072d  33 d2                          xor    edx,edx
31072f  e8 d8 9a 05 00                 call   0x36a20c
310734  84 c0                          test   al,al
310736  74 15                          je     0x31074d
310738  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31073d  e8 da 7a 05 00                 call   0x36821c
310742  c6 85 b0 15 00 00 01           mov    BYTE PTR [rbp+0x15b0],0x1
310749  84 c0                          test   al,al
31074b  74 07                          je     0x310754
31074d  44 88 bd b0 15 00 00           mov    BYTE PTR [rbp+0x15b0],r15b
310754  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310759  33 d2                          xor    edx,edx
31075b  e8 ac 9a 05 00                 call   0x36a20c
310760  84 c0                          test   al,al
310762  74 15                          je     0x310779
310764  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310769  e8 ae 7a 05 00                 call   0x36821c
31076e  c6 85 b8 15 00 00 01           mov    BYTE PTR [rbp+0x15b8],0x1
310775  84 c0                          test   al,al
310777  75 07                          jne    0x310780
310779  44 88 bd b8 15 00 00           mov    BYTE PTR [rbp+0x15b8],r15b
310780  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310785  e8 ee 99 05 00                 call   0x36a178
31078a  33 ff                          xor    edi,edi
31078c  88 44 24 62                    mov    BYTE PTR [rsp+0x62],al
310790  44 8a f8                       mov    r15b,al
310793  84 c0                          test   al,al
310795  74 09                          je     0x3107a0
310797  40 38 3d 8a 6c 0d 00           cmp    BYTE PTR [rip+0xd6c8a],dil        # 0x3e7428 ; CONFIG Bools.Scientist value(+0x48)
31079e  eb 07                          jmp    0x3107a7
3107a0  40 38 3d a1 6a 0d 00           cmp    BYTE PTR [rip+0xd6aa1],dil        # 0x3e7248 ; CONFIG Bools.PlayerESP value(+0x48)
3107a7  0f 84 ba 39 00 00              je     0x314167
3107ad  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3107b2  33 d2                          xor    edx,edx
3107b4  e8 73 cb fb ff                 call   0x2cd32c
3107b9  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3107be  48 8b d8                       mov    rbx,rax
3107c1  48 89 85 10 01 00 00           mov    QWORD PTR [rbp+0x110],rax
3107c8  e8 8b a7 05 00                 call   0x36af58
3107cd  48 85 db                       test   rbx,rbx
3107d0  74 0b                          je     0x3107dd
3107d2  48 3b 9d b0 0b 00 00           cmp    rbx,QWORD PTR [rbp+0xbb0]
3107d9  b3 01                          mov    bl,0x1
3107db  74 03                          je     0x3107e0
3107dd  40 8a df                       mov    bl,dil
3107e0  44 8b 75 d0                    mov    r14d,DWORD PTR [rbp-0x30]
3107e4  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
3107eb  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3107f0  45 33 c0                       xor    r8d,r8d
3107f3  41 83 ce 10                    or     r14d,0x10
3107f7  e8 74 96 05 00                 call   0x369e70
3107fc  48 8b d0                       mov    rdx,rax
3107ff  48 8d 0d 5a 6a 0c 00           lea    rcx,[rip+0xc6a5a]        # 0x3d7260
310806  e8 fd ed fc ff                 call   0x2df608
31080b  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
31080f  74 07                          je     0x310818
310811  84 db                          test   bl,bl
310813  40 8a df                       mov    bl,dil
310816  74 02                          je     0x31081a
310818  b3 01                          mov    bl,0x1
31081a  41 83 e6 ef                    and    r14d,0xffffffef
31081e  88 5c 24 61                    mov    BYTE PTR [rsp+0x61],bl
310822  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310829  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
31082d  e8 c2 bc fb ff                 call   0x2cc4f4
310832  40 38 3d 0f 8d 0d 00           cmp    BYTE PTR [rip+0xd8d0f],dil        # 0x3e9548 ; CONFIG Bools.lookingat value(+0x48)
310839  0f 84 8e 02 00 00              je     0x310acd
31083f  45 84 ff                       test   r15b,r15b
310842  0f 85 85 02 00 00              jne    0x310acd
310848  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31084d  33 d2                          xor    edx,edx
31084f  e8 b8 99 05 00                 call   0x36a20c
310854  84 c0                          test   al,al
310856  0f 85 71 02 00 00              jne    0x310acd
31085c  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310861  e8 22 aa 05 00                 call   0x36b288
310866  84 c0                          test   al,al
310868  0f 85 5f 02 00 00              jne    0x310acd
31086e  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310873  e8 38 8b 05 00                 call   0x3693b0
310878  0a c3                          or     al,bl
31087a  0f 85 4d 02 00 00              jne    0x310acd
310880  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310885  e8 96 9a 05 00                 call   0x36a320
31088a  84 c0                          test   al,al
31088c  0f 84 3b 02 00 00              je     0x310acd
310892  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310897  48 8d 95 f0 02 00 00           lea    rdx,[rbp+0x2f0]
31089e  e8 9d 87 05 00                 call   0x369040
3108a3  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
3108aa  e8 e5 7d fc ff                 call   0x2d8694
3108af  84 c0                          test   al,al
3108b1  0f 85 0a 02 00 00              jne    0x310ac1
3108b7  48 8d 95 ad 01 00 00           lea    rdx,[rbp+0x1ad]
3108be  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3108c3  e8 68 be fb ff                 call   0x2cc730
3108c8  48 8b c8                       mov    rcx,rax
3108cb  e8 d4 d3 fb ff                 call   0x2cdca4
3108d0  48 8b d0                       mov    rdx,rax
3108d3  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
3108da  e8 ed b9 fb ff                 call   0x2cc2cc
3108df  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3108e4  e8 9b 81 05 00                 call   0x368a84
3108e9  48 8b c8                       mov    rcx,rax
3108ec  48 8b d0                       mov    rdx,rax
3108ef  e8 14 a6 fb ff                 call   0x2caf08
3108f4  84 c0                          test   al,al
3108f6  74 49                          je     0x310941
3108f8  48 8b ca                       mov    rcx,rdx
3108fb  e8 4c 0c 06 00                 call   0x37154c
310900  48 8b c8                       mov    rcx,rax
310903  4c 8b c0                       mov    r8,rax
310906  e8 fd a5 fb ff                 call   0x2caf08
31090b  84 c0                          test   al,al
31090d  74 32                          je     0x310941
31090f  48 8d 55 d8                    lea    rdx,[rbp-0x28]
310913  49 8b c8                       mov    rcx,r8
310916  e8 7d 1a 06 00                 call   0x372398
31091b  48 8d 4d d8                    lea    rcx,[rbp-0x28]
31091f  e8 70 7d fc ff                 call   0x2d8694
310924  84 c0                          test   al,al
310926  75 10                          jne    0x310938
310928  48 8d 55 d8                    lea    rdx,[rbp-0x28]
31092c  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
310933  e8 ec 42 fc ff                 call   0x2d4c24
310938  48 8d 4d d8                    lea    rcx,[rbp-0x28]
31093c  e8 b3 bb fb ff                 call   0x2cc4f4
310941  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310946  e8 21 96 05 00                 call   0x369f6c
31094b  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
310950  84 c0                          test   al,al
310952  74 16                          je     0x31096a
310954  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
31095b  e8 f4 5b fe ff                 call   0x2f6554 ; STRING getter=0x2f6554  IS AIMING AT YOU 
310960  48 8b c8                       mov    rcx,rax
310963  e8 2c d4 fb ff                 call   0x2cdd94
310968  eb 11                          jmp    0x31097b
31096a  48 8d 55 20                    lea    rdx,[rbp+0x20]
31096e  e8 b1 5c fe ff                 call   0x2f6624 ; STRING getter=0x2f6624  IS LOOKING AT YOU 
310973  48 8b c8                       mov    rcx,rax
310976  e8 19 fb 00 00                 call   0x320494
31097b  48 8b d0                       mov    rdx,rax
31097e  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310985  e8 42 b9 fb ff                 call   0x2cc2cc
31098a  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
310991  e8 fe 7c fc ff                 call   0x2d8694
310996  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
31099b  84 c0                          test   al,al
31099d  74 25                          je     0x3109c4
31099f  48 8d 95 ac 01 00 00           lea    rdx,[rbp+0x1ac]
3109a6  e8 85 bd fb ff                 call   0x2cc730
3109ab  48 8b c8                       mov    rcx,rax
3109ae  e8 f1 d2 fb ff                 call   0x2cdca4
3109b3  48 8b d0                       mov    rdx,rax
3109b6  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
3109bd  e8 0a b9 fb ff                 call   0x2cc2cc
3109c2  eb 2a                          jmp    0x3109ee
3109c4  48 8d 95 34 0c 00 00           lea    rdx,[rbp+0xc34]
3109cb  e8 00 5f fe ff                 call   0x2f68d0 ; STRING getter=0x2f68d0 WITH 
3109d0  48 8b c8                       mov    rcx,rax
3109d3  e8 04 7b fc ff                 call   0x2d84dc
3109d8  48 8b d0                       mov    rdx,rax
3109db  4c 8d 85 a0 00 00 00           lea    r8,[rbp+0xa0]
3109e2  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
3109e9  e8 26 9d fd ff                 call   0x2ea714
3109ee  4c 8d 85 d8 00 00 00           lea    r8,[rbp+0xd8]
3109f5  48 8d 95 f0 02 00 00           lea    rdx,[rbp+0x2f0]
3109fc  48 8d 4d d8                    lea    rcx,[rbp-0x28]
310a00  e8 4b 9c fd ff                 call   0x2ea650
310a05  48 8b d0                       mov    rdx,rax
310a08  4c 8d 85 10 02 00 00           lea    r8,[rbp+0x210]
310a0f  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
310a16  e8 49 e5 fb ff                 call   0x2cef64
310a1b  48 8d 4d d8                    lea    rcx,[rbp-0x28]
310a1f  e8 d0 ba fb ff                 call   0x2cc4f4
310a24  0f 10 05 ed 9c 0d 00           movups xmm0,XMMWORD PTR [rip+0xd9ced]        # 0x3ea718 ; CONFIG C.AlertColor value(+0x48)
310a2b  48 8d 8d e0 0f 00 00           lea    rcx,[rbp+0xfe0]
310a32  f3 0f 10 95 0c 01 00 00        movss  xmm2,DWORD PTR [rbp+0x10c]
310a3a  f3 0f 10 8d 08 01 00 00        movss  xmm1,DWORD PTR [rbp+0x108]
310a42  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
310a4a  e8 f1 b8 fb ff                 call   0x2cc340
310a4f  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
310a53  4c 8d 85 f0 01 00 00           lea    r8,[rbp+0x1f0]
310a5a  4c 8b c8                       mov    r9,rax
310a5d  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
310a65  48 8d 85 80 01 00 00           lea    rax,[rbp+0x180]
310a6c  49 8b cd                       mov    rcx,r13
310a6f  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
310a74  e8 e3 08 05 00                 call   0x36135c
310a79  f3 0f 10 85 0c 01 00 00        movss  xmm0,DWORD PTR [rbp+0x10c]
310a81  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
310a88  f3 0f 58 05 44 84 f3 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff38444]        # 0x248ed4 ; f32=16
310a90  f3 0f 11 85 0c 01 00 00        movss  DWORD PTR [rbp+0x10c],xmm0
310a98  e8 57 ba fb ff                 call   0x2cc4f4
310a9d  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
310aa4  e8 4b ba fb ff                 call   0x2cc4f4
310aa9  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310ab0  e8 3f ba fb ff                 call   0x2cc4f4
310ab5  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
310abc  e8 33 ba fb ff                 call   0x2cc4f4
310ac1  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
310ac8  e8 27 ba fb ff                 call   0x2cc4f4
310acd  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310ad2  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
310ad9  45 33 c0                       xor    r8d,r8d
310adc  e8 8f 93 05 00                 call   0x369e70
310ae1  48 8b d0                       mov    rdx,rax
310ae4  48 8d 0d 75 67 0c 00           lea    rcx,[rip+0xc6775]        # 0x3d7260
310aeb  e8 18 eb fc ff                 call   0x2df608
310af0  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310af7  8b 78 24                       mov    edi,DWORD PTR [rax+0x24]
310afa  e8 f5 b9 fb ff                 call   0x2cc4f4
310aff  83 ff 02                       cmp    edi,0x2
310b02  75 26                          jne    0x310b2a
310b04  45 33 c0                       xor    r8d,r8d
310b07  48 8d 95 08 13 00 00           lea    rdx,[rbp+0x1308]
310b0e  48 8d 0d 63 fc 0d 00           lea    rcx,[rip+0xdfc63]        # 0x3f0778 ; CONFIG VectorBools.EnemyOptions value(+0x48)
310b15  e8 d6 8d fd ff                 call   0x2e98f0
310b1a  48 8b c8                       mov    rcx,rax
310b1d  e8 4e 42 fc ff                 call   0x2d4d70
310b22  33 c9                          xor    ecx,ecx
310b24  84 c0                          test   al,al
310b26  75 0e                          jne    0x310b36
310b28  eb 02                          jmp    0x310b2c
310b2a  33 c9                          xor    ecx,ecx
310b2c  38 0d 06 68 0d 00              cmp    BYTE PTR [rip+0xd6806],cl        # 0x3e7338 ; CONFIG Bools.Sleepers value(+0x48)
310b32  8a d9                          mov    bl,cl
310b34  74 02                          je     0x310b38
310b36  b3 01                          mov    bl,0x1
310b38  83 ff 02                       cmp    edi,0x2
310b3b  75 25                          jne    0x310b62
310b3d  44 8d 47 ff                    lea    r8d,[rdi-0x1]
310b41  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
310b48  48 8d 0d 29 fc 0d 00           lea    rcx,[rip+0xdfc29]        # 0x3f0778 ; CONFIG VectorBools.EnemyOptions value(+0x48)
310b4f  e8 9c 8d fd ff                 call   0x2e98f0
310b54  48 8b c8                       mov    rcx,rax
310b57  e8 14 42 fc ff                 call   0x2d4d70
310b5c  33 c9                          xor    ecx,ecx
310b5e  84 c0                          test   al,al
310b60  75 0a                          jne    0x310b6c
310b62  38 0d 70 68 0d 00              cmp    BYTE PTR [rip+0xd6870],cl        # 0x3e73d8 ; CONFIG Bools.Dead value(+0x48)
310b68  8a c1                          mov    al,cl
310b6a  74 02                          je     0x310b6e
310b6c  b0 01                          mov    al,0x1
310b6e  38 8d a8 15 00 00              cmp    BYTE PTR [rbp+0x15a8],cl
310b74  74 08                          je     0x310b7e
310b76  84 c0                          test   al,al
310b78  0f 84 e9 35 00 00              je     0x314167
310b7e  38 8d b0 15 00 00              cmp    BYTE PTR [rbp+0x15b0],cl
310b84  74 08                          je     0x310b8e
310b86  84 db                          test   bl,bl
310b88  0f 84 d9 35 00 00              je     0x314167
310b8e  8a 44 24 61                    mov    al,BYTE PTR [rsp+0x61]
310b92  84 c0                          test   al,al
310b94  74 0c                          je     0x310ba2
310b96  38 0d ec 8f 0d 00              cmp    BYTE PTR [rip+0xd8fec],cl        # 0x3e9b88 ; CONFIG Bools.drawteam value(+0x48)
310b9c  0f 84 c5 35 00 00              je     0x314167
310ba2  83 ff 02                       cmp    edi,0x2
310ba5  75 0c                          jne    0x310bb3
310ba7  38 0d cb 95 0d 00              cmp    BYTE PTR [rip+0xd95cb],cl        # 0x3ea178 ; CONFIG Bools.draweenemy value(+0x48)
310bad  0f 84 b4 35 00 00              je     0x314167
310bb3  8a d9                          mov    bl,cl
310bb5  84 c0                          test   al,al
310bb7  75 2a                          jne    0x310be3
310bb9  38 0d 89 93 0d 00              cmp    BYTE PTR [rip+0xd9389],cl        # 0x3e9f48 ; CONFIG Bools.VisCheck value(+0x48)
310bbf  74 22                          je     0x310be3
310bc1  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310bc6  e8 79 a6 05 00                 call   0x36b244
310bcb  33 c9                          xor    ecx,ecx
310bcd  8a d8                          mov    bl,al
310bcf  38 0d 03 6d 0d 00              cmp    BYTE PTR [rip+0xd6d03],cl        # 0x3e78d8 ; CONFIG Bools.AlwaysVisible value(+0x48)
310bd5  74 08                          je     0x310bdf
310bd7  84 c0                          test   al,al
310bd9  0f 84 88 35 00 00              je     0x314167
310bdf  8a 44 24 61                    mov    al,BYTE PTR [rsp+0x61]
310be3  88 4c 24 60                    mov    BYTE PTR [rsp+0x60],cl
310be7  84 c0                          test   al,al
310be9  75 1b                          jne    0x310c06
310beb  38 0d a7 66 0d 00              cmp    BYTE PTR [rip+0xd66a7],cl        # 0x3e7298 ; CONFIG Bools.IsOutside value(+0x48)
310bf1  74 13                          je     0x310c06
310bf3  45 84 ff                       test   r15b,r15b
310bf6  75 0e                          jne    0x310c06
310bf8  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310bfd  e8 9e 95 05 00                 call   0x36a1a0
310c02  88 44 24 60                    mov    BYTE PTR [rsp+0x60],al
310c06  0f 57 d2                       xorps  xmm2,xmm2
310c09  48 8d 4d 78                    lea    rcx,[rbp+0x78]
310c0d  0f 57 c9                       xorps  xmm1,xmm1
310c10  e8 2b b7 fb ff                 call   0x2cc340
310c15  0f 57 d2                       xorps  xmm2,xmm2
310c18  48 8d 8d b8 03 00 00           lea    rcx,[rbp+0x3b8]
310c1f  0f 57 c9                       xorps  xmm1,xmm1
310c22  e8 19 b7 fb ff                 call   0x2cc340
310c27  48 8d 55 a0                    lea    rdx,[rbp-0x60]
310c2b  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
310c32  e8 f9 f2 fc ff                 call   0x2dff30
310c37  44 0f 28 d0                    movaps xmm10,xmm0
310c3b  f3 44 0f 11 95 4c 04 00 00     movss  DWORD PTR [rbp+0x44c],xmm10
310c44  45 84 ff                       test   r15b,r15b
310c47  74 0a                          je     0x310c53
310c49  66 0f 6e 0d 47 75 0c 00        movd   xmm1,DWORD PTR [rip+0xc7547]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
310c51  eb 08                          jmp    0x310c5b
310c53  66 0f 6e 0d ed 74 0c 00        movd   xmm1,DWORD PTR [rip+0xc74ed]        # 0x3d8148 ; CONFIG i.PlayerMaxDistance value(+0x48)
310c5b  0f 5b c9                       cvtdq2ps xmm1,xmm1
310c5e  44 0f 2f d1                    comiss xmm10,xmm1
310c62  0f 87 ff 34 00 00              ja     0x314167
310c68  0f 10 05 49 be 0d 00           movups xmm0,XMMWORD PTR [rip+0xdbe49]        # 0x3ecab8 ; CONFIG C.PlayerColor1 value(+0x48)
310c6f  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310c73  84 db                          test   bl,bl
310c75  74 14                          je     0x310c8b
310c77  80 3d ca 92 0d 00 00           cmp    BYTE PTR [rip+0xd92ca],0x0        # 0x3e9f48 ; CONFIG Bools.VisCheck value(+0x48)
310c7e  74 0b                          je     0x310c8b
310c80  0f 10 05 b1 b9 0d 00           movups xmm0,XMMWORD PTR [rip+0xdb9b1]        # 0x3ec638 ; CONFIG C.VisibleColor value(+0x48)
310c87  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310c8b  80 7d d5 00                    cmp    BYTE PTR [rbp-0x2b],0x0
310c8f  74 0b                          je     0x310c9c
310c91  0f 10 05 00 ba 0d 00           movups xmm0,XMMWORD PTR [rip+0xdba00]        # 0x3ec698 ; CONFIG C.WoundedPlayercolor value(+0x48)
310c98  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310c9c  40 84 f6                       test   sil,sil
310c9f  74 0b                          je     0x310cac
310ca1  0f 10 05 50 ba 0d 00           movups xmm0,XMMWORD PTR [rip+0xdba50]        # 0x3ec6f8 ; CONFIG C.Safezonecolor value(+0x48)
310ca8  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310cac  8a 9d b0 15 00 00              mov    bl,BYTE PTR [rbp+0x15b0]
310cb2  33 f6                          xor    esi,esi
310cb4  84 db                          test   bl,bl
310cb6  74 0b                          je     0x310cc3
310cb8  0f 10 05 99 ba 0d 00           movups xmm0,XMMWORD PTR [rip+0xdba99]        # 0x3ec758 ; CONFIG C.SleeperColor value(+0x48)
310cbf  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310cc3  45 84 ff                       test   r15b,r15b
310cc6  74 0b                          je     0x310cd3
310cc8  0f 10 05 49 bb 0d 00           movups xmm0,XMMWORD PTR [rip+0xdbb49]        # 0x3ec818 ; CONFIG C.NPCcolor value(+0x48)
310ccf  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310cd3  40 38 74 24 61                 cmp    BYTE PTR [rsp+0x61],sil
310cd8  74 0b                          je     0x310ce5
310cda  0f 10 05 97 bb 0d 00           movups xmm0,XMMWORD PTR [rip+0xdbb97]        # 0x3ec878 ; CONFIG C.Teamcolor value(+0x48)
310ce1  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310ce5  83 ff 02                       cmp    edi,0x2
310ce8  75 0b                          jne    0x310cf5
310cea  0f 10 05 e7 b8 0d 00           movups xmm0,XMMWORD PTR [rip+0xdb8e7]        # 0x3ec5d8 ; CONFIG C.EnemyColor value(+0x48)
310cf1  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310cf5  40 8a bd a8 15 00 00           mov    dil,BYTE PTR [rbp+0x15a8]
310cfc  40 84 ff                       test   dil,dil
310cff  74 0b                          je     0x310d0c
310d01  0f 10 05 b0 ba 0d 00           movups xmm0,XMMWORD PTR [rip+0xdbab0]        # 0x3ec7b8 ; CONFIG C.DeadColor value(+0x48)
310d08  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
310d0c  0f 10 85 00 0c 00 00           movups xmm0,XMMWORD PTR [rbp+0xc00]
310d13  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
310d1a  48 8d 8d e0 10 00 00           lea    rcx,[rbp+0x10e0]
310d21  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
310d29  e8 de 45 00 00                 call   0x31530c
310d2e  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310d33  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
310d38  f3 44 0f 10 40 04              movss  xmm8,DWORD PTR [rax+0x4]
310d3e  f3 44 0f 11 85 28 04 00 00     movss  DWORD PTR [rbp+0x428],xmm8
310d47  e8 c0 84 05 00                 call   0x36920c
310d4c  40 38 35 c5 94 0d 00           cmp    BYTE PTR [rip+0xd94c5],sil        # 0x3ea218 ; CONFIG Bools.DrawIngameRadarPlayers value(+0x48)
310d53  8a 05 7f 93 0d 00              mov    al,BYTE PTR [rip+0xd937f]        # 0x3ea0d8 ; CONFIG Bools.DrawIngamemapScientist value(+0x48)
310d59  75 08                          jne    0x310d63
310d5b  84 c0                          test   al,al
310d5d  0f 84 81 0f 00 00              je     0x311ce4
310d63  45 84 ff                       test   r15b,r15b
310d66  74 0c                          je     0x310d74
310d68  f6 d8                          neg    al
310d6a  1a c0                          sbb    al,al
310d6c  a8 01                          test   al,0x1
310d6e  0f 84 70 0f 00 00              je     0x311ce4
310d74  41 0f 28 c9                    movaps xmm1,xmm9
310d78  48 8d 8d e8 12 00 00           lea    rcx,[rbp+0x12e8]
310d7f  e8 bc 87 fc ff                 call   0x2d9540
310d84  f2 0f 10 45 a0                 movsd  xmm0,QWORD PTR [rbp-0x60]
310d89  48 8d 95 70 09 00 00           lea    rdx,[rbp+0x970]
310d90  8b 45 a8                       mov    eax,DWORD PTR [rbp-0x58]
310d93  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
310d9a  f2 0f 11 85 70 09 00 00        movsd  QWORD PTR [rbp+0x970],xmm0
310da2  89 85 78 09 00 00              mov    DWORD PTR [rbp+0x978],eax
310da8  e8 5b 41 00 00                 call   0x314f08
310dad  0f 57 d2                       xorps  xmm2,xmm2
310db0  48 8d 8d e8 0f 00 00           lea    rcx,[rbp+0xfe8]
310db7  0f 57 c9                       xorps  xmm1,xmm1
310dba  e8 81 b5 fb ff                 call   0x2cc340
310dbf  48 8b d0                       mov    rdx,rax
310dc2  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
310dc9  e8 f6 e8 fd ff                 call   0x2ef6c4
310dce  84 c0                          test   al,al
310dd0  0f 84 02 0f 00 00              je     0x311cd8
310dd6  0f 10 44 24 70                 movups xmm0,XMMWORD PTR [rsp+0x70]
310ddb  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
310de2  41 0f 28 f9                    movaps xmm7,xmm9
310de6  48 8d 8d ec 10 00 00           lea    rcx,[rbp+0x10ec]
310ded  f3 0f 58 3d 83 cc 0d 00        addss  xmm7,DWORD PTR [rip+0xdcc83]        # 0x3eda78 ; CONFIG F.IngameCircleSize value(+0x48)
310df5  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
310dfd  e8 0a 45 00 00                 call   0x31530c
310e02  40 8a 3d ef 95 0d 00           mov    dil,BYTE PTR [rip+0xd95ef]        # 0x3ea3f8 ; CONFIG Bools.ShowIngameRadarDirection value(+0x48)
310e09  48 8d 4d 90                    lea    rcx,[rbp-0x70]
310e0d  f3 0f 10 70 04                 movss  xmm6,DWORD PTR [rax+0x4]
310e12  e8 f5 e9 fd ff                 call   0x2ef80c
310e17  f3 0f 10 95 c4 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1c4]
310e1f  48 8d 8d f0 0c 00 00           lea    rcx,[rbp+0xcf0]
310e26  f3 0f 10 8d c0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1c0]
310e2e  8b d8                          mov    ebx,eax
310e30  e8 0b b5 fb ff                 call   0x2cc340
310e35  f3 0f 11 74 24 28              movss  DWORD PTR [rsp+0x28],xmm6
310e3b  48 8b d0                       mov    rdx,rax
310e3e  44 8b cb                       mov    r9d,ebx
310e41  40 88 7c 24 20                 mov    BYTE PTR [rsp+0x20],dil
310e46  0f 28 d7                       movaps xmm2,xmm7
310e49  49 8b cd                       mov    rcx,r13
310e4c  e8 27 b7 04 00                 call   0x35c578
310e51  40 38 35 f0 95 0d 00           cmp    BYTE PTR [rip+0xd95f0],sil        # 0x3ea448 ; CONFIG Bools.ShowIngameRadarText value(+0x48)
310e58  74 7a                          je     0x310ed4
310e5a  f3 0f 10 95 c4 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1c4]
310e62  48 8d 8d f8 0c 00 00           lea    rcx,[rbp+0xcf8]
310e69  f3 0f 10 8d c0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1c0]
310e71  f3 0f 58 d7                    addss  xmm2,xmm7
310e75  0f 10 75 90                    movups xmm6,XMMWORD PTR [rbp-0x70]
310e79  f3 0f 58 15 0b 23 f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff8230b]        # 0x29318c ; f32=6.325
310e81  e8 ba b4 fb ff                 call   0x2cc340
310e86  f3 41 0f 2c d2                 cvttss2si edx,xmm10
310e8b  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310e92  48 8b d8                       mov    rbx,rax
310e95  e8 76 86 fc ff                 call   0x2d9510
310e9a  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
310e9e  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
310ea5  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
310ead  4c 8b cb                       mov    r9,rbx
310eb0  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
310eb5  4c 8b c0                       mov    r8,rax
310eb8  49 8b cd                       mov    rcx,r13
310ebb  66 0f 7f b5 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm6
310ec3  e8 94 04 05 00                 call   0x36135c
310ec8  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
310ecf  e8 20 b6 fb ff                 call   0x2cc4f4
310ed4  40 38 75 d4                    cmp    BYTE PTR [rbp-0x2c],sil
310ed8  0f 85 ed 0d 00 00              jne    0x311ccb
310ede  f3 0f 10 85 48 03 00 00        movss  xmm0,DWORD PTR [rbp+0x348]
310ee6  f3 0f 10 8d 4c 03 00 00        movss  xmm1,DWORD PTR [rbp+0x34c]
310eee  f3 0f 5c 8d c4 01 00 00        subss  xmm1,DWORD PTR [rbp+0x1c4]
310ef6  f3 0f 5c 85 c0 01 00 00        subss  xmm0,DWORD PTR [rbp+0x1c0]
310efe  f3 0f 59 ff                    mulss  xmm7,xmm7
310f02  f3 0f 59 c9                    mulss  xmm1,xmm1
310f06  f3 0f 59 c0                    mulss  xmm0,xmm0
310f0a  f3 0f 58 c8                    addss  xmm1,xmm0
310f0e  0f 2f f9                       comiss xmm7,xmm1
310f11  0f 82 b4 0d 00 00              jb     0x311ccb
310f17  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
310f1c  e8 03 84 05 00                 call   0x369324
310f21  48 8b c8                       mov    rcx,rax
310f24  48 8b d8                       mov    rbx,rax
310f27  e8 dc 9f fb ff                 call   0x2caf08
310f2c  84 c0                          test   al,al
310f2e  0f 84 97 0d 00 00              je     0x311ccb
310f34  48 8b cb                       mov    rcx,rbx
310f37  e8 8c 2e 06 00                 call   0x373dc8
310f3c  48 8b cb                       mov    rcx,rbx
310f3f  48 89 85 38 04 00 00           mov    QWORD PTR [rbp+0x438],rax
310f46  48 8b f8                       mov    rdi,rax
310f49  e8 d2 2e 06 00                 call   0x373e20
310f4e  48 8b cf                       mov    rcx,rdi
310f51  48 89 85 00 05 00 00           mov    QWORD PTR [rbp+0x500],rax
310f58  48 8b f0                       mov    rsi,rax
310f5b  e8 a8 9f fb ff                 call   0x2caf08
310f60  84 c0                          test   al,al
310f62  74 0c                          je     0x310f70
310f64  48 8b cf                       mov    rcx,rdi
310f67  e8 e0 12 06 00                 call   0x37224c
310f6c  8b d8                          mov    ebx,eax
310f6e  eb 02                          jmp    0x310f72
310f70  33 db                          xor    ebx,ebx
310f72  48 8b ce                       mov    rcx,rsi
310f75  89 9d fc 00 00 00              mov    DWORD PTR [rbp+0xfc],ebx
310f7b  e8 88 9f fb ff                 call   0x2caf08
310f80  84 c0                          test   al,al
310f82  74 0d                          je     0x310f91
310f84  48 8b ce                       mov    rcx,rsi
310f87  e8 c0 12 06 00                 call   0x37224c
310f8c  44 8b f8                       mov    r15d,eax
310f8f  eb 03                          jmp    0x310f94
310f91  45 33 ff                       xor    r15d,r15d
310f94  85 db                          test   ebx,ebx
310f96  7f 09                          jg     0x310fa1
310f98  45 85 ff                       test   r15d,r15d
310f9b  0f 8e 23 0d 00 00              jle    0x311cc4
310fa1  e8 f2 11 08 00                 call   0x392198
310fa6  f3 44 0f 10 05 39 ce 0d 00     movss  xmm8,DWORD PTR [rip+0xdce39]        # 0x3edde8 ; CONFIG F.IconSize value(+0x48)
310faf  4c 8b f0                       mov    r14,rax
310fb2  e8 39 fb fc ff                 call   0x2e0af0
310fb7  66 0f 6e f0                    movd   xmm6,eax
310fbb  0f 5b f6                       cvtdq2ps xmm6,xmm6
310fbe  e8 2d fa fc ff                 call   0x2e09f0
310fc3  48 8d 95 d7 0c 00 00           lea    rdx,[rbp+0xcd7]
310fca  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
310fcf  66 44 0f 6e c8                 movd   xmm9,eax
310fd4  45 0f 5b c9                    cvtdq2ps xmm9,xmm9
310fd8  e8 73 5a fe ff                 call   0x2f6a50 ; STRING getter=0x2f6a50 Hotbar
310fdd  48 8b c8                       mov    rcx,rax
310fe0  e8 0f cd fb ff                 call   0x2cdcf4
310fe5  48 8d 95 f0 0f 00 00           lea    rdx,[rbp+0xff0]
310fec  48 8b f8                       mov    rdi,rax
310fef  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
310ff4  e8 d3 5a fe ff                 call   0x2f6acc ; STRING getter=0x2f6acc Clothing
310ff9  48 8b c8                       mov    rcx,rax
310ffc  e8 8b 8b fd ff                 call   0x2e9b8c
311001  f3 0f 10 3d 57 22 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff82257]        # 0x293260 ; f32=-1
311009  48 8d 8d a8 03 00 00           lea    rcx,[rbp+0x3a8]
311010  45 33 c9                       xor    r9d,r9d
311013  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
311019  45 33 c0                       xor    r8d,r8d
31101c  48 89 85 f8 04 00 00           mov    QWORD PTR [rbp+0x4f8],rax
311023  48 8b d7                       mov    rdx,rdi
311026  e8 71 e7 07 00                 call   0x38f79c
31102b  48 8b 95 f8 04 00 00           mov    rdx,QWORD PTR [rbp+0x4f8]
311032  48 8d 8d b0 03 00 00           lea    rcx,[rbp+0x3b0]
311039  45 33 c9                       xor    r9d,r9d
31103c  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
311042  45 33 c0                       xor    r8d,r8d
311045  e8 52 e7 07 00                 call   0x38f79c
31104a  f3 0f 10 9d a8 03 00 00        movss  xmm3,DWORD PTR [rbp+0x3a8]
311052  41 3b df                       cmp    ebx,r15d
311055  f3 0f 5f 9d b0 03 00 00        maxss  xmm3,DWORD PTR [rbp+0x3b0]
31105d  f3 0f 10 25 b7 ca f7 ff        movss  xmm4,DWORD PTR [rip+0xfffffffffff7cab7]        # 0x28db1c ; f32=10
311065  41 8b d7                       mov    edx,r15d
311068  0f 4f d3                       cmovg  edx,ebx
31106b  33 c9                          xor    ecx,ecx
31106d  45 85 ff                       test   r15d,r15d
311070  0f 9f c1                       setg   cl
311073  33 c0                          xor    eax,eax
311075  85 db                          test   ebx,ebx
311077  0f 9f c0                       setg   al
31107a  44 8d 04 01                    lea    r8d,[rcx+rax*1]
31107e  85 d2                          test   edx,edx
311080  7e 26                          jle    0x3110a8
311082  0f 28 ce                       movaps xmm1,xmm6
311085  f3 0f 5c cc                    subss  xmm1,xmm4
311089  f3 0f 5c cb                    subss  xmm1,xmm3
31108d  41 0f 2f cb                    comiss xmm1,xmm11
311091  76 15                          jbe    0x3110a8
311093  66 0f 6e c2                    movd   xmm0,edx
311097  0f 5b c0                       cvtdq2ps xmm0,xmm0
31109a  f3 41 0f 59 c6                 mulss  xmm0,xmm14
31109f  f3 0f 5e c8                    divss  xmm1,xmm0
3110a3  f3 44 0f 5d c1                 minss  xmm8,xmm1
3110a8  45 85 c0                       test   r8d,r8d
3110ab  74 33                          je     0x3110e0
3110ad  41 0f 28 d1                    movaps xmm2,xmm9
3110b1  f3 0f 5c d4                    subss  xmm2,xmm4
3110b5  41 0f 2f d3                    comiss xmm2,xmm11
3110b9  76 25                          jbe    0x3110e0
3110bb  41 0f 28 c8                    movaps xmm1,xmm8
3110bf  66 41 0f 6e c0                 movd   xmm0,r8d
3110c4  f3 0f 59 0d 10 21 f8 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff82110]        # 0x2931dc ; f32=28
3110cc  0f 5b c0                       cvtdq2ps xmm0,xmm0
3110cf  f3 0f 58 cc                    addss  xmm1,xmm4
3110d3  f3 0f 59 c8                    mulss  xmm1,xmm0
3110d7  f3 0f 5e d1                    divss  xmm2,xmm1
3110db  f3 44 0f 5d c2                 minss  xmm8,xmm2
3110e0  45 0f 2f d8                    comiss xmm11,xmm8
3110e4  72 09                          jb     0x3110ef
3110e6  f3 44 0f 10 05 f5 c9 f7 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff7c9f5]        # 0x28dae4 ; f32=0.1
3110ef  45 0f 57 ff                    xorps  xmm15,xmm15
3110f3  0f 57 c0                       xorps  xmm0,xmm0
3110f6  f3 44 0f 2a fb                 cvtsi2ss xmm15,ebx
3110fb  f3 41 0f 2a c7                 cvtsi2ss xmm0,r15d
311100  41 0f 28 d0                    movaps xmm2,xmm8
311104  f3 41 0f 59 d6                 mulss  xmm2,xmm14
311109  45 0f 28 f0                    movaps xmm14,xmm8
31110d  f3 44 0f 59 35 c6 20 f8 ff     mulss  xmm14,DWORD PTR [rip+0xfffffffffff820c6]        # 0x2931dc ; f32=28
311116  f3 44 0f 59 fa                 mulss  xmm15,xmm2
31111b  f3 0f 59 c2                    mulss  xmm0,xmm2
31111f  41 0f 28 ce                    movaps xmm1,xmm14
311123  f3 0f 58 cc                    addss  xmm1,xmm4
311127  f3 0f 11 95 5c 01 00 00        movss  DWORD PTR [rbp+0x15c],xmm2
31112f  f3 44 0f 5f f8                 maxss  xmm15,xmm0
311134  f3 0f 11 8d f8 00 00 00        movss  DWORD PTR [rbp+0xf8],xmm1
31113c  44 0f 2f fb                    comiss xmm15,xmm3
311140  f3 44 0f 11 bd 04 01 00 00     movss  DWORD PTR [rbp+0x104],xmm15
311149  77 0d                          ja     0x311158
31114b  44 0f 28 fb                    movaps xmm15,xmm3
31114f  f3 44 0f 11 bd 04 01 00 00     movss  DWORD PTR [rbp+0x104],xmm15
311158  85 db                          test   ebx,ebx
31115a  7e 16                          jle    0x311172
31115c  f3 0f 10 85 ac 03 00 00        movss  xmm0,DWORD PTR [rbp+0x3ac]
311164  f3 0f 58 05 c8 1f f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff81fc8]        # 0x293134 ; f32=2
31116c  f3 0f 58 c1                    addss  xmm0,xmm1
311170  eb 03                          jmp    0x311175
311172  0f 57 c0                       xorps  xmm0,xmm0
311175  45 85 ff                       test   r15d,r15d
311178  7e 16                          jle    0x311190
31117a  f3 0f 10 95 b4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3b4]
311182  f3 0f 58 15 aa 1f f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff81faa]        # 0x293134 ; f32=2
31118a  f3 0f 58 d1                    addss  xmm2,xmm1
31118e  eb 03                          jmp    0x311193
311190  0f 57 d2                       xorps  xmm2,xmm2
311193  85 db                          test   ebx,ebx
311195  7e 14                          jle    0x3111ab
311197  45 85 ff                       test   r15d,r15d
31119a  7e 0f                          jle    0x3111ab
31119c  f3 44 0f 10 15 d3 1f f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff81fd3]        # 0x293178 ; f32=4
3111a5  41 0f 28 ca                    movaps xmm1,xmm10
3111a9  eb 0c                          jmp    0x3111b7
3111ab  f3 44 0f 10 15 c4 1f f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff81fc4]        # 0x293178 ; f32=4
3111b4  0f 57 c9                       xorps  xmm1,xmm1
3111b7  f3 0f 58 d0                    addss  xmm2,xmm0
3111bb  48 8d 8d f0 04 00 00           lea    rcx,[rbp+0x4f0]
3111c2  f3 0f 58 d1                    addss  xmm2,xmm1
3111c6  41 0f 28 cf                    movaps xmm1,xmm15
3111ca  f3 0f 58 cc                    addss  xmm1,xmm4
3111ce  f3 0f 58 d4                    addss  xmm2,xmm4
3111d2  e8 69 b1 fb ff                 call   0x2cc340
3111d7  f3 0f 10 05 c9 1f f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff81fc9]        # 0x2931a8 ; f32=12
3111df  48 8d 4d 48                    lea    rcx,[rbp+0x48]
3111e3  f3 0f 10 95 4c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x34c]
3111eb  f3 0f 10 8d 48 03 00 00        movss  xmm1,DWORD PTR [rbp+0x348]
3111f3  f3 0f 58 d0                    addss  xmm2,xmm0
3111f7  f3 0f 58 c8                    addss  xmm1,xmm0
3111fb  e8 40 b1 fb ff                 call   0x2cc340
311200  f3 0f 10 bd f0 04 00 00        movss  xmm7,DWORD PTR [rbp+0x4f0]
311208  f3 0f 10 5d 48                 movss  xmm3,DWORD PTR [rbp+0x48]
31120d  0f 28 c7                       movaps xmm0,xmm7
311210  f3 0f 58 c3                    addss  xmm0,xmm3
311214  0f 2f c6                       comiss xmm0,xmm6
311217  76 0c                          jbe    0x311225
311219  0f 28 de                       movaps xmm3,xmm6
31121c  f3 0f 5c df                    subss  xmm3,xmm7
311220  f3 0f 11 5d 48                 movss  DWORD PTR [rbp+0x48],xmm3
311225  f3 0f 10 b5 f4 04 00 00        movss  xmm6,DWORD PTR [rbp+0x4f4]
31122d  f3 0f 10 4d 4c                 movss  xmm1,DWORD PTR [rbp+0x4c]
311232  0f 28 c6                       movaps xmm0,xmm6
311235  f3 0f 58 c1                    addss  xmm0,xmm1
311239  41 0f 2f c1                    comiss xmm0,xmm9
31123d  76 0d                          jbe    0x31124c
31123f  41 0f 28 c9                    movaps xmm1,xmm9
311243  f3 0f 5c ce                    subss  xmm1,xmm6
311247  f3 0f 11 4d 4c                 movss  DWORD PTR [rbp+0x4c],xmm1
31124c  44 0f 2f db                    comiss xmm11,xmm3
311250  76 08                          jbe    0x31125a
311252  0f 57 db                       xorps  xmm3,xmm3
311255  f3 0f 11 5d 48                 movss  DWORD PTR [rbp+0x48],xmm3
31125a  44 0f 2f d9                    comiss xmm11,xmm1
31125e  76 08                          jbe    0x311268
311260  0f 57 c9                       xorps  xmm1,xmm1
311263  f3 0f 11 4d 4c                 movss  DWORD PTR [rbp+0x4c],xmm1
311268  0f 28 d6                       movaps xmm2,xmm6
31126b  48 8d 8d 00 0d 00 00           lea    rcx,[rbp+0xd00]
311272  f3 0f 58 d1                    addss  xmm2,xmm1
311276  0f 28 cf                       movaps xmm1,xmm7
311279  f3 0f 58 cb                    addss  xmm1,xmm3
31127d  e8 be b0 fb ff                 call   0x2cc340
311282  4c 8b c0                       mov    r8,rax
311285  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
31128d  41 b9 00 00 00 8c              mov    r9d,0x8c000000
311293  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
31129a  48 8d 55 48                    lea    rdx,[rbp+0x48]
31129e  49 8b ce                       mov    rcx,r14
3112a1  e8 9e ff 08 00                 call   0x3a1244
3112a6  f3 0f 58 75 4c                 addss  xmm6,DWORD PTR [rbp+0x4c]
3112ab  f3 0f 58 7d 48                 addss  xmm7,DWORD PTR [rbp+0x48]
3112b0  48 8d 8d 08 0d 00 00           lea    rcx,[rbp+0xd08]
3112b7  0f 28 d6                       movaps xmm2,xmm6
3112ba  0f 28 cf                       movaps xmm1,xmm7
3112bd  e8 7e b0 fb ff                 call   0x2cc340
3112c2  f3 44 0f 11 64 24 30           movss  DWORD PTR [rsp+0x30],xmm12
3112c9  48 8d 55 48                    lea    rdx,[rbp+0x48]
3112cd  4c 8b c0                       mov    r8,rax
3112d0  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
3112d8  41 b9 ff ff ff 24              mov    r9d,0x24ffffff
3112de  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
3112e5  49 8b ce                       mov    rcx,r14
3112e8  e8 5b fe 08 00                 call   0x3a1148
3112ed  f3 0f 10 05 8b 1e f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff81e8b]        # 0x293180 ; f32=5
3112f5  f3 0f 10 75 4c                 movss  xmm6,DWORD PTR [rbp+0x4c]
3112fa  f3 0f 58 f0                    addss  xmm6,xmm0
3112fe  85 db                          test   ebx,ebx
311300  0f 8e 2c 05 00 00              jle    0x311832
311306  f3 0f 10 4d 48                 movss  xmm1,DWORD PTR [rbp+0x48]
31130b  48 8d 8d 10 0d 00 00           lea    rcx,[rbp+0xd10]
311312  f3 0f 58 c8                    addss  xmm1,xmm0
311316  0f 28 d6                       movaps xmm2,xmm6
311319  e8 22 b0 fb ff                 call   0x2cc340
31131e  48 8b d0                       mov    rdx,rax
311321  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
31132a  4c 8b cf                       mov    r9,rdi
31132d  41 b8 96 be 9e f0              mov    r8d,0xf09ebe96
311333  49 8b ce                       mov    rcx,r14
311336  e8 81 1e 09 00                 call   0x3a31bc
31133b  f3 44 0f 10 8d ac 03 00 00     movss  xmm9,DWORD PTR [rbp+0x3ac]
311344  41 0f 28 c0                    movaps xmm0,xmm8
311348  f3 0f 59 05 7c 1e f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff81e7c]        # 0x2931cc ; f32=23
311350  45 33 e4                       xor    r12d,r12d
311353  4c 8b ad 38 04 00 00           mov    r13,QWORD PTR [rbp+0x438]
31135a  f3 44 0f 58 0d d1 1d f8 ff     addss  xmm9,DWORD PTR [rip+0xfffffffffff81dd1]        # 0x293134 ; f32=2
311363  f3 44 0f 10 bd 5c 01 00 00     movss  xmm15,DWORD PTR [rbp+0x15c]
31136c  f3 0f 11 85 58 01 00 00        movss  DWORD PTR [rbp+0x158],xmm0
311374  41 0f 28 c0                    movaps xmm0,xmm8
311378  f3 44 0f 10 ad 58 01 00 00     movss  xmm13,DWORD PTR [rbp+0x158]
311381  f3 41 0f 59 c2                 mulss  xmm0,xmm10
311386  f3 44 0f 58 ce                 addss  xmm9,xmm6
31138b  f3 44 0f 11 5d 64              movss  DWORD PTR [rbp+0x64],xmm11
311391  41 0f 28 f0                    movaps xmm6,xmm8
311395  f3 0f 59 35 bb 1d f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff81dbb]        # 0x293158 ; f32=3
31139d  f3 0f 11 85 40 04 00 00        movss  DWORD PTR [rbp+0x440],xmm0
3113a5  41 0f 28 f9                    movaps xmm7,xmm9
3113a9  f3 41 0f 58 fe                 addss  xmm7,xmm14
3113ae  f3 0f 11 b5 c8 02 00 00        movss  DWORD PTR [rbp+0x2c8],xmm6
3113b6  44 0f 28 d7                    movaps xmm10,xmm7
3113ba  f3 0f 11 bd d8 01 00 00        movss  DWORD PTR [rbp+0x1d8],xmm7
3113c2  f3 44 0f 5c 15 ad 1d f8 ff     subss  xmm10,DWORD PTR [rip+0xfffffffffff81dad]        # 0x293178 ; f32=4
3113cb  f3 44 0f 11 95 d4 01 00 00     movss  DWORD PTR [rbp+0x1d4],xmm10
3113d4  41 8b d4                       mov    edx,r12d
3113d7  49 8b cd                       mov    rcx,r13
3113da  e8 11 0f 06 00                 call   0x3722f0
3113df  48 8b c8                       mov    rcx,rax
3113e2  48 8b f8                       mov    rdi,rax
3113e5  e8 1e 9b fb ff                 call   0x2caf08
3113ea  84 c0                          test   al,al
3113ec  0f 84 8c 03 00 00              je     0x31177e
3113f2  ba 10 00 00 00                 mov    edx,0x10
3113f7  48 8b cf                       mov    rcx,rdi
3113fa  e8 3d da fc ff                 call   0x2dee3c
3113ff  48 8b 08                       mov    rcx,QWORD PTR [rax]
311402  e8 01 9b fb ff                 call   0x2caf08
311407  84 c0                          test   al,al
311409  0f 84 6f 03 00 00              je     0x31177e
31140f  48 8b cf                       mov    rcx,rdi
311412  e8 21 08 06 00                 call   0x371c38
311417  48 8b c8                       mov    rcx,rax
31141a  48 89 85 80 01 00 00           mov    QWORD PTR [rbp+0x180],rax
311421  e8 e2 9a fb ff                 call   0x2caf08
311426  84 c0                          test   al,al
311428  0f 84 50 03 00 00              je     0x31177e
31142e  48 8b cf                       mov    rcx,rdi
311431  e8 5e fe 05 00                 call   0x371294
311436  ba d8 00 00 00                 mov    edx,0xd8
31143b  89 85 38 04 00 00              mov    DWORD PTR [rbp+0x438],eax
311441  48 8b cf                       mov    rcx,rdi
311444  e8 f3 d9 fc ff                 call   0x2dee3c
311449  ba b4 00 00 00                 mov    edx,0xb4
31144e  48 8b cf                       mov    rcx,rdi
311451  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
311455  f3 0f 11 85 58 01 00 00        movss  DWORD PTR [rbp+0x158],xmm0
31145d  e8 da d9 fc ff                 call   0x2dee3c
311462  48 8b cf                       mov    rcx,rdi
311465  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
311469  f3 0f 11 85 8c 04 00 00        movss  DWORD PTR [rbp+0x48c],xmm0
311471  e8 0e 0d 06 00                 call   0x372184
311476  f3 44 0f 10 55 48              movss  xmm10,DWORD PTR [rbp+0x48]
31147c  48 8d 8d 18 0d 00 00           lea    rcx,[rbp+0xd18]
311483  f3 44 0f 58 15 f4 1c f8 ff     addss  xmm10,DWORD PTR [rip+0xfffffffffff81cf4]        # 0x293180 ; f32=5
31148c  0f 28 d7                       movaps xmm2,xmm7
31148f  40 8a f8                       mov    dil,al
311492  f3 44 0f 58 55 64              addss  xmm10,DWORD PTR [rbp+0x64]
311498  41 0f 28 ca                    movaps xmm1,xmm10
31149c  f3 41 0f 58 ce                 addss  xmm1,xmm14
3114a1  e8 9a ae fb ff                 call   0x2cc340
3114a6  41 0f 28 d1                    movaps xmm2,xmm9
3114aa  48 8d 8d 20 0d 00 00           lea    rcx,[rbp+0xd20]
3114b1  41 0f 28 ca                    movaps xmm1,xmm10
3114b5  48 8b d8                       mov    rbx,rax
3114b8  e8 83 ae fb ff                 call   0x2cc340
3114bd  48 8b d0                       mov    rdx,rax
3114c0  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
3114c8  41 b9 00 00 00 37              mov    r9d,0x37000000
3114ce  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3114d4  4c 8b c3                       mov    r8,rbx
3114d7  49 8b ce                       mov    rcx,r14
3114da  e8 65 fd 08 00                 call   0x3a1244
3114df  40 84 ff                       test   dil,dil
3114e2  0f 84 d9 00 00 00              je     0x3115c1
3114e8  f3 0f 10 85 58 01 00 00        movss  xmm0,DWORD PTR [rbp+0x158]
3114f0  41 0f 2f c3                    comiss xmm0,xmm11
3114f4  0f 86 c7 00 00 00              jbe    0x3115c1
3114fa  41 0f 28 f2                    movaps xmm6,xmm10
3114fe  48 8d 8d 28 0d 00 00           lea    rcx,[rbp+0xd28]
311505  f3 0f 58 b5 c8 02 00 00        addss  xmm6,DWORD PTR [rbp+0x2c8]
31150d  0f 28 d7                       movaps xmm2,xmm7
311510  0f 28 ce                       movaps xmm1,xmm6
311513  e8 28 ae fb ff                 call   0x2cc340
311518  41 0f 28 d1                    movaps xmm2,xmm9
31151c  48 8d 8d 30 0d 00 00           lea    rcx,[rbp+0xd30]
311523  41 0f 28 ca                    movaps xmm1,xmm10
311527  48 8b d8                       mov    rbx,rax
31152a  e8 11 ae fb ff                 call   0x2cc340
31152f  48 8b d0                       mov    rdx,rax
311532  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
31153a  41 b9 6e 87 42 4c              mov    r9d,0x4c42876e
311540  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
311547  4c 8b c3                       mov    r8,rbx
31154a  49 8b ce                       mov    rcx,r14
31154d  e8 f2 fc 08 00                 call   0x3a1244
311552  0f 28 d7                       movaps xmm2,xmm7
311555  48 8d 8d 38 0d 00 00           lea    rcx,[rbp+0xd38]
31155c  0f 28 ce                       movaps xmm1,xmm6
31155f  e8 dc ad fb ff                 call   0x2cc340
311564  f3 0f 10 85 8c 04 00 00        movss  xmm0,DWORD PTR [rbp+0x48c]
31156c  48 8d 8d 40 0d 00 00           lea    rcx,[rbp+0xd40]
311573  f3 0f 5e 85 58 01 00 00        divss  xmm0,DWORD PTR [rbp+0x158]
31157b  48 8b d8                       mov    rbx,rax
31157e  41 0f 28 d4                    movaps xmm2,xmm12
311582  41 0f 28 ca                    movaps xmm1,xmm10
311586  f3 41 0f 5d c4                 minss  xmm0,xmm12
31158b  f3 0f 5c d0                    subss  xmm2,xmm0
31158f  f3 41 0f 59 d6                 mulss  xmm2,xmm14
311594  f3 41 0f 58 d1                 addss  xmm2,xmm9
311599  e8 a2 ad fb ff                 call   0x2cc340
31159e  48 8b d0                       mov    rdx,rax
3115a1  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
3115a9  41 b9 6e 87 42 cc              mov    r9d,0xcc42876e
3115af  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
3115b6  4c 8b c3                       mov    r8,rbx
3115b9  49 8b ce                       mov    rcx,r14
3115bc  e8 83 fc 08 00                 call   0x3a1244
3115c1  41 0f 28 f9                    movaps xmm7,xmm9
3115c5  48 8d 8d 48 0d 00 00           lea    rcx,[rbp+0xd48]
3115cc  41 0f 28 f2                    movaps xmm6,xmm10
3115d0  f3 41 0f 58 f8                 addss  xmm7,xmm8
3115d5  f3 0f 58 b5 40 04 00 00        addss  xmm6,DWORD PTR [rbp+0x440]
3115dd  41 0f 28 d4                    movaps xmm2,xmm12
3115e1  41 0f 28 cc                    movaps xmm1,xmm12
3115e5  e8 56 ad fb ff                 call   0x2cc340
3115ea  0f 57 d2                       xorps  xmm2,xmm2
3115ed  48 8d 8d 50 0d 00 00           lea    rcx,[rbp+0xd50]
3115f4  0f 57 c9                       xorps  xmm1,xmm1
3115f7  48 8b f0                       mov    rsi,rax
3115fa  e8 41 ad fb ff                 call   0x2cc340
3115ff  0f 28 d7                       movaps xmm2,xmm7
311602  48 8d 8d 58 0d 00 00           lea    rcx,[rbp+0xd58]
311609  0f 28 ce                       movaps xmm1,xmm6
31160c  f3 41 0f 58 d5                 addss  xmm2,xmm13
311611  f3 41 0f 58 cd                 addss  xmm1,xmm13
311616  48 8b f8                       mov    rdi,rax
311619  e8 22 ad fb ff                 call   0x2cc340
31161e  0f 28 d7                       movaps xmm2,xmm7
311621  48 8d 8d 60 0d 00 00           lea    rcx,[rbp+0xd60]
311628  0f 28 ce                       movaps xmm1,xmm6
31162b  48 8b d8                       mov    rbx,rax
31162e  e8 0d ad fb ff                 call   0x2cc340
311633  48 8b 95 80 01 00 00           mov    rdx,QWORD PTR [rbp+0x180]
31163a  4c 8b c0                       mov    r8,rax
31163d  c7 44 24 30 ff ff ff ff        mov    DWORD PTR [rsp+0x30],0xffffffff
311645  4c 8b cb                       mov    r9,rbx
311648  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
31164d  49 8b ce                       mov    rcx,r14
311650  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
311655  e8 0e eb 08 00                 call   0x3a0168
31165a  8b 85 38 04 00 00              mov    eax,DWORD PTR [rbp+0x438]
311660  83 f8 01                       cmp    eax,0x1
311663  0f 8e f0 00 00 00              jle    0x311759
311669  8b d0                          mov    edx,eax
31166b  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311672  e8 99 7e fc ff                 call   0x2d9510
311677  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
31167e  e8 69 c1 fb ff                 call   0x2cd7ec
311683  f3 0f 10 05 d5 1b f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff81bd5]        # 0x293260 ; f32=-1
31168b  48 8d 8d c0 0b 00 00           lea    rcx,[rbp+0xbc0]
311692  48 8b d0                       mov    rdx,rax
311695  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
31169b  45 33 c9                       xor    r9d,r9d
31169e  45 33 c0                       xor    r8d,r8d
3116a1  e8 f6 e0 07 00                 call   0x38f79c
3116a6  f3 0f 10 bd d4 01 00 00        movss  xmm7,DWORD PTR [rbp+0x1d4]
3116ae  48 8d 8d 68 0d 00 00           lea    rcx,[rbp+0xd68]
3116b5  41 0f 28 f6                    movaps xmm6,xmm14
3116b9  0f 28 d7                       movaps xmm2,xmm7
3116bc  f3 0f 5c b5 c0 0b 00 00        subss  xmm6,DWORD PTR [rbp+0xbc0]
3116c4  f3 41 0f 58 d4                 addss  xmm2,xmm12
3116c9  f3 0f 59 35 7f bb f7 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff7bb7f]        # 0x28d250 ; f32=0.5
3116d1  f3 41 0f 58 f2                 addss  xmm6,xmm10
3116d6  0f 28 ce                       movaps xmm1,xmm6
3116d9  f3 41 0f 58 cc                 addss  xmm1,xmm12
3116de  e8 5d ac fb ff                 call   0x2cc340
3116e3  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
3116ea  48 8b d8                       mov    rbx,rax
3116ed  e8 fa c0 fb ff                 call   0x2cd7ec
3116f2  4c 8b c8                       mov    r9,rax
3116f5  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
3116fe  41 b8 00 00 00 b4              mov    r8d,0xb4000000
311704  48 8b d3                       mov    rdx,rbx
311707  49 8b ce                       mov    rcx,r14
31170a  e8 ad 1a 09 00                 call   0x3a31bc
31170f  0f 28 d7                       movaps xmm2,xmm7
311712  48 8d 8d 70 0d 00 00           lea    rcx,[rbp+0xd70]
311719  0f 28 ce                       movaps xmm1,xmm6
31171c  e8 1f ac fb ff                 call   0x2cc340
311721  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311728  48 8b d8                       mov    rbx,rax
31172b  e8 bc c0 fb ff                 call   0x2cd7ec
311730  4c 8b c8                       mov    r9,rax
311733  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
31173c  41 b8 ff ff ff eb              mov    r8d,0xebffffff
311742  48 8b d3                       mov    rdx,rbx
311745  49 8b ce                       mov    rcx,r14
311748  e8 6f 1a 09 00                 call   0x3a31bc
31174d  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311754  e8 9b ad fb ff                 call   0x2cc4f4
311759  f3 0f 10 45 64                 movss  xmm0,DWORD PTR [rbp+0x64]
31175e  f3 0f 10 bd d8 01 00 00        movss  xmm7,DWORD PTR [rbp+0x1d8]
311766  f3 41 0f 58 c7                 addss  xmm0,xmm15
31176b  f3 0f 10 b5 c8 02 00 00        movss  xmm6,DWORD PTR [rbp+0x2c8]
311773  8b 9d fc 00 00 00              mov    ebx,DWORD PTR [rbp+0xfc]
311779  f3 0f 11 45 64                 movss  DWORD PTR [rbp+0x64],xmm0
31177e  41 ff c4                       inc    r12d
311781  44 3b e3                       cmp    r12d,ebx
311784  0f 8c 4a fc ff ff              jl     0x3113d4
31178a  f3 44 0f 10 bd 04 01 00 00     movss  xmm15,DWORD PTR [rbp+0x104]
311793  f3 44 0f 58 8d f8 00 00 00     addss  xmm9,DWORD PTR [rbp+0xf8]
31179c  45 85 ff                       test   r15d,r15d
31179f  7e 69                          jle    0x31180a
3117a1  f3 0f 10 75 48                 movss  xmm6,DWORD PTR [rbp+0x48]
3117a6  48 8d 8d 78 0d 00 00           lea    rcx,[rbp+0xd78]
3117ad  f3 0f 58 35 cb 19 f8 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff819cb]        # 0x293180 ; f32=5
3117b5  41 0f 28 f9                    movaps xmm7,xmm9
3117b9  f3 0f 58 3d 73 19 f8 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff81973]        # 0x293134 ; f32=2
3117c1  0f 28 ce                       movaps xmm1,xmm6
3117c4  f3 41 0f 58 cf                 addss  xmm1,xmm15
3117c9  0f 28 d7                       movaps xmm2,xmm7
3117cc  e8 6f ab fb ff                 call   0x2cc340
3117d1  0f 28 d7                       movaps xmm2,xmm7
3117d4  48 8d 8d 80 0d 00 00           lea    rcx,[rbp+0xd80]
3117db  0f 28 ce                       movaps xmm1,xmm6
3117de  48 8b d8                       mov    rbx,rax
3117e1  e8 5a ab fb ff                 call   0x2cc340
3117e6  48 8b d0                       mov    rdx,rax
3117e9  f3 44 0f 11 64 24 20           movss  DWORD PTR [rsp+0x20],xmm12
3117f0  41 b9 ff ff ff 1a              mov    r9d,0x1affffff
3117f6  4c 8b c3                       mov    r8,rbx
3117f9  49 8b ce                       mov    rcx,r14
3117fc  e8 f3 e9 08 00                 call   0x3a01f4
311801  f3 44 0f 58 0d 6e 19 f8 ff     addss  xmm9,DWORD PTR [rip+0xfffffffffff8196e]        # 0x293178 ; f32=4
31180a  f3 44 0f 10 ad cc 02 00 00     movss  xmm13,DWORD PTR [rbp+0x2cc]
311813  f3 0f 10 05 65 19 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff81965]        # 0x293180 ; f32=5
31181b  4c 8b ad a0 15 00 00           mov    r13,QWORD PTR [rbp+0x15a0]
311822  4c 8b a5 08 05 00 00           mov    r12,QWORD PTR [rbp+0x508]
311829  48 8b b5 00 05 00 00           mov    rsi,QWORD PTR [rbp+0x500]
311830  eb 04                          jmp    0x311836
311832  44 0f 28 ce                    movaps xmm9,xmm6
311836  45 85 ff                       test   r15d,r15d
311839  0f 8e 6b 04 00 00              jle    0x311caa
31183f  f3 0f 10 4d 48                 movss  xmm1,DWORD PTR [rbp+0x48]
311844  48 8d 8d 88 0d 00 00           lea    rcx,[rbp+0xd88]
31184b  f3 0f 58 c8                    addss  xmm1,xmm0
31184f  41 0f 28 d1                    movaps xmm2,xmm9
311853  e8 e8 aa fb ff                 call   0x2cc340
311858  4c 8b 8d f8 04 00 00           mov    r9,QWORD PTR [rbp+0x4f8]
31185f  48 8b d0                       mov    rdx,rax
311862  41 b8 96 be 9e f0              mov    r8d,0xf09ebe96
311868  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
311871  49 8b ce                       mov    rcx,r14
311874  e8 43 19 09 00                 call   0x3a31bc
311879  f3 44 0f 10 95 b4 03 00 00     movss  xmm10,DWORD PTR [rbp+0x3b4]
311882  41 0f 28 c0                    movaps xmm0,xmm8
311886  f3 0f 59 05 3e 19 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8193e]        # 0x2931cc ; f32=23
31188e  41 0f 28 f0                    movaps xmm6,xmm8
311892  45 33 e4                       xor    r12d,r12d
311895  f3 44 0f 58 15 96 18 f8 ff     addss  xmm10,DWORD PTR [rip+0xfffffffffff81896]        # 0x293134 ; f32=2
31189e  f3 0f 10 0d d2 18 f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff818d2]        # 0x293178 ; f32=4
3118a6  f3 0f 59 35 aa 18 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff818aa]        # 0x293158 ; f32=3
3118ae  f3 0f 11 85 f8 00 00 00        movss  DWORD PTR [rbp+0xf8],xmm0
3118b6  41 0f 28 c0                    movaps xmm0,xmm8
3118ba  f3 44 0f 10 ad f8 00 00 00     movss  xmm13,DWORD PTR [rbp+0xf8]
3118c3  f3 45 0f 58 d1                 addss  xmm10,xmm9
3118c8  f3 0f 59 c1                    mulss  xmm0,xmm1
3118cc  f3 44 0f 11 5d 64              movss  DWORD PTR [rbp+0x64],xmm11
3118d2  f3 0f 11 b5 fc 00 00 00        movss  DWORD PTR [rbp+0xfc],xmm6
3118da  45 0f 28 fa                    movaps xmm15,xmm10
3118de  f3 0f 11 85 d8 01 00 00        movss  DWORD PTR [rbp+0x1d8],xmm0
3118e6  f3 45 0f 58 fe                 addss  xmm15,xmm14
3118eb  41 0f 28 ff                    movaps xmm7,xmm15
3118ef  f3 0f 5c f9                    subss  xmm7,xmm1
3118f3  f3 0f 11 bd d4 01 00 00        movss  DWORD PTR [rbp+0x1d4],xmm7
3118fb  41 8b d4                       mov    edx,r12d
3118fe  48 8b ce                       mov    rcx,rsi
311901  e8 ea 09 06 00                 call   0x3722f0
311906  48 8b c8                       mov    rcx,rax
311909  48 8b d8                       mov    rbx,rax
31190c  e8 f7 95 fb ff                 call   0x2caf08
311911  84 c0                          test   al,al
311913  0f 84 75 03 00 00              je     0x311c8e
311919  ba 10 00 00 00                 mov    edx,0x10
31191e  48 8b cb                       mov    rcx,rbx
311921  e8 16 d5 fc ff                 call   0x2dee3c
311926  48 8b 08                       mov    rcx,QWORD PTR [rax]
311929  e8 da 95 fb ff                 call   0x2caf08
31192e  84 c0                          test   al,al
311930  0f 84 58 03 00 00              je     0x311c8e
311936  48 8b cb                       mov    rcx,rbx
311939  e8 fa 02 06 00                 call   0x371c38
31193e  48 8b c8                       mov    rcx,rax
311941  48 89 85 80 01 00 00           mov    QWORD PTR [rbp+0x180],rax
311948  e8 bb 95 fb ff                 call   0x2caf08
31194d  84 c0                          test   al,al
31194f  0f 84 39 03 00 00              je     0x311c8e
311955  48 8b cb                       mov    rcx,rbx
311958  e8 37 f9 05 00                 call   0x371294
31195d  ba d8 00 00 00                 mov    edx,0xd8
311962  89 85 f8 00 00 00              mov    DWORD PTR [rbp+0xf8],eax
311968  48 8b cb                       mov    rcx,rbx
31196b  e8 cc d4 fc ff                 call   0x2dee3c
311970  ba b4 00 00 00                 mov    edx,0xb4
311975  48 8b cb                       mov    rcx,rbx
311978  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
31197c  f3 0f 11 85 04 01 00 00        movss  DWORD PTR [rbp+0x104],xmm0
311984  e8 b3 d4 fc ff                 call   0x2dee3c
311989  48 8b cb                       mov    rcx,rbx
31198c  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
311990  e8 ef 07 06 00                 call   0x372184
311995  f3 44 0f 10 4d 48              movss  xmm9,DWORD PTR [rbp+0x48]
31199b  48 8d 8d 90 0d 00 00           lea    rcx,[rbp+0xd90]
3119a2  f3 44 0f 58 0d d5 17 f8 ff     addss  xmm9,DWORD PTR [rip+0xfffffffffff817d5]        # 0x293180 ; f32=5
3119ab  41 0f 28 d7                    movaps xmm2,xmm15
3119af  40 8a f8                       mov    dil,al
3119b2  f3 44 0f 58 4d 64              addss  xmm9,DWORD PTR [rbp+0x64]
3119b8  41 0f 28 c9                    movaps xmm1,xmm9
3119bc  f3 41 0f 58 ce                 addss  xmm1,xmm14
3119c1  e8 7a a9 fb ff                 call   0x2cc340
3119c6  41 0f 28 d2                    movaps xmm2,xmm10
3119ca  48 8d 8d 98 0d 00 00           lea    rcx,[rbp+0xd98]
3119d1  41 0f 28 c9                    movaps xmm1,xmm9
3119d5  48 8b d8                       mov    rbx,rax
3119d8  e8 63 a9 fb ff                 call   0x2cc340
3119dd  33 f6                          xor    esi,esi
3119df  48 8b d0                       mov    rdx,rax
3119e2  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
3119e6  41 b9 00 00 00 37              mov    r9d,0x37000000
3119ec  4c 8b c3                       mov    r8,rbx
3119ef  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3119f5  49 8b ce                       mov    rcx,r14
3119f8  e8 47 f8 08 00                 call   0x3a1244
3119fd  40 84 ff                       test   dil,dil
311a00  0f 84 cb 00 00 00              je     0x311ad1
311a06  f3 0f 10 85 04 01 00 00        movss  xmm0,DWORD PTR [rbp+0x104]
311a0e  41 0f 2f c3                    comiss xmm0,xmm11
311a12  0f 86 b9 00 00 00              jbe    0x311ad1
311a18  41 0f 28 f1                    movaps xmm6,xmm9
311a1c  48 8d 8d a0 0d 00 00           lea    rcx,[rbp+0xda0]
311a23  f3 0f 58 b5 fc 00 00 00        addss  xmm6,DWORD PTR [rbp+0xfc]
311a2b  41 0f 28 d7                    movaps xmm2,xmm15
311a2f  0f 28 ce                       movaps xmm1,xmm6
311a32  e8 09 a9 fb ff                 call   0x2cc340
311a37  41 0f 28 d2                    movaps xmm2,xmm10
311a3b  48 8d 8d a8 0d 00 00           lea    rcx,[rbp+0xda8]
311a42  41 0f 28 c9                    movaps xmm1,xmm9
311a46  48 8b d8                       mov    rbx,rax
311a49  e8 f2 a8 fb ff                 call   0x2cc340
311a4e  48 8b d0                       mov    rdx,rax
311a51  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
311a55  41 b9 6e 87 42 4c              mov    r9d,0x4c42876e
311a5b  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
311a62  4c 8b c3                       mov    r8,rbx
311a65  49 8b ce                       mov    rcx,r14
311a68  e8 d7 f7 08 00                 call   0x3a1244
311a6d  41 0f 28 d7                    movaps xmm2,xmm15
311a71  48 8d 8d b0 0d 00 00           lea    rcx,[rbp+0xdb0]
311a78  0f 28 ce                       movaps xmm1,xmm6
311a7b  e8 c0 a8 fb ff                 call   0x2cc340
311a80  f3 0f 5e bd 04 01 00 00        divss  xmm7,DWORD PTR [rbp+0x104]
311a88  48 8d 8d b8 0d 00 00           lea    rcx,[rbp+0xdb8]
311a8f  48 8b d8                       mov    rbx,rax
311a92  41 0f 28 d4                    movaps xmm2,xmm12
311a96  41 0f 28 c9                    movaps xmm1,xmm9
311a9a  f3 41 0f 5d fc                 minss  xmm7,xmm12
311a9f  f3 0f 5c d7                    subss  xmm2,xmm7
311aa3  f3 41 0f 59 d6                 mulss  xmm2,xmm14
311aa8  f3 41 0f 58 d2                 addss  xmm2,xmm10
311aad  e8 8e a8 fb ff                 call   0x2cc340
311ab2  48 8b d0                       mov    rdx,rax
311ab5  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
311ab9  41 b9 6e 87 42 cc              mov    r9d,0xcc42876e
311abf  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
311ac6  4c 8b c3                       mov    r8,rbx
311ac9  49 8b ce                       mov    rcx,r14
311acc  e8 73 f7 08 00                 call   0x3a1244
311ad1  f3 0f 10 b5 d8 01 00 00        movss  xmm6,DWORD PTR [rbp+0x1d8]
311ad9  48 8d 8d c0 0d 00 00           lea    rcx,[rbp+0xdc0]
311ae0  41 0f 28 fa                    movaps xmm7,xmm10
311ae4  f3 41 0f 58 f1                 addss  xmm6,xmm9
311ae9  41 0f 28 d4                    movaps xmm2,xmm12
311aed  f3 41 0f 58 f8                 addss  xmm7,xmm8
311af2  41 0f 28 cc                    movaps xmm1,xmm12
311af6  e8 45 a8 fb ff                 call   0x2cc340
311afb  0f 57 d2                       xorps  xmm2,xmm2
311afe  48 8d 8d c8 0d 00 00           lea    rcx,[rbp+0xdc8]
311b05  0f 57 c9                       xorps  xmm1,xmm1
311b08  48 8b f0                       mov    rsi,rax
311b0b  e8 30 a8 fb ff                 call   0x2cc340
311b10  0f 28 d7                       movaps xmm2,xmm7
311b13  48 8d 8d d0 0d 00 00           lea    rcx,[rbp+0xdd0]
311b1a  0f 28 ce                       movaps xmm1,xmm6
311b1d  f3 41 0f 58 d5                 addss  xmm2,xmm13
311b22  f3 41 0f 58 cd                 addss  xmm1,xmm13
311b27  48 8b f8                       mov    rdi,rax
311b2a  e8 11 a8 fb ff                 call   0x2cc340
311b2f  0f 28 d7                       movaps xmm2,xmm7
311b32  48 8d 8d d8 0d 00 00           lea    rcx,[rbp+0xdd8]
311b39  0f 28 ce                       movaps xmm1,xmm6
311b3c  48 8b d8                       mov    rbx,rax
311b3f  e8 fc a7 fb ff                 call   0x2cc340
311b44  48 8b 95 80 01 00 00           mov    rdx,QWORD PTR [rbp+0x180]
311b4b  4c 8b c0                       mov    r8,rax
311b4e  c7 44 24 30 ff ff ff ff        mov    DWORD PTR [rsp+0x30],0xffffffff
311b56  4c 8b cb                       mov    r9,rbx
311b59  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
311b5e  49 8b ce                       mov    rcx,r14
311b61  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
311b66  e8 fd e5 08 00                 call   0x3a0168
311b6b  8b 85 f8 00 00 00              mov    eax,DWORD PTR [rbp+0xf8]
311b71  83 f8 01                       cmp    eax,0x1
311b74  0f 8e f0 00 00 00              jle    0x311c6a
311b7a  8b d0                          mov    edx,eax
311b7c  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311b83  e8 88 79 fc ff                 call   0x2d9510
311b88  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311b8f  e8 58 bc fb ff                 call   0x2cd7ec
311b94  f3 0f 10 05 c4 16 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff816c4]        # 0x293260 ; f32=-1
311b9c  48 8d 8d c8 0b 00 00           lea    rcx,[rbp+0xbc8]
311ba3  48 8b d0                       mov    rdx,rax
311ba6  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
311bac  45 33 c9                       xor    r9d,r9d
311baf  45 33 c0                       xor    r8d,r8d
311bb2  e8 e5 db 07 00                 call   0x38f79c
311bb7  f3 0f 10 bd d4 01 00 00        movss  xmm7,DWORD PTR [rbp+0x1d4]
311bbf  48 8d 8d e0 0d 00 00           lea    rcx,[rbp+0xde0]
311bc6  41 0f 28 f6                    movaps xmm6,xmm14
311bca  0f 28 d7                       movaps xmm2,xmm7
311bcd  f3 0f 5c b5 c8 0b 00 00        subss  xmm6,DWORD PTR [rbp+0xbc8]
311bd5  f3 41 0f 58 d4                 addss  xmm2,xmm12
311bda  f3 0f 59 35 6e b6 f7 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff7b66e]        # 0x28d250 ; f32=0.5
311be2  f3 41 0f 58 f1                 addss  xmm6,xmm9
311be7  0f 28 ce                       movaps xmm1,xmm6
311bea  f3 41 0f 58 cc                 addss  xmm1,xmm12
311bef  e8 4c a7 fb ff                 call   0x2cc340
311bf4  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311bfb  48 8b d8                       mov    rbx,rax
311bfe  e8 e9 bb fb ff                 call   0x2cd7ec
311c03  4c 8b c8                       mov    r9,rax
311c06  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
311c0f  41 b8 00 00 00 b4              mov    r8d,0xb4000000
311c15  48 8b d3                       mov    rdx,rbx
311c18  49 8b ce                       mov    rcx,r14
311c1b  e8 9c 15 09 00                 call   0x3a31bc
311c20  0f 28 d7                       movaps xmm2,xmm7
311c23  48 8d 8d e8 0d 00 00           lea    rcx,[rbp+0xde8]
311c2a  0f 28 ce                       movaps xmm1,xmm6
311c2d  e8 0e a7 fb ff                 call   0x2cc340
311c32  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311c39  48 8b d8                       mov    rbx,rax
311c3c  e8 ab bb fb ff                 call   0x2cd7ec
311c41  4c 8b c8                       mov    r9,rax
311c44  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
311c4d  41 b8 ff ff ff eb              mov    r8d,0xebffffff
311c53  48 8b d3                       mov    rdx,rbx
311c56  49 8b ce                       mov    rcx,r14
311c59  e8 5e 15 09 00                 call   0x3a31bc
311c5e  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
311c65  e8 8a a8 fb ff                 call   0x2cc4f4
311c6a  f3 44 0f 10 4d 64              movss  xmm9,DWORD PTR [rbp+0x64]
311c70  f3 44 0f 58 8d 5c 01 00 00     addss  xmm9,DWORD PTR [rbp+0x15c]
311c79  f3 0f 10 b5 fc 00 00 00        movss  xmm6,DWORD PTR [rbp+0xfc]
311c81  48 8b b5 00 05 00 00           mov    rsi,QWORD PTR [rbp+0x500]
311c88  f3 44 0f 11 4d 64              movss  DWORD PTR [rbp+0x64],xmm9
311c8e  41 ff c4                       inc    r12d
311c91  45 3b e7                       cmp    r12d,r15d
311c94  0f 8c 61 fc ff ff              jl     0x3118fb
311c9a  f3 44 0f 10 ad cc 02 00 00     movss  xmm13,DWORD PTR [rbp+0x2cc]
311ca3  4c 8b a5 08 05 00 00           mov    r12,QWORD PTR [rbp+0x508]
311caa  f3 44 0f 10 95 4c 04 00 00     movss  xmm10,DWORD PTR [rbp+0x44c]
311cb3  f3 44 0f 10 85 28 04 00 00     movss  xmm8,DWORD PTR [rbp+0x428]
311cbc  44 8b 75 d0                    mov    r14d,DWORD PTR [rbp-0x30]
311cc0  c6 45 d4 01                    mov    BYTE PTR [rbp-0x2c],0x1
311cc4  44 8a 7c 24 62                 mov    r15b,BYTE PTR [rsp+0x62]
311cc9  33 f6                          xor    esi,esi
311ccb  8a 9d b0 15 00 00              mov    bl,BYTE PTR [rbp+0x15b0]
311cd1  40 8a bd a8 15 00 00           mov    dil,BYTE PTR [rbp+0x15a8]
311cd8  48 8d 8d e8 12 00 00           lea    rcx,[rbp+0x12e8]
311cdf  e8 10 a8 fb ff                 call   0x2cc4f4
311ce4  40 38 35 4d 51 0d 00           cmp    BYTE PTR [rip+0xd514d],sil        # 0x3e6e38 ; CONFIG Bools.DisableESPMap value(+0x48)
311ceb  74 0d                          je     0x311cfa
311ced  e8 92 3e 00 00                 call   0x315b84
311cf2  84 c0                          test   al,al
311cf4  0f 85 6d 24 00 00              jne    0x314167
311cfa  40 38 35 37 88 0d 00           cmp    BYTE PTR [rip+0xd8837],sil        # 0x3ea538 ; CONFIG Bools.enemystuff value(+0x48)
311d01  0f 84 94 02 00 00              je     0x311f9b
311d07  40 8a c7                       mov    al,dil
311d0a  41 8a cf                       mov    cl,r15b
311d0d  40 8a bd b8 15 00 00           mov    dil,BYTE PTR [rbp+0x15b8]
311d14  0a cb                          or     cl,bl
311d16  40 0a c7                       or     al,dil
311d19  0a c8                          or     cl,al
311d1b  0f 85 81 02 00 00              jne    0x311fa2
311d21  48 8d 8d 10 05 00 00           lea    rcx,[rbp+0x510]
311d28  e8 77 96 fb ff                 call   0x2cb3a4
311d2d  f2 0f 10 45 a0                 movsd  xmm0,QWORD PTR [rbp-0x60]
311d32  4c 8d 0d 6f 55 0c 00           lea    r9,[rip+0xc556f]        # 0x3d72a8
311d39  8b 45 a8                       mov    eax,DWORD PTR [rbp-0x58]
311d3c  4c 8d 85 10 05 00 00           lea    r8,[rbp+0x510]
311d43  48 8d 95 80 09 00 00           lea    rdx,[rbp+0x980]
311d4a  f2 0f 11 85 80 09 00 00        movsd  QWORD PTR [rbp+0x980],xmm0
311d52  49 8b cc                       mov    rcx,r12
311d55  89 85 88 09 00 00              mov    DWORD PTR [rbp+0x988],eax
311d5b  e8 c0 af 05 00                 call   0x36cd20
311d60  48 8b 8d 10 05 00 00           mov    rcx,QWORD PTR [rbp+0x510]
311d67  8a d8                          mov    bl,al
311d69  e8 c2 53 00 00                 call   0x317130
311d6e  84 c0                          test   al,al
311d70  74 08                          je     0x311d7a
311d72  84 db                          test   bl,bl
311d74  0f 85 28 02 00 00              jne    0x311fa2
311d7a  0f 10 85 00 0c 00 00           movups xmm0,XMMWORD PTR [rbp+0xc00]
311d81  f3 0f 10 8d 50 01 00 00        movss  xmm1,DWORD PTR [rbp+0x150]
311d89  f3 0f 5c 4d a8                 subss  xmm1,DWORD PTR [rbp-0x58]
311d8e  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
311d96  f3 0f 10 85 48 01 00 00        movss  xmm0,DWORD PTR [rbp+0x148]
311d9e  f3 0f 5c 45 a0                 subss  xmm0,DWORD PTR [rbp-0x60]
311da3  e8 7c 8b 00 00                 call   0x31a924
311da8  0f 28 f0                       movaps xmm6,xmm0
311dab  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
311db2  f3 0f 59 35 3e 14 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff8143e]        # 0x2931f8 ; f32=57.2958
311dba  48 8d 8d f8 10 00 00           lea    rcx,[rbp+0x10f8]
311dc1  f3 0f 5c 35 63 14 f8 ff        subss  xmm6,DWORD PTR [rip+0xfffffffffff81463]        # 0x29322c ; f32=180
311dc9  e8 3e 35 00 00                 call   0x31530c
311dce  f3 0f 5c 70 04                 subss  xmm6,DWORD PTR [rax+0x4]
311dd3  e8 18 ec fc ff                 call   0x2e09f0
311dd8  99                             cdq
311dd9  2b c2                          sub    eax,edx
311ddb  d1 f8                          sar    eax,1
311ddd  8b d8                          mov    ebx,eax
311ddf  e8 0c ed fc ff                 call   0x2e0af0
311de4  f3 44 0f 10 0d 93 13 f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff81393]        # 0x293180 ; f32=5
311ded  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
311df4  99                             cdq
311df5  c7 44 24 28 96 00 00 00        mov    DWORD PTR [rsp+0x28],0x96
311dfd  2b c2                          sub    eax,edx
311dff  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
311e03  d1 f8                          sar    eax,1
311e05  41 0f 28 d1                    movaps xmm2,xmm9
311e09  44 8b c8                       mov    r9d,eax
311e0c  0f 28 ce                       movaps xmm1,xmm6
311e0f  e8 58 7a fe ff                 call   0x2f986c
311e14  e8 d7 eb fc ff                 call   0x2e09f0
311e19  99                             cdq
311e1a  2b c2                          sub    eax,edx
311e1c  d1 f8                          sar    eax,1
311e1e  8b d8                          mov    ebx,eax
311e20  e8 cb ec fc ff                 call   0x2e0af0
311e25  f3 0f 10 3d 07 13 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff81307]        # 0x293134 ; f32=2
311e2d  48 8d 8d 40 03 00 00           lea    rcx,[rbp+0x340]
311e34  99                             cdq
311e35  c7 44 24 28 8c 00 00 00        mov    DWORD PTR [rsp+0x28],0x8c
311e3d  0f 28 ce                       movaps xmm1,xmm6
311e40  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
311e44  2b c2                          sub    eax,edx
311e46  f3 0f 58 cf                    addss  xmm1,xmm7
311e4a  d1 f8                          sar    eax,1
311e4c  41 0f 28 d1                    movaps xmm2,xmm9
311e50  44 8b c8                       mov    r9d,eax
311e53  e8 14 7a fe ff                 call   0x2f986c
311e58  e8 93 eb fc ff                 call   0x2e09f0
311e5d  99                             cdq
311e5e  2b c2                          sub    eax,edx
311e60  d1 f8                          sar    eax,1
311e62  8b d8                          mov    ebx,eax
311e64  e8 87 ec fc ff                 call   0x2e0af0
311e69  99                             cdq
311e6a  c7 44 24 28 8c 00 00 00        mov    DWORD PTR [rsp+0x28],0x8c
311e72  f3 0f 5c f7                    subss  xmm6,xmm7
311e76  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
311e7a  2b c2                          sub    eax,edx
311e7c  48 8d 8d 50 03 00 00           lea    rcx,[rbp+0x350]
311e83  d1 f8                          sar    eax,1
311e85  41 0f 28 d1                    movaps xmm2,xmm9
311e89  44 8b c8                       mov    r9d,eax
311e8c  0f 28 ce                       movaps xmm1,xmm6
311e8f  e8 d8 79 fe ff                 call   0x2f986c
311e94  8b 05 fe c8 0d 00              mov    eax,DWORD PTR [rip+0xdc8fe]        # 0x3ee798 ; CONFIG i.OOFType value(+0x48)
311e9a  85 c0                          test   eax,eax
311e9c  75 78                          jne    0x311f16
311e9e  f3 0f 10 05 b2 12 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff812b2]        # 0x293158 ; f32=3
311ea6  48 8d 4d 90                    lea    rcx,[rbp-0x70]
311eaa  f3 0f 10 bd 40 03 00 00        movss  xmm7,DWORD PTR [rbp+0x340]
311eb2  f3 0f 58 bd d0 00 00 00        addss  xmm7,DWORD PTR [rbp+0xd0]
311eba  f3 0f 10 b5 44 03 00 00        movss  xmm6,DWORD PTR [rbp+0x344]
311ec2  f3 0f 58 b5 d4 00 00 00        addss  xmm6,DWORD PTR [rbp+0xd4]
311eca  f3 0f 58 bd 50 03 00 00        addss  xmm7,DWORD PTR [rbp+0x350]
311ed2  f3 0f 58 b5 54 03 00 00        addss  xmm6,DWORD PTR [rbp+0x354]
311eda  f3 0f 5e f8                    divss  xmm7,xmm0
311ede  f3 0f 5e f0                    divss  xmm6,xmm0
311ee2  e8 25 d9 fd ff                 call   0x2ef80c
311ee7  48 8d 8d f0 0d 00 00           lea    rcx,[rbp+0xdf0]
311eee  8b d8                          mov    ebx,eax
311ef0  0f 28 d6                       movaps xmm2,xmm6
311ef3  0f 28 cf                       movaps xmm1,xmm7
311ef6  e8 45 a4 fb ff                 call   0x2cc340
311efb  f3 0f 10 15 55 b8 0d 00        movss  xmm2,DWORD PTR [rip+0xdb855]        # 0x3ed758 ; CONFIG F.OOFSize value(+0x48)
311f03  48 8b d0                       mov    rdx,rax
311f06  44 8b cb                       mov    r9d,ebx
311f09  49 8b cd                       mov    rcx,r13
311f0c  e8 2b 91 04 00                 call   0x35b03c
311f11  e9 8c 00 00 00                 jmp    0x311fa2
311f16  83 f8 01                       cmp    eax,0x1
311f19  0f 85 83 00 00 00              jne    0x311fa2
311f1f  48 8d 4d 90                    lea    rcx,[rbp-0x70]
311f23  e8 e4 d8 fd ff                 call   0x2ef80c
311f28  f3 0f 10 95 54 03 00 00        movss  xmm2,DWORD PTR [rbp+0x354]
311f30  48 8d 8d f8 0d 00 00           lea    rcx,[rbp+0xdf8]
311f37  f3 0f 10 8d 50 03 00 00        movss  xmm1,DWORD PTR [rbp+0x350]
311f3f  8b f0                          mov    esi,eax
311f41  e8 fa a3 fb ff                 call   0x2cc340
311f46  f3 0f 10 95 44 03 00 00        movss  xmm2,DWORD PTR [rbp+0x344]
311f4e  48 8d 8d 00 0e 00 00           lea    rcx,[rbp+0xe00]
311f55  f3 0f 10 8d 40 03 00 00        movss  xmm1,DWORD PTR [rbp+0x340]
311f5d  48 8b f8                       mov    rdi,rax
311f60  e8 db a3 fb ff                 call   0x2cc340
311f65  f3 0f 10 95 d4 00 00 00        movss  xmm2,DWORD PTR [rbp+0xd4]
311f6d  48 8d 8d 08 0e 00 00           lea    rcx,[rbp+0xe08]
311f74  f3 0f 10 8d d0 00 00 00        movss  xmm1,DWORD PTR [rbp+0xd0]
311f7c  48 8b d8                       mov    rbx,rax
311f7f  e8 bc a3 fb ff                 call   0x2cc340
311f84  48 8b d0                       mov    rdx,rax
311f87  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
311f8b  4c 8b cf                       mov    r9,rdi
311f8e  4c 8b c3                       mov    r8,rbx
311f91  49 8b cd                       mov    rcx,r13
311f94  e8 f3 a8 04 00                 call   0x35c88c
311f99  33 f6                          xor    esi,esi
311f9b  40 8a bd b8 15 00 00           mov    dil,BYTE PTR [rbp+0x15b8]
311fa2  40 38 35 8f 80 0d 00           cmp    BYTE PTR [rip+0xd808f],sil        # 0x3ea038 ; CONFIG Bools.radar value(+0x48)
311fa9  0f 84 be 03 00 00              je     0x31236d
311faf  45 84 ff                       test   r15b,r15b
311fb2  74 13                          je     0x311fc7
311fb4  f3 44 0f 10 0d fb bb 0d 00     movss  xmm9,DWORD PTR [rip+0xdbbfb]        # 0x3edbb8 ; CONFIG F.NPCDirectionWidth value(+0x48)
311fbd  f3 0f 10 1d 53 bb 0d 00        movss  xmm3,DWORD PTR [rip+0xdbb53]        # 0x3edb18 ; CONFIG F.NPCDirectionLength value(+0x48)
311fc5  eb 11                          jmp    0x311fd8
311fc7  f3 0f 10 1d 99 bb 0d 00        movss  xmm3,DWORD PTR [rip+0xdbb99]        # 0x3edb68 ; CONFIG F.PlayerDirectionLength value(+0x48)
311fcf  f3 44 0f 10 0d 30 bc 0d 00     movss  xmm9,DWORD PTR [rip+0xdbc30]        # 0x3edc08 ; CONFIG F.PlayerDirectionWidth value(+0x48)
311fd8  40 38 35 a9 80 0d 00           cmp    BYTE PTR [rip+0xd80a9],sil        # 0x3ea088 ; CONFIG Bools.DrawScientist value(+0x48)
311fdf  74 05                          je     0x311fe6
311fe1  45 84 ff                       test   r15b,r15b
311fe4  75 09                          jne    0x311fef
311fe6  45 84 ff                       test   r15b,r15b
311fe9  0f 85 7e 03 00 00              jne    0x31236d
311fef  0f 57 d2                       xorps  xmm2,xmm2
311ff2  48 8d 4d 68                    lea    rcx,[rbp+0x68]
311ff6  0f 57 c9                       xorps  xmm1,xmm1
311ff9  e8 aa 5b 0b 00                 call   0x3c7ba8
311ffe  f3 0f 10 95 50 01 00 00        movss  xmm2,DWORD PTR [rbp+0x150]
312006  48 8d 8d 28 05 00 00           lea    rcx,[rbp+0x528]
31200d  f3 0f 10 8d 48 01 00 00        movss  xmm1,DWORD PTR [rbp+0x148]
312015  e8 26 a3 fb ff                 call   0x2cc340
31201a  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
31201f  48 8d 55 68                    lea    rdx,[rbp+0x68]
312023  48 8d 8d 04 11 00 00           lea    rcx,[rbp+0x1104]
31202a  e8 85 ed 00 00                 call   0x320db4
31202f  4c 8b c0                       mov    r8,rax
312032  48 8d 95 90 09 00 00           lea    rdx,[rbp+0x990]
312039  48 8d 4d a0                    lea    rcx,[rbp-0x60]
31203d  e8 c6 d6 fc ff                 call   0x2df708
312042  f3 0f 10 95 98 09 00 00        movss  xmm2,DWORD PTR [rbp+0x998]
31204a  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
312051  f3 0f 10 8d 90 09 00 00        movss  xmm1,DWORD PTR [rbp+0x990]
312059  e8 e2 a2 fb ff                 call   0x2cc340
31205e  f3 0f 10 55 a8                 movss  xmm2,DWORD PTR [rbp-0x58]
312063  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
31206a  f3 0f 10 4d a0                 movss  xmm1,DWORD PTR [rbp-0x60]
31206f  e8 cc a2 fb ff                 call   0x2cc340
312074  4c 8d 85 c0 00 00 00           lea    r8,[rbp+0xc0]
31207b  48 8d 95 10 0e 00 00           lea    rdx,[rbp+0xe10]
312082  48 8d 8d 28 05 00 00           lea    rcx,[rbp+0x528]
312089  e8 0e d6 fc ff                 call   0x2df69c
31208e  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
312095  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
312099  f2 0f 11 85 c0 00 00 00        movsd  QWORD PTR [rbp+0xc0],xmm0
3120a1  e8 82 5b 0b 00                 call   0x3c7c28
3120a6  f3 0f 10 3d 96 ba f7 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff7ba96]        # 0x28db44 ; f32=100
3120ae  48 8d 95 18 0e 00 00           lea    rdx,[rbp+0xe18]
3120b5  0f 28 f0                       movaps xmm6,xmm0
3120b8  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
3120bf  f3 0f 59 f7                    mulss  xmm6,xmm7
3120c3  f3 0f 5e f7                    divss  xmm6,xmm7
3120c7  e8 78 5b 0b 00                 call   0x3c7c44
3120cc  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
3120d3  f2 0f 10 08                    movsd  xmm1,QWORD PTR [rax]
3120d7  f2 0f 11 8d c0 00 00 00        movsd  QWORD PTR [rbp+0xc0],xmm1
3120df  f3 0f 10 0d 51 b8 0d 00        movss  xmm1,DWORD PTR [rip+0xdb851]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
3120e7  f3 0f 5d ce                    minss  xmm1,xmm6
3120eb  e8 38 d6 08 00                 call   0x39f728
3120f0  4c 8d 85 40 01 00 00           lea    r8,[rbp+0x140]
3120f7  48 8d 95 20 0e 00 00           lea    rdx,[rbp+0xe20]
3120fe  48 8d 8d 28 05 00 00           lea    rcx,[rbp+0x528]
312105  e8 92 d5 fc ff                 call   0x2df69c
31210a  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
312111  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
312115  f2 0f 11 85 40 01 00 00        movsd  QWORD PTR [rbp+0x140],xmm0
31211d  e8 06 5b 0b 00                 call   0x3c7c28
312122  0f 28 f0                       movaps xmm6,xmm0
312125  48 8d 95 28 0e 00 00           lea    rdx,[rbp+0xe28]
31212c  f3 0f 59 f7                    mulss  xmm6,xmm7
312130  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
312137  f3 0f 5e f7                    divss  xmm6,xmm7
31213b  e8 04 5b 0b 00                 call   0x3c7c44
312140  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
312147  f2 0f 10 08                    movsd  xmm1,QWORD PTR [rax]
31214b  f2 0f 11 8d 40 01 00 00        movsd  QWORD PTR [rbp+0x140],xmm1
312153  f3 0f 10 0d dd b7 0d 00        movss  xmm1,DWORD PTR [rip+0xdb7dd]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
31215b  f3 0f 5d ce                    minss  xmm1,xmm6
31215f  e8 c4 d5 08 00                 call   0x39f728
312164  0f 57 d2                       xorps  xmm2,xmm2
312167  48 8d 8d 30 0e 00 00           lea    rcx,[rbp+0xe30]
31216e  0f 57 c9                       xorps  xmm1,xmm1
312171  e8 ca a1 fb ff                 call   0x2cc340
312176  f3 0f 10 35 c2 10 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff810c2]        # 0x293240 ; f32=360
31217e  48 8d 8d 38 0e 00 00           lea    rcx,[rbp+0xe38]
312185  48 8b 95 c0 00 00 00           mov    rdx,QWORD PTR [rbp+0xc0]
31218c  f3 41 0f 5c f0                 subss  xmm6,xmm8
312191  40 88 74 24 20                 mov    BYTE PTR [rsp+0x20],sil
312196  4c 8b 00                       mov    r8,QWORD PTR [rax]
312199  0f 28 de                       movaps xmm3,xmm6
31219c  e8 7b 59 00 00                 call   0x317b1c
3121a1  0f 57 d2                       xorps  xmm2,xmm2
3121a4  0f 57 c9                       xorps  xmm1,xmm1
3121a7  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3121ab  f2 0f 11 85 c0 00 00 00        movsd  QWORD PTR [rbp+0xc0],xmm0
3121b3  48 8d 8d 40 0e 00 00           lea    rcx,[rbp+0xe40]
3121ba  e8 81 a1 fb ff                 call   0x2cc340
3121bf  48 8b 95 40 01 00 00           mov    rdx,QWORD PTR [rbp+0x140]
3121c6  48 8d 8d 48 0e 00 00           lea    rcx,[rbp+0xe48]
3121cd  0f 28 de                       movaps xmm3,xmm6
3121d0  40 88 74 24 20                 mov    BYTE PTR [rsp+0x20],sil
3121d5  4c 8b 00                       mov    r8,QWORD PTR [rax]
3121d8  e8 3f 59 00 00                 call   0x317b1c
3121dd  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3121e1  f2 0f 11 85 40 01 00 00        movsd  QWORD PTR [rbp+0x140],xmm0
3121e9  45 84 ff                       test   r15b,r15b
3121ec  74 0b                          je     0x3121f9
3121ee  f3 44 0f 10 05 91 b7 0d 00     movss  xmm8,DWORD PTR [rip+0xdb791]        # 0x3ed988 ; CONFIG F.NPCCircleSize value(+0x48)
3121f7  eb 09                          jmp    0x312202
3121f9  f3 44 0f 10 05 d6 b7 0d 00     movss  xmm8,DWORD PTR [rip+0xdb7d6]        # 0x3ed9d8 ; CONFIG F.PlayerCirlceSize value(+0x48)
312202  f3 0f 10 3d 9e db 0d 00        movss  xmm7,DWORD PTR [rip+0xddb9e]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
31220a  48 8d 4d 90                    lea    rcx,[rbp-0x70]
31220e  f3 0f 10 b5 c4 00 00 00        movss  xmm6,DWORD PTR [rbp+0xc4]
312216  f3 0f 5c bd c0 00 00 00        subss  xmm7,DWORD PTR [rbp+0xc0]
31221e  f3 0f 58 35 86 db 0d 00        addss  xmm6,DWORD PTR [rip+0xddb86]        # 0x3efdac
312226  e8 e1 d5 fd ff                 call   0x2ef80c
31222b  0f 28 d6                       movaps xmm2,xmm6
31222e  48 8d 8d d0 0b 00 00           lea    rcx,[rbp+0xbd0]
312235  0f 28 cf                       movaps xmm1,xmm7
312238  8b d8                          mov    ebx,eax
31223a  e8 01 a1 fb ff                 call   0x2cc340
31223f  44 8b cb                       mov    r9d,ebx
312242  48 8d 95 d0 0b 00 00           lea    rdx,[rbp+0xbd0]
312249  41 0f 28 d0                    movaps xmm2,xmm8
31224d  49 8b cd                       mov    rcx,r13
312250  e8 e7 8d 04 00                 call   0x35b03c
312255  f3 41 0f 2c d2                 cvttss2si edx,xmm10
31225a  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
312261  e8 aa 72 fc ff                 call   0x2d9510
312266  40 38 35 3b 81 0d 00           cmp    BYTE PTR [rip+0xd813b],sil        # 0x3ea3a8 ; CONFIG Bools.ShowRadarText value(+0x48)
31226d  74 55                          je     0x3122c4
31226f  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312273  48 8d 8d 50 0e 00 00           lea    rcx,[rbp+0xe50]
31227a  f3 41 0f 58 f0                 addss  xmm6,xmm8
31227f  0f 28 cf                       movaps xmm1,xmm7
312282  66 0f 7f 85 80 01 00 00        movdqa XMMWORD PTR [rbp+0x180],xmm0
31228a  f3 0f 58 35 fa 0e f8 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff80efa]        # 0x29318c ; f32=6.325
312292  0f 28 d6                       movaps xmm2,xmm6
312295  e8 a6 a0 fb ff                 call   0x2cc340
31229a  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
31229e  4c 8d 85 d8 00 00 00           lea    r8,[rbp+0xd8]
3122a5  4c 8b c8                       mov    r9,rax
3122a8  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
3122b0  48 8d 85 80 01 00 00           lea    rax,[rbp+0x180]
3122b7  49 8b cd                       mov    rcx,r13
3122ba  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
3122bf  e8 98 f0 04 00                 call   0x36135c
3122c4  8a 85 b0 15 00 00              mov    al,BYTE PTR [rbp+0x15b0]
3122ca  40 0a c7                       or     al,dil
3122cd  0f 85 8e 00 00 00              jne    0x312361
3122d3  40 38 35 7e 80 0d 00           cmp    BYTE PTR [rip+0xd807e],sil        # 0x3ea358 ; CONFIG Bools.ShowRadarDirection value(+0x48)
3122da  0f 84 81 00 00 00              je     0x312361
3122e0  48 8d 4d 90                    lea    rcx,[rbp-0x70]
3122e4  e8 23 d5 fd ff                 call   0x2ef80c
3122e9  f3 0f 10 95 44 01 00 00        movss  xmm2,DWORD PTR [rbp+0x144]
3122f1  48 8d 8d d8 0b 00 00           lea    rcx,[rbp+0xbd8]
3122f8  f3 0f 10 3d a8 da 0d 00        movss  xmm7,DWORD PTR [rip+0xddaa8]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
312300  8b d8                          mov    ebx,eax
312302  f3 0f 10 35 a2 da 0d 00        movss  xmm6,DWORD PTR [rip+0xddaa2]        # 0x3efdac
31230a  0f 28 cf                       movaps xmm1,xmm7
31230d  f3 0f 5c 8d 40 01 00 00        subss  xmm1,DWORD PTR [rbp+0x140]
312315  f3 0f 58 d6                    addss  xmm2,xmm6
312319  e8 22 a0 fb ff                 call   0x2cc340
31231e  f3 0f 10 95 c4 00 00 00        movss  xmm2,DWORD PTR [rbp+0xc4]
312326  48 8d 8d b8 05 00 00           lea    rcx,[rbp+0x5b8]
31232d  f3 0f 5c bd c0 00 00 00        subss  xmm7,DWORD PTR [rbp+0xc0]
312335  f3 0f 58 d6                    addss  xmm2,xmm6
312339  0f 28 cf                       movaps xmm1,xmm7
31233c  e8 ff 9f fb ff                 call   0x2cc340
312341  44 8b cb                       mov    r9d,ebx
312344  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
31234b  4c 8d 85 d8 0b 00 00           lea    r8,[rbp+0xbd8]
312352  49 8b cd                       mov    rcx,r13
312355  48 8d 95 b8 05 00 00           lea    rdx,[rbp+0x5b8]
31235c  e8 fb 9e 04 00                 call   0x35c25c
312361  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
312368  e8 87 a1 fb ff                 call   0x2cc4f4
31236d  f2 0f 10 45 a0                 movsd  xmm0,QWORD PTR [rbp-0x60]
312372  4c 8d 0d 2f 4f 0c 00           lea    r9,[rip+0xc4f2f]        # 0x3d72a8
312379  8b 45 a8                       mov    eax,DWORD PTR [rbp-0x58]
31237c  4c 8d 45 78                    lea    r8,[rbp+0x78]
312380  48 8d 95 a0 09 00 00           lea    rdx,[rbp+0x9a0]
312387  f2 0f 11 85 a0 09 00 00        movsd  QWORD PTR [rbp+0x9a0],xmm0
31238f  49 8b cc                       mov    rcx,r12
312392  89 85 a8 09 00 00              mov    DWORD PTR [rbp+0x9a8],eax
312398  e8 83 a9 05 00                 call   0x36cd20
31239d  84 c0                          test   al,al
31239f  0f 84 c2 1d 00 00              je     0x314167
3123a5  48 8b 4d 78                    mov    rcx,QWORD PTR [rbp+0x78]
3123a9  e8 82 4d 00 00                 call   0x317130
3123ae  84 c0                          test   al,al
3123b0  0f 84 b1 1d 00 00              je     0x314167
3123b6  48 8b 9d c0 05 00 00           mov    rbx,QWORD PTR [rbp+0x5c0]
3123bd  48 8b cb                       mov    rcx,rbx
3123c0  e8 43 8b fb ff                 call   0x2caf08
3123c5  84 c0                          test   al,al
3123c7  0f 84 46 01 00 00              je     0x312513
3123cd  40 38 b5 a8 15 00 00           cmp    BYTE PTR [rbp+0x15a8],sil
3123d4  0f 85 39 01 00 00              jne    0x312513
3123da  48 8b cb                       mov    rcx,rbx
3123dd  e8 ba ea fc ff                 call   0x2e0e9c
3123e2  84 c0                          test   al,al
3123e4  0f 84 29 01 00 00              je     0x312513
3123ea  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3123ef  48 3b cb                       cmp    rcx,rbx
3123f2  0f 85 1b 01 00 00              jne    0x312513
3123f8  45 84 ff                       test   r15b,r15b
3123fb  0f 85 12 01 00 00              jne    0x312513
312401  45 33 c0                       xor    r8d,r8d
312404  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
31240b  e8 60 7a 05 00                 call   0x369e70
312410  8b 0d 82 d4 0d 00              mov    ecx,DWORD PTR [rip+0xdd482]        # 0x3ef898 ; CONFIG K.addfriendvirtualkey value(+0x48)
312416  b2 01                          mov    dl,0x1
312418  e8 f3 64 fd ff                 call   0x2e8910
31241d  48 8d 1d 3c 4e 0c 00           lea    rbx,[rip+0xc4e3c]        # 0x3d7260
312424  84 c0                          test   al,al
312426  74 67                          je     0x31248f
312428  40 38 35 59 77 0d 00           cmp    BYTE PTR [rip+0xd7759],sil        # 0x3e9b88 ; CONFIG Bools.drawteam value(+0x48)
31242f  74 5e                          je     0x31248f
312431  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
312438  48 8b cb                       mov    rcx,rbx
31243b  e8 54 d3 fd ff                 call   0x2ef794
312440  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
312447  48 8b cb                       mov    rcx,rbx
31244a  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
31244e  75 0a                          jne    0x31245a
312450  e8 3f d3 fd ff                 call   0x2ef794
312455  89 70 24                       mov    DWORD PTR [rax+0x24],esi
312458  eb 35                          jmp    0x31248f
31245a  e8 35 d3 fd ff                 call   0x2ef794
31245f  83 78 24 02                    cmp    DWORD PTR [rax+0x24],0x2
312463  74 2a                          je     0x31248f
312465  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
31246c  48 8b cb                       mov    rcx,rbx
31246f  e8 20 d3 fd ff                 call   0x2ef794
312474  39 70 24                       cmp    DWORD PTR [rax+0x24],esi
312477  75 16                          jne    0x31248f
312479  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
312480  48 8b cb                       mov    rcx,rbx
312483  e8 0c d3 fd ff                 call   0x2ef794
312488  c7 40 24 01 00 00 00           mov    DWORD PTR [rax+0x24],0x1
31248f  8b 0d 83 d2 0d 00              mov    ecx,DWORD PTR [rip+0xdd283]        # 0x3ef718 ; CONFIG K.addenemyvirtualkey value(+0x48)
312495  b2 01                          mov    dl,0x1
312497  e8 74 64 fd ff                 call   0x2e8910
31249c  84 c0                          test   al,al
31249e  74 67                          je     0x312507
3124a0  40 38 35 d1 7c 0d 00           cmp    BYTE PTR [rip+0xd7cd1],sil        # 0x3ea178 ; CONFIG Bools.draweenemy value(+0x48)
3124a7  74 5e                          je     0x312507
3124a9  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
3124b0  48 8b cb                       mov    rcx,rbx
3124b3  e8 dc d2 fd ff                 call   0x2ef794
3124b8  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
3124bf  48 8b cb                       mov    rcx,rbx
3124c2  83 78 24 02                    cmp    DWORD PTR [rax+0x24],0x2
3124c6  75 0a                          jne    0x3124d2
3124c8  e8 c7 d2 fd ff                 call   0x2ef794
3124cd  89 70 24                       mov    DWORD PTR [rax+0x24],esi
3124d0  eb 35                          jmp    0x312507
3124d2  e8 bd d2 fd ff                 call   0x2ef794
3124d7  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
3124db  74 2a                          je     0x312507
3124dd  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
3124e4  48 8b cb                       mov    rcx,rbx
3124e7  e8 a8 d2 fd ff                 call   0x2ef794
3124ec  39 70 24                       cmp    DWORD PTR [rax+0x24],esi
3124ef  75 16                          jne    0x312507
3124f1  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
3124f8  48 8b cb                       mov    rcx,rbx
3124fb  e8 94 d2 fd ff                 call   0x2ef794
312500  c7 40 24 02 00 00 00           mov    DWORD PTR [rax+0x24],0x2
312507  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
31250e  e8 e1 9f fb ff                 call   0x2cc4f4
312513  f3 0f 10 85 cc 04 00 00        movss  xmm0,DWORD PTR [rbp+0x4cc]
31251b  4c 8d 0d 82 8e fb ff           lea    r9,[rip+0xfffffffffffb8e82]        # 0x2cb3a4
312522  8b 9d 70 03 00 00              mov    ebx,DWORD PTR [rbp+0x370]
312528  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
31252f  f2 0f 10 bd a8 04 00 00        movsd  xmm7,QWORD PTR [rbp+0x4a8]
312537  ba 08 00 00 00                 mov    edx,0x8
31253c  8b bd b0 04 00 00              mov    edi,DWORD PTR [rbp+0x4b0]
312542  f2 44 0f 10 85 b8 04 00 00     movsd  xmm8,QWORD PTR [rbp+0x4b8]
31254b  8b b5 c0 04 00 00              mov    esi,DWORD PTR [rbp+0x4c0]
312551  44 8b bd 60 03 00 00           mov    r15d,DWORD PTR [rbp+0x360]
312558  44 8d 42 fc                    lea    r8d,[rdx-0x4]
31255c  f3 0f 11 85 5c 03 00 00        movss  DWORD PTR [rbp+0x35c],xmm0
312564  f2 44 0f 10 8d 58 03 00 00     movsd  xmm9,QWORD PTR [rbp+0x358]
31256d  f3 0f 11 85 6c 03 00 00        movss  DWORD PTR [rbp+0x36c],xmm0
312575  f2 0f 10 b5 68 03 00 00        movsd  xmm6,QWORD PTR [rbp+0x368]
31257d  e8 b2 d8 fc ff                 call   0x2dfe34
312582  4c 8d 0d 1f 4d 0c 00           lea    r9,[rip+0xc4d1f]        # 0x3d72a8
312589  f2 0f 11 b5 b0 09 00 00        movsd  QWORD PTR [rbp+0x9b0],xmm6
312591  4c 8d 85 80 00 00 00           lea    r8,[rbp+0x80]
312598  89 9d b8 09 00 00              mov    DWORD PTR [rbp+0x9b8],ebx
31259e  48 8d 95 b0 09 00 00           lea    rdx,[rbp+0x9b0]
3125a5  49 8b cc                       mov    rcx,r12
3125a8  e8 73 a7 05 00                 call   0x36cd20
3125ad  84 c0                          test   al,al
3125af  0f 84 5a 0a 00 00              je     0x31300f
3125b5  89 bd c8 09 00 00              mov    DWORD PTR [rbp+0x9c8],edi
3125bb  4c 8d 85 88 00 00 00           lea    r8,[rbp+0x88]
3125c2  48 8d 3d df 4c 0c 00           lea    rdi,[rip+0xc4cdf]        # 0x3d72a8
3125c9  f2 0f 11 bd c0 09 00 00        movsd  QWORD PTR [rbp+0x9c0],xmm7
3125d1  4c 8b cf                       mov    r9,rdi
3125d4  48 8d 95 c0 09 00 00           lea    rdx,[rbp+0x9c0]
3125db  49 8b cc                       mov    rcx,r12
3125de  e8 3d a7 05 00                 call   0x36cd20
3125e3  84 c0                          test   al,al
3125e5  0f 84 18 0a 00 00              je     0x313003
3125eb  4c 8b cf                       mov    r9,rdi
3125ee  f2 44 0f 11 85 d0 09 00 00     movsd  QWORD PTR [rbp+0x9d0],xmm8
3125f7  4c 8d 85 90 00 00 00           lea    r8,[rbp+0x90]
3125fe  89 b5 d8 09 00 00              mov    DWORD PTR [rbp+0x9d8],esi
312604  48 8d 95 d0 09 00 00           lea    rdx,[rbp+0x9d0]
31260b  49 8b cc                       mov    rcx,r12
31260e  e8 0d a7 05 00                 call   0x36cd20
312613  84 c0                          test   al,al
312615  0f 84 e8 09 00 00              je     0x313003
31261b  4c 8b cf                       mov    r9,rdi
31261e  f2 44 0f 11 8d e0 09 00 00     movsd  QWORD PTR [rbp+0x9e0],xmm9
312627  4c 8d 85 98 00 00 00           lea    r8,[rbp+0x98]
31262e  44 89 bd e8 09 00 00           mov    DWORD PTR [rbp+0x9e8],r15d
312635  48 8d 95 e0 09 00 00           lea    rdx,[rbp+0x9e0]
31263c  49 8b cc                       mov    rcx,r12
31263f  e8 dc a6 05 00                 call   0x36cd20
312644  45 33 ff                       xor    r15d,r15d
312647  84 c0                          test   al,al
312649  0f 84 ab 09 00 00              je     0x312ffa
31264f  48 8d 15 62 47 0c 00           lea    rdx,[rip+0xc4762]        # 0x3d6db8
312656  48 8d 4d 20                    lea    rcx,[rbp+0x20]
31265a  e8 1d c6 fd ff                 call   0x2eec7c
31265f  44 38 3d 82 51 0d 00           cmp    BYTE PTR [rip+0xd5182],r15b        # 0x3e77e8 ; CONFIG Bools.DrawDistance value(+0x48)
312666  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
31266b  74 53                          je     0x3126c0
31266d  48 8d 95 70 04 00 00           lea    rdx,[rbp+0x470]
312674  e8 17 e3 fd ff                 call   0x2f0990 ; STRING getter=0x2f0990 m
312679  48 8b c8                       mov    rcx,rax
31267c  e8 e3 5d fc ff                 call   0x2d8464
312681  48 8b d0                       mov    rdx,rax
312684  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
31268b  e8 3c 9c fb ff                 call   0x2cc2cc
312690  f3 41 0f 2c d2                 cvttss2si edx,xmm10
312695  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
31269c  48 8b d8                       mov    rbx,rax
31269f  e8 6c 6e fc ff                 call   0x2d9510
3126a4  48 8b d0                       mov    rdx,rax
3126a7  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
3126ae  4c 8b c3                       mov    r8,rbx
3126b1  e8 8a c8 fb ff                 call   0x2cef40
3126b6  41 83 ce 60                    or     r14d,0x60
3126ba  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
3126be  eb 23                          jmp    0x3126e3
3126c0  48 8d 95 ab 01 00 00           lea    rdx,[rbp+0x1ab]
3126c7  e8 64 a0 fb ff                 call   0x2cc730
3126cc  48 8b c8                       mov    rcx,rax
3126cf  e8 d0 b5 fb ff                 call   0x2cdca4
3126d4  48 8b d0                       mov    rdx,rax
3126d7  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
3126de  e8 e9 9b fb ff                 call   0x2cc2cc
3126e3  41 f6 c6 40                    test   r14b,0x40
3126e7  74 14                          je     0x3126fd
3126e9  41 83 e6 bf                    and    r14d,0xffffffbf
3126ed  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
3126f4  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
3126f8  e8 f7 9d fb ff                 call   0x2cc4f4
3126fd  41 f6 c6 20                    test   r14b,0x20
312701  74 14                          je     0x312717
312703  41 83 e6 df                    and    r14d,0xffffffdf
312707  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
31270e  44 89 75 d0                    mov    DWORD PTR [rbp-0x30],r14d
312712  e8 dd 9d fb ff                 call   0x2cc4f4
312717  48 8d 95 54 04 00 00           lea    rdx,[rbp+0x454]
31271e  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
312723  e8 cc e7 fd ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
312728  48 8b c8                       mov    rcx,rax
31272b  e8 34 5d fc ff                 call   0x2d8464
312730  48 8b d0                       mov    rdx,rax
312733  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
31273a  e8 8d 9b fb ff                 call   0x2cc2cc
31273f  4c 8b bd 10 01 00 00           mov    r15,QWORD PTR [rbp+0x110]
312746  48 8d 4d d8                    lea    rcx,[rbp-0x28]
31274a  41 8b d7                       mov    edx,r15d
31274d  48 8b f8                       mov    rdi,rax
312750  e8 bb 6d fc ff                 call   0x2d9510
312755  48 8d 95 52 04 00 00           lea    rdx,[rbp+0x452]
31275c  48 8b d8                       mov    rbx,rax
31275f  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
312764  e8 77 e1 fd ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
312769  48 8b c8                       mov    rcx,rax
31276c  e8 f3 5c fc ff                 call   0x2d8464
312771  48 8b d0                       mov    rdx,rax
312774  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
31277b  e8 4c 9b fb ff                 call   0x2cc2cc
312780  48 8b d0                       mov    rdx,rax
312783  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
31278a  4c 8b c3                       mov    r8,rbx
31278d  e8 ae c7 fb ff                 call   0x2cef40
312792  48 8b d0                       mov    rdx,rax
312795  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
31279c  4c 8b c7                       mov    r8,rdi
31279f  e8 9c c7 fb ff                 call   0x2cef40
3127a4  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
3127ab  e8 44 9d fb ff                 call   0x2cc4f4
3127b0  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
3127b7  e8 38 9d fb ff                 call   0x2cc4f4
3127bc  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3127c0  e8 2f 9d fb ff                 call   0x2cc4f4
3127c5  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
3127cc  e8 23 9d fb ff                 call   0x2cc4f4
3127d1  48 8d 95 aa 01 00 00           lea    rdx,[rbp+0x1aa]
3127d8  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3127dd  e8 4e 9f fb ff                 call   0x2cc730
3127e2  48 8b c8                       mov    rcx,rax
3127e5  e8 ba b4 fb ff                 call   0x2cdca4
3127ea  48 8b d0                       mov    rdx,rax
3127ed  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
3127f4  e8 d3 9a fb ff                 call   0x2cc2cc
3127f9  48 8d 95 a9 01 00 00           lea    rdx,[rbp+0x1a9]
312800  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
312805  e8 26 9f fb ff                 call   0x2cc730
31280a  48 8b c8                       mov    rcx,rax
31280d  e8 92 b4 fb ff                 call   0x2cdca4
312812  48 8b d0                       mov    rdx,rax
312815  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
31281c  e8 ab 9a fb ff                 call   0x2cc2cc
312821  33 ff                          xor    edi,edi
312823  40 38 3d 7e 4e 0d 00           cmp    BYTE PTR [rip+0xd4e7e],dil        # 0x3e76a8 ; CONFIG Bools.HeldItem value(+0x48)
31282a  8b f7                          mov    esi,edi
31282c  74 6e                          je     0x31289c
31282e  40 38 bd a8 15 00 00           cmp    BYTE PTR [rbp+0x15a8],dil
312835  75 65                          jne    0x31289c
312837  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31283c  e8 43 62 05 00                 call   0x368a84
312841  48 8b c8                       mov    rcx,rax
312844  48 8b d8                       mov    rbx,rax
312847  e8 bc 86 fb ff                 call   0x2caf08
31284c  84 c0                          test   al,al
31284e  74 4c                          je     0x31289c
312850  48 8b cb                       mov    rcx,rbx
312853  e8 f4 ec 05 00                 call   0x37154c
312858  48 8b c8                       mov    rcx,rax
31285b  4c 8b c0                       mov    r8,rax
31285e  e8 a5 86 fb ff                 call   0x2caf08
312863  84 c0                          test   al,al
312865  74 35                          je     0x31289c
312867  48 8d 55 d8                    lea    rdx,[rbp-0x28]
31286b  49 8b c8                       mov    rcx,r8
31286e  e8 25 fb 05 00                 call   0x372398
312873  48 8d 4d d8                    lea    rcx,[rbp-0x28]
312877  e8 18 5e fc ff                 call   0x2d8694
31287c  84 c0                          test   al,al
31287e  75 13                          jne    0x312893
312880  48 8d 55 d8                    lea    rdx,[rbp-0x28]
312884  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
31288b  e8 94 23 fc ff                 call   0x2d4c24
312890  8b 73 54                       mov    esi,DWORD PTR [rbx+0x54]
312893  48 8d 4d d8                    lea    rcx,[rbp-0x28]
312897  e8 58 9c fb ff                 call   0x2cc4f4
31289c  40 38 3d a5 4e 0d 00           cmp    BYTE PTR [rip+0xd4ea5],dil        # 0x3e7748 ; CONFIG Bools.TeamID value(+0x48)
3128a3  75 0d                          jne    0x3128b2
3128a5  40 38 3d ec 4e 0d 00           cmp    BYTE PTR [rip+0xd4eec],dil        # 0x3e7798 ; CONFIG Bools.name value(+0x48)
3128ac  0f 84 2d 02 00 00              je     0x312adf
3128b2  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3128b7  48 8d 95 10 01 00 00           lea    rdx,[rbp+0x110]
3128be  e8 7d 67 05 00                 call   0x369040
3128c3  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
3128ca  e8 c5 5d fc ff                 call   0x2d8694
3128cf  84 c0                          test   al,al
3128d1  0f 85 f5 01 00 00              jne    0x312acc
3128d7  48 8d 95 50 04 00 00           lea    rdx,[rbp+0x450]
3128de  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3128e3  e8 0c e6 fd ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
3128e8  48 8b c8                       mov    rcx,rax
3128eb  e8 74 5b fc ff                 call   0x2d8464
3128f0  48 8b d0                       mov    rdx,rax
3128f3  48 8d 8d b0 0f 00 00           lea    rcx,[rbp+0xfb0]
3128fa  e8 cd 99 fb ff                 call   0x2cc2cc
3128ff  41 8b d7                       mov    edx,r15d
312902  48 8d 8d 90 0f 00 00           lea    rcx,[rbp+0xf90]
312909  48 8b f8                       mov    rdi,rax
31290c  e8 ff 6b fc ff                 call   0x2d9510
312911  48 8d 95 48 04 00 00           lea    rdx,[rbp+0x448]
312918  48 8b d8                       mov    rbx,rax
31291b  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
312920  e8 bb df fd ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
312925  48 8b c8                       mov    rcx,rax
312928  e8 37 5b fc ff                 call   0x2d8464
31292d  48 8b d0                       mov    rdx,rax
312930  48 8d 8d 70 0f 00 00           lea    rcx,[rbp+0xf70]
312937  e8 90 99 fb ff                 call   0x2cc2cc
31293c  4c 8b c0                       mov    r8,rax
31293f  48 8d 95 10 01 00 00           lea    rdx,[rbp+0x110]
312946  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
31294d  e8 c6 7c fd ff                 call   0x2ea618
312952  48 8b d0                       mov    rdx,rax
312955  48 8d 4d d8                    lea    rcx,[rbp-0x28]
312959  4c 8b c3                       mov    r8,rbx
31295c  e8 df c5 fb ff                 call   0x2cef40
312961  48 8b d0                       mov    rdx,rax
312964  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
31296b  4c 8b c7                       mov    r8,rdi
31296e  e8 cd c5 fb ff                 call   0x2cef40
312973  48 8d 4d d8                    lea    rcx,[rbp-0x28]
312977  e8 78 9b fb ff                 call   0x2cc4f4
31297c  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
312983  e8 6c 9b fb ff                 call   0x2cc4f4
312988  48 8d 8d 70 0f 00 00           lea    rcx,[rbp+0xf70]
31298f  e8 60 9b fb ff                 call   0x2cc4f4
312994  48 8d 8d 90 0f 00 00           lea    rcx,[rbp+0xf90]
31299b  e8 54 9b fb ff                 call   0x2cc4f4
3129a0  48 8d 8d b0 0f 00 00           lea    rcx,[rbp+0xfb0]
3129a7  e8 48 9b fb ff                 call   0x2cc4f4
3129ac  48 8d 95 46 04 00 00           lea    rdx,[rbp+0x446]
3129b3  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3129b8  e8 37 e5 fd ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
3129bd  48 8b c8                       mov    rcx,rax
3129c0  e8 9f 5a fc ff                 call   0x2d8464
3129c5  48 8b d0                       mov    rdx,rax
3129c8  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3129cc  e8 fb 98 fb ff                 call   0x2cc2cc
3129d1  41 8b d7                       mov    edx,r15d
3129d4  48 8d 8d 70 0f 00 00           lea    rcx,[rbp+0xf70]
3129db  48 8b f8                       mov    rdi,rax
3129de  e8 2d 6b fc ff                 call   0x2d9510
3129e3  48 8d 95 44 04 00 00           lea    rdx,[rbp+0x444]
3129ea  48 8b d8                       mov    rbx,rax
3129ed  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3129f2  e8 e9 de fd ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
3129f7  48 8b c8                       mov    rcx,rax
3129fa  e8 65 5a fc ff                 call   0x2d8464
3129ff  48 8b d0                       mov    rdx,rax
312a02  48 8d 8d 90 0f 00 00           lea    rcx,[rbp+0xf90]
312a09  e8 be 98 fb ff                 call   0x2cc2cc
312a0e  48 8b d0                       mov    rdx,rax
312a11  48 8d 8d b0 0f 00 00           lea    rcx,[rbp+0xfb0]
312a18  4c 8b c3                       mov    r8,rbx
312a1b  e8 20 c5 fb ff                 call   0x2cef40
312a20  48 8b d0                       mov    rdx,rax
312a23  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
312a2a  4c 8b c7                       mov    r8,rdi
312a2d  e8 0e c5 fb ff                 call   0x2cef40
312a32  48 8d 8d b0 0f 00 00           lea    rcx,[rbp+0xfb0]
312a39  e8 b6 9a fb ff                 call   0x2cc4f4
312a3e  48 8d 8d 90 0f 00 00           lea    rcx,[rbp+0xf90]
312a45  e8 aa 9a fb ff                 call   0x2cc4f4
312a4a  48 8d 8d 70 0f 00 00           lea    rcx,[rbp+0xf70]
312a51  e8 9e 9a fb ff                 call   0x2cc4f4
312a56  48 8d 4d d8                    lea    rcx,[rbp-0x28]
312a5a  e8 95 9a fb ff                 call   0x2cc4f4
312a5f  44 8a 74 24 62                 mov    r14b,BYTE PTR [rsp+0x62]
312a64  33 c0                          xor    eax,eax
312a66  45 84 f6                       test   r14b,r14b
312a69  75 34                          jne    0x312a9f
312a6b  38 05 27 4d 0d 00              cmp    BYTE PTR [rip+0xd4d27],al        # 0x3e7798 ; CONFIG Bools.name value(+0x48)
312a71  74 16                          je     0x312a89
312a73  38 05 cf 4c 0d 00              cmp    BYTE PTR [rip+0xd4ccf],al        # 0x3e7748 ; CONFIG Bools.TeamID value(+0x48)
312a79  74 24                          je     0x312a9f
312a7b  4d 85 ff                       test   r15,r15
312a7e  74 1f                          je     0x312a9f
312a80  48 8d 95 f0 01 00 00           lea    rdx,[rbp+0x1f0]
312a87  eb 1d                          jmp    0x312aa6
312a89  38 05 b9 4c 0d 00              cmp    BYTE PTR [rip+0xd4cb9],al        # 0x3e7748 ; CONFIG Bools.TeamID value(+0x48)
312a8f  74 21                          je     0x312ab2
312a91  4d 85 ff                       test   r15,r15
312a94  74 1c                          je     0x312ab2
312a96  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
312a9d  eb 07                          jmp    0x312aa6
312a9f  48 8d 95 10 01 00 00           lea    rdx,[rbp+0x110]
312aa6  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
312aad  e8 72 21 fc ff                 call   0x2d4c24
312ab2  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
312ab9  e8 36 9a fb ff                 call   0x2cc4f4
312abe  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
312ac5  e8 2a 9a fb ff                 call   0x2cc4f4
312aca  eb 05                          jmp    0x312ad1
312acc  44 8a 74 24 62                 mov    r14b,BYTE PTR [rsp+0x62]
312ad1  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
312ad8  e8 17 9a fb ff                 call   0x2cc4f4
312add  eb 05                          jmp    0x312ae4
312adf  44 8a 74 24 62                 mov    r14b,BYTE PTR [rsp+0x62]
312ae4  48 8d 95 58 0e 00 00           lea    rdx,[rbp+0xe58]
312aeb  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312aef  e8 bc 5c fc ff                 call   0x2d87b0
312af4  48 8d 95 60 0e 00 00           lea    rdx,[rbp+0xe60]
312afb  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312aff  48 8b 18                       mov    rbx,QWORD PTR [rax]
312b02  e8 89 52 fc ff                 call   0x2d7d90
312b07  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
312b0e  48 8d 8d 68 0e 00 00           lea    rcx,[rbp+0xe68]
312b15  4c 8b c3                       mov    r8,rbx
312b18  48 8b 10                       mov    rdx,QWORD PTR [rax]
312b1b  e8 34 b6 fd ff                 call   0x2ee154
312b20  48 8b c8                       mov    rcx,rax
312b23  e8 b0 ba fb ff                 call   0x2ce5d8
312b28  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
312b2f  48 8d 48 30                    lea    rcx,[rax+0x30]
312b33  e8 ec 20 fc ff                 call   0x2d4c24
312b38  48 8d 95 70 0e 00 00           lea    rdx,[rbp+0xe70]
312b3f  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312b43  e8 68 5c fc ff                 call   0x2d87b0
312b48  48 8d 95 78 0e 00 00           lea    rdx,[rbp+0xe78]
312b4f  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312b53  48 8b 18                       mov    rbx,QWORD PTR [rax]
312b56  e8 35 52 fc ff                 call   0x2d7d90
312b5b  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
312b62  48 8d 8d c8 05 00 00           lea    rcx,[rbp+0x5c8]
312b69  4c 8b c3                       mov    r8,rbx
312b6c  48 8b 10                       mov    rdx,QWORD PTR [rax]
312b6f  e8 5c b6 fd ff                 call   0x2ee1d0
312b74  48 8d 8d c8 05 00 00           lea    rcx,[rbp+0x5c8]
312b7b  e8 58 ba fb ff                 call   0x2ce5d8
312b80  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
312b87  48 8b d8                       mov    rbx,rax
312b8a  48 8d 48 30                    lea    rcx,[rax+0x30]
312b8e  e8 91 20 fc ff                 call   0x2d4c24
312b93  48 8d 95 80 0e 00 00           lea    rdx,[rbp+0xe80]
312b9a  89 73 64                       mov    DWORD PTR [rbx+0x64],esi
312b9d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312ba1  e8 0a 5c fc ff                 call   0x2d87b0
312ba6  48 8d 95 88 0e 00 00           lea    rdx,[rbp+0xe88]
312bad  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312bb1  48 8b 18                       mov    rbx,QWORD PTR [rax]
312bb4  e8 d7 51 fc ff                 call   0x2d7d90
312bb9  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
312bc0  48 8d 8d 90 0e 00 00           lea    rcx,[rbp+0xe90]
312bc7  4c 8b c3                       mov    r8,rbx
312bca  48 8b 10                       mov    rdx,QWORD PTR [rax]
312bcd  e8 7a b6 fd ff                 call   0x2ee24c
312bd2  48 8b c8                       mov    rcx,rax
312bd5  e8 fe b9 fb ff                 call   0x2ce5d8
312bda  48 8d 95 f0 02 00 00           lea    rdx,[rbp+0x2f0]
312be1  48 8d 48 30                    lea    rcx,[rax+0x30]
312be5  e8 3a 20 fc ff                 call   0x2d4c24
312bea  40 8a b5 b8 15 00 00           mov    sil,BYTE PTR [rbp+0x15b8]
312bf1  45 33 ff                       xor    r15d,r15d
312bf4  40 84 f6                       test   sil,sil
312bf7  74 26                          je     0x312c1f
312bf9  44 38 3d 88 47 0d 00           cmp    BYTE PTR [rip+0xd4788],r15b        # 0x3e7388 ; CONFIG Bools.DrawOnlineSleepers value(+0x48)
312c00  74 1d                          je     0x312c1f
312c02  48 8d 95 d0 0c 00 00           lea    rdx,[rbp+0xcd0]
312c09  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
312c10  e8 e7 4b fe ff                 call   0x2f77fc ; STRING getter=0x2f77fc Online
312c15  48 8b c8                       mov    rcx,rax
312c18  e8 d7 b0 fb ff                 call   0x2cdcf4
312c1d  eb 1b                          jmp    0x312c3a
312c1f  48 8d 95 a8 01 00 00           lea    rdx,[rbp+0x1a8]
312c26  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
312c2d  e8 fe 9a fb ff                 call   0x2cc730
312c32  48 8b c8                       mov    rcx,rax
312c35  e8 6a b0 fb ff                 call   0x2cdca4
312c3a  48 8d 95 98 0e 00 00           lea    rdx,[rbp+0xe98]
312c41  48 8b f8                       mov    rdi,rax
312c44  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312c48  e8 63 5b fc ff                 call   0x2d87b0
312c4d  48 8d 95 a0 0e 00 00           lea    rdx,[rbp+0xea0]
312c54  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312c58  48 8b 18                       mov    rbx,QWORD PTR [rax]
312c5b  e8 30 51 fc ff                 call   0x2d7d90
312c60  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
312c67  48 8d 8d a8 0e 00 00           lea    rcx,[rbp+0xea8]
312c6e  4c 8b c3                       mov    r8,rbx
312c71  48 8b 10                       mov    rdx,QWORD PTR [rax]
312c74  e8 4f b6 fd ff                 call   0x2ee2c8
312c79  48 8b c8                       mov    rcx,rax
312c7c  e8 57 b9 fb ff                 call   0x2ce5d8
312c81  48 8b d7                       mov    rdx,rdi
312c84  48 8d 48 30                    lea    rcx,[rax+0x30]
312c88  e8 db 1f fc ff                 call   0x2d4c68
312c8d  44 38 3d 04 46 0d 00           cmp    BYTE PTR [rip+0xd4604],r15b        # 0x3e7298 ; CONFIG Bools.IsOutside value(+0x48)
312c94  74 35                          je     0x312ccb
312c96  8a 4c 24 61                    mov    cl,BYTE PTR [rsp+0x61]
312c9a  8a 85 a8 15 00 00              mov    al,BYTE PTR [rbp+0x15a8]
312ca0  41 0a ce                       or     cl,r14b
312ca3  0a c1                          or     al,cl
312ca5  75 24                          jne    0x312ccb
312ca7  44 38 7c 24 60                 cmp    BYTE PTR [rsp+0x60],r15b
312cac  74 1d                          je     0x312ccb
312cae  48 8d 95 b0 0e 00 00           lea    rdx,[rbp+0xeb0]
312cb5  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
312cbc  e8 7f 8d fc ff                 call   0x2dba40
312cc1  48 8b c8                       mov    rcx,rax
312cc4  e8 4b 09 fd ff                 call   0x2e3614
312cc9  eb 1b                          jmp    0x312ce6
312ccb  48 8d 95 dc 01 00 00           lea    rdx,[rbp+0x1dc]
312cd2  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
312cd9  e8 52 9a fb ff                 call   0x2cc730
312cde  48 8b c8                       mov    rcx,rax
312ce1  e8 be af fb ff                 call   0x2cdca4
312ce6  48 8d 95 b8 0e 00 00           lea    rdx,[rbp+0xeb8]
312ced  48 8b f8                       mov    rdi,rax
312cf0  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312cf4  e8 b7 5a fc ff                 call   0x2d87b0
312cf9  48 8d 95 c0 0e 00 00           lea    rdx,[rbp+0xec0]
312d00  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312d04  48 8b 18                       mov    rbx,QWORD PTR [rax]
312d07  e8 84 50 fc ff                 call   0x2d7d90
312d0c  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
312d13  48 8d 8d c8 0e 00 00           lea    rcx,[rbp+0xec8]
312d1a  4c 8b c3                       mov    r8,rbx
312d1d  48 8b 10                       mov    rdx,QWORD PTR [rax]
312d20  e8 1f b6 fd ff                 call   0x2ee344
312d25  48 8b c8                       mov    rcx,rax
312d28  e8 ab b8 fb ff                 call   0x2ce5d8
312d2d  48 8b d7                       mov    rdx,rdi
312d30  48 8d 48 30                    lea    rcx,[rax+0x30]
312d34  e8 2f 1f fc ff                 call   0x2d4c68
312d39  48 8d 8d b8 15 00 00           lea    rcx,[rbp+0x15b8]
312d40  44 38 7d 60                    cmp    BYTE PTR [rbp+0x60],r15b
312d44  75 32                          jne    0x312d78
312d46  44 38 7d d5                    cmp    BYTE PTR [rbp-0x2b],r15b
312d4a  75 16                          jne    0x312d62
312d4c  48 8d 95 d2 01 00 00           lea    rdx,[rbp+0x1d2]
312d53  e8 d8 99 fb ff                 call   0x2cc730
312d58  48 8b c8                       mov    rcx,rax
312d5b  e8 44 af fb ff                 call   0x2cdca4
312d60  eb 27                          jmp    0x312d89
312d62  48 8d 95 d0 0e 00 00           lea    rdx,[rbp+0xed0]
312d69  e8 02 8d fc ff                 call   0x2dba70
312d6e  48 8b c8                       mov    rcx,rax
312d71  e8 9e 08 fd ff                 call   0x2e3614
312d76  eb 11                          jmp    0x312d89
312d78  48 8d 55 08                    lea    rdx,[rbp+0x8]
312d7c  e8 b3 4e fe ff                 call   0x2f7c34 ; STRING getter=0x2f7c34 Crawling
312d81  48 8b c8                       mov    rcx,rax
312d84  e8 03 6e fd ff                 call   0x2e9b8c
312d89  48 8d 95 d8 0e 00 00           lea    rdx,[rbp+0xed8]
312d90  48 8b f8                       mov    rdi,rax
312d93  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312d97  e8 14 5a fc ff                 call   0x2d87b0
312d9c  48 8d 95 e0 0b 00 00           lea    rdx,[rbp+0xbe0]
312da3  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312da7  48 8b 18                       mov    rbx,QWORD PTR [rax]
312daa  e8 e1 4f fc ff                 call   0x2d7d90
312daf  44 8a 8d a8 15 00 00           mov    r9b,BYTE PTR [rbp+0x15a8]
312db6  48 8d 8d e0 01 00 00           lea    rcx,[rbp+0x1e0]
312dbd  4c 8b c3                       mov    r8,rbx
312dc0  48 8b 10                       mov    rdx,QWORD PTR [rax]
312dc3  e8 f8 b5 fd ff                 call   0x2ee3c0
312dc8  48 8b c8                       mov    rcx,rax
312dcb  e8 08 b8 fb ff                 call   0x2ce5d8
312dd0  48 8b d7                       mov    rdx,rdi
312dd3  48 8d 48 30                    lea    rcx,[rax+0x30]
312dd7  e8 8c 1e fc ff                 call   0x2d4c68
312ddc  44 38 3d 35 6f 0d 00           cmp    BYTE PTR [rip+0xd6f35],r15b        # 0x3e9d18 ; CONFIG Bools.CornerBox value(+0x48)
312de3  74 2f                          je     0x312e14
312de5  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
312dea  33 d2                          xor    edx,edx
312dec  e8 1b 74 05 00                 call   0x36a20c
312df1  84 c0                          test   al,al
312df3  75 1f                          jne    0x312e14
312df5  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312df9  48 8d 95 10 01 00 00           lea    rdx,[rbp+0x110]
312e00  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312e07  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312e0f  e8 10 89 06 00                 call   0x37b724
312e14  48 8d 0d ad 2e 0d 00           lea    rcx,[rip+0xd2ead]        # 0x3e5cc8
312e1b  44 89 bd b8 15 00 00           mov    DWORD PTR [rbp+0x15b8],r15d
312e22  e8 c1 ac fd ff                 call   0x2edae8
312e27  48 8d 0d 9a 2e 0d 00           lea    rcx,[rip+0xd2e9a]        # 0x3e5cc8
312e2e  48 8b d8                       mov    rbx,rax
312e31  e8 6e 85 fb ff                 call   0x2cb3a4
312e36  48 8b c8                       mov    rcx,rax
312e39  4c 8d 85 b8 15 00 00           lea    r8,[rbp+0x15b8]
312e40  48 8b d3                       mov    rdx,rbx
312e43  e8 e0 ac fd ff                 call   0x2edb28
312e48  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312e4c  33 d2                          xor    edx,edx
312e4e  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312e52  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312e5a  e8 69 c9 fd ff                 call   0x2ef7c8
312e5f  48 8b d0                       mov    rdx,rax
312e62  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
312e69  e8 02 86 fc ff                 call   0x2db470
312e6e  48 8b d0                       mov    rdx,rax
312e71  4c 8d 85 10 01 00 00           lea    r8,[rbp+0x110]
312e78  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312e7f  e8 14 8e 06 00                 call   0x37bc98
312e84  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312e88  ba 01 00 00 00                 mov    edx,0x1
312e8d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312e91  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312e99  e8 2a c9 fd ff                 call   0x2ef7c8
312e9e  48 8b d0                       mov    rdx,rax
312ea1  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
312ea8  e8 c3 85 fc ff                 call   0x2db470
312ead  48 8b d0                       mov    rdx,rax
312eb0  4c 8d 85 10 01 00 00           lea    r8,[rbp+0x110]
312eb7  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312ebe  e8 d5 8d 06 00                 call   0x37bc98
312ec3  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312ec7  ba 02 00 00 00                 mov    edx,0x2
312ecc  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312ed0  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312ed8  e8 eb c8 fd ff                 call   0x2ef7c8
312edd  48 8b d0                       mov    rdx,rax
312ee0  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
312ee7  e8 84 85 fc ff                 call   0x2db470
312eec  48 8b d0                       mov    rdx,rax
312eef  4c 8d 85 10 01 00 00           lea    r8,[rbp+0x110]
312ef6  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312efd  e8 96 8d 06 00                 call   0x37bc98
312f02  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312f06  ba 03 00 00 00                 mov    edx,0x3
312f0b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312f0f  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312f17  e8 ac c8 fd ff                 call   0x2ef7c8
312f1c  48 8b d0                       mov    rdx,rax
312f1f  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
312f26  e8 45 85 fc ff                 call   0x2db470
312f2b  48 8b d0                       mov    rdx,rax
312f2e  4c 8d 85 10 01 00 00           lea    r8,[rbp+0x110]
312f35  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312f3c  e8 57 8d 06 00                 call   0x37bc98
312f41  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312f45  ba 04 00 00 00                 mov    edx,0x4
312f4a  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312f4e  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312f56  e8 6d c8 fd ff                 call   0x2ef7c8
312f5b  48 8b d0                       mov    rdx,rax
312f5e  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
312f65  e8 06 85 fc ff                 call   0x2db470
312f6a  48 8b d0                       mov    rdx,rax
312f6d  4c 8d 85 10 01 00 00           lea    r8,[rbp+0x110]
312f74  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312f7b  e8 18 8d 06 00                 call   0x37bc98
312f80  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
312f84  ba 05 00 00 00                 mov    edx,0x5
312f89  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312f8d  66 0f 7f 85 10 01 00 00        movdqa XMMWORD PTR [rbp+0x110],xmm0
312f95  e8 2e c8 fd ff                 call   0x2ef7c8
312f9a  48 8b d0                       mov    rdx,rax
312f9d  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
312fa4  e8 c7 84 fc ff                 call   0x2db470
312fa9  48 8b d0                       mov    rdx,rax
312fac  4c 8d 85 10 01 00 00           lea    r8,[rbp+0x110]
312fb3  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
312fba  e8 d9 8c 06 00                 call   0x37bc98
312fbf  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
312fc6  e8 29 95 fb ff                 call   0x2cc4f4
312fcb  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
312fd2  e8 1d 95 fb ff                 call   0x2cc4f4
312fd7  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
312fde  e8 11 95 fb ff                 call   0x2cc4f4
312fe3  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
312fea  e8 05 95 fb ff                 call   0x2cc4f4
312fef  48 8d 4d 20                    lea    rcx,[rbp+0x20]
312ff3  e8 cc 85 fc ff                 call   0x2db5c4
312ff8  eb 1f                          jmp    0x313019
312ffa  40 8a b5 b8 15 00 00           mov    sil,BYTE PTR [rbp+0x15b8]
313001  eb 1d                          jmp    0x313020
313003  40 8a b5 b8 15 00 00           mov    sil,BYTE PTR [rbp+0x15b8]
31300a  45 33 ff                       xor    r15d,r15d
31300d  eb 11                          jmp    0x313020
31300f  40 8a b5 b8 15 00 00           mov    sil,BYTE PTR [rbp+0x15b8]
313016  45 33 ff                       xor    r15d,r15d
313019  48 8d 3d 88 42 0c 00           lea    rdi,[rip+0xc4288]        # 0x3d72a8
313020  44 38 3d 91 4a 0d 00           cmp    BYTE PTR [rip+0xd4a91],r15b        # 0x3e7ab8 ; CONFIG Bools.Snapline value(+0x48)
313027  8a 95 b0 15 00 00              mov    dl,BYTE PTR [rbp+0x15b0]
31302d  44 8a 85 a8 15 00 00           mov    r8b,BYTE PTR [rbp+0x15a8]
313034  0f 84 e3 00 00 00              je     0x31311d
31303a  8a ca                          mov    cl,dl
31303c  40 8a c6                       mov    al,sil
31303f  41 0a c8                       or     cl,r8b
313042  0a c1                          or     al,cl
313044  0f 85 d3 00 00 00              jne    0x31311d
31304a  48 8b 5d 18                    mov    rbx,QWORD PTR [rbp+0x18]
31304e  48 8b cb                       mov    rcx,rbx
313051  e8 b2 7e fb ff                 call   0x2caf08
313056  84 c0                          test   al,al
313058  0f 84 bf 00 00 00              je     0x31311d
31305e  48 8b cb                       mov    rcx,rbx
313061  e8 36 de fc ff                 call   0x2e0e9c
313066  84 c0                          test   al,al
313068  0f 84 b9 00 00 00              je     0x313127
31306e  48 3b 5c 24 58                 cmp    rbx,QWORD PTR [rsp+0x58]
313073  0f 85 ae 00 00 00              jne    0x313127
313079  f2 0f 10 85 c8 04 00 00        movsd  xmm0,QWORD PTR [rbp+0x4c8]
313081  4c 8d 85 b8 03 00 00           lea    r8,[rbp+0x3b8]
313088  8b 85 d0 04 00 00              mov    eax,DWORD PTR [rbp+0x4d0]
31308e  48 8d 95 f0 09 00 00           lea    rdx,[rbp+0x9f0]
313095  4c 8b cf                       mov    r9,rdi
313098  f2 0f 11 85 f0 09 00 00        movsd  QWORD PTR [rbp+0x9f0],xmm0
3130a0  49 8b cc                       mov    rcx,r12
3130a3  89 85 f8 09 00 00              mov    DWORD PTR [rbp+0x9f8],eax
3130a9  e8 72 9c 05 00                 call   0x36cd20
3130ae  84 c0                          test   al,al
3130b0  74 75                          je     0x313127
3130b2  48 8d 0d 1f 98 0d 00           lea    rcx,[rip+0xd981f]        # 0x3ec8d8 ; CONFIG C.SnapColor value(+0x48)
3130b9  e8 4e c7 fd ff                 call   0x2ef80c
3130be  f3 0f 10 95 bc 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3bc]
3130c6  48 8d 8d d0 05 00 00           lea    rcx,[rbp+0x5d0]
3130cd  f3 0f 10 8d b8 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3b8]
3130d5  8b d8                          mov    ebx,eax
3130d7  e8 64 92 fb ff                 call   0x2cc340
3130dc  f3 0f 10 95 00 01 00 00        movss  xmm2,DWORD PTR [rbp+0x100]
3130e4  48 8d 8d d8 05 00 00           lea    rcx,[rbp+0x5d8]
3130eb  41 0f 28 cd                    movaps xmm1,xmm13
3130ef  e8 4c 92 fb ff                 call   0x2cc340
3130f4  f3 0f 10 35 fc ff f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff7fffc]        # 0x2930f8 ; f32=1.25
3130fc  4c 8d 85 d0 05 00 00           lea    r8,[rbp+0x5d0]
313103  44 8b cb                       mov    r9d,ebx
313106  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
31310c  48 8d 95 d8 05 00 00           lea    rdx,[rbp+0x5d8]
313113  49 8b cd                       mov    rcx,r13
313116  e8 41 91 04 00                 call   0x35c25c
31311b  eb 12                          jmp    0x31312f
31311d  f3 0f 10 35 d3 ff f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff7ffd3]        # 0x2930f8 ; f32=1.25
313125  eb 15                          jmp    0x31313c
313127  f3 0f 10 35 c9 ff f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff7ffc9]        # 0x2930f8 ; f32=1.25
31312f  44 8a 85 a8 15 00 00           mov    r8b,BYTE PTR [rbp+0x15a8]
313136  8a 95 b0 15 00 00              mov    dl,BYTE PTR [rbp+0x15b0]
31313c  44 38 3d 45 47 0d 00           cmp    BYTE PTR [rip+0xd4745],r15b        # 0x3e7888 ; CONFIG Bools.PlayerView value(+0x48)
313143  0f 84 21 02 00 00              je     0x31336a
313149  41 0a d0                       or     dl,r8b
31314c  40 0a f2                       or     sil,dl
31314f  0f 85 15 02 00 00              jne    0x31336a
313155  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31315a  48 8d 55 80                    lea    rdx,[rbp-0x80]
31315e  41 b8 35 00 00 00              mov    r8d,0x35
313164  e8 7f 5a 05 00                 call   0x368be8
313169  41 0f 28 dc                    movaps xmm3,xmm12
31316d  48 8d 4d b0                    lea    rcx,[rbp-0x50]
313171  0f 57 d2                       xorps  xmm2,xmm2
313174  0f 57 c9                       xorps  xmm1,xmm1
313177  e8 2c 4a 0b 00                 call   0x3c7ba8
31317c  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
313181  48 8d 55 b0                    lea    rdx,[rbp-0x50]
313185  48 8d 8d 10 11 00 00           lea    rcx,[rbp+0x1110]
31318c  e8 23 dc 00 00                 call   0x320db4
313191  4c 8b c0                       mov    r8,rax
313194  48 8d 95 00 0a 00 00           lea    rdx,[rbp+0xa00]
31319b  48 8d 4d 80                    lea    rcx,[rbp-0x80]
31319f  e8 64 c5 fc ff                 call   0x2df708
3131a4  48 8d 8d c8 01 00 00           lea    rcx,[rbp+0x1c8]
3131ab  e8 f4 81 fb ff                 call   0x2cb3a4
3131b0  48 8d 8d b0 01 00 00           lea    rcx,[rbp+0x1b0]
3131b7  e8 e8 81 fb ff                 call   0x2cb3a4
3131bc  f2 0f 10 85 00 0a 00 00        movsd  xmm0,QWORD PTR [rbp+0xa00]
3131c4  4c 8d 85 c8 01 00 00           lea    r8,[rbp+0x1c8]
3131cb  8b 85 08 0a 00 00              mov    eax,DWORD PTR [rbp+0xa08]
3131d1  48 8d 95 10 0a 00 00           lea    rdx,[rbp+0xa10]
3131d8  4c 8b cf                       mov    r9,rdi
3131db  f2 0f 11 85 10 0a 00 00        movsd  QWORD PTR [rbp+0xa10],xmm0
3131e3  49 8b cc                       mov    rcx,r12
3131e6  89 85 18 0a 00 00              mov    DWORD PTR [rbp+0xa18],eax
3131ec  e8 2f 9b 05 00                 call   0x36cd20
3131f1  84 c0                          test   al,al
3131f3  0f 84 71 01 00 00              je     0x31336a
3131f9  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
3131fe  4c 8d 85 b0 01 00 00           lea    r8,[rbp+0x1b0]
313205  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
313208  48 8d 95 20 0a 00 00           lea    rdx,[rbp+0xa20]
31320f  4c 8b cf                       mov    r9,rdi
313212  f2 0f 11 85 20 0a 00 00        movsd  QWORD PTR [rbp+0xa20],xmm0
31321a  49 8b cc                       mov    rcx,r12
31321d  89 85 28 0a 00 00              mov    DWORD PTR [rbp+0xa28],eax
313223  e8 f8 9a 05 00                 call   0x36cd20
313228  84 c0                          test   al,al
31322a  0f 84 3a 01 00 00              je     0x31336a
313230  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313234  e8 d3 c5 fd ff                 call   0x2ef80c
313239  f3 0f 10 8d c8 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1c8]
313241  48 8d 8d e0 05 00 00           lea    rcx,[rbp+0x5e0]
313248  f3 0f 10 95 cc 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1cc]
313250  f3 41 0f 58 cc                 addss  xmm1,xmm12
313255  8b d8                          mov    ebx,eax
313257  e8 e4 90 fb ff                 call   0x2cc340
31325c  f3 0f 10 8d b0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1b0]
313264  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
31326b  f3 0f 10 95 b4 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1b4]
313273  f3 41 0f 58 cc                 addss  xmm1,xmm12
313278  e8 c3 90 fb ff                 call   0x2cc340
31327d  44 8b cb                       mov    r9d,ebx
313280  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313286  4c 8d 85 e0 05 00 00           lea    r8,[rbp+0x5e0]
31328d  49 8b cd                       mov    rcx,r13
313290  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
313297  e8 c0 8f 04 00                 call   0x35c25c
31329c  48 8d 4d 90                    lea    rcx,[rbp-0x70]
3132a0  e8 67 c5 fd ff                 call   0x2ef80c
3132a5  f3 0f 10 95 cc 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1cc]
3132ad  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3132b4  f3 0f 10 8d c8 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1c8]
3132bc  f3 41 0f 58 d4                 addss  xmm2,xmm12
3132c1  8b d8                          mov    ebx,eax
3132c3  e8 78 90 fb ff                 call   0x2cc340
3132c8  f3 0f 10 95 b4 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1b4]
3132d0  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
3132d7  f3 0f 10 8d b0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1b0]
3132df  f3 41 0f 58 d4                 addss  xmm2,xmm12
3132e4  e8 57 90 fb ff                 call   0x2cc340
3132e9  44 8b cb                       mov    r9d,ebx
3132ec  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3132f2  4c 8d 85 f0 05 00 00           lea    r8,[rbp+0x5f0]
3132f9  49 8b cd                       mov    rcx,r13
3132fc  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
313303  e8 54 8f 04 00                 call   0x35c25c
313308  48 8d 4d 90                    lea    rcx,[rbp-0x70]
31330c  e8 fb c4 fd ff                 call   0x2ef80c
313311  f3 0f 10 95 cc 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1cc]
313319  48 8d 8d 00 06 00 00           lea    rcx,[rbp+0x600]
313320  f3 0f 10 8d c8 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1c8]
313328  8b d8                          mov    ebx,eax
31332a  e8 11 90 fb ff                 call   0x2cc340
31332f  f3 0f 10 95 b4 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1b4]
313337  48 8d 8d 08 06 00 00           lea    rcx,[rbp+0x608]
31333e  f3 0f 10 8d b0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1b0]
313346  e8 f5 8f fb ff                 call   0x2cc340
31334b  44 8b cb                       mov    r9d,ebx
31334e  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313354  4c 8d 85 00 06 00 00           lea    r8,[rbp+0x600]
31335b  49 8b cd                       mov    rcx,r13
31335e  48 8d 95 08 06 00 00           lea    rdx,[rbp+0x608]
313365  e8 f2 8e 04 00                 call   0x35c25c
31336a  44 38 3d 97 42 0d 00           cmp    BYTE PTR [rip+0xd4297],r15b        # 0x3e7608 ; CONFIG Bools.Skeleton value(+0x48)
313371  0f 84 f3 0d 00 00              je     0x31416a
313377  48 8d 8d c0 03 00 00           lea    rcx,[rbp+0x3c0]
31337e  e8 21 80 fb ff                 call   0x2cb3a4
313383  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
31338a  e8 15 80 fb ff                 call   0x2cb3a4
31338f  48 8d 4d 40                    lea    rcx,[rbp+0x40]
313393  e8 0c 80 fb ff                 call   0x2cb3a4
313398  48 8d 8d c8 03 00 00           lea    rcx,[rbp+0x3c8]
31339f  e8 00 80 fb ff                 call   0x2cb3a4
3133a4  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
3133ab  e8 f4 7f fb ff                 call   0x2cb3a4
3133b0  48 8d 8d 98 02 00 00           lea    rcx,[rbp+0x298]
3133b7  e8 e8 7f fb ff                 call   0x2cb3a4
3133bc  48 8d 8d 88 02 00 00           lea    rcx,[rbp+0x288]
3133c3  e8 dc 7f fb ff                 call   0x2cb3a4
3133c8  48 8d 8d 90 02 00 00           lea    rcx,[rbp+0x290]
3133cf  e8 d0 7f fb ff                 call   0x2cb3a4
3133d4  48 8d 8d d0 03 00 00           lea    rcx,[rbp+0x3d0]
3133db  e8 c4 7f fb ff                 call   0x2cb3a4
3133e0  48 8d 8d 78 02 00 00           lea    rcx,[rbp+0x278]
3133e7  e8 b8 7f fb ff                 call   0x2cb3a4
3133ec  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
3133f3  e8 ac 7f fb ff                 call   0x2cb3a4
3133f8  48 8d 8d b8 02 00 00           lea    rcx,[rbp+0x2b8]
3133ff  e8 a0 7f fb ff                 call   0x2cb3a4
313404  48 8d 8d b0 02 00 00           lea    rcx,[rbp+0x2b0]
31340b  e8 94 7f fb ff                 call   0x2cb3a4
313410  48 8d 8d 70 02 00 00           lea    rcx,[rbp+0x270]
313417  e8 88 7f fb ff                 call   0x2cb3a4
31341c  48 8d 8d d0 02 00 00           lea    rcx,[rbp+0x2d0]
313423  e8 7c 7f fb ff                 call   0x2cb3a4
313428  48 8d 8d d8 03 00 00           lea    rcx,[rbp+0x3d8]
31342f  e8 70 7f fb ff                 call   0x2cb3a4
313434  48 8d 8d a8 02 00 00           lea    rcx,[rbp+0x2a8]
31343b  e8 64 7f fb ff                 call   0x2cb3a4
313440  48 8d 8d e0 03 00 00           lea    rcx,[rbp+0x3e0]
313447  e8 58 7f fb ff                 call   0x2cb3a4
31344c  48 8d 8d e8 03 00 00           lea    rcx,[rbp+0x3e8]
313453  e8 4c 7f fb ff                 call   0x2cb3a4
313458  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31345d  48 8d 95 1c 11 00 00           lea    rdx,[rbp+0x111c]
313464  41 b8 35 00 00 00              mov    r8d,0x35
31346a  e8 79 57 05 00                 call   0x368be8
31346f  4c 8b cf                       mov    r9,rdi
313472  4c 8d 85 c0 03 00 00           lea    r8,[rbp+0x3c0]
313479  48 8d 95 30 0a 00 00           lea    rdx,[rbp+0xa30]
313480  49 8b cc                       mov    rcx,r12
313483  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313487  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31348a  f2 0f 11 85 30 0a 00 00        movsd  QWORD PTR [rbp+0xa30],xmm0
313492  89 85 38 0a 00 00              mov    DWORD PTR [rbp+0xa38],eax
313498  e8 83 98 05 00                 call   0x36cd20
31349d  84 c0                          test   al,al
31349f  0f 84 c5 0c 00 00              je     0x31416a
3134a5  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3134aa  48 8d 95 28 11 00 00           lea    rdx,[rbp+0x1128]
3134b1  41 b8 34 00 00 00              mov    r8d,0x34
3134b7  e8 2c 57 05 00                 call   0x368be8
3134bc  4c 8b cf                       mov    r9,rdi
3134bf  4c 8d 85 70 01 00 00           lea    r8,[rbp+0x170]
3134c6  48 8d 95 40 0a 00 00           lea    rdx,[rbp+0xa40]
3134cd  49 8b cc                       mov    rcx,r12
3134d0  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3134d4  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3134d7  f2 0f 11 85 40 0a 00 00        movsd  QWORD PTR [rbp+0xa40],xmm0
3134df  89 85 48 0a 00 00              mov    DWORD PTR [rbp+0xa48],eax
3134e5  e8 36 98 05 00                 call   0x36cd20
3134ea  84 c0                          test   al,al
3134ec  0f 84 78 0c 00 00              je     0x31416a
3134f2  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3134f7  48 8d 95 34 11 00 00           lea    rdx,[rbp+0x1134]
3134fe  41 b8 14 00 00 00              mov    r8d,0x14
313504  e8 df 56 05 00                 call   0x368be8
313509  4c 8b cf                       mov    r9,rdi
31350c  4c 8d 45 40                    lea    r8,[rbp+0x40]
313510  48 8d 95 50 0a 00 00           lea    rdx,[rbp+0xa50]
313517  49 8b cc                       mov    rcx,r12
31351a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31351e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313521  f2 0f 11 85 50 0a 00 00        movsd  QWORD PTR [rbp+0xa50],xmm0
313529  89 85 58 0a 00 00              mov    DWORD PTR [rbp+0xa58],eax
31352f  e8 ec 97 05 00                 call   0x36cd20
313534  84 c0                          test   al,al
313536  0f 84 2e 0c 00 00              je     0x31416a
31353c  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
313541  48 8d 95 40 11 00 00           lea    rdx,[rbp+0x1140]
313548  41 b8 41 00 00 00              mov    r8d,0x41
31354e  e8 95 56 05 00                 call   0x368be8
313553  4c 8b cf                       mov    r9,rdi
313556  4c 8d 85 c8 03 00 00           lea    r8,[rbp+0x3c8]
31355d  48 8d 95 60 0a 00 00           lea    rdx,[rbp+0xa60]
313564  49 8b cc                       mov    rcx,r12
313567  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31356b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31356e  f2 0f 11 85 60 0a 00 00        movsd  QWORD PTR [rbp+0xa60],xmm0
313576  89 85 68 0a 00 00              mov    DWORD PTR [rbp+0xa68],eax
31357c  e8 9f 97 05 00                 call   0x36cd20
313581  84 c0                          test   al,al
313583  0f 84 e1 0b 00 00              je     0x31416a
313589  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31358e  48 8d 95 4c 11 00 00           lea    rdx,[rbp+0x114c]
313595  41 b8 3e 00 00 00              mov    r8d,0x3e
31359b  e8 48 56 05 00                 call   0x368be8
3135a0  4c 8b cf                       mov    r9,rdi
3135a3  4c 8d 85 a0 02 00 00           lea    r8,[rbp+0x2a0]
3135aa  48 8d 95 70 0a 00 00           lea    rdx,[rbp+0xa70]
3135b1  49 8b cc                       mov    rcx,r12
3135b4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3135b8  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3135bb  f2 0f 11 85 70 0a 00 00        movsd  QWORD PTR [rbp+0xa70],xmm0
3135c3  89 85 78 0a 00 00              mov    DWORD PTR [rbp+0xa78],eax
3135c9  e8 52 97 05 00                 call   0x36cd20
3135ce  84 c0                          test   al,al
3135d0  0f 84 94 0b 00 00              je     0x31416a
3135d6  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3135db  48 8d 95 58 11 00 00           lea    rdx,[rbp+0x1158]
3135e2  41 b8 3d 00 00 00              mov    r8d,0x3d
3135e8  e8 fb 55 05 00                 call   0x368be8
3135ed  4c 8b cf                       mov    r9,rdi
3135f0  4c 8d 85 98 02 00 00           lea    r8,[rbp+0x298]
3135f7  48 8d 95 80 0a 00 00           lea    rdx,[rbp+0xa80]
3135fe  49 8b cc                       mov    rcx,r12
313601  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313605  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313608  f2 0f 11 85 80 0a 00 00        movsd  QWORD PTR [rbp+0xa80],xmm0
313610  89 85 88 0a 00 00              mov    DWORD PTR [rbp+0xa88],eax
313616  e8 05 97 05 00                 call   0x36cd20
31361b  84 c0                          test   al,al
31361d  0f 84 47 0b 00 00              je     0x31416a
313623  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
313628  48 8d 95 64 11 00 00           lea    rdx,[rbp+0x1164]
31362f  41 b8 19 00 00 00              mov    r8d,0x19
313635  e8 ae 55 05 00                 call   0x368be8
31363a  4c 8b cf                       mov    r9,rdi
31363d  4c 8d 85 88 02 00 00           lea    r8,[rbp+0x288]
313644  48 8d 95 90 0a 00 00           lea    rdx,[rbp+0xa90]
31364b  49 8b cc                       mov    rcx,r12
31364e  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313652  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313655  f2 0f 11 85 90 0a 00 00        movsd  QWORD PTR [rbp+0xa90],xmm0
31365d  89 85 98 0a 00 00              mov    DWORD PTR [rbp+0xa98],eax
313663  e8 b8 96 05 00                 call   0x36cd20
313668  84 c0                          test   al,al
31366a  0f 84 fa 0a 00 00              je     0x31416a
313670  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
313675  48 8d 95 70 11 00 00           lea    rdx,[rbp+0x1170]
31367c  41 b8 1a 00 00 00              mov    r8d,0x1a
313682  e8 61 55 05 00                 call   0x368be8
313687  4c 8b cf                       mov    r9,rdi
31368a  4c 8d 85 90 02 00 00           lea    r8,[rbp+0x290]
313691  48 8d 95 a0 0a 00 00           lea    rdx,[rbp+0xaa0]
313698  49 8b cc                       mov    rcx,r12
31369b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31369f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3136a2  f2 0f 11 85 a0 0a 00 00        movsd  QWORD PTR [rbp+0xaa0],xmm0
3136aa  89 85 a8 0a 00 00              mov    DWORD PTR [rbp+0xaa8],eax
3136b0  e8 6b 96 05 00                 call   0x36cd20
3136b5  84 c0                          test   al,al
3136b7  0f 84 ad 0a 00 00              je     0x31416a
3136bd  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3136c2  48 8d 95 7c 11 00 00           lea    rdx,[rbp+0x117c]
3136c9  41 b8 1d 00 00 00              mov    r8d,0x1d
3136cf  e8 14 55 05 00                 call   0x368be8
3136d4  4c 8b cf                       mov    r9,rdi
3136d7  4c 8d 85 d0 03 00 00           lea    r8,[rbp+0x3d0]
3136de  48 8d 95 b0 0a 00 00           lea    rdx,[rbp+0xab0]
3136e5  49 8b cc                       mov    rcx,r12
3136e8  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3136ec  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3136ef  f2 0f 11 85 b0 0a 00 00        movsd  QWORD PTR [rbp+0xab0],xmm0
3136f7  89 85 b8 0a 00 00              mov    DWORD PTR [rbp+0xab8],eax
3136fd  e8 1e 96 05 00                 call   0x36cd20
313702  84 c0                          test   al,al
313704  0f 84 60 0a 00 00              je     0x31416a
31370a  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31370f  48 8d 95 88 11 00 00           lea    rdx,[rbp+0x1188]
313716  41 b8 0e 00 00 00              mov    r8d,0xe
31371c  e8 c7 54 05 00                 call   0x368be8
313721  4c 8b cf                       mov    r9,rdi
313724  4c 8d 85 78 02 00 00           lea    r8,[rbp+0x278]
31372b  48 8d 95 c0 0a 00 00           lea    rdx,[rbp+0xac0]
313732  49 8b cc                       mov    rcx,r12
313735  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313739  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31373c  f2 0f 11 85 c0 0a 00 00        movsd  QWORD PTR [rbp+0xac0],xmm0
313744  89 85 c8 0a 00 00              mov    DWORD PTR [rbp+0xac8],eax
31374a  e8 d1 95 05 00                 call   0x36cd20
31374f  84 c0                          test   al,al
313751  0f 84 13 0a 00 00              je     0x31416a
313757  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31375c  48 8d 95 94 11 00 00           lea    rdx,[rbp+0x1194]
313763  41 b8 10 00 00 00              mov    r8d,0x10
313769  e8 7a 54 05 00                 call   0x368be8
31376e  4c 8b cf                       mov    r9,rdi
313771  4c 8d 85 80 02 00 00           lea    r8,[rbp+0x280]
313778  48 8d 95 d0 0a 00 00           lea    rdx,[rbp+0xad0]
31377f  49 8b cc                       mov    rcx,r12
313782  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313786  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313789  f2 0f 11 85 d0 0a 00 00        movsd  QWORD PTR [rbp+0xad0],xmm0
313791  89 85 d8 0a 00 00              mov    DWORD PTR [rbp+0xad8],eax
313797  e8 84 95 05 00                 call   0x36cd20
31379c  84 c0                          test   al,al
31379e  0f 84 c6 09 00 00              je     0x31416a
3137a4  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3137a9  48 8d 95 a0 11 00 00           lea    rdx,[rbp+0x11a0]
3137b0  41 b8 03 00 00 00              mov    r8d,0x3
3137b6  e8 2d 54 05 00                 call   0x368be8
3137bb  4c 8b cf                       mov    r9,rdi
3137be  4c 8d 85 d0 02 00 00           lea    r8,[rbp+0x2d0]
3137c5  48 8d 95 e0 0a 00 00           lea    rdx,[rbp+0xae0]
3137cc  49 8b cc                       mov    rcx,r12
3137cf  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3137d3  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3137d6  f2 0f 11 85 e0 0a 00 00        movsd  QWORD PTR [rbp+0xae0],xmm0
3137de  89 85 e8 0a 00 00              mov    DWORD PTR [rbp+0xae8],eax
3137e4  e8 37 95 05 00                 call   0x36cd20
3137e9  84 c0                          test   al,al
3137eb  0f 84 79 09 00 00              je     0x31416a
3137f1  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3137f6  48 8d 95 ac 11 00 00           lea    rdx,[rbp+0x11ac]
3137fd  41 b8 11 00 00 00              mov    r8d,0x11
313803  e8 e0 53 05 00                 call   0x368be8
313808  4c 8b cf                       mov    r9,rdi
31380b  4c 8d 85 b8 02 00 00           lea    r8,[rbp+0x2b8]
313812  48 8d 95 f0 0a 00 00           lea    rdx,[rbp+0xaf0]
313819  49 8b cc                       mov    rcx,r12
31381c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313820  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313823  f2 0f 11 85 f0 0a 00 00        movsd  QWORD PTR [rbp+0xaf0],xmm0
31382b  89 85 f8 0a 00 00              mov    DWORD PTR [rbp+0xaf8],eax
313831  e8 ea 94 05 00                 call   0x36cd20
313836  84 c0                          test   al,al
313838  0f 84 2c 09 00 00              je     0x31416a
31383e  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
313843  48 8d 95 e0 0c 00 00           lea    rdx,[rbp+0xce0]
31384a  41 b8 04 00 00 00              mov    r8d,0x4
313850  e8 93 53 05 00                 call   0x368be8
313855  4c 8b cf                       mov    r9,rdi
313858  4c 8d 85 b0 02 00 00           lea    r8,[rbp+0x2b0]
31385f  48 8d 95 00 0b 00 00           lea    rdx,[rbp+0xb00]
313866  49 8b cc                       mov    rcx,r12
313869  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31386d  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313870  f2 0f 11 85 00 0b 00 00        movsd  QWORD PTR [rbp+0xb00],xmm0
313878  89 85 08 0b 00 00              mov    DWORD PTR [rbp+0xb08],eax
31387e  e8 9d 94 05 00                 call   0x36cd20
313883  84 c0                          test   al,al
313885  0f 84 df 08 00 00              je     0x31416a
31388b  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
313890  48 8d 95 10 0c 00 00           lea    rdx,[rbp+0xc10]
313897  41 b8 01 00 00 00              mov    r8d,0x1
31389d  e8 46 53 05 00                 call   0x368be8
3138a2  4c 8b cf                       mov    r9,rdi
3138a5  4c 8d 85 70 02 00 00           lea    r8,[rbp+0x270]
3138ac  48 8d 95 10 0b 00 00           lea    rdx,[rbp+0xb10]
3138b3  49 8b cc                       mov    rcx,r12
3138b6  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3138ba  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3138bd  f2 0f 11 85 10 0b 00 00        movsd  QWORD PTR [rbp+0xb10],xmm0
3138c5  89 85 18 0b 00 00              mov    DWORD PTR [rbp+0xb18],eax
3138cb  e8 50 94 05 00                 call   0x36cd20
3138d0  84 c0                          test   al,al
3138d2  0f 84 92 08 00 00              je     0x31416a
3138d8  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3138dd  48 8d 95 1c 0c 00 00           lea    rdx,[rbp+0xc1c]
3138e4  41 b8 07 00 00 00              mov    r8d,0x7
3138ea  e8 f9 52 05 00                 call   0x368be8
3138ef  4c 8b cf                       mov    r9,rdi
3138f2  4c 8d 85 d8 03 00 00           lea    r8,[rbp+0x3d8]
3138f9  48 8d 95 20 0b 00 00           lea    rdx,[rbp+0xb20]
313900  49 8b cc                       mov    rcx,r12
313903  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313907  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31390a  f2 0f 11 85 20 0b 00 00        movsd  QWORD PTR [rbp+0xb20],xmm0
313912  89 85 28 0b 00 00              mov    DWORD PTR [rbp+0xb28],eax
313918  e8 03 94 05 00                 call   0x36cd20
31391d  84 c0                          test   al,al
31391f  0f 84 45 08 00 00              je     0x31416a
313925  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
31392a  48 8d 95 28 0c 00 00           lea    rdx,[rbp+0xc28]
313931  41 b8 05 00 00 00              mov    r8d,0x5
313937  e8 ac 52 05 00                 call   0x368be8
31393c  4c 8b cf                       mov    r9,rdi
31393f  4c 8d 85 e0 03 00 00           lea    r8,[rbp+0x3e0]
313946  48 8d 95 60 04 00 00           lea    rdx,[rbp+0x460]
31394d  49 8b cc                       mov    rcx,r12
313950  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
313954  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
313957  f2 0f 11 85 60 04 00 00        movsd  QWORD PTR [rbp+0x460],xmm0
31395f  89 85 68 04 00 00              mov    DWORD PTR [rbp+0x468],eax
313965  e8 b6 93 05 00                 call   0x36cd20
31396a  84 c0                          test   al,al
31396c  0f 84 f8 07 00 00              je     0x31416a
313972  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
313977  48 8d 95 f0 0b 00 00           lea    rdx,[rbp+0xbf0]
31397e  41 b8 12 00 00 00              mov    r8d,0x12
313984  e8 5f 52 05 00                 call   0x368be8
313989  4c 8b cf                       mov    r9,rdi
31398c  4c 8d 85 e8 03 00 00           lea    r8,[rbp+0x3e8]
313993  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
31399a  49 8b cc                       mov    rcx,r12
31399d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3139a1  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3139a4  f2 0f 11 85 40 02 00 00        movsd  QWORD PTR [rbp+0x240],xmm0
3139ac  89 85 48 02 00 00              mov    DWORD PTR [rbp+0x248],eax
3139b2  e8 69 93 05 00                 call   0x36cd20
3139b7  84 c0                          test   al,al
3139b9  0f 84 ab 07 00 00              je     0x31416a
3139bf  48 8b 4c 24 58                 mov    rcx,QWORD PTR [rsp+0x58]
3139c4  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
3139cb  45 33 c0                       xor    r8d,r8d
3139ce  e8 15 52 05 00                 call   0x368be8
3139d3  4c 8b cf                       mov    r9,rdi
3139d6  4c 8d 85 a8 02 00 00           lea    r8,[rbp+0x2a8]
3139dd  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
3139e4  49 8b cc                       mov    rcx,r12
3139e7  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3139eb  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3139ee  f2 0f 11 85 30 01 00 00        movsd  QWORD PTR [rbp+0x130],xmm0
3139f6  89 85 38 01 00 00              mov    DWORD PTR [rbp+0x138],eax
3139fc  e8 1f 93 05 00                 call   0x36cd20
313a01  84 c0                          test   al,al
313a03  0f 84 61 07 00 00              je     0x31416a
313a09  f3 0f 10 35 07 9c 0d 00        movss  xmm6,DWORD PTR [rip+0xd9c07]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313a11  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313a15  e8 f2 bd fd ff                 call   0x2ef80c
313a1a  f3 0f 10 95 74 01 00 00        movss  xmm2,DWORD PTR [rbp+0x174]
313a22  48 8d 8d 10 06 00 00           lea    rcx,[rbp+0x610]
313a29  f3 0f 10 8d 70 01 00 00        movss  xmm1,DWORD PTR [rbp+0x170]
313a31  8b d8                          mov    ebx,eax
313a33  e8 08 89 fb ff                 call   0x2cc340
313a38  f3 0f 10 95 c4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3c4]
313a40  48 8d 8d 18 06 00 00           lea    rcx,[rbp+0x618]
313a47  f3 0f 10 8d c0 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3c0]
313a4f  e8 ec 88 fb ff                 call   0x2cc340
313a54  44 8b cb                       mov    r9d,ebx
313a57  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313a5d  4c 8d 85 10 06 00 00           lea    r8,[rbp+0x610]
313a64  49 8b cd                       mov    rcx,r13
313a67  48 8d 95 18 06 00 00           lea    rdx,[rbp+0x618]
313a6e  e8 e9 87 04 00                 call   0x35c25c
313a73  f3 0f 10 35 9d 9b 0d 00        movss  xmm6,DWORD PTR [rip+0xd9b9d]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313a7b  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313a7f  e8 88 bd fd ff                 call   0x2ef80c
313a84  f3 0f 10 95 74 01 00 00        movss  xmm2,DWORD PTR [rbp+0x174]
313a8c  48 8d 8d 20 06 00 00           lea    rcx,[rbp+0x620]
313a93  f3 0f 10 8d 70 01 00 00        movss  xmm1,DWORD PTR [rbp+0x170]
313a9b  8b d8                          mov    ebx,eax
313a9d  e8 9e 88 fb ff                 call   0x2cc340
313aa2  f3 0f 10 55 44                 movss  xmm2,DWORD PTR [rbp+0x44]
313aa7  48 8d 8d 28 06 00 00           lea    rcx,[rbp+0x628]
313aae  f3 0f 10 4d 40                 movss  xmm1,DWORD PTR [rbp+0x40]
313ab3  e8 88 88 fb ff                 call   0x2cc340
313ab8  44 8b cb                       mov    r9d,ebx
313abb  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313ac1  4c 8d 85 20 06 00 00           lea    r8,[rbp+0x620]
313ac8  49 8b cd                       mov    rcx,r13
313acb  48 8d 95 28 06 00 00           lea    rdx,[rbp+0x628]
313ad2  e8 85 87 04 00                 call   0x35c25c
313ad7  f3 0f 10 35 39 9b 0d 00        movss  xmm6,DWORD PTR [rip+0xd9b39]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313adf  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313ae3  e8 24 bd fd ff                 call   0x2ef80c
313ae8  f3 0f 10 95 9c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x29c]
313af0  48 8d 8d 30 06 00 00           lea    rcx,[rbp+0x630]
313af7  f3 0f 10 8d 98 02 00 00        movss  xmm1,DWORD PTR [rbp+0x298]
313aff  8b d8                          mov    ebx,eax
313b01  e8 3a 88 fb ff                 call   0x2cc340
313b06  f3 0f 10 95 74 01 00 00        movss  xmm2,DWORD PTR [rbp+0x174]
313b0e  48 8d 8d 38 06 00 00           lea    rcx,[rbp+0x638]
313b15  f3 0f 10 8d 70 01 00 00        movss  xmm1,DWORD PTR [rbp+0x170]
313b1d  e8 1e 88 fb ff                 call   0x2cc340
313b22  44 8b cb                       mov    r9d,ebx
313b25  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313b2b  4c 8d 85 30 06 00 00           lea    r8,[rbp+0x630]
313b32  49 8b cd                       mov    rcx,r13
313b35  48 8d 95 38 06 00 00           lea    rdx,[rbp+0x638]
313b3c  e8 1b 87 04 00                 call   0x35c25c
313b41  f3 0f 10 35 cf 9a 0d 00        movss  xmm6,DWORD PTR [rip+0xd9acf]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313b49  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313b4d  e8 ba bc fd ff                 call   0x2ef80c
313b52  f3 0f 10 95 a4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2a4]
313b5a  48 8d 8d 40 06 00 00           lea    rcx,[rbp+0x640]
313b61  f3 0f 10 8d a0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2a0]
313b69  8b d8                          mov    ebx,eax
313b6b  e8 d0 87 fb ff                 call   0x2cc340
313b70  f3 0f 10 95 cc 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3cc]
313b78  48 8d 8d 48 06 00 00           lea    rcx,[rbp+0x648]
313b7f  f3 0f 10 8d c8 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3c8]
313b87  e8 b4 87 fb ff                 call   0x2cc340
313b8c  44 8b cb                       mov    r9d,ebx
313b8f  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313b95  4c 8d 85 40 06 00 00           lea    r8,[rbp+0x640]
313b9c  49 8b cd                       mov    rcx,r13
313b9f  48 8d 95 48 06 00 00           lea    rdx,[rbp+0x648]
313ba6  e8 b1 86 04 00                 call   0x35c25c
313bab  f3 0f 10 35 65 9a 0d 00        movss  xmm6,DWORD PTR [rip+0xd9a65]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313bb3  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313bb7  e8 50 bc fd ff                 call   0x2ef80c
313bbc  f3 0f 10 95 8c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x28c]
313bc4  48 8d 8d 50 06 00 00           lea    rcx,[rbp+0x650]
313bcb  f3 0f 10 8d 88 02 00 00        movss  xmm1,DWORD PTR [rbp+0x288]
313bd3  8b d8                          mov    ebx,eax
313bd5  e8 66 87 fb ff                 call   0x2cc340
313bda  f3 0f 10 95 74 01 00 00        movss  xmm2,DWORD PTR [rbp+0x174]
313be2  f3 0f 10 8d 70 01 00 00        movss  xmm1,DWORD PTR [rbp+0x170]
313bea  48 8d 8d 58 06 00 00           lea    rcx,[rbp+0x658]
313bf1  e8 4a 87 fb ff                 call   0x2cc340
313bf6  44 8b cb                       mov    r9d,ebx
313bf9  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313bff  4c 8d 85 50 06 00 00           lea    r8,[rbp+0x650]
313c06  49 8b cd                       mov    rcx,r13
313c09  48 8d 95 58 06 00 00           lea    rdx,[rbp+0x658]
313c10  e8 47 86 04 00                 call   0x35c25c
313c15  f3 0f 10 35 fb 99 0d 00        movss  xmm6,DWORD PTR [rip+0xd99fb]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313c1d  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313c21  e8 e6 bb fd ff                 call   0x2ef80c
313c26  f3 0f 10 95 d4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3d4]
313c2e  48 8d 8d 60 06 00 00           lea    rcx,[rbp+0x660]
313c35  f3 0f 10 8d d0 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3d0]
313c3d  8b d8                          mov    ebx,eax
313c3f  e8 fc 86 fb ff                 call   0x2cc340
313c44  f3 0f 10 95 94 02 00 00        movss  xmm2,DWORD PTR [rbp+0x294]
313c4c  48 8d 8d 68 06 00 00           lea    rcx,[rbp+0x668]
313c53  f3 0f 10 8d 90 02 00 00        movss  xmm1,DWORD PTR [rbp+0x290]
313c5b  e8 e0 86 fb ff                 call   0x2cc340
313c60  44 8b cb                       mov    r9d,ebx
313c63  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313c69  4c 8d 85 60 06 00 00           lea    r8,[rbp+0x660]
313c70  49 8b cd                       mov    rcx,r13
313c73  48 8d 95 68 06 00 00           lea    rdx,[rbp+0x668]
313c7a  e8 dd 85 04 00                 call   0x35c25c
313c7f  f3 0f 10 35 91 99 0d 00        movss  xmm6,DWORD PTR [rip+0xd9991]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313c87  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313c8b  e8 7c bb fd ff                 call   0x2ef80c
313c90  f3 0f 10 95 7c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x27c]
313c98  48 8d 8d 70 06 00 00           lea    rcx,[rbp+0x670]
313c9f  f3 0f 10 8d 78 02 00 00        movss  xmm1,DWORD PTR [rbp+0x278]
313ca7  8b d8                          mov    ebx,eax
313ca9  e8 92 86 fb ff                 call   0x2cc340
313cae  f3 0f 10 55 44                 movss  xmm2,DWORD PTR [rbp+0x44]
313cb3  48 8d 8d 78 06 00 00           lea    rcx,[rbp+0x678]
313cba  f3 0f 10 4d 40                 movss  xmm1,DWORD PTR [rbp+0x40]
313cbf  e8 7c 86 fb ff                 call   0x2cc340
313cc4  44 8b cb                       mov    r9d,ebx
313cc7  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313ccd  4c 8d 85 70 06 00 00           lea    r8,[rbp+0x670]
313cd4  49 8b cd                       mov    rcx,r13
313cd7  48 8d 95 78 06 00 00           lea    rdx,[rbp+0x678]
313cde  e8 79 85 04 00                 call   0x35c25c
313ce3  f3 0f 10 35 2d 99 0d 00        movss  xmm6,DWORD PTR [rip+0xd992d]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313ceb  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313cef  e8 18 bb fd ff                 call   0x2ef80c
313cf4  f3 0f 10 95 84 02 00 00        movss  xmm2,DWORD PTR [rbp+0x284]
313cfc  48 8d 8d 80 06 00 00           lea    rcx,[rbp+0x680]
313d03  f3 0f 10 8d 80 02 00 00        movss  xmm1,DWORD PTR [rbp+0x280]
313d0b  8b d8                          mov    ebx,eax
313d0d  e8 2e 86 fb ff                 call   0x2cc340
313d12  f3 0f 10 95 bc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2bc]
313d1a  48 8d 8d 88 06 00 00           lea    rcx,[rbp+0x688]
313d21  f3 0f 10 8d b8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b8]
313d29  e8 12 86 fb ff                 call   0x2cc340
313d2e  44 8b cb                       mov    r9d,ebx
313d31  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313d37  4c 8d 85 80 06 00 00           lea    r8,[rbp+0x680]
313d3e  49 8b cd                       mov    rcx,r13
313d41  48 8d 95 88 06 00 00           lea    rdx,[rbp+0x688]
313d48  e8 0f 85 04 00                 call   0x35c25c
313d4d  f3 0f 10 35 c3 98 0d 00        movss  xmm6,DWORD PTR [rip+0xd98c3]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313d55  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313d59  e8 ae ba fd ff                 call   0x2ef80c
313d5e  f3 0f 10 95 b4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2b4]
313d66  48 8d 8d 90 06 00 00           lea    rcx,[rbp+0x690]
313d6d  f3 0f 10 8d b0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b0]
313d75  8b d8                          mov    ebx,eax
313d77  e8 c4 85 fb ff                 call   0x2cc340
313d7c  f3 0f 10 95 d4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2d4]
313d84  48 8d 8d 98 06 00 00           lea    rcx,[rbp+0x698]
313d8b  f3 0f 10 8d d0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d0]
313d93  e8 a8 85 fb ff                 call   0x2cc340
313d98  44 8b cb                       mov    r9d,ebx
313d9b  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313da1  4c 8d 85 90 06 00 00           lea    r8,[rbp+0x690]
313da8  49 8b cd                       mov    rcx,r13
313dab  48 8d 95 98 06 00 00           lea    rdx,[rbp+0x698]
313db2  e8 a5 84 04 00                 call   0x35c25c
313db7  f3 0f 10 35 59 98 0d 00        movss  xmm6,DWORD PTR [rip+0xd9859]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313dbf  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313dc3  e8 44 ba fd ff                 call   0x2ef80c
313dc8  f3 0f 10 95 74 02 00 00        movss  xmm2,DWORD PTR [rbp+0x274]
313dd0  48 8d 8d a0 06 00 00           lea    rcx,[rbp+0x6a0]
313dd7  f3 0f 10 8d 70 02 00 00        movss  xmm1,DWORD PTR [rbp+0x270]
313ddf  8b d8                          mov    ebx,eax
313de1  e8 5a 85 fb ff                 call   0x2cc340
313de6  f3 0f 10 55 44                 movss  xmm2,DWORD PTR [rbp+0x44]
313deb  48 8d 8d a8 06 00 00           lea    rcx,[rbp+0x6a8]
313df2  f3 0f 10 4d 40                 movss  xmm1,DWORD PTR [rbp+0x40]
313df7  e8 44 85 fb ff                 call   0x2cc340
313dfc  44 8b cb                       mov    r9d,ebx
313dff  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313e05  4c 8d 85 a0 06 00 00           lea    r8,[rbp+0x6a0]
313e0c  49 8b cd                       mov    rcx,r13
313e0f  48 8d 95 a8 06 00 00           lea    rdx,[rbp+0x6a8]
313e16  e8 41 84 04 00                 call   0x35c25c
313e1b  f3 0f 10 35 f5 97 0d 00        movss  xmm6,DWORD PTR [rip+0xd97f5]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313e23  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313e27  e8 e0 b9 fd ff                 call   0x2ef80c
313e2c  f3 0f 10 95 74 02 00 00        movss  xmm2,DWORD PTR [rbp+0x274]
313e34  48 8d 8d b0 06 00 00           lea    rcx,[rbp+0x6b0]
313e3b  f3 0f 10 8d 70 02 00 00        movss  xmm1,DWORD PTR [rbp+0x270]
313e43  8b d8                          mov    ebx,eax
313e45  e8 f6 84 fb ff                 call   0x2cc340
313e4a  f3 0f 10 95 d4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2d4]
313e52  48 8d 8d b8 06 00 00           lea    rcx,[rbp+0x6b8]
313e59  f3 0f 10 8d d0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d0]
313e61  e8 da 84 fb ff                 call   0x2cc340
313e66  44 8b cb                       mov    r9d,ebx
313e69  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313e6f  4c 8d 85 b0 06 00 00           lea    r8,[rbp+0x6b0]
313e76  49 8b cd                       mov    rcx,r13
313e79  48 8d 95 b8 06 00 00           lea    rdx,[rbp+0x6b8]
313e80  e8 d7 83 04 00                 call   0x35c25c
313e85  f3 0f 10 35 8b 97 0d 00        movss  xmm6,DWORD PTR [rip+0xd978b]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313e8d  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313e91  e8 76 b9 fd ff                 call   0x2ef80c
313e96  f3 0f 10 95 7c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x27c]
313e9e  48 8d 8d c0 06 00 00           lea    rcx,[rbp+0x6c0]
313ea5  f3 0f 10 8d 78 02 00 00        movss  xmm1,DWORD PTR [rbp+0x278]
313ead  8b d8                          mov    ebx,eax
313eaf  e8 8c 84 fb ff                 call   0x2cc340
313eb4  f3 0f 10 95 84 02 00 00        movss  xmm2,DWORD PTR [rbp+0x284]
313ebc  48 8d 8d c8 06 00 00           lea    rcx,[rbp+0x6c8]
313ec3  f3 0f 10 8d 80 02 00 00        movss  xmm1,DWORD PTR [rbp+0x280]
313ecb  e8 70 84 fb ff                 call   0x2cc340
313ed0  44 8b cb                       mov    r9d,ebx
313ed3  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313ed9  4c 8d 85 c0 06 00 00           lea    r8,[rbp+0x6c0]
313ee0  49 8b cd                       mov    rcx,r13
313ee3  48 8d 95 c8 06 00 00           lea    rdx,[rbp+0x6c8]
313eea  e8 6d 83 04 00                 call   0x35c25c
313eef  f3 0f 10 35 21 97 0d 00        movss  xmm6,DWORD PTR [rip+0xd9721]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313ef7  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313efb  e8 0c b9 fd ff                 call   0x2ef80c
313f00  f3 0f 10 95 8c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x28c]
313f08  48 8d 8d d0 06 00 00           lea    rcx,[rbp+0x6d0]
313f0f  f3 0f 10 8d 88 02 00 00        movss  xmm1,DWORD PTR [rbp+0x288]
313f17  8b d8                          mov    ebx,eax
313f19  e8 22 84 fb ff                 call   0x2cc340
313f1e  f3 0f 10 95 94 02 00 00        movss  xmm2,DWORD PTR [rbp+0x294]
313f26  48 8d 8d d8 06 00 00           lea    rcx,[rbp+0x6d8]
313f2d  f3 0f 10 8d 90 02 00 00        movss  xmm1,DWORD PTR [rbp+0x290]
313f35  e8 06 84 fb ff                 call   0x2cc340
313f3a  44 8b cb                       mov    r9d,ebx
313f3d  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313f43  4c 8d 85 d0 06 00 00           lea    r8,[rbp+0x6d0]
313f4a  49 8b cd                       mov    rcx,r13
313f4d  48 8d 95 d8 06 00 00           lea    rdx,[rbp+0x6d8]
313f54  e8 03 83 04 00                 call   0x35c25c
313f59  f3 0f 10 35 b7 96 0d 00        movss  xmm6,DWORD PTR [rip+0xd96b7]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313f61  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313f65  e8 a2 b8 fd ff                 call   0x2ef80c
313f6a  f3 0f 10 95 9c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x29c]
313f72  48 8d 8d e0 06 00 00           lea    rcx,[rbp+0x6e0]
313f79  f3 0f 10 8d 98 02 00 00        movss  xmm1,DWORD PTR [rbp+0x298]
313f81  8b d8                          mov    ebx,eax
313f83  e8 b8 83 fb ff                 call   0x2cc340
313f88  f3 0f 10 95 a4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2a4]
313f90  f3 0f 10 8d a0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2a0]
313f98  48 8d 8d e8 06 00 00           lea    rcx,[rbp+0x6e8]
313f9f  e8 9c 83 fb ff                 call   0x2cc340
313fa4  44 8b cb                       mov    r9d,ebx
313fa7  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
313fad  4c 8d 85 e0 06 00 00           lea    r8,[rbp+0x6e0]
313fb4  49 8b cd                       mov    rcx,r13
313fb7  48 8d 95 e8 06 00 00           lea    rdx,[rbp+0x6e8]
313fbe  e8 99 82 04 00                 call   0x35c25c
313fc3  f3 0f 10 35 4d 96 0d 00        movss  xmm6,DWORD PTR [rip+0xd964d]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
313fcb  48 8d 4d 90                    lea    rcx,[rbp-0x70]
313fcf  e8 38 b8 fd ff                 call   0x2ef80c
313fd4  f3 0f 10 95 ac 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2ac]
313fdc  48 8d 8d f0 06 00 00           lea    rcx,[rbp+0x6f0]
313fe3  f3 0f 10 8d a8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2a8]
313feb  8b d8                          mov    ebx,eax
313fed  e8 4e 83 fb ff                 call   0x2cc340
313ff2  f3 0f 10 55 44                 movss  xmm2,DWORD PTR [rbp+0x44]
313ff7  48 8d 8d 30 05 00 00           lea    rcx,[rbp+0x530]
313ffe  f3 0f 10 4d 40                 movss  xmm1,DWORD PTR [rbp+0x40]
314003  e8 38 83 fb ff                 call   0x2cc340
314008  44 8b cb                       mov    r9d,ebx
31400b  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
314011  4c 8d 85 f0 06 00 00           lea    r8,[rbp+0x6f0]
314018  49 8b cd                       mov    rcx,r13
31401b  48 8d 95 30 05 00 00           lea    rdx,[rbp+0x530]
314022  e8 35 82 04 00                 call   0x35c25c
314027  f3 0f 10 35 e9 95 0d 00        movss  xmm6,DWORD PTR [rip+0xd95e9]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
31402f  48 8d 4d 90                    lea    rcx,[rbp-0x70]
314033  e8 d4 b7 fd ff                 call   0x2ef80c
314038  f3 0f 10 95 ac 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2ac]
314040  48 8d 8d 20 05 00 00           lea    rcx,[rbp+0x520]
314047  f3 0f 10 8d a8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2a8]
31404f  8b d8                          mov    ebx,eax
314051  e8 ea 82 fb ff                 call   0x2cc340
314056  f3 0f 10 95 dc 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3dc]
31405e  48 8d 8d 18 05 00 00           lea    rcx,[rbp+0x518]
314065  f3 0f 10 8d d8 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3d8]
31406d  e8 ce 82 fb ff                 call   0x2cc340
314072  44 8b cb                       mov    r9d,ebx
314075  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
31407b  4c 8d 85 20 05 00 00           lea    r8,[rbp+0x520]
314082  49 8b cd                       mov    rcx,r13
314085  48 8d 95 18 05 00 00           lea    rdx,[rbp+0x518]
31408c  e8 cb 81 04 00                 call   0x35c25c
314091  f3 0f 10 35 7f 95 0d 00        movss  xmm6,DWORD PTR [rip+0xd957f]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
314099  48 8d 4d 90                    lea    rcx,[rbp-0x70]
31409d  e8 6a b7 fd ff                 call   0x2ef80c
3140a2  f3 0f 10 95 b4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2b4]
3140aa  48 8d 8d 48 05 00 00           lea    rcx,[rbp+0x548]
3140b1  f3 0f 10 8d b0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b0]
3140b9  8b d8                          mov    ebx,eax
3140bb  e8 80 82 fb ff                 call   0x2cc340
3140c0  f3 0f 10 95 e4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3e4]
3140c8  48 8d 8d 40 05 00 00           lea    rcx,[rbp+0x540]
3140cf  f3 0f 10 8d e0 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3e0]
3140d7  e8 64 82 fb ff                 call   0x2cc340
3140dc  44 8b cb                       mov    r9d,ebx
3140df  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3140e5  4c 8d 85 48 05 00 00           lea    r8,[rbp+0x548]
3140ec  49 8b cd                       mov    rcx,r13
3140ef  48 8d 95 40 05 00 00           lea    rdx,[rbp+0x540]
3140f6  e8 61 81 04 00                 call   0x35c25c
3140fb  f3 0f 10 35 15 95 0d 00        movss  xmm6,DWORD PTR [rip+0xd9515]        # 0x3ed618 ; CONFIG F.SkeletonThickness value(+0x48)
314103  48 8d 4d 90                    lea    rcx,[rbp-0x70]
314107  e8 00 b7 fd ff                 call   0x2ef80c
31410c  f3 0f 10 95 bc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2bc]
314114  48 8d 8d 38 05 00 00           lea    rcx,[rbp+0x538]
31411b  f3 0f 10 8d b8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b8]
314123  8b d8                          mov    ebx,eax
314125  e8 16 82 fb ff                 call   0x2cc340
31412a  f3 0f 10 95 ec 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3ec]
314132  48 8d 8d 30 04 00 00           lea    rcx,[rbp+0x430]
314139  f3 0f 10 8d e8 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3e8]
314141  e8 fa 81 fb ff                 call   0x2cc340
314146  44 8b cb                       mov    r9d,ebx
314149  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
31414f  4c 8d 85 38 05 00 00           lea    r8,[rbp+0x538]
314156  49 8b cd                       mov    rcx,r13
314159  48 8d 95 30 04 00 00           lea    rdx,[rbp+0x430]
314160  e8 f7 80 04 00                 call   0x35c25c
314165  eb 03                          jmp    0x31416a
314167  45 33 ff                       xor    r15d,r15d
31416a  48 8b 85 c8 00 00 00           mov    rax,QWORD PTR [rbp+0xc8]
314171  f3 44 0f 10 3d fe ef f7 ff     movss  xmm15,DWORD PTR [rip+0xfffffffffff7effe]        # 0x293178 ; f32=4
31417a  48 83 c0 10                    add    rax,0x10
31417e  f3 44 0f 10 8d 20 04 00 00     movss  xmm9,DWORD PTR [rbp+0x420]
314187  f3 44 0f 10 35 94 99 f7 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff79994]        # 0x28db24 ; f32=30
314190  4c 8b 75 18                    mov    r14,QWORD PTR [rbp+0x18]
314194  48 89 85 c8 00 00 00           mov    QWORD PTR [rbp+0xc8],rax
31419b  48 3b 85 c0 02 00 00           cmp    rax,QWORD PTR [rbp+0x2c0]
3141a2  0f 85 0a a9 ff ff              jne    0x30eab2
3141a8  48 8b b5 a0 01 00 00           mov    rsi,QWORD PTR [rbp+0x1a0]
3141af  48 8d 8d 98 05 00 00           lea    rcx,[rbp+0x598]
3141b6  e8 c5 b2 fc ff                 call   0x2df480
3141bb  8a 1d f7 56 0d 00              mov    bl,BYTE PTR [rip+0xd56f7]        # 0x3e98b8 ; CONFIG Bools.HandcuffStuff value(+0x48)
3141c1  84 db                          test   bl,bl
3141c3  75 12                          jne    0x3141d7
3141c5  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
3141cc  e8 93 6a 00 00                 call   0x31ac64
3141d1  8a 1d e1 56 0d 00              mov    bl,BYTE PTR [rip+0xd56e1]        # 0x3e98b8 ; CONFIG Bools.HandcuffStuff value(+0x48)
3141d7  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
3141de  e8 bd 44 fc ff                 call   0x2d86a0
3141e3  84 c0                          test   al,al
3141e5  0f 85 dc 01 00 00              jne    0x3143c7
3141eb  84 db                          test   bl,bl
3141ed  0f 84 d4 01 00 00              je     0x3143c7
3141f3  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
3141fa  e8 c9 51 fc ff                 call   0x2d93c8
3141ff  48 8b c8                       mov    rcx,rax
314202  33 d2                          xor    edx,edx
314204  48 63 05 ed d0 0d 00           movsxd rax,DWORD PTR [rip+0xdd0ed]        # 0x3f12f8
31420b  48 f7 f1                       div    rcx
31420e  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
314215  89 15 dd d0 0d 00              mov    DWORD PTR [rip+0xdd0dd],edx        # 0x3f12f8
31421b  48 63 d2                       movsxd rdx,edx
31421e  e8 91 b5 fd ff                 call   0x2ef7b4
314223  48 8b 18                       mov    rbx,QWORD PTR [rax]
314226  48 8b cb                       mov    rcx,rbx
314229  e8 da 6c fb ff                 call   0x2caf08
31422e  84 c0                          test   al,al
314230  0f 84 91 01 00 00              je     0x3143c7
314236  48 8b cb                       mov    rcx,rbx
314239  e8 5e cc fc ff                 call   0x2e0e9c
31423e  84 c0                          test   al,al
314240  0f 84 81 01 00 00              je     0x3143c7
314246  48 8b cb                       mov    rcx,rbx
314249  e8 3a 70 05 00                 call   0x36b288
31424e  84 c0                          test   al,al
314250  0f 85 71 01 00 00              jne    0x3143c7
314256  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
31425d  48 8b ce                       mov    rcx,rsi
314260  e8 ff 4e 05 00                 call   0x369164
314265  f2 0f 10 85 30 01 00 00        movsd  xmm0,QWORD PTR [rbp+0x130]
31426d  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
314274  8b 85 38 01 00 00              mov    eax,DWORD PTR [rbp+0x138]
31427a  48 8b cb                       mov    rcx,rbx
31427d  f2 0f 11 85 40 02 00 00        movsd  QWORD PTR [rbp+0x240],xmm0
314285  89 85 48 02 00 00              mov    DWORD PTR [rbp+0x248],eax
31428b  e8 20 24 05 00                 call   0x3666b0
314290  48 8b cb                       mov    rcx,rbx
314293  0f 28 f0                       movaps xmm6,xmm0
314296  e8 49 5f 05 00                 call   0x36a1e4
31429b  84 c0                          test   al,al
31429d  0f 84 24 01 00 00              je     0x3143c7
3142a3  f3 0f 10 05 a5 ee f7 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff7eea5]        # 0x293150 ; f32=2.8
3142ab  0f 2f c6                       comiss xmm0,xmm6
3142ae  0f 82 13 01 00 00              jb     0x3143c7
3142b4  f3 0f 10 0d dc ed f7 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff7eddc]        # 0x293098 ; f32=0.05
3142bc  48 8d 0d 39 d0 0d 00           lea    rcx,[rip+0xdd039]        # 0x3f12fc
3142c3  e8 b4 18 fd ff                 call   0x2e5b7c
3142c8  84 c0                          test   al,al
3142ca  74 48                          je     0x314314
3142cc  48 8b cb                       mov    rcx,rbx
3142cf  e8 08 5a 05 00                 call   0x369cdc
3142d4  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
3142db  84 c0                          test   al,al
3142dd  75 16                          jne    0x3142f5
3142df  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
3142e6  e8 29 ba fd ff                 call   0x2efd14 ; STRING getter=0x2efd14 RPC_ReqEquipHood
3142eb  48 8b c8                       mov    rcx,rax
3142ee  e8 c1 58 fd ff                 call   0x2e9bb4
3142f3  eb 14                          jmp    0x314309
3142f5  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
3142fc  e8 5b ba fd ff                 call   0x2efd5c ; STRING getter=0x2efd5c RPC_ReqRemoveHood
314301  48 8b c8                       mov    rcx,rax
314304  e8 d3 58 fd ff                 call   0x2e9bdc
314309  48 8b d0                       mov    rdx,rax
31430c  48 8b cb                       mov    rcx,rbx
31430f  e8 1c 29 05 00                 call   0x366c30
314314  41 0f 28 cc                    movaps xmm1,xmm12
314318  48 8d 0d e1 cf 0d 00           lea    rcx,[rip+0xdcfe1]        # 0x3f1300
31431f  e8 58 18 fd ff                 call   0x2e5b7c
314324  84 c0                          test   al,al
314326  0f 84 9b 00 00 00              je     0x3143c7
31432c  48 8d 95 98 05 00 00           lea    rdx,[rbp+0x598]
314333  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
31433a  e8 2d bb fd ff                 call   0x2efe6c ; STRING getter=0x2efe6c RPC_ReqForceMountNearest
31433f  48 8b c8                       mov    rcx,rax
314342  e8 c5 c1 00 00                 call   0x32050c
314347  48 8b d0                       mov    rdx,rax
31434a  48 8b cb                       mov    rcx,rbx
31434d  e8 de 28 05 00                 call   0x366c30
314352  48 8d 95 98 05 00 00           lea    rdx,[rbp+0x598]
314359  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
314360  e8 3b bc fd ff                 call   0x2effa0 ; STRING getter=0x2effa0 RPC_ReqDoRestrainedPush
314365  48 8b c8                       mov    rcx,rax
314368  e8 77 c1 00 00                 call   0x3204e4
31436d  48 8b d0                       mov    rdx,rax
314370  48 8b cb                       mov    rcx,rbx
314373  e8 b8 28 05 00                 call   0x366c30
314378  48 8d 95 98 05 00 00           lea    rdx,[rbp+0x598]
31437f  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
314386  e8 09 bd fd ff                 call   0x2f0094 ; STRING getter=0x2f0094 RPC_ReqForceMountNearest
31438b  48 8b c8                       mov    rcx,rax
31438e  e8 79 c1 00 00                 call   0x32050c
314393  48 8b d0                       mov    rdx,rax
314396  48 8b cb                       mov    rcx,rbx
314399  e8 92 28 05 00                 call   0x366c30
31439e  8b 1d 54 cf 0d 00              mov    ebx,DWORD PTR [rip+0xdcf54]        # 0x3f12f8
3143a4  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
3143ab  ff c3                          inc    ebx
3143ad  89 1d 45 cf 0d 00              mov    DWORD PTR [rip+0xdcf45],ebx        # 0x3f12f8
3143b3  e8 10 50 fc ff                 call   0x2d93c8
3143b8  48 63 cb                       movsxd rcx,ebx
3143bb  48 3b c8                       cmp    rcx,rax
3143be  72 07                          jb     0x3143c7
3143c0  44 89 3d 31 cf 0d 00           mov    DWORD PTR [rip+0xdcf31],r15d        # 0x3f12f8
3143c7  f3 0f 10 0d 21 ed f7 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff7ed21]        # 0x2930f0 ; f32=1.2
3143cf  48 8d 0d 2e cf 0d 00           lea    rcx,[rip+0xdcf2e]        # 0x3f1304
3143d6  e8 a1 17 fd ff                 call   0x2e5b7c
3143db  84 c0                          test   al,al
3143dd  0f 84 e7 04 00 00              je     0x3148ca
3143e3  48 8d 95 98 05 00 00           lea    rdx,[rbp+0x598]
3143ea  48 8d 0d df 43 f0 ff           lea    rcx,[rip+0xfffffffffff043df]        # 0x2187d0
3143f1  e8 aa c4 00 00                 call   0x3208a0
3143f6  48 8b c8                       mov    rcx,rax
3143f9  48 8b d8                       mov    rbx,rax
3143fc  e8 bf 35 fc ff                 call   0x2d79c0
314401  48 8b cb                       mov    rcx,rbx
314404  4c 8b e0                       mov    r12,rax
314407  e8 6c d5 fb ff                 call   0x2d1978
31440c  4c 8b f0                       mov    r14,rax
31440f  49 3b c4                       cmp    rax,r12
314412  0f 84 a6 04 00 00              je     0x3148be
314418  4c 8d 2d 31 44 f0 ff           lea    r13,[rip+0xfffffffffff04431]        # 0x218850
31441f  49 8b 36                       mov    rsi,QWORD PTR [r14]
314422  48 8b ce                       mov    rcx,rsi
314425  e8 de 6a fb ff                 call   0x2caf08
31442a  84 c0                          test   al,al
31442c  0f 84 7f 04 00 00              je     0x3148b1
314432  48 8b ce                       mov    rcx,rsi
314435  e8 62 ca fc ff                 call   0x2e0e9c
31443a  84 c0                          test   al,al
31443c  0f 84 6f 04 00 00              je     0x3148b1
314442  48 8b ce                       mov    rcx,rsi
314445  e8 b6 4f 05 00                 call   0x369400
31444a  48 8b c8                       mov    rcx,rax
31444d  e8 b6 6a fb ff                 call   0x2caf08
314452  84 c0                          test   al,al
314454  0f 84 57 04 00 00              je     0x3148b1
31445a  48 8b ce                       mov    rcx,rsi
31445d  e8 02 53 05 00                 call   0x369764
314462  48 8b c8                       mov    rcx,rax
314465  e8 9e 6a fb ff                 call   0x2caf08
31446a  84 c0                          test   al,al
31446c  0f 84 3f 04 00 00              je     0x3148b1
314472  48 3b b5 a0 01 00 00           cmp    rsi,QWORD PTR [rbp+0x1a0]
314479  0f 84 32 04 00 00              je     0x3148b1
31447f  48 8b ce                       mov    rcx,rsi
314482  e8 f1 5c 05 00                 call   0x36a178
314487  84 c0                          test   al,al
314489  0f 85 22 04 00 00              jne    0x3148b1
31448f  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
314496  48 8b ce                       mov    rcx,rsi
314499  e8 a2 4b 05 00                 call   0x369040
31449e  33 d2                          xor    edx,edx
3144a0  48 8b ce                       mov    rcx,rsi
3144a3  e8 84 8e fb ff                 call   0x2cd32c
3144a8  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
3144af  4c 8b f8                       mov    r15,rax
3144b2  e8 dd 41 fc ff                 call   0x2d8694
3144b7  84 c0                          test   al,al
3144b9  0f 85 e3 03 00 00              jne    0x3148a2
3144bf  49 8b cd                       mov    rcx,r13
3144c2  e8 b1 d4 fb ff                 call   0x2d1978
3144c7  49 8b cd                       mov    rcx,r13
3144ca  48 8b d8                       mov    rbx,rax
3144cd  e8 ee 34 fc ff                 call   0x2d79c0
3144d2  48 8b f8                       mov    rdi,rax
3144d5  48 3b d8                       cmp    rbx,rax
3144d8  74 21                          je     0x3144fb
3144da  48 8b ce                       mov    rcx,rsi
3144dd  e8 76 6a 05 00                 call   0x36af58
3144e2  48 39 83 88 00 00 00           cmp    QWORD PTR [rbx+0x88],rax
3144e9  0f 84 3c 02 00 00              je     0x31472b
3144ef  48 81 c3 98 00 00 00           add    rbx,0x98
3144f6  48 3b df                       cmp    rbx,rdi
3144f9  75 df                          jne    0x3144da
3144fb  45 33 c0                       xor    r8d,r8d
3144fe  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
314505  48 8b ce                       mov    rcx,rsi
314508  e8 63 59 05 00                 call   0x369e70
31450d  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
314514  e8 7b 41 fc ff                 call   0x2d8694
314519  84 c0                          test   al,al
31451b  0f 85 64 03 00 00              jne    0x314885
314521  45 33 c0                       xor    r8d,r8d
314524  48 8d 95 68 05 00 00           lea    rdx,[rbp+0x568]
31452b  48 8b ce                       mov    rcx,rsi
31452e  e8 3d 59 05 00                 call   0x369e70
314533  48 8d 3d 26 2d 0c 00           lea    rdi,[rip+0xc2d26]        # 0x3d7260
31453a  4c 8b c0                       mov    r8,rax
31453d  48 8b cf                       mov    rcx,rdi
314540  48 8d 95 b8 15 00 00           lea    rdx,[rbp+0x15b8]
314547  e8 d0 c2 00 00                 call   0x32081c
31454c  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
314553  48 8b cf                       mov    rcx,rdi
314556  48 8b d8                       mov    rbx,rax
314559  e8 5a 41 fc ff                 call   0x2d86b8
31455e  48 8b d0                       mov    rdx,rax
314561  48 8b cb                       mov    rcx,rbx
314564  e8 cb 7f fb ff                 call   0x2cc534
314569  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
314570  8a d8                          mov    bl,al
314572  e8 7d 7f fb ff                 call   0x2cc4f4
314577  84 db                          test   bl,bl
314579  74 6d                          je     0x3145e8
31457b  45 33 c0                       xor    r8d,r8d
31457e  48 8d 95 68 05 00 00           lea    rdx,[rbp+0x568]
314585  48 8b ce                       mov    rcx,rsi
314588  e8 e3 58 05 00                 call   0x369e70
31458d  48 8d 8d b0 0f 00 00           lea    rcx,[rbp+0xfb0]
314594  48 8b d8                       mov    rbx,rax
314597  e8 ec ad fc ff                 call   0x2df388
31459c  4c 8b c0                       mov    r8,rax
31459f  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
3145a6  48 8b d3                       mov    rdx,rbx
3145a9  e8 da 5e fd ff                 call   0x2ea488
3145ae  4c 8d 85 40 0c 00 00           lea    r8,[rbp+0xc40]
3145b5  48 8b cf                       mov    rcx,rdi
3145b8  48 8d 95 88 03 00 00           lea    rdx,[rbp+0x388]
3145bf  e8 10 c3 00 00                 call   0x3208d4
3145c4  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
3145cb  e8 78 ae fc ff                 call   0x2df448
3145d0  48 8d 8d b0 0f 00 00           lea    rcx,[rbp+0xfb0]
3145d7  e8 28 7f fb ff                 call   0x2cc504
3145dc  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
3145e3  e8 0c 7f fb ff                 call   0x2cc4f4
3145e8  bf 35 00 00 00                 mov    edi,0x35
3145ed  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
3145f4  44 8b c7                       mov    r8d,edi
3145f7  48 8b ce                       mov    rcx,rsi
3145fa  e8 e9 45 05 00                 call   0x368be8
3145ff  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
314606  48 8d 4d d8                    lea    rcx,[rbp-0x28]
31460a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31460e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
314611  f2 0f 11 85 30 01 00 00        movsd  QWORD PTR [rbp+0x130],xmm0
314619  89 85 38 01 00 00              mov    DWORD PTR [rbp+0x138],eax
31461f  e8 f4 0e 00 00                 call   0x315518
314624  44 8b c7                       mov    r8d,edi
314627  48 8d 95 f0 0b 00 00           lea    rdx,[rbp+0xbf0]
31462e  48 8b ce                       mov    rcx,rsi
314631  e8 b2 45 05 00                 call   0x368be8
314636  44 8b c7                       mov    r8d,edi
314639  48 8d 95 28 0c 00 00           lea    rdx,[rbp+0xc28]
314640  48 8b ce                       mov    rcx,rsi
314643  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
314647  8b 58 08                       mov    ebx,DWORD PTR [rax+0x8]
31464a  e8 99 45 05 00                 call   0x368be8
31464f  f3 0f 10 15 ed 94 f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff794ed]        # 0x28db44 ; f32=100
314657  48 8d 8d 1c 0c 00 00           lea    rcx,[rbp+0xc1c]
31465e  0f 57 db                       xorps  xmm3,xmm3
314661  f2 0f 11 b5 40 02 00 00        movsd  QWORD PTR [rbp+0x240],xmm6
314669  0f 57 c9                       xorps  xmm1,xmm1
31466c  89 9d 48 02 00 00              mov    DWORD PTR [rbp+0x248],ebx
314672  48 8b f8                       mov    rdi,rax
314675  e8 2e 35 0b 00                 call   0x3c7ba8
31467a  4c 8b c0                       mov    r8,rax
31467d  48 8d 95 10 0c 00 00           lea    rdx,[rbp+0xc10]
314684  48 8b cf                       mov    rcx,rdi
314687  e8 7c b0 fc ff                 call   0x2df708
31468c  0f 57 db                       xorps  xmm3,xmm3
31468f  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
314696  41 b8 00 00 20 00              mov    r8d,0x200000
31469c  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
3146a3  48 8d 8d 60 04 00 00           lea    rcx,[rbp+0x460]
3146aa  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3146ae  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3146b1  f2 0f 11 85 60 04 00 00        movsd  QWORD PTR [rbp+0x460],xmm0
3146b9  89 85 68 04 00 00              mov    DWORD PTR [rbp+0x468],eax
3146bf  e8 5c dc fc ff                 call   0x2e2320
3146c4  48 8b ce                       mov    rcx,rsi
3146c7  8a d8                          mov    bl,al
3146c9  e8 8a 68 05 00                 call   0x36af58
3146ce  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
3146d5  48 89 85 b0 15 00 00           mov    QWORD PTR [rbp+0x15b0],rax
3146dc  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
3146e3  e8 ac fa fb ff                 call   0x2d4194
3146e8  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
3146ef  48 8d 8d 60 0c 00 00           lea    rcx,[rbp+0xc60]
3146f6  e8 99 fa fb ff                 call   0x2d4194
3146fb  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
314702  48 8d 8d 80 0c 00 00           lea    rcx,[rbp+0xc80]
314709  e8 86 fa fb ff                 call   0x2d4194
31470e  84 db                          test   bl,bl
314710  0f 84 e1 00 00 00              je     0x3147f7
314716  48 8d 55 d8                    lea    rdx,[rbp-0x28]
31471a  48 8d 8d a0 0c 00 00           lea    rcx,[rbp+0xca0]
314721  e8 6e fa fb ff                 call   0x2d4194
314726  e9 fa 00 00 00                 jmp    0x314825
31472b  48 8d 7b 28                    lea    rdi,[rbx+0x28]
31472f  48 8b cf                       mov    rcx,rdi
314732  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
314739  e8 f2 a7 fb ff                 call   0x2cef30
31473e  84 c0                          test   al,al
314740  75 1b                          jne    0x31475d
314742  48 8d 4b 08                    lea    rcx,[rbx+0x8]
314746  48 8b d7                       mov    rdx,rdi
314749  e8 d6 04 fc ff                 call   0x2d4c24
31474e  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
314755  48 8b cf                       mov    rcx,rdi
314758  e8 c7 04 fc ff                 call   0x2d4c24
31475d  4c 39 bb 90 00 00 00           cmp    QWORD PTR [rbx+0x90],r15
314764  74 07                          je     0x31476d
314766  4c 89 bb 90 00 00 00           mov    QWORD PTR [rbx+0x90],r15
31476d  45 33 c0                       xor    r8d,r8d
314770  48 8d 95 68 05 00 00           lea    rdx,[rbp+0x568]
314777  48 8b ce                       mov    rcx,rsi
31477a  e8 f1 56 05 00                 call   0x369e70
31477f  48 8b d0                       mov    rdx,rax
314782  48 8d 0d d7 2a 0c 00           lea    rcx,[rip+0xc2ad7]        # 0x3d7260
314789  e8 7a ae fc ff                 call   0x2df608
31478e  48 8b c8                       mov    rcx,rax
314791  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
314798  e8 93 a7 fb ff                 call   0x2cef30
31479d  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
3147a4  8a d8                          mov    bl,al
3147a6  e8 49 7d fb ff                 call   0x2cc4f4
3147ab  45 33 ff                       xor    r15d,r15d
3147ae  84 db                          test   bl,bl
3147b0  0f 85 ef 00 00 00              jne    0x3148a5
3147b6  45 33 c0                       xor    r8d,r8d
3147b9  48 8d 95 68 05 00 00           lea    rdx,[rbp+0x568]
3147c0  48 8b ce                       mov    rcx,rsi
3147c3  e8 a8 56 05 00                 call   0x369e70
3147c8  48 8b d0                       mov    rdx,rax
3147cb  48 8d 0d 8e 2a 0c 00           lea    rcx,[rip+0xc2a8e]        # 0x3d7260
3147d2  e8 31 ae fc ff                 call   0x2df608
3147d7  48 8b c8                       mov    rcx,rax
3147da  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
3147e1  e8 3e 04 fc ff                 call   0x2d4c24
3147e6  48 8d 8d 68 05 00 00           lea    rcx,[rbp+0x568]
3147ed  e8 02 7d fb ff                 call   0x2cc4f4
3147f2  e9 ae 00 00 00                 jmp    0x3148a5
3147f7  48 8d 95 e0 0c 00 00           lea    rdx,[rbp+0xce0]
3147fe  48 8d 8d a8 15 00 00           lea    rcx,[rbp+0x15a8]
314805  e8 1a b9 fd ff                 call   0x2f0124 ; STRING getter=0x2f0124  [Inside Base]
31480a  48 8b c8                       mov    rcx,rax
31480d  e8 5a 3e fc ff                 call   0x2d866c
314812  4c 8b c0                       mov    r8,rax
314815  48 8d 55 d8                    lea    rdx,[rbp-0x28]
314819  48 8d 8d a0 0c 00 00           lea    rcx,[rbp+0xca0]
314820  e8 af a7 fb ff                 call   0x2cefd4
314825  48 8b ce                       mov    rcx,rsi
314828  e8 2b 67 05 00                 call   0x36af58
31482d  4c 8d 85 40 0c 00 00           lea    r8,[rbp+0xc40]
314834  48 89 85 c0 0c 00 00           mov    QWORD PTR [rbp+0xcc0],rax
31483b  48 8d 95 b0 15 00 00           lea    rdx,[rbp+0x15b0]
314842  4c 89 bd c8 0c 00 00           mov    QWORD PTR [rbp+0xcc8],r15
314849  48 8d 8d 20 13 00 00           lea    rcx,[rbp+0x1320]
314850  e8 7b 5d fd ff                 call   0x2ea5d0
314855  48 8d 95 20 13 00 00           lea    rdx,[rbp+0x1320]
31485c  49 8b cd                       mov    rcx,r13
31485f  e8 14 c5 00 00                 call   0x320d78
314864  48 8d 8d 20 13 00 00           lea    rcx,[rbp+0x1320]
31486b  e8 80 ab fd ff                 call   0x2ef3f0
314870  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
314877  e8 38 ad fd ff                 call   0x2ef5b4
31487c  48 8d 4d d8                    lea    rcx,[rbp-0x28]
314880  e8 6f 7c fb ff                 call   0x2cc4f4
314885  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
31488c  e8 63 7c fb ff                 call   0x2cc4f4
314891  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
314898  e8 57 7c fb ff                 call   0x2cc4f4
31489d  45 33 ff                       xor    r15d,r15d
3148a0  eb 0f                          jmp    0x3148b1
3148a2  45 33 ff                       xor    r15d,r15d
3148a5  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
3148ac  e8 43 7c fb ff                 call   0x2cc4f4
3148b1  49 83 c6 10                    add    r14,0x10
3148b5  4d 3b f4                       cmp    r14,r12
3148b8  0f 85 61 fb ff ff              jne    0x31441f
3148be  48 8d 8d 98 05 00 00           lea    rcx,[rbp+0x598]
3148c5  e8 b6 ab fc ff                 call   0x2df480
3148ca  48 8d 8d 50 05 00 00           lea    rcx,[rbp+0x550]
3148d1  e8 e6 6c fc ff                 call   0x2db5bc
3148d6  4c 8d 9c 24 58 16 00 00        lea    r11,[rsp+0x1658]
3148de  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
3148e3  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
3148e8  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
3148ed  45 0f 28 4b b8                 movaps xmm9,XMMWORD PTR [r11-0x48]
3148f2  45 0f 28 53 a8                 movaps xmm10,XMMWORD PTR [r11-0x58]
3148f7  45 0f 28 5b 98                 movaps xmm11,XMMWORD PTR [r11-0x68]
3148fc  45 0f 28 63 88                 movaps xmm12,XMMWORD PTR [r11-0x78]
314901  45 0f 28 ab 78 ff ff ff        movaps xmm13,XMMWORD PTR [r11-0x88]
314909  45 0f 28 b3 68 ff ff ff        movaps xmm14,XMMWORD PTR [r11-0x98]
314911  45 0f 28 bb 58 ff ff ff        movaps xmm15,XMMWORD PTR [r11-0xa8]
314919  49 8b e3                       mov    rsp,r11
31491c  41 5f                          pop    r15
31491e  41 5e                          pop    r14
314920  41 5d                          pop    r13
314922  41 5c                          pop    r12
314924  5f                             pop    rdi
314925  5e                             pop    rsi
314926  5b                             pop    rbx
314927  5d                             pop    rbp
314928  c3                             ret
