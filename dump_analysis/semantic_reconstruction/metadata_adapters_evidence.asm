; pdata function 0x334a90..0x334af3 unwind=0x3d2130
334a90  40 53                          rex push rbx
334a92  55                             push   rbp
334a93  56                             push   rsi
334a94  57                             push   rdi
334a95  48 83 ec 28                    sub    rsp,0x28
334a99  41 8b f0                       mov    esi,r8d
334a9c  48 8b ea                       mov    rbp,rdx
334a9f  48 8b f9                       mov    rdi,rcx
334aa2  48 85 c9                       test   rcx,rcx
334aa5  74 3c                          je     0x334ae3
334aa7  48 c7 44 24 50 00 00 00 00     mov    QWORD PTR [rsp+0x50],0x0
334ab0  eb 1f                          jmp    0x334ad1
334ab2  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
334ab6  48 8b d5                       mov    rdx,rbp
334ab9  e8 36 05 00 00                 call   0x334ff4
334abe  84 c0                          test   al,al
334ac0  74 0c                          je     0x334ace
334ac2  48 8b cb                       mov    rcx,rbx
334ac5  e8 76 06 00 00                 call   0x335140
334aca  3b c6                          cmp    eax,esi
334acc  74 20                          je     0x334aee
334ace  48 8b cf                       mov    rcx,rdi
334ad1  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
334ad6  e8 85 fb ff ff                 call   0x334660
334adb  48 8b d8                       mov    rbx,rax
334ade  48 85 c0                       test   rax,rax
334ae1  75 cf                          jne    0x334ab2
334ae3  33 c0                          xor    eax,eax
334ae5  48 83 c4 28                    add    rsp,0x28
334ae9  5f                             pop    rdi
334aea  5e                             pop    rsi
334aeb  5d                             pop    rbp
334aec  5b                             pop    rbx
334aed  c3                             ret
334aee  48 8b c3                       mov    rax,rbx
334af1  eb f2                          jmp    0x334ae5

; pdata function 0x333d10..0x334169 unwind=0x3d30f0
333d10  40 55                          rex push rbp
333d12  53                             push   rbx
333d13  56                             push   rsi
333d14  57                             push   rdi
333d15  41 54                          push   r12
333d17  41 55                          push   r13
333d19  41 56                          push   r14
333d1b  41 57                          push   r15
333d1d  48 8d 6c 24 e1                 lea    rbp,[rsp-0x1f]
333d22  48 81 ec f8 00 00 00           sub    rsp,0xf8
333d29  4c 8b e9                       mov    r13,rcx
333d2c  4c 8d 45 67                    lea    r8,[rbp+0x67]
333d30  48 8d 0d 11 5b 0c 00           lea    rcx,[rip+0xc5b11]        # 0x3f9848
333d37  44 89 6d 67                    mov    DWORD PTR [rbp+0x67],r13d
333d3b  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
333d3f  e8 78 0b 00 00                 call   0x3348bc
333d44  48 8d 55 67                    lea    rdx,[rbp+0x67]
333d48  48 8d 0d f9 5a 0c 00           lea    rcx,[rip+0xc5af9]        # 0x3f9848
333d4f  e8 40 0b 00 00                 call   0x334894
333d54  48 8b d0                       mov    rdx,rax
333d57  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
333d5b  e8 d4 87 f9 ff                 call   0x2cc534
333d60  84 c0                          test   al,al
333d62  75 12                          jne    0x333d76
333d64  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
333d68  e8 b3 fd ff ff                 call   0x333b20
333d6d  48 8b 40 08                    mov    rax,QWORD PTR [rax+0x8]
333d71  e9 df 03 00 00                 jmp    0x334155
333d76  e8 21 0a 00 00                 call   0x33479c
333d7b  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
333d80  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
333d89  48 8b c8                       mov    rcx,rax
333d8c  e8 7b 0a 00 00                 call   0x33480c
333d91  45 33 f6                       xor    r14d,r14d
333d94  48 89 45 c7                    mov    QWORD PTR [rbp-0x39],rax
333d98  4c 39 74 24 20                 cmp    QWORD PTR [rsp+0x20],r14
333d9d  0f 86 b0 03 00 00              jbe    0x334153
333da3  42 8d 0c f5 00 00 00 00        lea    ecx,[r14*8+0x0]
333dab  45 33 ff                       xor    r15d,r15d
333dae  48 63 d1                       movsxd rdx,ecx
333db1  48 8b 0c 10                    mov    rcx,QWORD PTR [rax+rdx*1]
333db5  4c 8b 21                       mov    r12,QWORD PTR [rcx]
333db8  49 8b cc                       mov    rcx,r12
333dbb  e8 a0 09 00 00                 call   0x334760
333dc0  48 85 c0                       test   rax,rax
333dc3  0f 84 46 03 00 00              je     0x33410f
333dc9  49 63 d7                       movsxd rdx,r15d
333dcc  49 8b cc                       mov    rcx,r12
333dcf  e8 84 0b 00 00                 call   0x334958
333dd4  48 8b f0                       mov    rsi,rax
333dd7  48 85 c0                       test   rax,rax
333dda  0f 84 18 03 00 00              je     0x3340f8
333de0  48 8d 4d cf                    lea    rcx,[rbp-0x31]
333de4  e8 77 07 fa ff                 call   0x2d4560
333de9  48 8b 56 18                    mov    rdx,QWORD PTR [rsi+0x18]
333ded  48 8b 5e 10                    mov    rbx,QWORD PTR [rsi+0x10]
333df1  48 85 d2                       test   rdx,rdx
333df4  74 2f                          je     0x333e25
333df6  80 3a 00                       cmp    BYTE PTR [rdx],0x0
333df9  74 2a                          je     0x333e25
333dfb  48 8d 4d cf                    lea    rcx,[rbp-0x31]
333dff  e8 00 18 fa ff                 call   0x2d5604
333e04  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
333e08  48 8d 4d 67                    lea    rcx,[rbp+0x67]
333e0c  e8 53 fd ff ff                 call   0x333b64 ; STRING getter=0x333b64 ::
333e11  48 8b c8                       mov    rcx,rax
333e14  e8 db c5 fe ff                 call   0x3203f4
333e19  48 8b d0                       mov    rdx,rax
333e1c  48 8d 4d cf                    lea    rcx,[rbp-0x31]
333e20  e8 df 17 fa ff                 call   0x2d5604
333e25  48 8b d3                       mov    rdx,rbx
333e28  48 8d 4d cf                    lea    rcx,[rbp-0x31]
333e2c  e8 d3 17 fa ff                 call   0x2d5604
333e31  48 c7 44 24 48 00 00 00 00     mov    QWORD PTR [rsp+0x48],0x0
333e3a  e9 97 02 00 00                 jmp    0x3340d6
333e3f  48 8b cf                       mov    rcx,rdi
333e42  e8 79 14 00 00                 call   0x3352c0
333e47  48 8d 55 97                    lea    rdx,[rbp-0x69]
333e4b  48 8b d8                       mov    rbx,rax
333e4e  48 8d 4d 67                    lea    rcx,[rbp+0x67]
333e52  e8 25 fd ff ff                 call   0x333b7c ; STRING getter=0x333b7c ::
333e57  48 8b c8                       mov    rcx,rax
333e5a  e8 95 c5 fe ff                 call   0x3203f4
333e5f  4c 8b c0                       mov    r8,rax
333e62  48 8d 55 cf                    lea    rdx,[rbp-0x31]
333e66  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
333e6b  e8 64 b1 f9 ff                 call   0x2cefd4
333e70  48 8b d0                       mov    rdx,rax
333e73  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
333e77  4c 8b c3                       mov    r8,rbx
333e7a  e8 b9 6e f9 ff                 call   0x2cad38
333e7f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
333e84  e8 6b 86 f9 ff                 call   0x2cc4f4
333e89  48 8b cf                       mov    rcx,rdi
333e8c  e8 3f 14 00 00                 call   0x3352d0
333e91  85 c0                          test   eax,eax
333e93  0f 84 66 01 00 00              je     0x333fff
333e99  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
333e9d  48 8d 4d 67                    lea    rcx,[rbp+0x67]
333ea1  e8 3a ca fb ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
333ea6  48 8b c8                       mov    rcx,rax
333ea9  e8 b6 45 fa ff                 call   0x2d8464
333eae  48 8b d0                       mov    rdx,rax
333eb1  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
333eb5  e8 4a 17 fa ff                 call   0x2d5604
333eba  48 8b cf                       mov    rcx,rdi
333ebd  33 db                          xor    ebx,ebx
333ebf  e8 0c 14 00 00                 call   0x3352d0
333ec4  85 c0                          test   eax,eax
333ec6  0f 84 b4 00 00 00              je     0x333f80
333ecc  8b d3                          mov    edx,ebx
333ece  48 8b cf                       mov    rcx,rdi
333ed1  e8 7a 0a 00 00                 call   0x334950
333ed6  48 8b c8                       mov    rcx,rax
333ed9  e8 ea 13 00 00                 call   0x3352c8
333ede  48 8b d0                       mov    rdx,rax
333ee1  48 8d 4d f7                    lea    rcx,[rbp-0x9]
333ee5  e8 e2 83 f9 ff                 call   0x2cc2cc
333eea  45 33 c0                       xor    r8d,r8d
333eed  48 8d 15 70 0f f6 ff           lea    rdx,[rip+0xfffffffffff60f70]        # 0x294e64
333ef4  48 8d 4d f7                    lea    rcx,[rbp-0x9]
333ef8  e8 0b 0a 00 00                 call   0x334908
333efd  49 83 c9 ff                    or     r9,0xffffffffffffffff
333f01  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
333f06  48 8d 4d f7                    lea    rcx,[rbp-0x9]
333f0a  4c 8d 40 01                    lea    r8,[rax+0x1]
333f0e  e8 85 55 fa ff                 call   0x2d9498
333f13  48 8b d0                       mov    rdx,rax
333f16  48 8d 4d f7                    lea    rcx,[rbp-0x9]
333f1a  e8 c5 0c fa ff                 call   0x2d4be4
333f1f  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
333f24  e8 cb 85 f9 ff                 call   0x2cc4f4
333f29  48 8d 55 77                    lea    rdx,[rbp+0x77]
333f2d  48 8d 4d 67                    lea    rcx,[rbp+0x67]
333f31  e8 a2 12 fa ff                 call   0x2d51d8 ; STRING getter=0x2d51d8 ,
333f36  48 8b c8                       mov    rcx,rax
333f39  e8 26 45 fa ff                 call   0x2d8464
333f3e  4c 8b c0                       mov    r8,rax
333f41  48 8d 55 f7                    lea    rdx,[rbp-0x9]
333f45  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
333f4a  e8 85 b0 f9 ff                 call   0x2cefd4
333f4f  48 8b d0                       mov    rdx,rax
333f52  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
333f56  e8 89 16 fa ff                 call   0x2d55e4
333f5b  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
333f60  e8 8f 85 f9 ff                 call   0x2cc4f4
333f65  48 8d 4d f7                    lea    rcx,[rbp-0x9]
333f69  e8 86 85 f9 ff                 call   0x2cc4f4
333f6e  48 8b cf                       mov    rcx,rdi
333f71  ff c3                          inc    ebx
333f73  e8 58 13 00 00                 call   0x3352d0
333f78  3b d8                          cmp    ebx,eax
333f7a  0f 82 4c ff ff ff              jb     0x333ecc
333f80  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
333f84  e8 6f cd fe ff                 call   0x320cf8
333f89  48 8b cf                       mov    rcx,rdi
333f8c  e8 47 13 00 00                 call   0x3352d8
333f91  48 8b c8                       mov    rcx,rax
333f94  e8 2f 13 00 00                 call   0x3352c8
333f99  48 8b d0                       mov    rdx,rax
333f9c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
333fa1  e8 26 83 f9 ff                 call   0x2cc2cc
333fa6  45 33 c0                       xor    r8d,r8d
333fa9  48 8d 15 b4 0e f6 ff           lea    rdx,[rip+0xfffffffffff60eb4]        # 0x294e64
333fb0  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
333fb5  e8 4e 09 00 00                 call   0x334908
333fba  49 83 c9 ff                    or     r9,0xffffffffffffffff
333fbe  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
333fc3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
333fc8  4c 8d 40 01                    lea    r8,[rax+0x1]
333fcc  e8 c7 54 fa ff                 call   0x2d9498
333fd1  48 8b d0                       mov    rdx,rax
333fd4  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
333fd9  e8 06 0c fa ff                 call   0x2d4be4
333fde  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
333fe3  e8 0c 85 f9 ff                 call   0x2cc4f4
333fe8  48 8d 55 bf                    lea    rdx,[rbp-0x41]
333fec  48 8d 4d 67                    lea    rcx,[rbp+0x67]
333ff0  e8 b7 fb ff ff                 call   0x333bac ; STRING getter=0x333bac ): 
333ff5  48 8b c8                       mov    rcx,rax
333ff8  e8 1f c4 fe ff                 call   0x32041c
333ffd  eb 74                          jmp    0x334073
333fff  48 8b cf                       mov    rcx,rdi
334002  e8 d1 12 00 00                 call   0x3352d8
334007  48 8b c8                       mov    rcx,rax
33400a  e8 b9 12 00 00                 call   0x3352c8
33400f  48 8b d0                       mov    rdx,rax
334012  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
334017  e8 b0 82 f9 ff                 call   0x2cc2cc
33401c  45 33 c0                       xor    r8d,r8d
33401f  48 8d 15 3e 0e f6 ff           lea    rdx,[rip+0xfffffffffff60e3e]        # 0x294e64
334026  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
33402b  e8 d8 08 00 00                 call   0x334908
334030  49 83 c9 ff                    or     r9,0xffffffffffffffff
334034  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
334039  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
33403e  4c 8d 40 01                    lea    r8,[rax+0x1]
334042  e8 51 54 fa ff                 call   0x2d9498
334047  48 8b d0                       mov    rdx,rax
33404a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
33404f  e8 90 0b fa ff                 call   0x2d4be4
334054  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
334059  e8 96 84 f9 ff                 call   0x2cc4f4
33405e  48 8d 55 ef                    lea    rdx,[rbp-0x11]
334062  48 8d 4d 67                    lea    rcx,[rbp+0x67]
334066  e8 65 fb ff ff                 call   0x333bd0 ; STRING getter=0x333bd0 (): 
33406b  48 8b c8                       mov    rcx,rax
33406e  e8 59 9c f9 ff                 call   0x2cdccc
334073  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
334078  48 8b d0                       mov    rdx,rax
33407b  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
334080  e8 8f 66 fb ff                 call   0x2ea714
334085  48 8b d0                       mov    rdx,rax
334088  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
33408c  e8 53 15 fa ff                 call   0x2d55e4
334091  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
334096  e8 59 84 f9 ff                 call   0x2cc4f4
33409b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
3340a0  e8 4f 84 f9 ff                 call   0x2cc4f4
3340a5  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
3340a9  e8 3e 97 f9 ff                 call   0x2cd7ec
3340ae  48 8b c8                       mov    rcx,rax
3340b1  48 8b d8                       mov    rbx,rax
3340b4  e8 4b 68 09 00                 call   0x3ca904
3340b9  45 33 c0                       xor    r8d,r8d
3340bc  8b d0                          mov    edx,eax
3340be  48 8b cb                       mov    rcx,rbx
3340c1  e8 a2 06 00 00                 call   0x334768
3340c6  8b c0                          mov    eax,eax
3340c8  49 3b c5                       cmp    rax,r13
3340cb  74 58                          je     0x334125
3340cd  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
3340d1  e8 1e 84 f9 ff                 call   0x2cc4f4
3340d6  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3340db  48 8b ce                       mov    rcx,rsi
3340de  e8 d5 11 00 00                 call   0x3352b8
3340e3  48 8b f8                       mov    rdi,rax
3340e6  48 85 c0                       test   rax,rax
3340e9  0f 85 50 fd ff ff              jne    0x333e3f
3340ef  48 8d 4d cf                    lea    rcx,[rbp-0x31]
3340f3  e8 fc 83 f9 ff                 call   0x2cc4f4
3340f8  49 8b cc                       mov    rcx,r12
3340fb  41 ff c7                       inc    r15d
3340fe  e8 5d 06 00 00                 call   0x334760
334103  49 63 cf                       movsxd rcx,r15d
334106  48 3b c8                       cmp    rcx,rax
334109  0f 82 ba fc ff ff              jb     0x333dc9
33410f  41 ff c6                       inc    r14d
334112  49 63 c6                       movsxd rax,r14d
334115  48 3b 44 24 20                 cmp    rax,QWORD PTR [rsp+0x20]
33411a  73 37                          jae    0x334153
33411c  48 8b 45 c7                    mov    rax,QWORD PTR [rbp-0x39]
334120  e9 7e fc ff ff                 jmp    0x333da3
334125  48 8d 55 67                    lea    rdx,[rbp+0x67]
334129  44 89 6d 67                    mov    DWORD PTR [rbp+0x67],r13d
33412d  48 8d 0d 14 57 0c 00           lea    rcx,[rip+0xc5714]        # 0x3f9848
334134  e8 b7 f9 ff ff                 call   0x333af0
334139  48 8d 4d 9f                    lea    rcx,[rbp-0x61]
33413d  48 89 38                       mov    QWORD PTR [rax],rdi
334140  e8 af 83 f9 ff                 call   0x2cc4f4
334145  48 8d 4d cf                    lea    rcx,[rbp-0x31]
334149  e8 a6 83 f9 ff                 call   0x2cc4f4
33414e  48 8b c7                       mov    rax,rdi
334151  eb 02                          jmp    0x334155
334153  33 c0                          xor    eax,eax
334155  48 81 c4 f8 00 00 00           add    rsp,0xf8
33415c  41 5f                          pop    r15
33415e  41 5e                          pop    r14
334160  41 5d                          pop    r13
334162  41 5c                          pop    r12
334164  5f                             pop    rdi
334165  5e                             pop    rsi
334166  5b                             pop    rbx
334167  5d                             pop    rbp
334168  c3                             ret

; pdata function 0x33479c..0x33480b unwind=0x3d2064
33479c  48 83 ec 28                    sub    rsp,0x28
3347a0  8b 05 ba 50 0c 00              mov    eax,DWORD PTR [rip+0xc50ba]        # 0x3f9860
3347a6  a8 01                          test   al,0x1
3347a8  75 20                          jne    0x3347ca
3347aa  83 c8 01                       or     eax,0x1
3347ad  89 05 ad 50 0c 00              mov    DWORD PTR [rip+0xc50ad],eax        # 0x3f9860
3347b3  e8 44 f2 ff ff                 call   0x3339fc
3347b8  4c 8b c0                       mov    r8,rax
3347bb  48 89 05 96 50 0c 00           mov    QWORD PTR [rip+0xc5096],rax        # 0x3f9858
3347c2  8b 05 98 50 0c 00              mov    eax,DWORD PTR [rip+0xc5098]        # 0x3f9860
3347c8  eb 07                          jmp    0x3347d1
3347ca  4c 8b 05 87 50 0c 00           mov    r8,QWORD PTR [rip+0xc5087]        # 0x3f9858
3347d1  a8 02                          test   al,0x2
3347d3  75 1f                          jne    0x3347f4
3347d5  48 8b 0d 84 16 0a 00           mov    rcx,QWORD PTR [rip+0xa1684]        # 0x3d5e60
3347dc  48 8d 15 8d 50 0c 00           lea    rdx,[rip+0xc508d]        # 0x3f9870
3347e3  83 c8 02                       or     eax,0x2
3347e6  45 33 c9                       xor    r9d,r9d
3347e9  89 05 71 50 0c 00              mov    DWORD PTR [rip+0xc5071],eax        # 0x3f9860
3347ef  e8 30 75 f9 ff                 call   0x2cbd24
3347f4  48 8b 0d 65 16 0a 00           mov    rcx,QWORD PTR [rip+0xa1665]        # 0x3d5e60
3347fb  48 8d 15 6e 50 0c 00           lea    rdx,[rip+0xc506e]        # 0x3f9870
334802  48 83 c4 28                    add    rsp,0x28
334806  e9 0d 92 fa ff                 jmp    0x2dda18

; pdata function 0x33480c..0x334893 unwind=0x3d2040
33480c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
334811  57                             push   rdi
334812  48 83 ec 20                    sub    rsp,0x20
334816  8b 05 d4 56 0c 00              mov    eax,DWORD PTR [rip+0xc56d4]        # 0x3f9ef0
33481c  48 8b da                       mov    rbx,rdx
33481f  48 8b f9                       mov    rdi,rcx
334822  a8 01                          test   al,0x1
334824  75 20                          jne    0x334846
334826  83 c8 01                       or     eax,0x1
334829  89 05 c1 56 0c 00              mov    DWORD PTR [rip+0xc56c1],eax        # 0x3f9ef0
33482f  e8 b0 f1 ff ff                 call   0x3339e4
334834  4c 8b c0                       mov    r8,rax
334837  48 89 05 aa 56 0c 00           mov    QWORD PTR [rip+0xc56aa],rax        # 0x3f9ee8
33483e  8b 05 ac 56 0c 00              mov    eax,DWORD PTR [rip+0xc56ac]        # 0x3f9ef0
334844  eb 07                          jmp    0x33484d
334846  4c 8b 05 9b 56 0c 00           mov    r8,QWORD PTR [rip+0xc569b]        # 0x3f9ee8
33484d  a8 02                          test   al,0x2
33484f  75 1f                          jne    0x334870
334851  48 8b 0d 08 16 0a 00           mov    rcx,QWORD PTR [rip+0xa1608]        # 0x3d5e60
334858  48 8d 15 a1 56 0c 00           lea    rdx,[rip+0xc56a1]        # 0x3f9f00
33485f  83 c8 02                       or     eax,0x2
334862  45 33 c9                       xor    r9d,r9d
334865  89 05 85 56 0c 00              mov    DWORD PTR [rip+0xc5685],eax        # 0x3f9ef0
33486b  e8 b4 74 f9 ff                 call   0x2cbd24
334870  48 8b 0d e9 15 0a 00           mov    rcx,QWORD PTR [rip+0xa15e9]        # 0x3d5e60
334877  48 8d 15 82 56 0c 00           lea    rdx,[rip+0xc5682]        # 0x3f9f00
33487e  4c 8b cb                       mov    r9,rbx
334881  4c 8b c7                       mov    r8,rdi
334884  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
334889  48 83 c4 20                    add    rsp,0x20
33488d  5f                             pop    rdi
33488e  e9 01 d8 f9 ff                 jmp    0x2d2094

; pdata function 0x3344b0..0x334528 unwind=0x3d2038
3344b0  40 53                          rex push rbx
3344b2  48 83 ec 20                    sub    rsp,0x20
3344b6  8b 05 44 59 0c 00              mov    eax,DWORD PTR [rip+0xc5944]        # 0x3f9e00
3344bc  48 8b d9                       mov    rbx,rcx
3344bf  a8 01                          test   al,0x1
3344c1  75 20                          jne    0x3344e3
3344c3  83 c8 01                       or     eax,0x1
3344c6  89 05 34 59 0c 00              mov    DWORD PTR [rip+0xc5934],eax        # 0x3f9e00
3344cc  e8 3b f5 ff ff                 call   0x333a0c
3344d1  4c 8b c0                       mov    r8,rax
3344d4  48 89 05 1d 59 0c 00           mov    QWORD PTR [rip+0xc591d],rax        # 0x3f9df8
3344db  8b 05 1f 59 0c 00              mov    eax,DWORD PTR [rip+0xc591f]        # 0x3f9e00
3344e1  eb 07                          jmp    0x3344ea
3344e3  4c 8b 05 0e 59 0c 00           mov    r8,QWORD PTR [rip+0xc590e]        # 0x3f9df8
3344ea  a8 02                          test   al,0x2
3344ec  75 1f                          jne    0x33450d
3344ee  48 8b 0d 6b 19 0a 00           mov    rcx,QWORD PTR [rip+0xa196b]        # 0x3d5e60
3344f5  48 8d 15 14 59 0c 00           lea    rdx,[rip+0xc5914]        # 0x3f9e10
3344fc  83 c8 02                       or     eax,0x2
3344ff  45 33 c9                       xor    r9d,r9d
334502  89 05 f8 58 0c 00              mov    DWORD PTR [rip+0xc58f8],eax        # 0x3f9e00
334508  e8 17 78 f9 ff                 call   0x2cbd24
33450d  48 8b 0d 4c 19 0a 00           mov    rcx,QWORD PTR [rip+0xa194c]        # 0x3d5e60
334514  48 8d 15 f5 58 0c 00           lea    rdx,[rip+0xc58f5]        # 0x3f9e10
33451b  4c 8b c3                       mov    r8,rbx
33451e  48 83 c4 20                    add    rsp,0x20
334522  5b                             pop    rbx
334523  e9 d4 74 f9 ff                 jmp    0x2cb9fc

; pdata function 0x334528..0x3345c2 unwind=0x3d225c
334528  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
33452d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
334532  57                             push   rdi
334533  48 83 ec 30                    sub    rsp,0x30
334537  8b 05 73 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d73]        # 0x3fa2b0
33453d  49 8b d8                       mov    rbx,r8
334540  48 8b fa                       mov    rdi,rdx
334543  48 8b f1                       mov    rsi,rcx
334546  a8 01                          test   al,0x1
334548  75 20                          jne    0x33456a
33454a  83 c8 01                       or     eax,0x1
33454d  89 05 5d 5d 0c 00              mov    DWORD PTR [rip+0xc5d5d],eax        # 0x3fa2b0
334553  e8 dc f4 ff ff                 call   0x333a34
334558  4c 8b c0                       mov    r8,rax
33455b  48 89 05 46 5d 0c 00           mov    QWORD PTR [rip+0xc5d46],rax        # 0x3fa2a8
334562  8b 05 48 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d48]        # 0x3fa2b0
334568  eb 07                          jmp    0x334571
33456a  4c 8b 05 37 5d 0c 00           mov    r8,QWORD PTR [rip+0xc5d37]        # 0x3fa2a8
334571  a8 02                          test   al,0x2
334573  75 1f                          jne    0x334594
334575  48 8b 0d e4 18 0a 00           mov    rcx,QWORD PTR [rip+0xa18e4]        # 0x3d5e60
33457c  48 8d 15 3d 5d 0c 00           lea    rdx,[rip+0xc5d3d]        # 0x3fa2c0
334583  83 c8 02                       or     eax,0x2
334586  45 33 c9                       xor    r9d,r9d
334589  89 05 21 5d 0c 00              mov    DWORD PTR [rip+0xc5d21],eax        # 0x3fa2b0
33458f  e8 90 77 f9 ff                 call   0x2cbd24
334594  48 8b 0d c5 18 0a 00           mov    rcx,QWORD PTR [rip+0xa18c5]        # 0x3d5e60
33459b  48 8d 15 1e 5d 0c 00           lea    rdx,[rip+0xc5d1e]        # 0x3fa2c0
3345a2  4c 8b cf                       mov    r9,rdi
3345a5  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3345aa  4c 8b c6                       mov    r8,rsi
3345ad  e8 9e 74 f9 ff                 call   0x2cba50
3345b2  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
3345b7  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
3345bc  48 83 c4 30                    add    rsp,0x30
3345c0  5f                             pop    rdi
3345c1  c3                             ret

; pdata function 0x3345c4..0x33465d unwind=0x3d225c
3345c4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3345c9  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3345ce  57                             push   rdi
3345cf  48 83 ec 30                    sub    rsp,0x30
3345d3  8b 05 c7 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5dc7]        # 0x3fa3a0
3345d9  41 8b d8                       mov    ebx,r8d
3345dc  48 8b fa                       mov    rdi,rdx
3345df  48 8b f1                       mov    rsi,rcx
3345e2  a8 01                          test   al,0x1
3345e4  75 20                          jne    0x334606
3345e6  83 c8 01                       or     eax,0x1
3345e9  89 05 b1 5d 0c 00              mov    DWORD PTR [rip+0xc5db1],eax        # 0x3fa3a0
3345ef  e8 48 f4 ff ff                 call   0x333a3c
3345f4  4c 8b c0                       mov    r8,rax
3345f7  48 89 05 9a 5d 0c 00           mov    QWORD PTR [rip+0xc5d9a],rax        # 0x3fa398
3345fe  8b 05 9c 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d9c]        # 0x3fa3a0
334604  eb 07                          jmp    0x33460d
334606  4c 8b 05 8b 5d 0c 00           mov    r8,QWORD PTR [rip+0xc5d8b]        # 0x3fa398
33460d  a8 02                          test   al,0x2
33460f  75 1f                          jne    0x334630
334611  48 8b 0d 48 18 0a 00           mov    rcx,QWORD PTR [rip+0xa1848]        # 0x3d5e60
334618  48 8d 15 91 5d 0c 00           lea    rdx,[rip+0xc5d91]        # 0x3fa3b0
33461f  83 c8 02                       or     eax,0x2
334622  45 33 c9                       xor    r9d,r9d
334625  89 05 75 5d 0c 00              mov    DWORD PTR [rip+0xc5d75],eax        # 0x3fa3a0
33462b  e8 f4 76 f9 ff                 call   0x2cbd24
334630  48 8b 0d 29 18 0a 00           mov    rcx,QWORD PTR [rip+0xa1829]        # 0x3d5e60
334637  48 8d 15 72 5d 0c 00           lea    rdx,[rip+0xc5d72]        # 0x3fa3b0
33463e  4c 8b cf                       mov    r9,rdi
334641  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
334645  4c 8b c6                       mov    r8,rsi
334648  e8 3f e8 ff ff                 call   0x332e8c
33464d  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
334652  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
334657  48 83 c4 30                    add    rsp,0x30
33465b  5f                             pop    rdi
33465c  c3                             ret

; pdata function 0x334660..0x3346e7 unwind=0x3d2040
334660  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
334665  57                             push   rdi
334666  48 83 ec 20                    sub    rsp,0x20
33466a  8b 05 e0 52 0c 00              mov    eax,DWORD PTR [rip+0xc52e0]        # 0x3f9950
334670  48 8b da                       mov    rbx,rdx
334673  48 8b f9                       mov    rdi,rcx
334676  a8 01                          test   al,0x1
334678  75 20                          jne    0x33469a
33467a  83 c8 01                       or     eax,0x1
33467d  89 05 cd 52 0c 00              mov    DWORD PTR [rip+0xc52cd],eax        # 0x3f9950
334683  e8 a4 f3 ff ff                 call   0x333a2c
334688  4c 8b c0                       mov    r8,rax
33468b  48 89 05 b6 52 0c 00           mov    QWORD PTR [rip+0xc52b6],rax        # 0x3f9948
334692  8b 05 b8 52 0c 00              mov    eax,DWORD PTR [rip+0xc52b8]        # 0x3f9950
334698  eb 07                          jmp    0x3346a1
33469a  4c 8b 05 a7 52 0c 00           mov    r8,QWORD PTR [rip+0xc52a7]        # 0x3f9948
3346a1  a8 02                          test   al,0x2
3346a3  75 1f                          jne    0x3346c4
3346a5  48 8b 0d b4 17 0a 00           mov    rcx,QWORD PTR [rip+0xa17b4]        # 0x3d5e60
3346ac  48 8d 15 ad 52 0c 00           lea    rdx,[rip+0xc52ad]        # 0x3f9960
3346b3  83 c8 02                       or     eax,0x2
3346b6  45 33 c9                       xor    r9d,r9d
3346b9  89 05 91 52 0c 00              mov    DWORD PTR [rip+0xc5291],eax        # 0x3f9950
3346bf  e8 60 76 f9 ff                 call   0x2cbd24
3346c4  48 8b 0d 95 17 0a 00           mov    rcx,QWORD PTR [rip+0xa1795]        # 0x3d5e60
3346cb  48 8d 15 8e 52 0c 00           lea    rdx,[rip+0xc528e]        # 0x3f9960
3346d2  4c 8b cb                       mov    r9,rbx
3346d5  4c 8b c7                       mov    r8,rdi
3346d8  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3346dd  48 83 c4 20                    add    rsp,0x20
3346e1  5f                             pop    rdi
3346e2  e9 ad d9 f9 ff                 jmp    0x2d2094

; pdata function 0x335140..0x3351b8 unwind=0x3d2038
335140  40 53                          rex push rbx
335142  48 83 ec 20                    sub    rsp,0x20
335146  8b 05 e4 49 0c 00              mov    eax,DWORD PTR [rip+0xc49e4]        # 0x3f9b30
33514c  48 8b d9                       mov    rbx,rcx
33514f  a8 01                          test   al,0x1
335151  75 20                          jne    0x335173
335153  83 c8 01                       or     eax,0x1
335156  89 05 d4 49 0c 00              mov    DWORD PTR [rip+0xc49d4],eax        # 0x3f9b30
33515c  e8 ab 95 fb ff                 call   0x2ee70c
335161  4c 8b c0                       mov    r8,rax
335164  48 89 05 bd 49 0c 00           mov    QWORD PTR [rip+0xc49bd],rax        # 0x3f9b28
33516b  8b 05 bf 49 0c 00              mov    eax,DWORD PTR [rip+0xc49bf]        # 0x3f9b30
335171  eb 07                          jmp    0x33517a
335173  4c 8b 05 ae 49 0c 00           mov    r8,QWORD PTR [rip+0xc49ae]        # 0x3f9b28
33517a  a8 02                          test   al,0x2
33517c  75 1f                          jne    0x33519d
33517e  48 8b 0d db 0c 0a 00           mov    rcx,QWORD PTR [rip+0xa0cdb]        # 0x3d5e60
335185  48 8d 15 b4 49 0c 00           lea    rdx,[rip+0xc49b4]        # 0x3f9b40
33518c  83 c8 02                       or     eax,0x2
33518f  45 33 c9                       xor    r9d,r9d
335192  89 05 98 49 0c 00              mov    DWORD PTR [rip+0xc4998],eax        # 0x3f9b30
335198  e8 87 6b f9 ff                 call   0x2cbd24
33519d  48 8b 0d bc 0c 0a 00           mov    rcx,QWORD PTR [rip+0xa0cbc]        # 0x3d5e60
3351a4  48 8d 15 95 49 0c 00           lea    rdx,[rip+0xc4995]        # 0x3f9b40
3351ab  4c 8b c3                       mov    r8,rbx
3351ae  48 83 c4 20                    add    rsp,0x20
3351b2  5b                             pop    rbx
3351b3  e9 44 68 f9 ff                 jmp    0x2cb9fc

