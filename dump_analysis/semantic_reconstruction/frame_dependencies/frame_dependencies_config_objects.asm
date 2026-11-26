; pdata function 0x2df16c..0x2df209 unwind=0x3d22d4
2df16c  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2df171  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
2df176  57                             push   rdi
2df177  48 83 ec 40                    sub    rsp,0x40
2df17b  49 8b d8                       mov    rbx,r8
2df17e  48 8b fa                       mov    rdi,rdx
2df181  48 8b f1                       mov    rsi,rcx
2df184  e8 2f c3 ff ff                 call   0x2db4b8
2df189  48 8d 05 48 e7 fa ff           lea    rax,[rip+0xfffffffffffae748]        # 0x28d8d8
2df190  48 8b d7                       mov    rdx,rdi
2df193  48 89 06                       mov    QWORD PTR [rsi],rax
2df196  48 8d 4e 28                    lea    rcx,[rsi+0x28]
2df19a  8a 03                          mov    al,BYTE PTR [rbx]
2df19c  88 46 48                       mov    BYTE PTR [rsi+0x48],al
2df19f  e8 c4 5a ff ff                 call   0x2d4c68
2df1a4  48 8d 4e 28                    lea    rcx,[rsi+0x28]
2df1a8  e8 3f e6 fe ff                 call   0x2cd7ec
2df1ad  48 8b c8                       mov    rcx,rax
2df1b0  e8 9f 71 ff ff                 call   0x2d6354
2df1b5  48 8b d0                       mov    rdx,rax
2df1b8  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2df1bd  e8 f2 e7 ff ff                 call   0x2dd9b4
2df1c2  48 8b d0                       mov    rdx,rax
2df1c5  48 8d 4e 08                    lea    rcx,[rsi+0x8]
2df1c9  e8 16 5a ff ff                 call   0x2d4be4
2df1ce  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2df1d3  e8 1c d3 fe ff                 call   0x2cc4f4
2df1d8  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2df1dd  48 89 74 24 50                 mov    QWORD PTR [rsp+0x50],rsi
2df1e2  48 8d 0d af 95 f3 ff           lea    rcx,[rip+0xfffffffffff395af]        # 0x218798
2df1e9  e8 ce e3 ff ff                 call   0x2dd5bc
2df1ee  48 8b ce                       mov    rcx,rsi
2df1f1  e8 06 eb ff ff                 call   0x2ddcfc
2df1f6  48 8b 5c 24 58                 mov    rbx,QWORD PTR [rsp+0x58]
2df1fb  48 8b c6                       mov    rax,rsi
2df1fe  48 8b 74 24 60                 mov    rsi,QWORD PTR [rsp+0x60]
2df203  48 83 c4 40                    add    rsp,0x40
2df207  5f                             pop    rdi
2df208  c3                             ret

; pdata function 0x2b3c90..0x2b3cd4 unwind=0x3d204c
2b3c90  48 83 ec 38                    sub    rsp,0x38
2b3c94  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2b3c99  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2b3c9e  e8 49 df 03 00                 call   0x2f1bec ; STRING getter=0x2f1bec Bools.Aimbot
2b3ca3  48 8b c8                       mov    rcx,rax
2b3ca6  e8 b1 a1 01 00                 call   0x2cde5c
2b3cab  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2b3cb0  c6 44 24 40 00                 mov    BYTE PTR [rsp+0x40],0x0
2b3cb5  48 8b d0                       mov    rdx,rax
2b3cb8  48 8d 0d 21 3c 13 00           lea    rcx,[rip+0x133c21]        # 0x3e78e0
2b3cbf  e8 a8 b4 02 00                 call   0x2df16c
2b3cc4  48 8d 0d 39 af 11 00           lea    rcx,[rip+0x11af39]        # 0x3cec04
2b3ccb  48 83 c4 38                    add    rsp,0x38
2b3ccf  e9 58 96 01 00                 jmp    0x2cd32c

