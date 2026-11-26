; pdata function 0x362118..0x3621ff unwind=0x3d25c8
362118  40 55                          rex push rbp
36211a  53                             push   rbx
36211b  57                             push   rdi
36211c  48 8b ec                       mov    rbp,rsp
36211f  48 83 ec 50                    sub    rsp,0x50
362123  48 8d 55 e0                    lea    rdx,[rbp-0x20]
362127  48 8d 4d 28                    lea    rcx,[rbp+0x28]
36212b  e8 e0 01 ff ff                 call   0x352310 ; STRING getter=0x352310 GameAssembly.dll
362130  48 8b c8                       mov    rcx,rax
362133  e8 7c 7a f8 ff                 call   0x2e9bb4
362138  48 8b c8                       mov    rcx,rax
36213b  e8 18 8f 06 00                 call   0x3cb058
362140  48 89 05 b9 4d 07 00           mov    QWORD PTR [rip+0x74db9],rax        # 0x3d6f00
362147  e8 a8 2a fd ff                 call   0x334bf4
36214c  48 8d 55 e0                    lea    rdx,[rbp-0x20]
362150  48 8d 4d 28                    lea    rcx,[rbp+0x28]
362154  e8 27 18 ff ff                 call   0x353980 ; STRING getter=0x353980 C:\Spotify
362159  48 8b c8                       mov    rcx,rax
36215c  e8 f3 7a f8 ff                 call   0x2e9c54
362161  48 8b d0                       mov    rdx,rax
362164  48 8d 0d a5 65 eb ff           lea    rcx,[rip+0xffffffffffeb65a5]        # 0x218710
36216b  e8 f8 2a f7 ff                 call   0x2d4c68
362170  48 8d 55 e0                    lea    rdx,[rbp-0x20]
362174  48 8d 4d 28                    lea    rcx,[rbp+0x28]
362178  e8 07 2c ff ff                 call   0x354d84 ; STRING getter=0x354d84 DefaultCfg.bin
36217d  48 8b c8                       mov    rcx,rax
362180  e8 e7 64 f7 ff                 call   0x2d866c
362185  48 8b d0                       mov    rdx,rax
362188  48 8d 0d a1 65 eb ff           lea    rcx,[rip+0xffffffffffeb65a1]        # 0x218730
36218f  e8 d4 2a f7 ff                 call   0x2d4c68
362194  48 8d 55 28                    lea    rdx,[rbp+0x28]
362198  48 8d 4d 28                    lea    rcx,[rbp+0x28]
36219c  e8 8f a5 f6 ff                 call   0x2cc730
3621a1  48 8b c8                       mov    rcx,rax
3621a4  e8 fb ba f6 ff                 call   0x2cdca4
3621a9  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3621ad  48 8b f8                       mov    rdi,rax
3621b0  48 8d 4d 30                    lea    rcx,[rbp+0x30]
3621b4  e8 3b 53 ff ff                 call   0x3574f4 ; STRING getter=0x3574f4 LateUpdate
3621b9  48 8b c8                       mov    rcx,rax
3621bc  e8 93 7a f8 ff                 call   0x2e9c54
3621c1  48 8d 55 38                    lea    rdx,[rbp+0x38]
3621c5  48 8b d8                       mov    rbx,rax
3621c8  48 8d 4d 30                    lea    rcx,[rbp+0x30]
3621cc  e8 cb 40 ff ff                 call   0x35629c ; STRING getter=0x35629c Client
3621d1  48 8b c8                       mov    rcx,rax
3621d4  e8 1b bb f6 ff                 call   0x2cdcf4
3621d9  48 8b d0                       mov    rdx,rax
3621dc  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
3621e1  4c 8d 0d 8c 63 f9 ff           lea    r9,[rip+0xfffffffffff9638c]        # 0x2f8574
3621e8  4c 8b c3                       mov    r8,rbx
3621eb  48 8d 0d 5e 47 08 00           lea    rcx,[rip+0x8475e]        # 0x3e6950
3621f2  e8 15 87 f8 ff                 call   0x2ea90c
3621f7  48 83 c4 50                    add    rsp,0x50
3621fb  5f                             pop    rdi
3621fc  5b                             pop    rbx
3621fd  5d                             pop    rbp
3621fe  c3                             ret
