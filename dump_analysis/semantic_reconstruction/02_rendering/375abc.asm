; pdata function 0x375abc..0x375c05 unwind=0x3d40f4
375abc  40 53                          rex push rbx
375abe  55                             push   rbp
375abf  56                             push   rsi
375ac0  57                             push   rdi
375ac1  41 56                          push   r14
375ac3  48 83 ec 60                    sub    rsp,0x60
375ac7  48 81 3d d6 9e f0 ff 02 24 40 00 cmp    QWORD PTR [rip+0xfffffffffff09ed6],0x402402        # 0x27f9a8
375ad2  48 8b ea                       mov    rbp,rdx
375ad5  4c 8b f1                       mov    r14,rcx
375ad8  75 22                          jne    0x375afc
375ada  49 8b d1                       mov    rdx,r9
375add  49 8b c8                       mov    rcx,r8
375ae0  e8 3f e7 fb ff                 call   0x334224
375ae5  48 8b c8                       mov    rcx,rax
375ae8  e8 7f 03 00 00                 call   0x375e6c
375aed  48 8b c8                       mov    rcx,rax
375af0  e8 1f 07 00 00                 call   0x376214
375af5  48 89 05 ac 9e f0 ff           mov    QWORD PTR [rip+0xfffffffffff09eac],rax        # 0x27f9a8
375afc  8b 05 1e d1 08 00              mov    eax,DWORD PTR [rip+0x8d11e]        # 0x402c20
375b02  a8 01                          test   al,0x1
375b04  0f 85 a1 00 00 00              jne    0x375bab
375b0a  83 c8 01                       or     eax,0x1
375b0d  48 8d 54 24 32                 lea    rdx,[rsp+0x32]
375b12  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
375b17  89 05 03 d1 08 00              mov    DWORD PTR [rip+0x8d103],eax        # 0x402c20
375b1d  e8 7e ff ff ff                 call   0x375aa0 ; STRING getter=0x375aa0 UnityEngine
375b22  48 8b c8                       mov    rcx,rax
375b25  e8 36 fd ff ff                 call   0x375860
375b2a  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
375b2f  48 8b f0                       mov    rsi,rax
375b32  48 8d 4c 24 31                 lea    rcx,[rsp+0x31]
375b37  e8 f4 6b f5 ff                 call   0x2cc730
375b3c  48 8b c8                       mov    rcx,rax
375b3f  e8 60 81 f5 ff                 call   0x2cdca4
375b44  48 8d 54 24 4a                 lea    rdx,[rsp+0x4a]
375b49  48 8b f8                       mov    rdi,rax
375b4c  48 8d 4c 24 31                 lea    rcx,[rsp+0x31]
375b51  e8 5e fe ff ff                 call   0x3759b4 ; STRING getter=0x3759b4 LoadAsset_Internal
375b56  48 8b c8                       mov    rcx,rax
375b59  e8 d6 04 00 00                 call   0x376034
375b5e  48 8d 54 24 3e                 lea    rdx,[rsp+0x3e]
375b63  48 8b d8                       mov    rbx,rax
375b66  48 8d 4c 24 31                 lea    rcx,[rsp+0x31]
375b6b  e8 a4 fd ff ff                 call   0x375914 ; STRING getter=0x375914 AssetBundle
375b70  48 8b c8                       mov    rcx,rax
375b73  e8 e8 fc ff ff                 call   0x375860
375b78  48 8b c8                       mov    rcx,rax
375b7b  c7 44 24 28 ff ff ff ff        mov    DWORD PTR [rsp+0x28],0xffffffff
375b83  4c 8b cf                       mov    r9,rdi
375b86  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
375b8b  41 b8 02 00 00 00              mov    r8d,0x2
375b91  48 8b d3                       mov    rdx,rbx
375b94  e8 5b e0 fb ff                 call   0x333bf4
375b99  4c 8b 00                       mov    r8,QWORD PTR [rax]
375b9c  8b 05 7e d0 08 00              mov    eax,DWORD PTR [rip+0x8d07e]        # 0x402c20
375ba2  4c 89 05 6f d0 08 00           mov    QWORD PTR [rip+0x8d06f],r8        # 0x402c18
375ba9  eb 07                          jmp    0x375bb2
375bab  4c 8b 05 66 d0 08 00           mov    r8,QWORD PTR [rip+0x8d066]        # 0x402c18
375bb2  a8 02                          test   al,0x2
375bb4  75 1f                          jne    0x375bd5
375bb6  48 8b 0d a3 02 06 00           mov    rcx,QWORD PTR [rip+0x602a3]        # 0x3d5e60
375bbd  48 8d 15 6c d0 08 00           lea    rdx,[rip+0x8d06c]        # 0x402c30
375bc4  83 c8 02                       or     eax,0x2
375bc7  45 33 c9                       xor    r9d,r9d
375bca  89 05 50 d0 08 00              mov    DWORD PTR [rip+0x8d050],eax        # 0x402c20
375bd0  e8 4f 61 f5 ff                 call   0x2cbd24
375bd5  48 8b 05 cc 9d f0 ff           mov    rax,QWORD PTR [rip+0xfffffffffff09dcc]        # 0x27f9a8
375bdc  48 8d 15 4d d0 08 00           lea    rdx,[rip+0x8d04d]        # 0x402c30
375be3  48 8b 0d 76 02 06 00           mov    rcx,QWORD PTR [rip+0x60276]        # 0x3d5e60
375bea  4c 8b cd                       mov    r9,rbp
375bed  4d 8b c6                       mov    r8,r14
375bf0  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
375bf5  e8 56 5e f5 ff                 call   0x2cba50
375bfa  48 83 c4 60                    add    rsp,0x60
375bfe  41 5e                          pop    r14
375c00  5f                             pop    rdi
375c01  5e                             pop    rsi
375c02  5d                             pop    rbp
375c03  5b                             pop    rbx
375c04  c3                             ret
