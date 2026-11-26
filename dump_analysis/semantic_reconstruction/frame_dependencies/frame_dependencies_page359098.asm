; pdata function 0x359098..0x35a474 unwind=0x3d3b3c
359098  48 8b c4                       mov    rax,rsp
35909b  55                             push   rbp
35909c  53                             push   rbx
35909d  56                             push   rsi
35909e  57                             push   rdi
35909f  41 56                          push   r14
3590a1  48 8d a8 18 ff ff ff           lea    rbp,[rax-0xe8]
3590a8  48 81 ec c0 01 00 00           sub    rsp,0x1c0
3590af  f3 0f 10 15 a9 a1 f3 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff3a1a9]        # 0x293260 ; f32=-1
3590b7  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3590bc  0f 57 c9                       xorps  xmm1,xmm1
3590bf  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
3590c3  e8 78 32 f7 ff                 call   0x2cc340
3590c8  be 02 00 00 00                 mov    esi,0x2
3590cd  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
3590d1  8b 05 11 40 0a 00              mov    eax,DWORD PTR [rip+0xa4011]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3590d7  8d 7e ff                       lea    edi,[rsi-0x1]
3590da  3b c7                          cmp    eax,edi
3590dc  75 0e                          jne    0x3590ec
3590de  48 8d 0d 6b d1 f3 ff           lea    rcx,[rip+0xfffffffffff3d16b]        # 0x296250
3590e5  e8 1a bf 00 00                 call   0x365004
3590ea  eb 28                          jmp    0x359114
3590ec  3b c6                          cmp    eax,esi
3590ee  75 09                          jne    0x3590f9
3590f0  48 8d 0d 69 d1 f3 ff           lea    rcx,[rip+0xfffffffffff3d169]        # 0x296260
3590f7  eb ec                          jmp    0x3590e5
3590f9  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
359100  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359107  e8 4c a8 ff ff                 call   0x353958 ; STRING getter=0x353958 Aim
35910c  48 8b c8                       mov    rcx,rax
35910f  e8 08 73 fc ff                 call   0x32041c
359114  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
35911b  48 8b d8                       mov    rbx,rax
35911e  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359125  e8 2a 76 ff ff                 call   0x350754 ; STRING getter=0x350754 J
35912a  48 8b c8                       mov    rcx,rax
35912d  e8 32 f3 f7 ff                 call   0x2d8464
359132  48 8b d0                       mov    rdx,rax
359135  48 8d 4d c0                    lea    rcx,[rbp-0x40]
359139  e8 8e 31 f7 ff                 call   0x2cc2cc
35913e  48 8b c8                       mov    rcx,rax
359141  44 8a cf                       mov    r9b,dil
359144  66 49 0f 7e f0                 movq   r8,xmm6
359149  48 8b d3                       mov    rdx,rbx
35914c  e8 9f bc 02 00                 call   0x384df0
359151  8b 05 91 3f 0a 00              mov    eax,DWORD PTR [rip+0xa3f91]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359157  3b c7                          cmp    eax,edi
359159  75 0e                          jne    0x359169
35915b  48 8d 0d 06 d1 f3 ff           lea    rcx,[rip+0xfffffffffff3d106]        # 0x296268
359162  e8 9d be 00 00                 call   0x365004
359167  eb 26                          jmp    0x35918f
359169  3b c6                          cmp    eax,esi
35916b  75 09                          jne    0x359176
35916d  48 8d 0d 1c d1 f3 ff           lea    rcx,[rip+0xfffffffffff3d11c]        # 0x296290
359174  eb ec                          jmp    0x359162
359176  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35917b  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359182  e8 85 d3 ff ff                 call   0x35650c ; STRING getter=0x35650c Snaps onto your target
359187  48 8b c8                       mov    rcx,rax
35918a  e8 0d 93 fd ff                 call   0x33249c
35918f  48 8b d8                       mov    rbx,rax
359192  8b 05 50 3f 0a 00              mov    eax,DWORD PTR [rip+0xa3f50]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359198  3b c7                          cmp    eax,edi
35919a  75 09                          jne    0x3591a5
35919c  48 8d 0d ad d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d0ad]        # 0x296250
3591a3  eb 0b                          jmp    0x3591b0
3591a5  3b c6                          cmp    eax,esi
3591a7  75 0e                          jne    0x3591b7
3591a9  48 8d 0d f0 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d0f0]        # 0x2962a0
3591b0  e8 4f be 00 00                 call   0x365004
3591b5  eb 1b                          jmp    0x3591d2
3591b7  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
3591be  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3591c5  e8 9e bd ff ff                 call   0x354f68 ; STRING getter=0x354f68 Aimbot
3591ca  48 8b c8                       mov    rcx,rax
3591cd  e8 22 4b f7 ff                 call   0x2cdcf4
3591d2  40 88 7c 24 28                 mov    BYTE PTR [rsp+0x28],dil
3591d7  4c 8d 05 5a b2 09 00           lea    r8,[rip+0x9b25a]        # 0x3f4438 ; CONFIG K.AimbotVirtualKey value(+0x48)
3591de  45 33 c9                       xor    r9d,r9d
3591e1  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3591e6  48 8d 15 3b e7 08 00           lea    rdx,[rip+0x8e73b]        # 0x3e7928 ; CONFIG Bools.Aimbot value(+0x48)
3591ed  48 8b c8                       mov    rcx,rax
3591f0  e8 1f 3f 06 00                 call   0x3bd114
3591f5  ba ff 00 00 ff                 mov    edx,0xff0000ff
3591fa  8b cf                          mov    ecx,edi
3591fc  e8 eb f9 03 00                 call   0x398bec
359201  8b 05 e1 3e 0a 00              mov    eax,DWORD PTR [rip+0xa3ee1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359207  3b c7                          cmp    eax,edi
359209  75 0e                          jne    0x359219
35920b  48 8d 0d 9e d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d09e]        # 0x2962b0
359212  e8 ed bd 00 00                 call   0x365004
359217  eb 25                          jmp    0x35923e
359219  3b c6                          cmp    eax,esi
35921b  75 09                          jne    0x359226
35921d  48 8d 0d bc d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d0bc]        # 0x2962e0
359224  eb ec                          jmp    0x359212
359226  48 8d 55 c0                    lea    rdx,[rbp-0x40]
35922a  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359231  e8 f6 ee ff ff                 call   0x35812c ; STRING getter=0x35812c Curves your projectiles towards the target
359236  48 8b c8                       mov    rcx,rax
359239  e8 5e ab 00 00                 call   0x363d9c
35923e  48 8b d8                       mov    rbx,rax
359241  8b 05 a1 3e 0a 00              mov    eax,DWORD PTR [rip+0xa3ea1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359247  3b c7                          cmp    eax,edi
359249  75 09                          jne    0x359254
35924b  48 8d 0d a6 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d0a6]        # 0x2962f8
359252  eb 0b                          jmp    0x35925f
359254  3b c6                          cmp    eax,esi
359256  75 0e                          jne    0x359266
359258  48 8d 0d b1 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d0b1]        # 0x296310
35925f  e8 a0 bd 00 00                 call   0x365004
359264  eb 1b                          jmp    0x359281
359266  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
35926d  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359274  e8 9f e3 ff ff                 call   0x357618
359279  48 8b c8                       mov    rcx,rax
35927c  e8 93 a3 f8 ff                 call   0x2e3614
359281  45 33 f6                       xor    r14d,r14d
359284  48 8d 15 ed eb 07 00           lea    rdx,[rip+0x7ebed]        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
35928b  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
359290  45 33 c9                       xor    r9d,r9d
359293  45 33 c0                       xor    r8d,r8d
359296  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
35929b  48 8b c8                       mov    rcx,rax
35929e  e8 71 3e 06 00                 call   0x3bd114
3592a3  8b cf                          mov    ecx,edi
3592a5  e8 62 f6 03 00                 call   0x39890c
3592aa  44 38 35 c7 eb 07 00           cmp    BYTE PTR [rip+0x7ebc7],r14b        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
3592b1  0f 84 3a 01 00 00              je     0x3593f1
3592b7  8b 05 2b 3e 0a 00              mov    eax,DWORD PTR [rip+0xa3e2b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3592bd  3b c7                          cmp    eax,edi
3592bf  75 0e                          jne    0x3592cf
3592c1  48 8d 0d 58 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d058]        # 0x296320
3592c8  e8 37 bd 00 00                 call   0x365004
3592cd  eb 25                          jmp    0x3592f4
3592cf  3b c6                          cmp    eax,esi
3592d1  75 09                          jne    0x3592dc
3592d3  48 8d 0d 8e d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d08e]        # 0x296368
3592da  eb ec                          jmp    0x3592c8
3592dc  48 8d 55 c0                    lea    rdx,[rbp-0x40]
3592e0  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3592e7  e8 34 f9 ff ff                 call   0x358c20 ; STRING getter=0x358c20 Finds valid higher-angle trajectory
3592ec  48 8b c8                       mov    rcx,rax
3592ef  e8 e0 a9 00 00                 call   0x363cd4
3592f4  48 8b d8                       mov    rbx,rax
3592f7  8b 05 eb 3d 0a 00              mov    eax,DWORD PTR [rip+0xa3deb]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3592fd  3b c7                          cmp    eax,edi
3592ff  75 09                          jne    0x35930a
359301  48 8d 0d 78 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d078]        # 0x296380
359308  eb 0b                          jmp    0x359315
35930a  3b c6                          cmp    eax,esi
35930c  75 0e                          jne    0x35931c
35930e  48 8d 0d a3 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d0a3]        # 0x2963b8
359315  e8 ea bc 00 00                 call   0x365004
35931a  eb 19                          jmp    0x359335
35931c  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
359321  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359328  e8 7f f4 ff ff                 call   0x3587ac ; STRING getter=0x3587ac High Grenade Prediction
35932d  48 8b c8                       mov    rcx,rax
359330  e8 af 71 fc ff                 call   0x3204e4
359335  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
35933a  48 8d 15 d7 dc 08 00           lea    rdx,[rip+0x8dcd7]        # 0x3e7018 ; CONFIG Bools.GrenadeAngles value(+0x48)
359341  45 33 c9                       xor    r9d,r9d
359344  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359349  45 33 c0                       xor    r8d,r8d
35934c  48 8b c8                       mov    rcx,rax
35934f  e8 c0 3d 06 00                 call   0x3bd114
359354  8b 05 8e 3d 0a 00              mov    eax,DWORD PTR [rip+0xa3d8e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35935a  3b c7                          cmp    eax,edi
35935c  75 0e                          jne    0x35936c
35935e  48 8d 0d 63 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d063]        # 0x2963c8
359365  e8 9a bc 00 00                 call   0x365004
35936a  eb 25                          jmp    0x359391
35936c  3b c6                          cmp    eax,esi
35936e  75 09                          jne    0x359379
359370  48 8d 0d 89 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d089]        # 0x296400
359377  eb ec                          jmp    0x359365
359379  48 8d 55 c0                    lea    rdx,[rbp-0x40]
35937d  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359384  e8 cb c0 fe ff                 call   0x345454 ; STRING getter=0x345454 Targets saved map position
359389  48 8b c8                       mov    rcx,rax
35938c  e8 53 4a f7 ff                 call   0x2cdde4
359391  48 8b d8                       mov    rbx,rax
359394  8b 05 4e 3d 0a 00              mov    eax,DWORD PTR [rip+0xa3d4e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35939a  3b c7                          cmp    eax,edi
35939c  75 09                          jne    0x3593a7
35939e  48 8d 0d 6b d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d06b]        # 0x296410
3593a5  eb 0b                          jmp    0x3593b2
3593a7  3b c6                          cmp    eax,esi
3593a9  75 0e                          jne    0x3593b9
3593ab  48 8d 0d 96 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d096]        # 0x296448
3593b2  e8 4d bc 00 00                 call   0x365004
3593b7  eb 19                          jmp    0x3593d2
3593b9  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3593be  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3593c5  e8 9e 12 00 00                 call   0x35a668 ; STRING getter=0x35a668 Target Saved Position
3593ca  48 8b c8                       mov    rcx,rax
3593cd  e8 d2 f1 f7 ff                 call   0x2d85a4
3593d2  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3593d7  48 8d 15 0a df 08 00           lea    rdx,[rip+0x8df0a]        # 0x3e72e8 ; CONFIG Bools.TrapManipulation value(+0x48)
3593de  45 33 c9                       xor    r9d,r9d
3593e1  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3593e6  45 33 c0                       xor    r8d,r8d
3593e9  48 8b c8                       mov    rcx,rax
3593ec  e8 23 3d 06 00                 call   0x3bd114
3593f1  8b 05 f1 3c 0a 00              mov    eax,DWORD PTR [rip+0xa3cf1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3593f7  3b c7                          cmp    eax,edi
3593f9  75 0e                          jne    0x359409
3593fb  48 8d 0d 56 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d056]        # 0x296458
359402  e8 fd bb 00 00                 call   0x365004
359407  eb 25                          jmp    0x35942e
359409  3b c6                          cmp    eax,esi
35940b  75 09                          jne    0x359416
35940d  48 8d 0d 7c d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d07c]        # 0x296490
359414  eb ec                          jmp    0x359402
359416  48 8d 55 c0                    lea    rdx,[rbp-0x40]
35941a  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359421  e8 2a 79 ff ff                 call   0x350d50 ; STRING getter=0x350d50 Shoots automatically when target is hittable
359426  48 8b c8                       mov    rcx,rax
359429  e8 2e 8d fc ff                 call   0x32215c
35942e  48 8b d8                       mov    rbx,rax
359431  8b 05 b1 3c 0a 00              mov    eax,DWORD PTR [rip+0xa3cb1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359437  3b c7                          cmp    eax,edi
359439  75 09                          jne    0x359444
35943b  48 8d 0d 66 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d066]        # 0x2964a8
359442  eb 0b                          jmp    0x35944f
359444  3b c6                          cmp    eax,esi
359446  75 0e                          jne    0x359456
359448  48 8d 0d 79 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d079]        # 0x2964c8
35944f  e8 b0 bb 00 00                 call   0x365004
359454  eb 19                          jmp    0x35946f
359456  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35945b  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359462  e8 25 71 ff ff                 call   0x35058c ; STRING getter=0x35058c Autofire
359467  48 8b c8                       mov    rcx,rax
35946a  e8 1d 07 f9 ff                 call   0x2e9b8c
35946f  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
359474  48 8d 15 1d bc 08 00           lea    rdx,[rip+0x8bc1d]        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
35947b  45 33 c9                       xor    r9d,r9d
35947e  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359483  45 33 c0                       xor    r8d,r8d
359486  48 8b c8                       mov    rcx,rax
359489  e8 86 3c 06 00                 call   0x3bd114
35948e  ba ff 00 00 ff                 mov    edx,0xff0000ff
359493  8b cf                          mov    ecx,edi
359495  e8 52 f7 03 00                 call   0x398bec
35949a  8a 05 f8 bb 08 00              mov    al,BYTE PTR [rip+0x8bbf8]        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
3594a0  84 c0                          test   al,al
3594a2  0f 84 b0 00 00 00              je     0x359558
3594a8  44 38 35 09 eb 07 00           cmp    BYTE PTR [rip+0x7eb09],r14b        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
3594af  0f 84 b0 00 00 00              je     0x359565
3594b5  8b 05 2d 3c 0a 00              mov    eax,DWORD PTR [rip+0xa3c2d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3594bb  3b c7                          cmp    eax,edi
3594bd  75 0e                          jne    0x3594cd
3594bf  48 8d 0d 12 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d012]        # 0x2964d8
3594c6  e8 39 bb 00 00                 call   0x365004
3594cb  eb 25                          jmp    0x3594f2
3594cd  3b c6                          cmp    eax,esi
3594cf  75 09                          jne    0x3594da
3594d1  48 8d 0d 40 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d040]        # 0x296518
3594d8  eb ec                          jmp    0x3594c6
3594da  48 8d 55 c0                    lea    rdx,[rbp-0x40]
3594de  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3594e5  e8 7e 7f ff ff                 call   0x351468 ; STRING getter=0x351468 Waits until instant hit is possible
3594ea  48 8b c8                       mov    rcx,rax
3594ed  e8 e2 a7 00 00                 call   0x363cd4
3594f2  48 8b d8                       mov    rbx,rax
3594f5  8b 05 ed 3b 0a 00              mov    eax,DWORD PTR [rip+0xa3bed]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3594fb  3b c7                          cmp    eax,edi
3594fd  75 09                          jne    0x359508
3594ff  48 8d 0d 2a d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d02a]        # 0x296530
359506  eb 0b                          jmp    0x359513
359508  3b c6                          cmp    eax,esi
35950a  75 0e                          jne    0x35951a
35950c  48 8d 0d 45 d0 f3 ff           lea    rcx,[rip+0xfffffffffff3d045]        # 0x296558
359513  e8 ec ba 00 00                 call   0x365004
359518  eb 19                          jmp    0x359533
35951a  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35951f  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359526  e8 fd 7b ff ff                 call   0x351128 ; STRING getter=0x351128 Wait For InstantHit
35952b  48 8b c8                       mov    rcx,rax
35952e  e8 61 6f fc ff                 call   0x320494
359533  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
359538  48 8d 15 b9 ba 08 00           lea    rdx,[rip+0x8bab9]        # 0x3e4ff8 ; CONFIG Bools.WaitForinstanthit value(+0x48)
35953f  45 33 c9                       xor    r9d,r9d
359542  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359547  45 33 c0                       xor    r8d,r8d
35954a  48 8b c8                       mov    rcx,rax
35954d  e8 c2 3b 06 00                 call   0x3bd114
359552  8a 05 40 bb 08 00              mov    al,BYTE PTR [rip+0x8bb40]        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
359558  44 38 35 59 ea 07 00           cmp    BYTE PTR [rip+0x7ea59],r14b        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
35955f  74 04                          je     0x359565
359561  84 c0                          test   al,al
359563  75 07                          jne    0x35956c
359565  44 88 35 8c ba 08 00           mov    BYTE PTR [rip+0x8ba8c],r14b        # 0x3e4ff8 ; CONFIG Bools.WaitForinstanthit value(+0x48)
35956c  8b cf                          mov    ecx,edi
35956e  e8 99 f3 03 00                 call   0x39890c
359573  8b 05 6f 3b 0a 00              mov    eax,DWORD PTR [rip+0xa3b6f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359579  3b c7                          cmp    eax,edi
35957b  75 0e                          jne    0x35958b
35957d  48 8d 0d e4 cf f3 ff           lea    rcx,[rip+0xfffffffffff3cfe4]        # 0x296568
359584  e8 7b ba 00 00                 call   0x365004
359589  eb 26                          jmp    0x3595b1
35958b  3b c6                          cmp    eax,esi
35958d  75 09                          jne    0x359598
35958f  48 8d 0d f2 cf f3 ff           lea    rcx,[rip+0xfffffffffff3cff2]        # 0x296588
359596  eb ec                          jmp    0x359584
359598  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35959d  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3595a4  e8 eb 83 ff ff                 call   0x351994 ; STRING getter=0x351994 Humanizes your aim
3595a9  48 8b c8                       mov    rcx,rax
3595ac  e8 e3 47 f7 ff                 call   0x2cdd94
3595b1  48 8b d8                       mov    rbx,rax
3595b4  8b 05 2e 3b 0a 00              mov    eax,DWORD PTR [rip+0xa3b2e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3595ba  3b c7                          cmp    eax,edi
3595bc  75 09                          jne    0x3595c7
3595be  48 8d 0d d3 cf f3 ff           lea    rcx,[rip+0xfffffffffff3cfd3]        # 0x296598
3595c5  eb 0b                          jmp    0x3595d2
3595c7  3b c6                          cmp    eax,esi
3595c9  75 0e                          jne    0x3595d9
3595cb  48 8d 0d de cf f3 ff           lea    rcx,[rip+0xfffffffffff3cfde]        # 0x2965b0
3595d2  e8 2d ba 00 00                 call   0x365004
3595d7  eb 18                          jmp    0x3595f1
3595d9  48 8d 55 88                    lea    rdx,[rbp-0x78]
3595dd  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3595e4  e8 03 81 ff ff                 call   0x3516ec ; STRING getter=0x3516ec Use Smoothing
3595e9  48 8b c8                       mov    rcx,rax
3595ec  e8 97 3b f8 ff                 call   0x2dd188
3595f1  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3595f6  48 8d 15 3b 05 09 00           lea    rdx,[rip+0x9053b]        # 0x3e9b38 ; CONFIG Bools.usesmooth value(+0x48)
3595fd  45 33 c9                       xor    r9d,r9d
359600  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359605  45 33 c0                       xor    r8d,r8d
359608  48 8b c8                       mov    rcx,rax
35960b  e8 04 3b 06 00                 call   0x3bd114
359610  8b 05 d2 3a 0a 00              mov    eax,DWORD PTR [rip+0xa3ad2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359616  3b c7                          cmp    eax,edi
359618  75 0e                          jne    0x359628
35961a  48 8d 0d 97 cf f3 ff           lea    rcx,[rip+0xfffffffffff3cf97]        # 0x2965b8
359621  e8 de b9 00 00                 call   0x365004
359626  eb 25                          jmp    0x35964d
359628  3b c6                          cmp    eax,esi
35962a  75 09                          jne    0x359635
35962c  48 8d 0d ad cf f3 ff           lea    rcx,[rip+0xfffffffffff3cfad]        # 0x2965e0
359633  eb ec                          jmp    0x359621
359635  48 8d 55 c0                    lea    rdx,[rbp-0x40]
359639  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359640  e8 b3 87 ff ff                 call   0x351df8 ; STRING getter=0x351df8 Only targets visible players
359645  48 8b c8                       mov    rcx,rax
359648  e8 77 8e fd ff                 call   0x3324c4
35964d  48 8b d8                       mov    rbx,rax
359650  8b 05 92 3a 0a 00              mov    eax,DWORD PTR [rip+0xa3a92]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359656  3b c7                          cmp    eax,edi
359658  75 09                          jne    0x359663
35965a  48 8d 0d 8f cf f3 ff           lea    rcx,[rip+0xfffffffffff3cf8f]        # 0x2965f0
359661  eb 0b                          jmp    0x35966e
359663  3b c6                          cmp    eax,esi
359665  75 0e                          jne    0x359675
359667  48 8d 0d aa cf f3 ff           lea    rcx,[rip+0xfffffffffff3cfaa]        # 0x296618
35966e  e8 91 b9 00 00                 call   0x365004
359673  eb 18                          jmp    0x35968d
359675  48 8d 55 88                    lea    rdx,[rbp-0x78]
359679  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359680  e8 6b 85 ff ff                 call   0x351bf0 ; STRING getter=0x351bf0 Use Vischeck
359685  48 8b c8                       mov    rcx,rax
359688  e8 67 ef f7 ff                 call   0x2d85f4
35968d  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
359692  48 8d 15 ef e6 07 00           lea    rdx,[rip+0x7e6ef]        # 0x3d7d88 ; CONFIG Bools.AimbotVischeck value(+0x48)
359699  45 33 c9                       xor    r9d,r9d
35969c  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3596a1  45 33 c0                       xor    r8d,r8d
3596a4  48 8b c8                       mov    rcx,rax
3596a7  e8 68 3a 06 00                 call   0x3bd114
3596ac  e8 9b db 02 00                 call   0x38724c
3596b1  f3 0f 10 0d a7 9b f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff39ba7]        # 0x293260 ; f32=-1
3596b9  0f 57 c0                       xorps  xmm0,xmm0
3596bc  e8 43 15 04 00                 call   0x39ac04
3596c1  f3 0f 10 15 97 9b f3 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff39b97]        # 0x293260 ; f32=-1
3596c9  48 8d 8d 08 01 00 00           lea    rcx,[rbp+0x108]
3596d0  0f 57 c9                       xorps  xmm1,xmm1
3596d3  e8 68 2c f7 ff                 call   0x2cc340
3596d8  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
3596dc  8b 05 06 3a 0a 00              mov    eax,DWORD PTR [rip+0xa3a06]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3596e2  3b c7                          cmp    eax,edi
3596e4  75 0e                          jne    0x3596f4
3596e6  48 8d 0d 3b cf f3 ff           lea    rcx,[rip+0xfffffffffff3cf3b]        # 0x296628
3596ed  e8 12 b9 00 00                 call   0x365004
3596f2  eb 25                          jmp    0x359719
3596f4  3b c6                          cmp    eax,esi
3596f6  75 09                          jne    0x359701
3596f8  48 8d 0d 51 cf f3 ff           lea    rcx,[rip+0xfffffffffff3cf51]        # 0x296650
3596ff  eb ec                          jmp    0x3596ed
359701  48 8d 55 96                    lea    rdx,[rbp-0x6a]
359705  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35970c  e8 5f 8c ff ff                 call   0x352370 ; STRING getter=0x352370 Aim Modifications
359711  48 8b c8                       mov    rcx,rax
359714  e8 c3 04 f9 ff                 call   0x2e9bdc
359719  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
359720  48 8b d8                       mov    rbx,rax
359723  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35972a  e8 95 bb fe ff                 call   0x3452c4 ; STRING getter=0x3452c4 D
35972f  48 8b c8                       mov    rcx,rax
359732  e8 2d ed f7 ff                 call   0x2d8464
359737  48 8b d0                       mov    rdx,rax
35973a  48 8d 4d c0                    lea    rcx,[rbp-0x40]
35973e  e8 89 2b f7 ff                 call   0x2cc2cc
359743  48 8b c8                       mov    rcx,rax
359746  44 8a cf                       mov    r9b,dil
359749  66 49 0f 7e f0                 movq   r8,xmm6
35974e  48 8b d3                       mov    rdx,rbx
359751  e8 9a b6 02 00                 call   0x384df0
359756  8b 05 8c 39 0a 00              mov    eax,DWORD PTR [rip+0xa398c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35975c  3b c7                          cmp    eax,edi
35975e  75 0e                          jne    0x35976e
359760  48 8d 0d f9 ce f3 ff           lea    rcx,[rip+0xfffffffffff3cef9]        # 0x296660
359767  e8 98 b8 00 00                 call   0x365004
35976c  eb 26                          jmp    0x359794
35976e  3b c6                          cmp    eax,esi
359770  75 09                          jne    0x35977b
359772  48 8d 0d 0f cf f3 ff           lea    rcx,[rip+0xfffffffffff3cf0f]        # 0x296688
359779  eb ec                          jmp    0x359767
35977b  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
359780  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359787  e8 f0 91 ff ff                 call   0x35297c ; STRING getter=0x35297c Target helicopters
35978c  48 8b c8                       mov    rcx,rax
35978f  e8 00 46 f7 ff                 call   0x2cdd94
359794  48 8b d8                       mov    rbx,rax
359797  8b 05 4b 39 0a 00              mov    eax,DWORD PTR [rip+0xa394b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35979d  3b c7                          cmp    eax,edi
35979f  75 09                          jne    0x3597aa
3597a1  48 8d 0d f0 ce f3 ff           lea    rcx,[rip+0xfffffffffff3cef0]        # 0x296698
3597a8  eb 0b                          jmp    0x3597b5
3597aa  3b c6                          cmp    eax,esi
3597ac  75 0e                          jne    0x3597bc
3597ae  48 8d 0d d3 ce f3 ff           lea    rcx,[rip+0xfffffffffff3ced3]        # 0x296688
3597b5  e8 4a b8 00 00                 call   0x365004
3597ba  eb 18                          jmp    0x3597d4
3597bc  48 8d 55 96                    lea    rdx,[rbp-0x6a]
3597c0  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3597c7  e8 9c 8f ff ff                 call   0x352768 ; STRING getter=0x352768 Target Helicopter
3597cc  48 8b c8                       mov    rcx,rax
3597cf  e8 08 04 f9 ff                 call   0x2e9bdc
3597d4  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3597d9  48 8d 15 88 05 09 00           lea    rdx,[rip+0x90588]        # 0x3e9d68 ; CONFIG Bools.TargetHelicopter value(+0x48)
3597e0  45 33 c9                       xor    r9d,r9d
3597e3  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3597e8  45 33 c0                       xor    r8d,r8d
3597eb  48 8b c8                       mov    rcx,rax
3597ee  e8 21 39 06 00                 call   0x3bd114
3597f3  44 38 35 7e e6 07 00           cmp    BYTE PTR [rip+0x7e67e],r14b        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
3597fa  0f 84 1d 01 00 00              je     0x35991d
359800  8b 05 e2 38 0a 00              mov    eax,DWORD PTR [rip+0xa38e2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359806  3b c7                          cmp    eax,edi
359808  75 0e                          jne    0x359818
35980a  48 8d 0d a7 ce f3 ff           lea    rcx,[rip+0xfffffffffff3cea7]        # 0x2966b8
359811  e8 ee b7 00 00                 call   0x365004
359816  eb 25                          jmp    0x35983d
359818  3b c6                          cmp    eax,esi
35981a  75 09                          jne    0x359825
35981c  48 8d 0d c5 ce f3 ff           lea    rcx,[rip+0xfffffffffff3cec5]        # 0x2966e8
359823  eb ec                          jmp    0x359811
359825  48 8d 55 a8                    lea    rdx,[rbp-0x58]
359829  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359830  e8 af 95 ff ff                 call   0x352de4 ; STRING getter=0x352de4 Adds miss chance
359835  48 8b c8                       mov    rcx,rax
359838  e8 77 03 f9 ff                 call   0x2e9bb4
35983d  48 8b d8                       mov    rbx,rax
359840  8b 05 a2 38 0a 00              mov    eax,DWORD PTR [rip+0xa38a2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359846  3b c7                          cmp    eax,edi
359848  75 09                          jne    0x359853
35984a  48 8d 0d a7 ce f3 ff           lea    rcx,[rip+0xfffffffffff3cea7]        # 0x2966f8
359851  eb 0b                          jmp    0x35985e
359853  3b c6                          cmp    eax,esi
359855  75 0e                          jne    0x359865
359857  48 8d 0d ba ce f3 ff           lea    rcx,[rip+0xfffffffffff3ceba]        # 0x296718
35985e  e8 a1 b7 00 00                 call   0x365004
359863  eb 19                          jmp    0x35987e
359865  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35986a  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359871  e8 56 93 ff ff                 call   0x352bcc ; STRING getter=0x352bcc Hit chance
359876  48 8b c8                       mov    rcx,rax
359879  e8 d6 03 f9 ff                 call   0x2e9c54
35987e  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
359883  48 8d 15 ce e4 09 00           lea    rdx,[rip+0x9e4ce]        # 0x3f7d58 ; CONFIG Bools.usemisschance value(+0x48)
35988a  45 33 c9                       xor    r9d,r9d
35988d  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359892  45 33 c0                       xor    r8d,r8d
359895  48 8b c8                       mov    rcx,rax
359898  e8 77 38 06 00                 call   0x3bd114
35989d  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
3598a4  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3598ab  e8 cc 98 ff ff                 call   0x35317c ; STRING getter=0x35317c %.1f%%
3598b0  48 8b c8                       mov    rcx,rax
3598b3  e8 3c 44 f7 ff                 call   0x2cdcf4
3598b8  8b 0d 2a 38 0a 00              mov    ecx,DWORD PTR [rip+0xa382a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3598be  48 8b d8                       mov    rbx,rax
3598c1  3b cf                          cmp    ecx,edi
3598c3  75 09                          jne    0x3598ce
3598c5  48 8d 0d 54 ce f3 ff           lea    rcx,[rip+0xfffffffffff3ce54]        # 0x296720
3598cc  eb 0b                          jmp    0x3598d9
3598ce  3b ce                          cmp    ecx,esi
3598d0  75 0e                          jne    0x3598e0
3598d2  48 8d 0d 6f ce f3 ff           lea    rcx,[rip+0xfffffffffff3ce6f]        # 0x296748
3598d9  e8 26 b7 00 00                 call   0x365004
3598de  eb 19                          jmp    0x3598f9
3598e0  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3598e5  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3598ec  e8 af 96 ff ff                 call   0x352fa0 ; STRING getter=0x352fa0 Hit percent
3598f1  48 8b c8                       mov    rcx,rax
3598f4  e8 3b 45 f7 ff                 call   0x2cde34
3598f9  f3 0f 10 1d 43 42 f3 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff34243]        # 0x28db44 ; f32=100
359901  48 8d 15 e0 e5 09 00           lea    rdx,[rip+0x9e5e0]        # 0x3f7ee8 ; CONFIG F.misschance value(+0x48)
359908  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
35990d  0f 57 d2                       xorps  xmm2,xmm2
359910  48 8b c8                       mov    rcx,rax
359913  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359918  e8 d7 aa 06 00                 call   0x3c43f4
35991d  8b 05 c5 37 0a 00              mov    eax,DWORD PTR [rip+0xa37c5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359923  3b c7                          cmp    eax,edi
359925  75 0e                          jne    0x359935
359927  48 8d 0d 2a ce f3 ff           lea    rcx,[rip+0xfffffffffff3ce2a]        # 0x296758
35992e  e8 d1 b6 00 00                 call   0x365004
359933  eb 26                          jmp    0x35995b
359935  3b c6                          cmp    eax,esi
359937  75 09                          jne    0x359942
359939  48 8d 0d 38 ce f3 ff           lea    rcx,[rip+0xfffffffffff3ce38]        # 0x296778
359940  eb ec                          jmp    0x35992e
359942  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
359947  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35994e  e8 31 9b ff ff                 call   0x353484 ; STRING getter=0x353484 Keeps current target
359953  48 8b c8                       mov    rcx,rax
359956  e8 61 6b fc ff                 call   0x3204bc
35995b  48 8b d8                       mov    rbx,rax
35995e  8b 05 84 37 0a 00              mov    eax,DWORD PTR [rip+0xa3784]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359964  3b c7                          cmp    eax,edi
359966  75 09                          jne    0x359971
359968  48 8d 0d 19 ce f3 ff           lea    rcx,[rip+0xfffffffffff3ce19]        # 0x296788
35996f  eb 0b                          jmp    0x35997c
359971  3b c6                          cmp    eax,esi
359973  75 0e                          jne    0x359983
359975  48 8d 0d 2c ce f3 ff           lea    rcx,[rip+0xfffffffffff3ce2c]        # 0x2967a8
35997c  e8 83 b6 00 00                 call   0x365004
359981  eb 19                          jmp    0x35999c
359983  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
359988  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35998f  e8 28 99 ff ff                 call   0x3532bc ; STRING getter=0x3532bc Keep target
359994  48 8b c8                       mov    rcx,rax
359997  e8 98 44 f7 ff                 call   0x2cde34
35999c  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3599a1  48 8d 15 60 e6 07 00           lea    rdx,[rip+0x7e660]        # 0x3d8008 ; CONFIG Bools.KeepTarget value(+0x48)
3599a8  45 33 c9                       xor    r9d,r9d
3599ab  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3599b0  45 33 c0                       xor    r8d,r8d
3599b3  48 8b c8                       mov    rcx,rax
3599b6  e8 59 37 06 00                 call   0x3bd114
3599bb  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
3599c2  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
3599c9  e8 8a 89 ff ff                 call   0x352358 ; STRING getter=0x352358 %.3f
3599ce  48 8b c8                       mov    rcx,rax
3599d1  e8 16 9c f8 ff                 call   0x2e35ec
3599d6  8b 15 0c 37 0a 00              mov    edx,DWORD PTR [rip+0xa370c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3599dc  48 8b d8                       mov    rbx,rax
3599df  3b d7                          cmp    edx,edi
3599e1  75 09                          jne    0x3599ec
3599e3  48 8d 0d ae cb f3 ff           lea    rcx,[rip+0xfffffffffff3cbae]        # 0x296598
3599ea  eb 0b                          jmp    0x3599f7
3599ec  3b d6                          cmp    edx,esi
3599ee  75 0e                          jne    0x3599fe
3599f0  48 8d 0d b9 cb f3 ff           lea    rcx,[rip+0xfffffffffff3cbb9]        # 0x2965b0
3599f7  e8 08 b6 00 00                 call   0x365004
3599fc  eb 1b                          jmp    0x359a19
3599fe  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
359a05  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359a0c  e8 ab 9c ff ff                 call   0x3536bc ; STRING getter=0x3536bc Smooth
359a11  48 8b c8                       mov    rcx,rax
359a14  e8 db 42 f7 ff                 call   0x2cdcf4
359a19  f3 0f 10 1d 33 38 f3 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff33833]        # 0x28d254 ; f32=1
359a21  48 8d 15 20 43 09 00           lea    rdx,[rip+0x94320]        # 0x3edd48 ; CONFIG F.FloatSmoothing value(+0x48)
359a28  f3 0f 10 15 5c 96 f3 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff3965c]        # 0x29308c ; f32=0.01
359a30  48 8b c8                       mov    rcx,rax
359a33  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
359a38  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
359a3d  e8 b2 a9 06 00                 call   0x3c43f4
359a42  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359a49  e8 56 19 f7 ff                 call   0x2cb3a4
359a4e  8b 0d 94 36 0a 00              mov    ecx,DWORD PTR [rip+0xa3694]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359a54  48 8b d8                       mov    rbx,rax
359a57  3b cf                          cmp    ecx,edi
359a59  75 09                          jne    0x359a64
359a5b  48 8d 0d 56 cd f3 ff           lea    rcx,[rip+0xfffffffffff3cd56]        # 0x2967b8
359a62  eb 0b                          jmp    0x359a6f
359a64  3b ce                          cmp    ecx,esi
359a66  75 0e                          jne    0x359a76
359a68  48 8d 0d 59 cd f3 ff           lea    rcx,[rip+0xfffffffffff3cd59]        # 0x2967c8
359a6f  e8 90 b5 00 00                 call   0x365004
359a74  eb 1b                          jmp    0x359a91
359a76  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
359a7d  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359a84  e8 3f a2 ff ff                 call   0x353cc8 ; STRING getter=0x353cc8 Head
359a89  48 8b c8                       mov    rcx,rax
359a8c  e8 3b 42 f7 ff                 call   0x2cdccc
359a91  48 8b d0                       mov    rdx,rax
359a94  48 8d 4d f0                    lea    rcx,[rbp-0x10]
359a98  e8 2f 28 f7 ff                 call   0x2cc2cc
359a9d  8b 05 45 36 0a 00              mov    eax,DWORD PTR [rip+0xa3645]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359aa3  4c 8d 35 26 cd f3 ff           lea    r14,[rip+0xfffffffffff3cd26]        # 0x2967d0
359aaa  3b c7                          cmp    eax,edi
359aac  75 05                          jne    0x359ab3
359aae  49 8b ce                       mov    rcx,r14
359ab1  eb 0b                          jmp    0x359abe
359ab3  3b c6                          cmp    eax,esi
359ab5  75 0e                          jne    0x359ac5
359ab7  48 8d 0d 1a cd f3 ff           lea    rcx,[rip+0xfffffffffff3cd1a]        # 0x2967d8
359abe  e8 41 b5 00 00                 call   0x365004
359ac3  eb 19                          jmp    0x359ade
359ac5  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
359aca  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359ad1  e8 de a3 ff ff                 call   0x353eb4 ; STRING getter=0x353eb4 Neck
359ad6  48 8b c8                       mov    rcx,rax
359ad9  e8 ee 41 f7 ff                 call   0x2cdccc
359ade  48 8b d0                       mov    rdx,rax
359ae1  48 8d 4d 10                    lea    rcx,[rbp+0x10]
359ae5  e8 e2 27 f7 ff                 call   0x2cc2cc
359aea  8b 05 f8 35 0a 00              mov    eax,DWORD PTR [rip+0xa35f8]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359af0  3b c7                          cmp    eax,edi
359af2  75 09                          jne    0x359afd
359af4  48 8d 0d e5 cc f3 ff           lea    rcx,[rip+0xfffffffffff3cce5]        # 0x2967e0
359afb  eb 0b                          jmp    0x359b08
359afd  3b c6                          cmp    eax,esi
359aff  75 0e                          jne    0x359b0f
359b01  48 8d 0d f0 cc f3 ff           lea    rcx,[rip+0xfffffffffff3ccf0]        # 0x2967f8
359b08  e8 f7 b4 00 00                 call   0x365004
359b0d  eb 19                          jmp    0x359b28
359b0f  48 8d 54 24 35                 lea    rdx,[rsp+0x35]
359b14  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359b1b  e8 58 a5 ff ff                 call   0x354078 ; STRING getter=0x354078 Spine
359b20  48 8b c8                       mov    rcx,rax
359b23  e8 b4 e9 f7 ff                 call   0x2d84dc
359b28  48 8b d0                       mov    rdx,rax
359b2b  48 8d 4d 30                    lea    rcx,[rbp+0x30]
359b2f  e8 98 27 f7 ff                 call   0x2cc2cc
359b34  8b 05 ae 35 0a 00              mov    eax,DWORD PTR [rip+0xa35ae]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359b3a  3b c7                          cmp    eax,edi
359b3c  75 09                          jne    0x359b47
359b3e  48 8d 0d bb cc f3 ff           lea    rcx,[rip+0xfffffffffff3ccbb]        # 0x296800
359b45  eb 0b                          jmp    0x359b52
359b47  3b c6                          cmp    eax,esi
359b49  75 0e                          jne    0x359b59
359b4b  48 8d 0d e2 cc f3 ff           lea    rcx,[rip+0xfffffffffff3cce2]        # 0x296834
359b52  e8 ad b4 00 00                 call   0x365004
359b57  eb 18                          jmp    0x359b71
359b59  48 8d 55 88                    lea    rdx,[rbp-0x78]
359b5d  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359b64  e8 ef a6 ff ff                 call   0x354258 ; STRING getter=0x354258 Lower Spine
359b69  48 8b c8                       mov    rcx,rax
359b6c  e8 c3 42 f7 ff                 call   0x2cde34
359b71  48 8b d0                       mov    rdx,rax
359b74  48 8d 4d 50                    lea    rcx,[rbp+0x50]
359b78  e8 4f 27 f7 ff                 call   0x2cc2cc
359b7d  8b 05 65 35 0a 00              mov    eax,DWORD PTR [rip+0xa3565]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359b83  3b c7                          cmp    eax,edi
359b85  75 09                          jne    0x359b90
359b87  48 8d 0d b2 cc f3 ff           lea    rcx,[rip+0xfffffffffff3ccb2]        # 0x296840
359b8e  eb 0b                          jmp    0x359b9b
359b90  3b c6                          cmp    eax,esi
359b92  75 0e                          jne    0x359ba2
359b94  48 8d 0d bd cc f3 ff           lea    rcx,[rip+0xfffffffffff3ccbd]        # 0x296858
359b9b  e8 64 b4 00 00                 call   0x365004
359ba0  eb 19                          jmp    0x359bbb
359ba2  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
359ba7  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359bae  e8 1d a9 ff ff                 call   0x3544d0
359bb3  48 8b c8                       mov    rcx,rax
359bb6  e8 59 9a f8 ff                 call   0x2e3614
359bbb  48 8b d0                       mov    rdx,rax
359bbe  48 8d 4d 70                    lea    rcx,[rbp+0x70]
359bc2  e8 05 27 f7 ff                 call   0x2cc2cc
359bc7  8b 05 1b 35 0a 00              mov    eax,DWORD PTR [rip+0xa351b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359bcd  3b c7                          cmp    eax,edi
359bcf  75 09                          jne    0x359bda
359bd1  48 8d 0d 90 cc f3 ff           lea    rcx,[rip+0xfffffffffff3cc90]        # 0x296868
359bd8  eb 0b                          jmp    0x359be5
359bda  3b c6                          cmp    eax,esi
359bdc  75 0e                          jne    0x359bec
359bde  48 8d 0d b3 cc f3 ff           lea    rcx,[rip+0xfffffffffff3ccb3]        # 0x296898
359be5  e8 1a b4 00 00                 call   0x365004
359bea  eb 18                          jmp    0x359c04
359bec  48 8d 55 96                    lea    rdx,[rbp-0x6a]
359bf0  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359bf7  e8 70 aa ff ff                 call   0x35466c ; STRING getter=0x35466c Hitscan Priority
359bfc  48 8b c8                       mov    rcx,rax
359bff  e8 b0 ff f8 ff                 call   0x2e9bb4
359c04  48 8b d0                       mov    rdx,rax
359c07  48 8d 8d 90 00 00 00           lea    rcx,[rbp+0x90]
359c0e  e8 b9 26 f7 ff                 call   0x2cc2cc
359c13  4c 8d 85 b0 00 00 00           lea    r8,[rbp+0xb0]
359c1a  48 8d 55 f0                    lea    rdx,[rbp-0x10]
359c1e  48 8d 4d a8                    lea    rcx,[rbp-0x58]
359c22  e8 45 28 f7 ff                 call   0x2cc46c
359c27  4c 8b c3                       mov    r8,rbx
359c2a  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
359c2f  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
359c34  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
359c37  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
359c3d  e8 f6 c7 fd ff                 call   0x336438
359c42  8b 0d a0 34 0a 00              mov    ecx,DWORD PTR [rip+0xa34a0]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359c48  48 8b d8                       mov    rbx,rax
359c4b  3b cf                          cmp    ecx,edi
359c4d  75 09                          jne    0x359c58
359c4f  48 8d 0d 5a cc f3 ff           lea    rcx,[rip+0xfffffffffff3cc5a]        # 0x2968b0
359c56  eb 0b                          jmp    0x359c63
359c58  3b ce                          cmp    ecx,esi
359c5a  75 0e                          jne    0x359c6a
359c5c  48 8d 0d 5d cc f3 ff           lea    rcx,[rip+0xfffffffffff3cc5d]        # 0x2968c0
359c63  e8 9c b3 00 00                 call   0x365004
359c68  eb 19                          jmp    0x359c83
359c6a  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
359c6f  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359c76  e8 a9 9e ff ff                 call   0x353b24
359c7b  48 8b c8                       mov    rcx,rax
359c7e  e8 91 99 f8 ff                 call   0x2e3614
359c83  4c 8b c3                       mov    r8,rbx
359c86  48 8d 15 4b 30 0a 00           lea    rdx,[rip+0xa304b]        # 0x3fccd8 ; CONFIG i.BoneIndex1 value(+0x48)
359c8d  48 8b c8                       mov    rcx,rax
359c90  e8 73 53 06 00                 call   0x3bf008
359c95  ba 20 00 00 00                 mov    edx,0x20
359c9a  4c 8d 0d 53 28 f7 ff           lea    r9,[rip+0xfffffffffff72853]        # 0x2cc4f4
359ca1  48 8d 4d f0                    lea    rcx,[rbp-0x10]
359ca5  44 8d 42 e6                    lea    r8d,[rdx-0x1a]
359ca9  e8 1a 1e f8 ff                 call   0x2dbac8
359cae  48 8d 0d db 2f 0a 00           lea    rcx,[rip+0xa2fdb]        # 0x3fcc90
359cb5  e8 22 5b f9 ff                 call   0x2ef7dc
359cba  83 f8 05                       cmp    eax,0x5
359cbd  0f 85 18 02 00 00              jne    0x359edb
359cc3  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359cca  e8 d5 16 f7 ff                 call   0x2cb3a4
359ccf  8b 0d 13 34 0a 00              mov    ecx,DWORD PTR [rip+0xa3413]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359cd5  48 8b d8                       mov    rbx,rax
359cd8  3b cf                          cmp    ecx,edi
359cda  75 09                          jne    0x359ce5
359cdc  48 8d 0d d5 ca f3 ff           lea    rcx,[rip+0xfffffffffff3cad5]        # 0x2967b8
359ce3  eb 0b                          jmp    0x359cf0
359ce5  3b ce                          cmp    ecx,esi
359ce7  75 0e                          jne    0x359cf7
359ce9  48 8d 0d dc cb f3 ff           lea    rcx,[rip+0xfffffffffff3cbdc]        # 0x2968cc
359cf0  e8 0f b3 00 00                 call   0x365004
359cf5  eb 1b                          jmp    0x359d12
359cf7  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
359cfe  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359d05  e8 ae ad ff ff                 call   0x354ab8 ; STRING getter=0x354ab8 Head
359d0a  48 8b c8                       mov    rcx,rax
359d0d  e8 ba 3f f7 ff                 call   0x2cdccc
359d12  48 8b d0                       mov    rdx,rax
359d15  48 8d 4d f0                    lea    rcx,[rbp-0x10]
359d19  e8 ae 25 f7 ff                 call   0x2cc2cc
359d1e  8b 05 c4 33 0a 00              mov    eax,DWORD PTR [rip+0xa33c4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359d24  3b c7                          cmp    eax,edi
359d26  75 05                          jne    0x359d2d
359d28  49 8b ce                       mov    rcx,r14
359d2b  eb 0b                          jmp    0x359d38
359d2d  3b c6                          cmp    eax,esi
359d2f  75 0e                          jne    0x359d3f
359d31  48 8d 0d 9c cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb9c]        # 0x2968d4
359d38  e8 c7 b2 00 00                 call   0x365004
359d3d  eb 19                          jmp    0x359d58
359d3f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
359d44  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359d4b  e8 54 af ff ff                 call   0x354ca4 ; STRING getter=0x354ca4 Neck
359d50  48 8b c8                       mov    rcx,rax
359d53  e8 74 3f f7 ff                 call   0x2cdccc
359d58  48 8b d0                       mov    rdx,rax
359d5b  48 8d 4d 10                    lea    rcx,[rbp+0x10]
359d5f  e8 68 25 f7 ff                 call   0x2cc2cc
359d64  8b 05 7e 33 0a 00              mov    eax,DWORD PTR [rip+0xa337e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359d6a  3b c7                          cmp    eax,edi
359d6c  75 09                          jne    0x359d77
359d6e  48 8d 0d 6b ca f3 ff           lea    rcx,[rip+0xfffffffffff3ca6b]        # 0x2967e0
359d75  eb 0b                          jmp    0x359d82
359d77  3b c6                          cmp    eax,esi
359d79  75 0e                          jne    0x359d89
359d7b  48 8d 0d 5a cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb5a]        # 0x2968dc
359d82  e8 7d b2 00 00                 call   0x365004
359d87  eb 19                          jmp    0x359da2
359d89  48 8d 54 24 35                 lea    rdx,[rsp+0x35]
359d8e  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359d95  e8 06 b4 ff ff                 call   0x3551a0 ; STRING getter=0x3551a0 Spine
359d9a  48 8b c8                       mov    rcx,rax
359d9d  e8 3a e7 f7 ff                 call   0x2d84dc
359da2  48 8b d0                       mov    rdx,rax
359da5  48 8d 4d 30                    lea    rcx,[rbp+0x30]
359da9  e8 1e 25 f7 ff                 call   0x2cc2cc
359dae  8b 05 34 33 0a 00              mov    eax,DWORD PTR [rip+0xa3334]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359db4  3b c7                          cmp    eax,edi
359db6  75 09                          jne    0x359dc1
359db8  48 8d 0d 29 cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb29]        # 0x2968e8
359dbf  eb 0b                          jmp    0x359dcc
359dc1  3b c6                          cmp    eax,esi
359dc3  75 0e                          jne    0x359dd3
359dc5  48 8d 0d 54 cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb54]        # 0x296920
359dcc  e8 33 b2 00 00                 call   0x365004
359dd1  eb 18                          jmp    0x359deb
359dd3  48 8d 55 88                    lea    rdx,[rbp-0x78]
359dd7  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359dde  e8 a9 b5 ff ff                 call   0x35538c ; STRING getter=0x35538c Lower Spine
359de3  48 8b c8                       mov    rcx,rax
359de6  e8 49 40 f7 ff                 call   0x2cde34
359deb  48 8b d0                       mov    rdx,rax
359dee  48 8d 4d 50                    lea    rcx,[rbp+0x50]
359df2  e8 d5 24 f7 ff                 call   0x2cc2cc
359df7  8b 05 eb 32 0a 00              mov    eax,DWORD PTR [rip+0xa32eb]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359dfd  3b c7                          cmp    eax,edi
359dff  75 09                          jne    0x359e0a
359e01  48 8d 0d 20 cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb20]        # 0x296928
359e08  eb 0b                          jmp    0x359e15
359e0a  3b c6                          cmp    eax,esi
359e0c  75 0e                          jne    0x359e1c
359e0e  48 8d 0d 1b cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb1b]        # 0x296930
359e15  e8 ea b1 00 00                 call   0x365004
359e1a  eb 19                          jmp    0x359e35
359e1c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
359e21  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359e28  e8 77 b7 ff ff                 call   0x3555a4 ; STRING getter=0x3555a4 Pelvis
359e2d  48 8b c8                       mov    rcx,rax
359e30  e8 bf 3e f7 ff                 call   0x2cdcf4
359e35  48 8b d0                       mov    rdx,rax
359e38  48 8d 4d 70                    lea    rcx,[rbp+0x70]
359e3c  e8 8b 24 f7 ff                 call   0x2cc2cc
359e41  4c 8d 85 90 00 00 00           lea    r8,[rbp+0x90]
359e48  48 8d 55 f0                    lea    rdx,[rbp-0x10]
359e4c  48 8d 4d a8                    lea    rcx,[rbp-0x58]
359e50  e8 17 26 f7 ff                 call   0x2cc46c
359e55  4c 8b c3                       mov    r8,rbx
359e58  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
359e5d  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
359e62  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
359e65  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
359e6b  e8 c8 c5 fd ff                 call   0x336438
359e70  8b 0d 72 32 0a 00              mov    ecx,DWORD PTR [rip+0xa3272]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359e76  48 8b d8                       mov    rbx,rax
359e79  3b cf                          cmp    ecx,edi
359e7b  75 09                          jne    0x359e86
359e7d  48 8d 0d b4 ca f3 ff           lea    rcx,[rip+0xfffffffffff3cab4]        # 0x296938
359e84  eb 0b                          jmp    0x359e91
359e86  3b ce                          cmp    ecx,esi
359e88  75 0e                          jne    0x359e98
359e8a  48 8d 0d bf ca f3 ff           lea    rcx,[rip+0xfffffffffff3cabf]        # 0x296950
359e91  e8 6e b1 00 00                 call   0x365004
359e96  eb 18                          jmp    0x359eb0
359e98  48 8d 55 96                    lea    rdx,[rbp-0x6a]
359e9c  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
359ea3  e8 f0 a9 ff ff                 call   0x354898 ; STRING getter=0x354898 Hitscan Priority
359ea8  48 8b c8                       mov    rcx,rax
359eab  e8 04 fd f8 ff                 call   0x2e9bb4
359eb0  4c 8b c3                       mov    r8,rbx
359eb3  48 8d 15 fe 2f 0a 00           lea    rdx,[rip+0xa2ffe]        # 0x3fceb8 ; CONFIG i.firstpriority value(+0x48)
359eba  48 8b c8                       mov    rcx,rax
359ebd  e8 46 51 06 00                 call   0x3bf008
359ec2  ba 20 00 00 00                 mov    edx,0x20
359ec7  4c 8d 0d 26 26 f7 ff           lea    r9,[rip+0xfffffffffff72626]        # 0x2cc4f4
359ece  48 8d 4d f0                    lea    rcx,[rbp-0x10]
359ed2  44 8d 42 e5                    lea    r8d,[rdx-0x1b]
359ed6  e8 ed 1b f8 ff                 call   0x2dbac8
359edb  8b 05 07 32 0a 00              mov    eax,DWORD PTR [rip+0xa3207]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359ee1  3b c7                          cmp    eax,edi
359ee3  75 09                          jne    0x359eee
359ee5  48 8d 0d 74 ca f3 ff           lea    rcx,[rip+0xfffffffffff3ca74]        # 0x296960
359eec  eb 0b                          jmp    0x359ef9
359eee  3b c6                          cmp    eax,esi
359ef0  75 0e                          jne    0x359f00
359ef2  48 8d 0d 87 ca f3 ff           lea    rcx,[rip+0xfffffffffff3ca87]        # 0x296980
359ef9  e8 06 b1 00 00                 call   0x365004
359efe  eb 18                          jmp    0x359f18
359f00  48 8d 55 96                    lea    rdx,[rbp-0x6a]
359f04  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359f0b  e8 6c b8 ff ff                 call   0x35577c ; STRING getter=0x35577c Secondary Aim Key
359f10  48 8b c8                       mov    rcx,rax
359f13  e8 c4 fc f8 ff                 call   0x2e9bdc
359f18  48 8b c8                       mov    rcx,rax
359f1b  e8 70 af 06 00                 call   0x3c4e90
359f20  f3 0f 10 0d 38 93 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff39338]        # 0x293260 ; f32=-1
359f28  0f 57 c0                       xorps  xmm0,xmm0
359f2b  e8 d4 0c 04 00                 call   0x39ac04
359f30  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
359f37  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359f3e  e8 a9 b9 ff ff                 call   0x3558ec ; STRING getter=0x3558ec ##
359f43  48 8b c8                       mov    rcx,rax
359f46  e8 a9 64 fc ff                 call   0x3203f4
359f4b  48 8b d0                       mov    rdx,rax
359f4e  48 8d 4d c0                    lea    rcx,[rbp-0x40]
359f52  e8 75 23 f7 ff                 call   0x2cc2cc
359f57  48 8d 55 96                    lea    rdx,[rbp-0x6a]
359f5b  48 8b d8                       mov    rbx,rax
359f5e  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359f65  e8 56 bb ff ff                 call   0x355ac0 ; STRING getter=0x355ac0 Secondary Aim Key
359f6a  48 8b c8                       mov    rcx,rax
359f6d  e8 6a fc f8 ff                 call   0x2e9bdc
359f72  48 8b d0                       mov    rdx,rax
359f75  48 8b cb                       mov    rcx,rbx
359f78  e8 2f 38 f7 ff                 call   0x2cd7ac
359f7d  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
359f84  48 8b d8                       mov    rbx,rax
359f87  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359f8e  e8 c1 bc ff ff                 call   0x355c54 ; STRING getter=0x355c54 binder
359f93  48 8b c8                       mov    rcx,rax
359f96  e8 59 3d f7 ff                 call   0x2cdcf4
359f9b  48 8b d0                       mov    rdx,rax
359f9e  48 8b cb                       mov    rcx,rbx
359fa1  e8 06 38 f7 ff                 call   0x2cd7ac
359fa6  48 8b c8                       mov    rcx,rax
359fa9  e8 3e 38 f7 ff                 call   0x2cd7ec
359fae  48 8b c8                       mov    rcx,rax
359fb1  48 8d 15 e0 a4 09 00           lea    rdx,[rip+0x9a4e0]        # 0x3f4498 ; CONFIG K.SecondAimbotVirtualKey value(+0x48)
359fb8  44 8a c7                       mov    r8b,dil
359fbb  e8 b0 bb 02 00                 call   0x385b70
359fc0  48 8d 4d c0                    lea    rcx,[rbp-0x40]
359fc4  e8 2b 25 f7 ff                 call   0x2cc4f4
359fc9  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
359fd0  e8 cf 13 f7 ff                 call   0x2cb3a4
359fd5  8b 0d 0d 31 0a 00              mov    ecx,DWORD PTR [rip+0xa310d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359fdb  48 8b d8                       mov    rbx,rax
359fde  3b cf                          cmp    ecx,edi
359fe0  75 09                          jne    0x359feb
359fe2  48 8d 0d cf c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c7cf]        # 0x2967b8
359fe9  eb 0b                          jmp    0x359ff6
359feb  3b ce                          cmp    ecx,esi
359fed  75 0e                          jne    0x359ffd
359fef  48 8d 0d d2 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c7d2]        # 0x2967c8
359ff6  e8 09 b0 00 00                 call   0x365004
359ffb  eb 1b                          jmp    0x35a018
359ffd  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
35a004  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35a00b  e8 d4 bf ff ff                 call   0x355fe4 ; STRING getter=0x355fe4 Head
35a010  48 8b c8                       mov    rcx,rax
35a013  e8 b4 3c f7 ff                 call   0x2cdccc
35a018  48 8b d0                       mov    rdx,rax
35a01b  48 8d 4d f0                    lea    rcx,[rbp-0x10]
35a01f  e8 a8 22 f7 ff                 call   0x2cc2cc
35a024  8b 05 be 30 0a 00              mov    eax,DWORD PTR [rip+0xa30be]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a02a  3b c7                          cmp    eax,edi
35a02c  75 05                          jne    0x35a033
35a02e  49 8b ce                       mov    rcx,r14
35a031  eb 0b                          jmp    0x35a03e
35a033  3b c6                          cmp    eax,esi
35a035  75 0e                          jne    0x35a045
35a037  48 8d 0d 9a c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c79a]        # 0x2967d8
35a03e  e8 c1 af 00 00                 call   0x365004
35a043  eb 19                          jmp    0x35a05e
35a045  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
35a04a  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a051  e8 16 c2 ff ff                 call   0x35626c ; STRING getter=0x35626c Neck
35a056  48 8b c8                       mov    rcx,rax
35a059  e8 6e 3c f7 ff                 call   0x2cdccc
35a05e  48 8b d0                       mov    rdx,rax
35a061  48 8d 4d 10                    lea    rcx,[rbp+0x10]
35a065  e8 62 22 f7 ff                 call   0x2cc2cc
35a06a  8b 05 78 30 0a 00              mov    eax,DWORD PTR [rip+0xa3078]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a070  3b c7                          cmp    eax,edi
35a072  75 09                          jne    0x35a07d
35a074  48 8d 0d 65 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c765]        # 0x2967e0
35a07b  eb 0b                          jmp    0x35a088
35a07d  3b c6                          cmp    eax,esi
35a07f  75 0e                          jne    0x35a08f
35a081  48 8d 0d 70 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c770]        # 0x2967f8
35a088  e8 77 af 00 00                 call   0x365004
35a08d  eb 19                          jmp    0x35a0a8
35a08f  48 8d 54 24 35                 lea    rdx,[rsp+0x35]
35a094  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a09b  e8 40 c6 ff ff                 call   0x3566e0 ; STRING getter=0x3566e0 Spine
35a0a0  48 8b c8                       mov    rcx,rax
35a0a3  e8 34 e4 f7 ff                 call   0x2d84dc
35a0a8  48 8b d0                       mov    rdx,rax
35a0ab  48 8d 4d 30                    lea    rcx,[rbp+0x30]
35a0af  e8 18 22 f7 ff                 call   0x2cc2cc
35a0b4  8b 05 2e 30 0a 00              mov    eax,DWORD PTR [rip+0xa302e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a0ba  3b c7                          cmp    eax,edi
35a0bc  75 09                          jne    0x35a0c7
35a0be  48 8d 0d 3b c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c73b]        # 0x296800
35a0c5  eb 0b                          jmp    0x35a0d2
35a0c7  3b c6                          cmp    eax,esi
35a0c9  75 0e                          jne    0x35a0d9
35a0cb  48 8d 0d 62 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c762]        # 0x296834
35a0d2  e8 2d af 00 00                 call   0x365004
35a0d7  eb 18                          jmp    0x35a0f1
35a0d9  48 8d 55 88                    lea    rdx,[rbp-0x78]
35a0dd  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a0e4  e8 8f c7 ff ff                 call   0x356878 ; STRING getter=0x356878 Lower Spine
35a0e9  48 8b c8                       mov    rcx,rax
35a0ec  e8 43 3d f7 ff                 call   0x2cde34
35a0f1  48 8b d0                       mov    rdx,rax
35a0f4  48 8d 4d 50                    lea    rcx,[rbp+0x50]
35a0f8  e8 cf 21 f7 ff                 call   0x2cc2cc
35a0fd  8b 05 e5 2f 0a 00              mov    eax,DWORD PTR [rip+0xa2fe5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a103  3b c7                          cmp    eax,edi
35a105  75 09                          jne    0x35a110
35a107  48 8d 0d 32 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c732]        # 0x296840
35a10e  eb 0b                          jmp    0x35a11b
35a110  3b c6                          cmp    eax,esi
35a112  75 0e                          jne    0x35a122
35a114  48 8d 0d 3d c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c73d]        # 0x296858
35a11b  e8 e4 ae 00 00                 call   0x365004
35a120  eb 19                          jmp    0x35a13b
35a122  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35a127  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a12e  e8 9d a3 ff ff                 call   0x3544d0
35a133  48 8b c8                       mov    rcx,rax
35a136  e8 d9 94 f8 ff                 call   0x2e3614
35a13b  48 8b d0                       mov    rdx,rax
35a13e  48 8d 4d 70                    lea    rcx,[rbp+0x70]
35a142  e8 85 21 f7 ff                 call   0x2cc2cc
35a147  8b 05 9b 2f 0a 00              mov    eax,DWORD PTR [rip+0xa2f9b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a14d  3b c7                          cmp    eax,edi
35a14f  75 09                          jne    0x35a15a
35a151  48 8d 0d 10 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c710]        # 0x296868
35a158  eb 0b                          jmp    0x35a165
35a15a  3b c6                          cmp    eax,esi
35a15c  75 0e                          jne    0x35a16c
35a15e  48 8d 0d 33 c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c733]        # 0x296898
35a165  e8 9a ae 00 00                 call   0x365004
35a16a  eb 18                          jmp    0x35a184
35a16c  48 8d 55 96                    lea    rdx,[rbp-0x6a]
35a170  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a177  e8 f0 c9 ff ff                 call   0x356b6c ; STRING getter=0x356b6c Hitscan Priority
35a17c  48 8b c8                       mov    rcx,rax
35a17f  e8 30 fa f8 ff                 call   0x2e9bb4
35a184  48 8b d0                       mov    rdx,rax
35a187  48 8d 8d 90 00 00 00           lea    rcx,[rbp+0x90]
35a18e  e8 39 21 f7 ff                 call   0x2cc2cc
35a193  4c 8d 85 b0 00 00 00           lea    r8,[rbp+0xb0]
35a19a  48 8d 55 f0                    lea    rdx,[rbp-0x10]
35a19e  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35a1a2  e8 c5 22 f7 ff                 call   0x2cc46c
35a1a7  4c 8b c3                       mov    r8,rbx
35a1aa  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
35a1af  48 8d 4d c0                    lea    rcx,[rbp-0x40]
35a1b3  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
35a1b6  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
35a1bc  e8 77 c2 fd ff                 call   0x336438
35a1c1  8b 0d 21 2f 0a 00              mov    ecx,DWORD PTR [rip+0xa2f21]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a1c7  48 8b d8                       mov    rbx,rax
35a1ca  3b cf                          cmp    ecx,edi
35a1cc  75 09                          jne    0x35a1d7
35a1ce  48 8d 0d bb c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c7bb]        # 0x296990
35a1d5  eb 0b                          jmp    0x35a1e2
35a1d7  3b ce                          cmp    ecx,esi
35a1d9  75 0e                          jne    0x35a1e9
35a1db  48 8d 0d ce c7 f3 ff           lea    rcx,[rip+0xfffffffffff3c7ce]        # 0x2969b0
35a1e2  e8 1d ae 00 00                 call   0x365004
35a1e7  eb 19                          jmp    0x35a202
35a1e9  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35a1ee  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a1f5  e8 62 bc ff ff                 call   0x355e5c ; STRING getter=0x355e5c Secondary Aimbone
35a1fa  48 8b c8                       mov    rcx,rax
35a1fd  e8 da f9 f8 ff                 call   0x2e9bdc
35a202  4c 8b c3                       mov    r8,rbx
35a205  48 8d 15 1c 2b 0a 00           lea    rdx,[rip+0xa2b1c]        # 0x3fcd28 ; CONFIG i.BoneIndexSecond value(+0x48)
35a20c  48 8b c8                       mov    rcx,rax
35a20f  e8 f4 4d 06 00                 call   0x3bf008
35a214  ba 20 00 00 00                 mov    edx,0x20
35a219  4c 8d 0d d4 22 f7 ff           lea    r9,[rip+0xfffffffffff722d4]        # 0x2cc4f4
35a220  48 8d 4d f0                    lea    rcx,[rbp-0x10]
35a224  44 8d 42 e6                    lea    r8d,[rdx-0x1a]
35a228  e8 9b 18 f8 ff                 call   0x2dbac8
35a22d  48 8d 0d ac 2a 0a 00           lea    rcx,[rip+0xa2aac]        # 0x3fcce0
35a234  e8 a3 55 f9 ff                 call   0x2ef7dc
35a239  83 f8 05                       cmp    eax,0x5
35a23c  0f 85 18 02 00 00              jne    0x35a45a
35a242  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35a249  e8 56 11 f7 ff                 call   0x2cb3a4
35a24e  8b 15 94 2e 0a 00              mov    edx,DWORD PTR [rip+0xa2e94]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a254  48 8b d8                       mov    rbx,rax
35a257  3b d7                          cmp    edx,edi
35a259  75 09                          jne    0x35a264
35a25b  48 8d 0d 56 c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c556]        # 0x2967b8
35a262  eb 0b                          jmp    0x35a26f
35a264  3b d6                          cmp    edx,esi
35a266  75 0e                          jne    0x35a276
35a268  48 8d 0d 5d c6 f3 ff           lea    rcx,[rip+0xfffffffffff3c65d]        # 0x2968cc
35a26f  e8 90 ad 00 00                 call   0x365004
35a274  eb 1b                          jmp    0x35a291
35a276  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
35a27d  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
35a284  e8 ef cb ff ff                 call   0x356e78 ; STRING getter=0x356e78 Head
35a289  48 8b c8                       mov    rcx,rax
35a28c  e8 3b 3a f7 ff                 call   0x2cdccc
35a291  48 8b d0                       mov    rdx,rax
35a294  48 8d 4d f0                    lea    rcx,[rbp-0x10]
35a298  e8 2f 20 f7 ff                 call   0x2cc2cc
35a29d  8b 05 45 2e 0a 00              mov    eax,DWORD PTR [rip+0xa2e45]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a2a3  3b c7                          cmp    eax,edi
35a2a5  75 05                          jne    0x35a2ac
35a2a7  49 8b ce                       mov    rcx,r14
35a2aa  eb 0b                          jmp    0x35a2b7
35a2ac  3b c6                          cmp    eax,esi
35a2ae  75 0e                          jne    0x35a2be
35a2b0  48 8d 0d 1d c6 f3 ff           lea    rcx,[rip+0xfffffffffff3c61d]        # 0x2968d4
35a2b7  e8 48 ad 00 00                 call   0x365004
35a2bc  eb 19                          jmp    0x35a2d7
35a2be  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
35a2c3  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a2ca  e8 05 cd ff ff                 call   0x356fd4 ; STRING getter=0x356fd4 Neck
35a2cf  48 8b c8                       mov    rcx,rax
35a2d2  e8 f5 39 f7 ff                 call   0x2cdccc
35a2d7  48 8b d0                       mov    rdx,rax
35a2da  48 8d 4d 10                    lea    rcx,[rbp+0x10]
35a2de  e8 e9 1f f7 ff                 call   0x2cc2cc
35a2e3  8b 05 ff 2d 0a 00              mov    eax,DWORD PTR [rip+0xa2dff]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a2e9  3b c7                          cmp    eax,edi
35a2eb  75 09                          jne    0x35a2f6
35a2ed  48 8d 0d ec c4 f3 ff           lea    rcx,[rip+0xfffffffffff3c4ec]        # 0x2967e0
35a2f4  eb 0b                          jmp    0x35a301
35a2f6  3b c6                          cmp    eax,esi
35a2f8  75 0e                          jne    0x35a308
35a2fa  48 8d 0d db c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c5db]        # 0x2968dc
35a301  e8 fe ac 00 00                 call   0x365004
35a306  eb 19                          jmp    0x35a321
35a308  48 8d 54 24 35                 lea    rdx,[rsp+0x35]
35a30d  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a314  e8 7b ce ff ff                 call   0x357194 ; STRING getter=0x357194 Spine
35a319  48 8b c8                       mov    rcx,rax
35a31c  e8 bb e1 f7 ff                 call   0x2d84dc
35a321  48 8b d0                       mov    rdx,rax
35a324  48 8d 4d 30                    lea    rcx,[rbp+0x30]
35a328  e8 9f 1f f7 ff                 call   0x2cc2cc
35a32d  8b 05 b5 2d 0a 00              mov    eax,DWORD PTR [rip+0xa2db5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a333  3b c7                          cmp    eax,edi
35a335  75 09                          jne    0x35a340
35a337  48 8d 0d aa c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c5aa]        # 0x2968e8
35a33e  eb 0b                          jmp    0x35a34b
35a340  3b c6                          cmp    eax,esi
35a342  75 0e                          jne    0x35a352
35a344  48 8d 0d d5 c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c5d5]        # 0x296920
35a34b  e8 b4 ac 00 00                 call   0x365004
35a350  eb 18                          jmp    0x35a36a
35a352  48 8d 55 88                    lea    rdx,[rbp-0x78]
35a356  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a35d  e8 c2 cf ff ff                 call   0x357324 ; STRING getter=0x357324 Lower Spine
35a362  48 8b c8                       mov    rcx,rax
35a365  e8 ca 3a f7 ff                 call   0x2cde34
35a36a  48 8b d0                       mov    rdx,rax
35a36d  48 8d 4d 50                    lea    rcx,[rbp+0x50]
35a371  e8 56 1f f7 ff                 call   0x2cc2cc
35a376  8b 05 6c 2d 0a 00              mov    eax,DWORD PTR [rip+0xa2d6c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a37c  3b c7                          cmp    eax,edi
35a37e  75 09                          jne    0x35a389
35a380  48 8d 0d a1 c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c5a1]        # 0x296928
35a387  eb 0b                          jmp    0x35a394
35a389  3b c6                          cmp    eax,esi
35a38b  75 0e                          jne    0x35a39b
35a38d  48 8d 0d 9c c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c59c]        # 0x296930
35a394  e8 6b ac 00 00                 call   0x365004
35a399  eb 19                          jmp    0x35a3b4
35a39b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
35a3a0  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a3a7  e8 f0 d0 ff ff                 call   0x35749c ; STRING getter=0x35749c Pelvis
35a3ac  48 8b c8                       mov    rcx,rax
35a3af  e8 40 39 f7 ff                 call   0x2cdcf4
35a3b4  48 8b d0                       mov    rdx,rax
35a3b7  48 8d 4d 70                    lea    rcx,[rbp+0x70]
35a3bb  e8 0c 1f f7 ff                 call   0x2cc2cc
35a3c0  4c 8d 85 90 00 00 00           lea    r8,[rbp+0x90]
35a3c7  48 8d 55 f0                    lea    rdx,[rbp-0x10]
35a3cb  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35a3cf  e8 98 20 f7 ff                 call   0x2cc46c
35a3d4  4c 8b c3                       mov    r8,rbx
35a3d7  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
35a3dc  48 8d 4d c0                    lea    rcx,[rbp-0x40]
35a3e0  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
35a3e3  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
35a3e9  e8 4a c0 fd ff                 call   0x336438
35a3ee  8b 0d f4 2c 0a 00              mov    ecx,DWORD PTR [rip+0xa2cf4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35a3f4  48 8b d8                       mov    rbx,rax
35a3f7  3b cf                          cmp    ecx,edi
35a3f9  75 09                          jne    0x35a404
35a3fb  48 8d 0d be c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c5be]        # 0x2969c0
35a402  eb 0b                          jmp    0x35a40f
35a404  3b ce                          cmp    ecx,esi
35a406  75 0e                          jne    0x35a416
35a408  48 8d 0d d9 c5 f3 ff           lea    rcx,[rip+0xfffffffffff3c5d9]        # 0x2969e8
35a40f  e8 f0 ab 00 00                 call   0x365004
35a414  eb 19                          jmp    0x35a42f
35a416  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35a41b  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35a422  e8 bd c8 ff ff                 call   0x356ce4 ; STRING getter=0x356ce4 Secondary Priority
35a427  48 8b c8                       mov    rcx,rax
35a42a  e8 65 39 f7 ff                 call   0x2cdd94
35a42f  4c 8b c3                       mov    r8,rbx
35a432  48 8d 15 cf 2a 0a 00           lea    rdx,[rip+0xa2acf]        # 0x3fcf08 ; CONFIG i.secondpriority value(+0x48)
35a439  48 8b c8                       mov    rcx,rax
35a43c  e8 c7 4b 06 00                 call   0x3bf008
35a441  ba 20 00 00 00                 mov    edx,0x20
35a446  4c 8d 0d a7 20 f7 ff           lea    r9,[rip+0xfffffffffff720a7]        # 0x2cc4f4
35a44d  48 8d 4d f0                    lea    rcx,[rbp-0x10]
35a451  44 8d 42 e5                    lea    r8d,[rdx-0x1b]
35a455  e8 6e 16 f8 ff                 call   0x2dbac8
35a45a  0f 28 b4 24 b0 01 00 00        movaps xmm6,XMMWORD PTR [rsp+0x1b0]
35a462  48 81 c4 c0 01 00 00           add    rsp,0x1c0
35a469  41 5e                          pop    r14
35a46b  5f                             pop    rdi
35a46c  5e                             pop    rsi
35a46d  5b                             pop    rbx
35a46e  5d                             pop    rbp
35a46f  e9 d8 cd 02 00                 jmp    0x38724c
