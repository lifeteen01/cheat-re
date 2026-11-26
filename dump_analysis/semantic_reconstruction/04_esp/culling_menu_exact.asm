; explicit RVA span 0x339b3b..0x339ba1; not inferred from pdata
339b3b  8b 05 a7 35 0c 00              mov    eax,DWORD PTR [rip+0xc35a7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
339b41  3b c6                          cmp    eax,esi
339b43  75 09                          jne    0x339b4e
339b45  48 8d 0d 64 eb f5 ff           lea    rcx,[rip+0xfffffffffff5eb64]        # 0x2986b0
339b4c  eb 0b                          jmp    0x339b59
339b4e  3b c7                          cmp    eax,edi
339b50  75 0e                          jne    0x339b60
339b52  48 8d 0d 7f eb f5 ff           lea    rcx,[rip+0xfffffffffff5eb7f]        # 0x2986d8
339b59  e8 a6 b4 02 00                 call   0x365004
339b5e  eb 19                          jmp    0x339b79
339b60  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
339b65  48 8d 8d 78 01 00 00           lea    rcx,[rbp+0x178]
339b6c  e8 03 a7 01 00                 call   0x354274 ; STRING getter=0x354274 Disable Culling
339b71  48 8b c8                       mov    rcx,rax
339b74  e8 e7 35 fa ff                 call   0x2dd160
339b79  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
339b7e  48 8d 15 83 d5 0a 00           lea    rdx,[rip+0xad583]        # 0x3e7108 ; CONFIG Bools.DisablePlayerCulling value(+0x48)
339b85  45 33 c9                       xor    r9d,r9d
339b88  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
339b8d  45 33 c0                       xor    r8d,r8d
339b90  48 8b c8                       mov    rcx,rax
339b93  e8 7c 35 08 00                 call   0x3bd114
339b98  48 8d 4d f0                    lea    rcx,[rbp-0x10]
339b9c  e8 df ae f9 ff                 call   0x2d4a80
