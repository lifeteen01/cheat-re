; pdata function 0x315c34..0x3163d5 unwind=0x3d2520
315c34  40 55                          rex push rbp
315c36  53                             push   rbx
315c37  56                             push   rsi
315c38  57                             push   rdi
315c39  41 56                          push   r14
315c3b  41 57                          push   r15
315c3d  48 8d 6c 24 f8                 lea    rbp,[rsp-0x8]
315c42  48 81 ec 08 01 00 00           sub    rsp,0x108
315c49  e8 7e 99 05 00                 call   0x36f5cc
315c4e  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c53  e8 08 e9 fb ff                 call   0x2d4560
315c58  ba 04 00 00 00                 mov    edx,0x4
315c5d  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c62  e8 85 36 fc ff                 call   0x2d92ec
315c67  33 db                          xor    ebx,ebx
315c69  48 8d 15 c0 47 f2 ff           lea    rdx,[rip+0xfffffffffff247c0]        # 0x23a430
315c70  8a 14 1a                       mov    dl,BYTE PTR [rdx+rbx*1]
315c73  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c78  80 fa 0a                       cmp    dl,0xa
315c7b  75 4f                          jne    0x315ccc
315c7d  e8 12 2a fc ff                 call   0x2d8694
315c82  84 c0                          test   al,al
315c84  75 19                          jne    0x315c9f
315c86  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c8b  e8 9c 4c 00 00                 call   0x31a92c
315c90  80 38 0d                       cmp    BYTE PTR [rax],0xd
315c93  75 0a                          jne    0x315c9f
315c95  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c9a  e8 59 b0 00 00                 call   0x320cf8
315c9f  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315ca4  e8 2f 2e fc ff                 call   0x2d8ad8
315ca9  48 83 f8 04                    cmp    rax,0x4
315cad  75 11                          jne    0x315cc0
315caf  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
315cb4  48 8d 0d cd 2b f0 ff           lea    rcx,[rip+0xfffffffffff02bcd]        # 0x218888
315cbb  e8 5c 33 fc ff                 call   0x2d901c
315cc0  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315cc5  e8 aa 22 fc ff                 call   0x2d7f74
315cca  eb 05                          jmp    0x315cd1
315ccc  e8 a3 32 fc ff                 call   0x2d8f74
315cd1  48 ff c3                       inc    rbx
315cd4  48 81 fb 5e ea 00 00           cmp    rbx,0xea5e
315cdb  72 8c                          jb     0x315c69
315cdd  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315ce2  e8 ad 29 fc ff                 call   0x2d8694
315ce7  84 c0                          test   al,al
315ce9  75 3a                          jne    0x315d25
315ceb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315cf0  e8 37 4c 00 00                 call   0x31a92c
315cf5  80 38 0d                       cmp    BYTE PTR [rax],0xd
315cf8  75 0a                          jne    0x315d04
315cfa  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315cff  e8 f4 af 00 00                 call   0x320cf8
315d04  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315d09  e8 ca 2d fc ff                 call   0x2d8ad8
315d0e  48 83 f8 04                    cmp    rax,0x4
315d12  75 11                          jne    0x315d25
315d14  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
315d19  48 8d 0d 68 2b f0 ff           lea    rcx,[rip+0xfffffffffff02b68]        # 0x218888
315d20  e8 f7 32 fc ff                 call   0x2d901c
315d25  48 8d 55 40                    lea    rdx,[rbp+0x40]
315d29  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315d2d  e8 fe 69 fb ff                 call   0x2cc730
315d32  48 8b c8                       mov    rcx,rax
315d35  e8 6a 7f fb ff                 call   0x2cdca4
315d3a  48 8d 55 50                    lea    rdx,[rbp+0x50]
315d3e  48 8b f8                       mov    rdi,rax
315d41  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315d45  e8 ba d9 fd ff                 call   0x2f3704 ; STRING getter=0x2f3704 Update
315d4a  48 8b c8                       mov    rcx,rax
315d4d  e8 a2 7f fb ff                 call   0x2cdcf4
315d52  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315d57  48 8b d8                       mov    rbx,rax
315d5a  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315d5e  e8 ed c4 fd ff                 call   0x2f2250 ; STRING getter=0x2f2250 Projectile
315d63  48 8b c8                       mov    rcx,rax
315d66  e8 e9 3e fd ff                 call   0x2e9c54
315d6b  48 8b d0                       mov    rdx,rax
315d6e  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315d73  4c 8d 0d 96 50 01 00           lea    r9,[rip+0x15096]        # 0x32ae10
315d7a  4c 8b c3                       mov    r8,rbx
315d7d  48 8d 0d ac ab 0d 00           lea    rcx,[rip+0xdabac]        # 0x3f0930
315d84  e8 83 4b fd ff                 call   0x2ea90c
315d89  48 8d 55 40                    lea    rdx,[rbp+0x40]
315d8d  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315d91  e8 9a 69 fb ff                 call   0x2cc730
315d96  48 8b c8                       mov    rcx,rax
315d99  e8 06 7f fb ff                 call   0x2cdca4
315d9e  48 8d 55 50                    lea    rdx,[rbp+0x50]
315da2  48 8b f8                       mov    rdi,rax
315da5  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315da9  e8 1a ec fd ff                 call   0x2f49c8 ; STRING getter=0x2f49c8 Update
315dae  48 8b c8                       mov    rcx,rax
315db1  e8 3e 7f fb ff                 call   0x2cdcf4
315db6  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315dbb  48 8b d8                       mov    rbx,rax
315dbe  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315dc2  e8 c9 e4 fd ff                 call   0x2f4290 ; STRING getter=0x2f4290 WaterOverlay
315dc7  48 8b c8                       mov    rcx,rax
315dca  e8 25 28 fc ff                 call   0x2d85f4
315dcf  48 8b d0                       mov    rdx,rax
315dd2  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315dd7  4c 8d 0d 76 c7 01 00           lea    r9,[rip+0x1c776]        # 0x332554
315dde  4c 8b c3                       mov    r8,rbx
315de1  48 8d 0d e0 09 0d 00           lea    rcx,[rip+0xd09e0]        # 0x3e67c8
315de8  e8 1f 4b fd ff                 call   0x2ea90c
315ded  48 8d 55 40                    lea    rdx,[rbp+0x40]
315df1  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315df5  e8 36 69 fb ff                 call   0x2cc730
315dfa  48 8b c8                       mov    rcx,rax
315dfd  e8 a2 7e fb ff                 call   0x2cdca4
315e02  48 8d 55 50                    lea    rdx,[rbp+0x50]
315e06  48 8b f8                       mov    rdi,rax
315e09  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e0d  e8 d6 01 fe ff                 call   0x2f5fe8 ; STRING getter=0x2f5fe8 Update
315e12  48 8b c8                       mov    rcx,rax
315e15  e8 da 7e fb ff                 call   0x2cdcf4
315e1a  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315e1f  48 8b d8                       mov    rbx,rax
315e22  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e26  e8 d1 f3 fd ff                 call   0x2f51fc ; STRING getter=0x2f51fc SmokeGrenade
315e2b  48 8b c8                       mov    rcx,rax
315e2e  e8 c1 27 fc ff                 call   0x2d85f4
315e33  48 8b d0                       mov    rdx,rax
315e36  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315e3b  4c 8d 0d f6 91 01 00           lea    r9,[rip+0x191f6]        # 0x32f038
315e42  4c 8b c3                       mov    r8,rbx
315e45  48 8d 0d b4 09 0d 00           lea    rcx,[rip+0xd09b4]        # 0x3e6800
315e4c  e8 bb 4a fd ff                 call   0x2ea90c
315e51  48 8d 55 40                    lea    rdx,[rbp+0x40]
315e55  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315e59  e8 d2 68 fb ff                 call   0x2cc730
315e5e  48 8b c8                       mov    rcx,rax
315e61  e8 3e 7e fb ff                 call   0x2cdca4
315e66  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315e6b  48 8b f8                       mov    rdi,rax
315e6e  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e72  e8 4d 14 fe ff                 call   0x2f72c4 ; STRING getter=0x2f72c4 LateUpdate
315e77  48 8b c8                       mov    rcx,rax
315e7a  e8 d5 3d fd ff                 call   0x2e9c54
315e7f  48 8b d8                       mov    rbx,rax
315e82  48 8d 55 50                    lea    rdx,[rbp+0x50]
315e86  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e8a  e8 ed 0c fe ff                 call   0x2f6b7c
315e8f  48 8b c8                       mov    rcx,rax
315e92  e8 7d d7 fc ff                 call   0x2e3614
315e97  48 8b d0                       mov    rdx,rax
315e9a  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315e9f  4c 8d 0d 62 95 01 00           lea    r9,[rip+0x19562]        # 0x32f408
315ea6  4c 8b c3                       mov    r8,rbx
315ea9  48 8d 0d 88 09 0d 00           lea    rcx,[rip+0xd0988]        # 0x3e6838
315eb0  e8 57 4a fd ff                 call   0x2ea90c
315eb5  48 8d 55 40                    lea    rdx,[rbp+0x40]
315eb9  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315ebd  e8 6e 68 fb ff                 call   0x2cc730
315ec2  48 8b c8                       mov    rcx,rax
315ec5  e8 da 7d fb ff                 call   0x2cdca4
315eca  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
315ecf  48 8b f8                       mov    rdi,rax
315ed2  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315ed6  e8 29 a4 fd ff                 call   0x2f0304 ; STRING getter=0x2f0304 %ff5c768afbd21540016ff268deca16199f9d287c
315edb  48 8b c8                       mov    rcx,rax
315ede  e8 21 d8 fc ff                 call   0x2e3704
315ee3  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
315ee8  48 8b d8                       mov    rbx,rax
315eeb  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315eef  e8 dc 1d fe ff                 call   0x2f7cd0 ; STRING getter=0x2f7cd0 ItemIcon
315ef4  48 8b c8                       mov    rcx,rax
315ef7  e8 90 3c fd ff                 call   0x2e9b8c
315efc  41 83 cf ff                    or     r15d,0xffffffff
315f00  4c 8d 0d c5 b6 00 00           lea    r9,[rip+0xb6c5]        # 0x3215cc
315f07  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
315f0c  48 8d 0d 5d 09 0d 00           lea    rcx,[rip+0xd095d]        # 0x3e6870
315f13  48 8b d0                       mov    rdx,rax
315f16  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315f1b  4c 8b c3                       mov    r8,rbx
315f1e  e8 55 4a fd ff                 call   0x2ea978
315f23  48 8d 55 40                    lea    rdx,[rbp+0x40]
315f27  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315f2b  e8 00 68 fb ff                 call   0x2cc730
315f30  48 8b c8                       mov    rcx,rax
315f33  e8 6c 7d fb ff                 call   0x2cdca4
315f38  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
315f3d  48 8b f8                       mov    rdi,rax
315f40  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315f44  e8 27 ac fd ff                 call   0x2f0b70 ; STRING getter=0x2f0b70 %123bd3a03dc442df4d55d50e4bcff18dffb8caf0
315f49  48 8b c8                       mov    rcx,rax
315f4c  e8 b3 d7 fc ff                 call   0x2e3704
315f51  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315f56  48 8b d8                       mov    rbx,rax
315f59  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315f5d  e8 06 a9 fd ff                 call   0x2f0868 ; STRING getter=0x2f0868 PlayerWalkMovement
315f62  48 8b c8                       mov    rcx,rax
315f65  e8 2a 7e fb ff                 call   0x2cdd94
315f6a  48 8b d0                       mov    rdx,rax
315f6d  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
315f72  4c 8d 0d 7f 4a 01 00           lea    r9,[rip+0x14a7f]        # 0x32a9f8
315f79  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315f7e  4c 8b c3                       mov    r8,rbx
315f81  48 8d 0d 38 a9 0d 00           lea    rcx,[rip+0xda938]        # 0x3f08c0
315f88  e8 eb 49 fd ff                 call   0x2ea978
315f8d  48 8d 55 40                    lea    rdx,[rbp+0x40]
315f91  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315f95  e8 96 67 fb ff                 call   0x2cc730
315f9a  48 8b c8                       mov    rcx,rax
315f9d  e8 02 7d fb ff                 call   0x2cdca4
315fa2  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
315fa7  48 8b f8                       mov    rdi,rax
315faa  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315fae  e8 b9 b1 fd ff                 call   0x2f116c ; STRING getter=0x2f116c %9a4b1fd10d6243652214a9bef78c6ecd197d0836
315fb3  48 8b c8                       mov    rcx,rax
315fb6  e8 49 d7 fc ff                 call   0x2e3704
315fbb  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315fc0  48 8b d8                       mov    rbx,rax
315fc3  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315fc7  e8 5c ae fd ff                 call   0x2f0e28 ; STRING getter=0x2f0e28 PlayerWalkMovement
315fcc  48 8b c8                       mov    rcx,rax
315fcf  e8 c0 7d fb ff                 call   0x2cdd94
315fd4  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
315fd9  4c 8d 0d 50 eb 00 00           lea    r9,[rip+0xeb50]        # 0x324b30
315fe0  48 8b d0                       mov    rdx,rax
315fe3  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315fe8  4c 8b c3                       mov    r8,rbx
315feb  48 8d 0d b6 08 0d 00           lea    rcx,[rip+0xd08b6]        # 0x3e68a8
315ff2  e8 81 49 fd ff                 call   0x2ea978
315ff7  48 8d 55 40                    lea    rdx,[rbp+0x40]
315ffb  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315fff  e8 2c 67 fb ff                 call   0x2cc730
316004  48 8b c8                       mov    rcx,rax
316007  e8 98 7c fb ff                 call   0x2cdca4
31600c  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316011  48 8b f8                       mov    rdi,rax
316014  48 8d 4d 48                    lea    rcx,[rbp+0x48]
316018  e8 1f b8 fd ff                 call   0x2f183c ; STRING getter=0x2f183c %1d9a027bf72a0c970debaab6d90583b700d8985f
31601d  48 8b c8                       mov    rcx,rax
316020  e8 df d6 fc ff                 call   0x2e3704
316025  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31602a  48 8b d8                       mov    rbx,rax
31602d  48 8d 4d 48                    lea    rcx,[rbp+0x48]
316031  e8 c6 b4 fd ff                 call   0x2f14fc ; STRING getter=0x2f14fc PlayerWalkMovement
316036  48 8b c8                       mov    rcx,rax
316039  e8 56 7d fb ff                 call   0x2cdd94
31603e  48 8b d0                       mov    rdx,rax
316041  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
316046  4c 8d 0d 9f ca 00 00           lea    r9,[rip+0xca9f]        # 0x322aec
31604d  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
316052  4c 8b c3                       mov    r8,rbx
316055  48 8d 0d 9c a8 0d 00           lea    rcx,[rip+0xda89c]        # 0x3f08f8
31605c  e8 17 49 fd ff                 call   0x2ea978
316061  48 8d 55 40                    lea    rdx,[rbp+0x40]
316065  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316069  e8 c2 66 fb ff                 call   0x2cc730
31606e  48 8b c8                       mov    rcx,rax
316071  e8 2e 7c fb ff                 call   0x2cdca4
316076  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
31607b  48 8b d8                       mov    rbx,rax
31607e  48 8d 4d 48                    lea    rcx,[rbp+0x48]
316082  e8 45 ba fd ff                 call   0x2f1acc ; STRING getter=0x2f1acc %3d67d36f0966e1032c23f962d7b0990a6bc78bb0
316087  48 8b c8                       mov    rcx,rax
31608a  e8 75 d6 fc ff                 call   0x2e3704
31608f  48 8b d0                       mov    rdx,rax
316092  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
316097  4c 8b cb                       mov    r9,rbx
31609a  4c 8d 05 47 6a 01 00           lea    r8,[rip+0x16a47]        # 0x32cae8
3160a1  48 8d 0d 70 08 0d 00           lea    rcx,[rip+0xd0870]        # 0x3e6918
3160a8  e8 7b 49 fd ff                 call   0x2eaa28
3160ad  48 8d 55 40                    lea    rdx,[rbp+0x40]
3160b1  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3160b5  e8 76 66 fb ff                 call   0x2cc730
3160ba  48 8b c8                       mov    rcx,rax
3160bd  e8 e2 7b fb ff                 call   0x2cdca4
3160c2  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
3160c7  48 8b d8                       mov    rbx,rax
3160ca  48 8d 4d 48                    lea    rcx,[rbp+0x48]
3160ce  e8 f5 bb fd ff                 call   0x2f1cc8 ; STRING getter=0x2f1cc8 %ab2af99e738349c0dc873c5b1a248f283a19f0de
3160d3  48 8b c8                       mov    rcx,rax
3160d6  e8 29 d6 fc ff                 call   0x2e3704
3160db  48 8b d0                       mov    rdx,rax
3160de  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3160e3  4c 8b cb                       mov    r9,rbx
3160e6  4c 8d 05 3f 55 01 00           lea    r8,[rip+0x1553f]        # 0x32b62c
3160ed  48 8d 0d ec 07 0d 00           lea    rcx,[rip+0xd07ec]        # 0x3e68e0
3160f4  e8 2f 49 fd ff                 call   0x2eaa28
3160f9  48 8d 55 40                    lea    rdx,[rbp+0x40]
3160fd  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316101  e8 2a 66 fb ff                 call   0x2cc730
316106  48 8b c8                       mov    rcx,rax
316109  e8 96 7b fb ff                 call   0x2cdca4
31610e  48 8b 3d eb 0d 0c 00           mov    rdi,QWORD PTR [rip+0xc0deb]        # 0x3d6f00
316115  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31611a  48 8d 4d 48                    lea    rcx,[rbp+0x48]
31611e  48 8b d8                       mov    rbx,rax
316121  e8 52 bd fd ff                 call   0x2f1e78 ; STRING getter=0x2f1e78 BasePlayer
316126  48 8b c8                       mov    rcx,rax
316129  e8 26 3b fd ff                 call   0x2e9c54
31612e  48 8b d0                       mov    rdx,rax
316131  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
316136  4c 8d 0d bf 30 fd ff           lea    r9,[rip+0xfffffffffffd30bf]        # 0x2e91fc
31613d  4c 8d 87 e0 64 f4 03           lea    r8,[rdi+0x3f464e0]
316144  48 8d 0d 9d ec 0c 00           lea    rcx,[rip+0xcec9d]        # 0x3e4de8
31614b  e8 88 02 00 00                 call   0x3163d8
316150  48 8d 55 40                    lea    rdx,[rbp+0x40]
316154  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316158  e8 d3 65 fb ff                 call   0x2cc730
31615d  48 8b c8                       mov    rcx,rax
316160  e8 3f 7b fb ff                 call   0x2cdca4
316165  48 8d 55 48                    lea    rdx,[rbp+0x48]
316169  4c 8b f0                       mov    r14,rax
31616c  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316170  e8 bb 65 fb ff                 call   0x2cc730
316175  48 8b c8                       mov    rcx,rax
316178  e8 27 7b fb ff                 call   0x2cdca4
31617d  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316182  48 8b f0                       mov    rsi,rax
316185  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316189  e8 4a c6 fd ff                 call   0x2f27d8 ; STRING getter=0x2f27d8 %63e89e5a824099e8f26742a92de9abbad07f05ea
31618e  48 8b c8                       mov    rcx,rax
316191  e8 6e d5 fc ff                 call   0x2e3704
316196  48 8d 55 58                    lea    rdx,[rbp+0x58]
31619a  48 8b f8                       mov    rdi,rax
31619d  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3161a1  e8 8a 65 fb ff                 call   0x2cc730
3161a6  48 8b c8                       mov    rcx,rax
3161a9  e8 f6 7a fb ff                 call   0x2cdca4
3161ae  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
3161b3  48 8b d8                       mov    rbx,rax
3161b6  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3161ba  e8 b5 c4 fd ff                 call   0x2f2674 ; STRING getter=0x2f2674 BaseMelee
3161bf  48 8b c8                       mov    rcx,rax
3161c2  e8 7d 7b fb ff                 call   0x2cdd44
3161c7  48 8b c8                       mov    rcx,rax
3161ca  48 8b d3                       mov    rdx,rbx
3161cd  e8 52 e0 01 00                 call   0x334224
3161d2  48 8b c8                       mov    rcx,rax
3161d5  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3161da  4c 8b ce                       mov    r9,rsi
3161dd  45 8b c7                       mov    r8d,r15d
3161e0  48 8b d7                       mov    rdx,rdi
3161e3  e8 c4 e7 01 00                 call   0x3349ac
3161e8  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3161ed  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3161f1  48 8b 18                       mov    rbx,QWORD PTR [rax]
3161f4  e8 9b c2 fd ff                 call   0x2f2494 ; STRING getter=0x2f2494 BaseMelee
3161f9  48 8b c8                       mov    rcx,rax
3161fc  e8 43 7b fb ff                 call   0x2cdd44
316201  48 8b d0                       mov    rdx,rax
316204  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
316209  4c 8d 0d d0 b0 fc ff           lea    r9,[rip+0xfffffffffffcb0d0]        # 0x2e12e0
316210  4c 8b c3                       mov    r8,rbx
316213  48 8d 0d 6e dd 0c 00           lea    rcx,[rip+0xcdd6e]        # 0x3e3f88
31621a  e8 b9 01 00 00                 call   0x3163d8
31621f  48 8d 55 40                    lea    rdx,[rbp+0x40]
316223  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316227  e8 04 65 fb ff                 call   0x2cc730
31622c  48 8b c8                       mov    rcx,rax
31622f  e8 70 7a fb ff                 call   0x2cdca4
316234  48 8d 55 48                    lea    rdx,[rbp+0x48]
316238  4c 8b f0                       mov    r14,rax
31623b  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31623f  e8 ec 64 fb ff                 call   0x2cc730
316244  48 8b c8                       mov    rcx,rax
316247  e8 58 7a fb ff                 call   0x2cdca4
31624c  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316251  48 8b f0                       mov    rsi,rax
316254  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316258  e8 47 cc fd ff                 call   0x2f2ea4 ; STRING getter=0x2f2ea4 %4cc4b6b196d68ad25ed5d5f1fbe104df3d40db05
31625d  48 8b c8                       mov    rcx,rax
316260  e8 9f d4 fc ff                 call   0x2e3704
316265  48 8d 55 58                    lea    rdx,[rbp+0x58]
316269  48 8b f8                       mov    rdi,rax
31626c  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316270  e8 bb 64 fb ff                 call   0x2cc730
316275  48 8b c8                       mov    rcx,rax
316278  e8 27 7a fb ff                 call   0x2cdca4
31627d  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
316282  48 8b d8                       mov    rbx,rax
316285  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316289  e8 76 c9 fd ff                 call   0x2f2c04 ; STRING getter=0x2f2c04 BaseLauncher
31628e  48 8b c8                       mov    rcx,rax
316291  e8 5e 23 fc ff                 call   0x2d85f4
316296  48 8b c8                       mov    rcx,rax
316299  48 8b d3                       mov    rdx,rbx
31629c  e8 83 df 01 00                 call   0x334224
3162a1  48 8b c8                       mov    rcx,rax
3162a4  4c 8b ce                       mov    r9,rsi
3162a7  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3162ac  45 8b c7                       mov    r8d,r15d
3162af  48 8b d7                       mov    rdx,rdi
3162b2  e8 f5 e6 01 00                 call   0x3349ac
3162b7  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
3162bc  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3162c0  48 8b 18                       mov    rbx,QWORD PTR [rax]
3162c3  e8 e4 c6 fd ff                 call   0x2f29ac ; STRING getter=0x2f29ac BaseLauncher
3162c8  48 8b c8                       mov    rcx,rax
3162cb  e8 24 23 fc ff                 call   0x2d85f4
3162d0  48 8b d0                       mov    rdx,rax
3162d3  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
3162d8  4c 8d 0d 31 78 fc ff           lea    r9,[rip+0xfffffffffffc7831]        # 0x2ddb10
3162df  4c 8b c3                       mov    r8,rbx
3162e2  48 8d 0d 0f 0d 0c 00           lea    rcx,[rip+0xc0d0f]        # 0x3d6ff8
3162e9  e8 ea 00 00 00                 call   0x3163d8
3162ee  48 8d 55 40                    lea    rdx,[rbp+0x40]
3162f2  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3162f6  e8 35 64 fb ff                 call   0x2cc730
3162fb  48 8b c8                       mov    rcx,rax
3162fe  e8 a1 79 fb ff                 call   0x2cdca4
316303  48 8d 55 48                    lea    rdx,[rbp+0x48]
316307  4c 8b f0                       mov    r14,rax
31630a  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31630e  e8 1d 64 fb ff                 call   0x2cc730
316313  48 8b c8                       mov    rcx,rax
316316  e8 89 79 fb ff                 call   0x2cdca4
31631b  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316320  48 8b f0                       mov    rsi,rax
316323  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316327  e8 ec d0 fd ff                 call   0x2f3418 ; STRING getter=0x2f3418 %de96eb58e7d7ac99390d675d488860f809aad2a8
31632c  48 8b c8                       mov    rcx,rax
31632f  e8 d0 d3 fc ff                 call   0x2e3704
316334  48 8d 55 58                    lea    rdx,[rbp+0x58]
316338  48 8b f8                       mov    rdi,rax
31633b  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31633f  e8 ec 63 fb ff                 call   0x2cc730
316344  48 8b c8                       mov    rcx,rax
316347  e8 58 79 fb ff                 call   0x2cdca4
31634c  48 8d 55 9f                    lea    rdx,[rbp-0x61]
316350  48 8b d8                       mov    rbx,rax
316353  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316357  e8 34 cf fd ff                 call   0x2f3290 ; STRING getter=0x2f3290 %fa0c08e032f18b0fa1549031fa4c42174b53b0bb
31635c  48 8b c8                       mov    rcx,rax
31635f  e8 a0 d3 fc ff                 call   0x2e3704
316364  48 8b c8                       mov    rcx,rax
316367  48 8b d3                       mov    rdx,rbx
31636a  e8 b5 de 01 00                 call   0x334224
31636f  48 8b c8                       mov    rcx,rax
316372  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
316377  4c 8b ce                       mov    r9,rsi
31637a  45 8b c7                       mov    r8d,r15d
31637d  48 8b d7                       mov    rdx,rdi
316380  e8 27 e6 01 00                 call   0x3349ac
316385  48 8d 55 c9                    lea    rdx,[rbp-0x37]
316389  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31638d  48 8b 18                       mov    rbx,QWORD PTR [rax]
316390  e8 c3 cc fd ff                 call   0x2f3058 ; STRING getter=0x2f3058 %fa0c08e032f18b0fa1549031fa4c42174b53b0bb
316395  48 8b c8                       mov    rcx,rax
316398  e8 67 d3 fc ff                 call   0x2e3704
31639d  48 8b d0                       mov    rdx,rax
3163a0  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
3163a5  4c 8d 0d fc 6a 01 00           lea    r9,[rip+0x16afc]        # 0x32cea8
3163ac  4c 8b c3                       mov    r8,rbx
3163af  48 8d 0d d2 a4 0d 00           lea    rcx,[rip+0xda4d2]        # 0x3f0888
3163b6  e8 9d 00 00 00                 call   0x316458
3163bb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3163c0  e8 2f 61 fb ff                 call   0x2cc4f4
3163c5  48 81 c4 08 01 00 00           add    rsp,0x108
3163cc  41 5f                          pop    r15
3163ce  41 5e                          pop    r14
3163d0  5f                             pop    rdi
3163d1  5e                             pop    rsi
3163d2  5b                             pop    rbx
3163d3  5d                             pop    rbp
3163d4  c3                             ret
