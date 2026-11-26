; pdata function 0x2d9734..0x2d9788 unwind=0x3d25f0
2d9734  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d9739  57                             push   rdi
2d973a  48 83 ec 50                    sub    rsp,0x50
2d973e  48 8b d9                       mov    rbx,rcx
2d9741  48 8d 51 48                    lea    rdx,[rcx+0x48]
2d9745  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
2d974a  e8 6d 1b 00 00                 call   0x2db2bc
2d974f  4c 8b c8                       mov    r9,rax
2d9752  4c 8d 43 08                    lea    r8,[rbx+0x8]
2d9756  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d975b  48 8d 0d 6e d6 0f 00           lea    rcx,[rip+0xfd66e]        # 0x3d6dd0
2d9762  e8 d1 97 ff ff                 call   0x2d2f38
2d9767  48 8b d0                       mov    rdx,rax
2d976a  48 8d 4b 48                    lea    rcx,[rbx+0x48]
2d976e  e8 21 20 00 00                 call   0x2db794
2d9773  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d9778  e8 03 b3 ff ff                 call   0x2d4a80
2d977d  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
2d9782  48 83 c4 50                    add    rsp,0x50
2d9786  5f                             pop    rdi
2d9787  c3                             ret

; pdata function 0x2d2f38..0x2d3002 unwind=0x3d2484
2d2f38  40 55                          rex push rbp
2d2f3a  53                             push   rbx
2d2f3b  56                             push   rsi
2d2f3c  57                             push   rdi
2d2f3d  48 8b ec                       mov    rbp,rsp
2d2f40  48 83 ec 78                    sub    rsp,0x78
2d2f44  48 8b d9                       mov    rbx,rcx
2d2f47  49 8b f1                       mov    rsi,r9
2d2f4a  49 8b c8                       mov    rcx,r8
2d2f4d  48 8b fa                       mov    rdi,rdx
2d2f50  e8 97 a8 ff ff                 call   0x2cd7ec
2d2f55  48 8b c8                       mov    rcx,rax
2d2f58  e8 f7 33 00 00                 call   0x2d6354
2d2f5d  4c 8b c0                       mov    r8,rax
2d2f60  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2d2f64  48 8b cb                       mov    rcx,rbx
2d2f67  e8 64 5a 00 00                 call   0x2d89d0
2d2f6c  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2d2f70  e8 1f 57 00 00                 call   0x2d8694
2d2f75  84 c0                          test   al,al
2d2f77  75 61                          jne    0x2d2fda
2d2f79  48 8d 55 aa                    lea    rdx,[rbp-0x56]
2d2f7d  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2d2f81  e8 52 1f 00 00                 call   0x2d4ed8 ; STRING getter=0x2d4ed8 EMPTY
2d2f86  48 8b c8                       mov    rcx,rax
2d2f89  e8 4e 55 00 00                 call   0x2d84dc
2d2f8e  48 8b d0                       mov    rdx,rax
2d2f91  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2d2f95  e8 9e bf ff ff                 call   0x2cef38
2d2f9a  84 c0                          test   al,al
2d2f9c  75 3c                          jne    0x2d2fda
2d2f9e  48 8d 55 a8                    lea    rdx,[rbp-0x58]
2d2fa2  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2d2fa6  e8 11 20 00 00                 call   0x2d4fbc ; STRING getter=0x2d4fbc ;
2d2fab  48 8b c8                       mov    rcx,rax
2d2fae  e8 b1 54 00 00                 call   0x2d8464
2d2fb3  48 8b d0                       mov    rdx,rax
2d2fb6  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2d2fba  e8 0d 93 ff ff                 call   0x2cc2cc
2d2fbf  4c 8d 45 d0                    lea    r8,[rbp-0x30]
2d2fc3  48 8b cf                       mov    rcx,rdi
2d2fc6  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2d2fca  e8 2d 64 00 00                 call   0x2d93fc
2d2fcf  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2d2fd3  e8 1c 95 ff ff                 call   0x2cc4f4
2d2fd8  eb 0b                          jmp    0x2d2fe5
2d2fda  48 8b d6                       mov    rdx,rsi
2d2fdd  48 8b cf                       mov    rcx,rdi
2d2fe0  e8 b7 16 00 00                 call   0x2d469c
2d2fe5  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2d2fe9  e8 06 95 ff ff                 call   0x2cc4f4
2d2fee  48 8b ce                       mov    rcx,rsi
2d2ff1  e8 8a 1a 00 00                 call   0x2d4a80
2d2ff6  48 8b c7                       mov    rax,rdi
2d2ff9  48 83 c4 78                    add    rsp,0x78
2d2ffd  5f                             pop    rdi
2d2ffe  5e                             pop    rsi
2d2fff  5b                             pop    rbx
2d3000  5d                             pop    rbp
2d3001  c3                             ret

