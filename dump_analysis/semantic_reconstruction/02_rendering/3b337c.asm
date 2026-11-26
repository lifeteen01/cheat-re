; pdata function 0x3b337c..0x3b34ed unwind=0x3d559c
3b337c  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
3b3381  57                             push   rdi
3b3382  48 83 ec 60                    sub    rsp,0x60
3b3386  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
3b338b  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3b3390  e8 f7 e2 ff ff                 call   0x3b168c ; STRING getter=0x3b168c UnityEngine
3b3395  48 8b c8                       mov    rcx,rax
3b3398  e8 c3 24 fc ff                 call   0x375860
3b339d  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3b33a2  48 8b f8                       mov    rdi,rax
3b33a5  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3b33aa  e8 31 e0 ff ff                 call   0x3b13e0 ; STRING getter=0x3b13e0 Shader
3b33af  48 8b c8                       mov    rcx,rax
3b33b2  e8 b9 23 fc ff                 call   0x375770
3b33b7  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
3b33bc  48 8b d8                       mov    rbx,rax
3b33bf  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3b33c4  e8 1f da ff ff                 call   0x3b0de8 ; STRING getter=0x3b0de8 Assets/AssetBundleData/guish.shader
3b33c9  48 8b c8                       mov    rcx,rax
3b33cc  e8 df 14 00 00                 call   0x3b48b0
3b33d1  48 8b c8                       mov    rcx,rax
3b33d4  e8 03 b2 f1 ff                 call   0x2ce5dc
3b33d9  48 8b 0d 18 2b 03 00           mov    rcx,QWORD PTR [rip+0x32b18]        # 0x3e5ef8
3b33e0  4c 8b cf                       mov    r9,rdi
3b33e3  4c 8b c3                       mov    r8,rbx
3b33e6  48 8b d0                       mov    rdx,rax
3b33e9  e8 ce 26 fc ff                 call   0x375abc
3b33ee  48 8d 15 f3 a6 05 00           lea    rdx,[rip+0x5a6f3]        # 0x40dae8
3b33f5  48 89 05 4c 9d 05 00           mov    QWORD PTR [rip+0x59d4c],rax        # 0x40d148
3b33fc  48 8b c8                       mov    rcx,rax
3b33ff  e8 94 03 00 00                 call   0x3b3798
3b3404  48 8d 54 24 2c                 lea    rdx,[rsp+0x2c]
3b3409  48 89 05 38 9d 05 00           mov    QWORD PTR [rip+0x59d38],rax        # 0x40d148
3b3410  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3b3415  e8 56 e4 ff ff                 call   0x3b1870 ; STRING getter=0x3b1870 UnityEngine
3b341a  48 8b c8                       mov    rcx,rax
3b341d  e8 3e 24 fc ff                 call   0x375860
3b3422  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
3b3427  48 8b d8                       mov    rbx,rax
3b342a  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3b342f  e8 64 e3 ff ff                 call   0x3b1798 ; STRING getter=0x3b1798 Material
3b3434  48 8b c8                       mov    rcx,rax
3b3437  e8 5c 23 fc ff                 call   0x375798
3b343c  48 8b c8                       mov    rcx,rax
3b343f  48 8b d3                       mov    rdx,rbx
3b3442  e8 dd 0d f8 ff                 call   0x334224
3b3447  48 8b c8                       mov    rcx,rax
3b344a  e8 49 17 00 00                 call   0x3b4b98
3b344f  48 8b 15 f2 9c 05 00           mov    rdx,QWORD PTR [rip+0x59cf2]        # 0x40d148
3b3456  48 8b c8                       mov    rcx,rax
3b3459  48 89 05 d8 9c 05 00           mov    QWORD PTR [rip+0x59cd8],rax        # 0x40d138
3b3460  e8 cb d2 ff ff                 call   0x3b0730
3b3465  48 8b 0d cc 9c 05 00           mov    rcx,QWORD PTR [rip+0x59ccc]        # 0x40d138
3b346c  e8 33 bf ff ff                 call   0x3af3a4
3b3471  48 8d 15 78 a6 05 00           lea    rdx,[rip+0x5a678]        # 0x40daf0
3b3478  48 89 05 b9 9c 05 00           mov    QWORD PTR [rip+0x59cb9],rax        # 0x40d138
3b347f  48 8b c8                       mov    rcx,rax
3b3482  e8 11 03 00 00                 call   0x3b3798
3b3487  48 89 05 aa 9c 05 00           mov    QWORD PTR [rip+0x59caa],rax        # 0x40d138
3b348e  e8 31 01 00 00                 call   0x3b35c4
3b3493  48 8b c8                       mov    rcx,rax
3b3496  48 89 05 a3 9c 05 00           mov    QWORD PTR [rip+0x59ca3],rax        # 0x40d140
3b349d  e8 5e d1 ff ff                 call   0x3b0600
3b34a2  48 8b 0d 97 9c 05 00           mov    rcx,QWORD PTR [rip+0x59c97]        # 0x40d140
3b34a9  e8 f6 be ff ff                 call   0x3af3a4
3b34ae  48 8d 15 43 a6 05 00           lea    rdx,[rip+0x5a643]        # 0x40daf8
3b34b5  48 89 05 84 9c 05 00           mov    QWORD PTR [rip+0x59c84],rax        # 0x40d140
3b34bc  48 8b c8                       mov    rcx,rax
3b34bf  e8 d4 02 00 00                 call   0x3b3798
3b34c4  48 8b c8                       mov    rcx,rax
3b34c7  48 89 05 72 9c 05 00           mov    QWORD PTR [rip+0x59c72],rax        # 0x40d140
3b34ce  e8 a1 c1 ff ff                 call   0x3af674
3b34d3  e8 d4 f1 fd ff                 call   0x3926ac
3b34d8  48 8b c8                       mov    rcx,rax
3b34db  48 8b 9c 24 80 00 00 00        mov    rbx,QWORD PTR [rsp+0x80]
3b34e3  48 83 c4 60                    add    rsp,0x60
3b34e7  5f                             pop    rdi
3b34e8  e9 53 fd ff ff                 jmp    0x3b3240
