; pdata function 0x31787c..0x317928 unwind=0x3d3138
31787c  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
317881  55                             push   rbp
317882  53                             push   rbx
317883  56                             push   rsi
317884  57                             push   rdi
317885  41 56                          push   r14
317887  48 8b ec                       mov    rbp,rsp
31788a  48 83 ec 40                    sub    rsp,0x40
31788e  4c 8b f2                       mov    r14,rdx
317891  48 8b f1                       mov    rsi,rcx
317894  48 8d 55 38                    lea    rdx,[rbp+0x38]
317898  48 8d 4d 30                    lea    rcx,[rbp+0x30]
31789c  e8 93 79 fc ff                 call   0x2df234
3178a1  48 8d 55 40                    lea    rdx,[rbp+0x40]
3178a5  48 8b ce                       mov    rcx,rsi
3178a8  48 8b 38                       mov    rdi,QWORD PTR [rax]
3178ab  e8 c8 31 00 00                 call   0x31aa78
3178b0  48 8d 55 48                    lea    rdx,[rbp+0x48]
3178b4  48 8b ce                       mov    rcx,rsi
3178b7  48 8b 18                       mov    rbx,QWORD PTR [rax]
3178ba  e8 a1 31 00 00                 call   0x31aa60
3178bf  4c 8b cf                       mov    r9,rdi
3178c2  48 8d 4d e0                    lea    rcx,[rbp-0x20]
3178c6  4c 8b c3                       mov    r8,rbx
3178c9  48 8b 10                       mov    rdx,QWORD PTR [rax]
3178cc  e8 1b 65 fd ff                 call   0x2eddec
3178d1  48 8d 55 e8                    lea    rdx,[rbp-0x18]
3178d5  48 8b ce                       mov    rcx,rsi
3178d8  48 8b d8                       mov    rbx,rax
3178db  e8 98 31 00 00                 call   0x31aa78
3178e0  48 8b d0                       mov    rdx,rax
3178e3  48 8b cb                       mov    rcx,rbx
3178e6  e8 49 4c fb ff                 call   0x2cc534
3178eb  84 c0                          test   al,al
3178ed  74 2e                          je     0x31791d
3178ef  48 8d 4d f0                    lea    rcx,[rbp-0x10]
3178f3  48 c7 45 f8 00 00 00 00        mov    QWORD PTR [rbp-0x8],0x0
3178fb  e8 b0 76 fd ff                 call   0x2eefb0
317900  48 8d 4d f0                    lea    rcx,[rbp-0x10]
317904  4c 89 75 f0                    mov    QWORD PTR [rbp-0x10],r14
317908  e8 77 9b 00 00                 call   0x321484
31790d  84 c0                          test   al,al
31790f  74 0c                          je     0x31791d
317911  48 8d 55 f0                    lea    rdx,[rbp-0x10]
317915  48 8b ce                       mov    rcx,rsi
317918  e8 8f 94 00 00                 call   0x320dac
31791d  48 83 c4 40                    add    rsp,0x40
317921  41 5e                          pop    r14
317923  5f                             pop    rdi
317924  5e                             pop    rsi
317925  5b                             pop    rbx
317926  5d                             pop    rbp
317927  c3                             ret

; pdata function 0x368244..0x36827e unwind=0x3d2064
368244  48 83 ec 28                    sub    rsp,0x28
368248  48 8b d1                       mov    rdx,rcx
36824b  e8 b8 2c f6 ff                 call   0x2caf08
368250  84 c0                          test   al,al
368252  74 23                          je     0x368277
368254  48 8b ca                       mov    rcx,rdx
368257  e8 a4 11 00 00                 call   0x369400
36825c  48 8b c8                       mov    rcx,rax
36825f  48 8b d0                       mov    rdx,rax
368262  e8 a1 2c f6 ff                 call   0x2caf08
368267  84 c0                          test   al,al
368269  74 0c                          je     0x368277
36826b  48 8b ca                       mov    rcx,rdx
36826e  48 83 c4 28                    add    rsp,0x28
368272  e9 2d a9 00 00                 jmp    0x372ba4
368277  32 c0                          xor    al,al
368279  48 83 c4 28                    add    rsp,0x28
36827d  c3                             ret

; pdata function 0x36821c..0x368242 unwind=0x3d2064
36821c  48 83 ec 28                    sub    rsp,0x28
368220  4c 8b c1                       mov    r8,rcx
368223  e8 e0 2c f6 ff                 call   0x2caf08
368228  84 c0                          test   al,al
36822a  75 05                          jne    0x368231
36822c  48 83 c4 28                    add    rsp,0x28
368230  c3                             ret
368231  ba 00 01 00 00                 mov    edx,0x100
368236  49 8b c8                       mov    rcx,r8
368239  48 83 c4 28                    add    rsp,0x28
36823d  e9 b2 1b 00 00                 jmp    0x369df4

