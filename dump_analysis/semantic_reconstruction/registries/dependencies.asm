; heuristic leaf/code range 0x2cf0e4..0x2cf0ec unwind=0x0
2cf0e4  48 8b ca                       mov    rcx,rdx
2cf0e7  e9 50 64 00 00                 jmp    0x2d553c

; pdata function 0x2d07d4..0x2d0861 unwind=0x3d2308
2d07d4  40 53                          rex push rbx
2d07d6  55                             push   rbp
2d07d7  56                             push   rsi
2d07d8  57                             push   rdi
2d07d9  41 56                          push   r14
2d07db  48 83 ec 20                    sub    rsp,0x20
2d07df  48 8b 41 30                    mov    rax,QWORD PTR [rcx+0x30]
2d07e3  48 8b f1                       mov    rsi,rcx
2d07e6  48 8b 69 18                    mov    rbp,QWORD PTR [rcx+0x18]
2d07ea  49 23 c1                       and    rax,r9
2d07ed  48 8b 49 08                    mov    rcx,QWORD PTR [rcx+0x8]
2d07f1  48 03 c0                       add    rax,rax
2d07f4  4d 8b f0                       mov    r14,r8
2d07f7  48 8b da                       mov    rbx,rdx
2d07fa  48 8b 7c c5 08                 mov    rdi,QWORD PTR [rbp+rax*8+0x8]
2d07ff  48 3b f9                       cmp    rdi,rcx
2d0802  75 0d                          jne    0x2d0811
2d0804  48 89 0a                       mov    QWORD PTR [rdx],rcx
2d0807  48 c7 42 08 00 00 00 00        mov    QWORD PTR [rdx+0x8],0x0
2d080f  eb 35                          jmp    0x2d0846
2d0811  48 8b 6c c5 00                 mov    rbp,QWORD PTR [rbp+rax*8+0x0]
2d0816  eb 09                          jmp    0x2d0821
2d0818  48 3b fd                       cmp    rdi,rbp
2d081b  74 37                          je     0x2d0854
2d081d  48 8b 7f 08                    mov    rdi,QWORD PTR [rdi+0x8]
2d0821  48 8d 4f 10                    lea    rcx,[rdi+0x10]
2d0825  e8 7a ab ff ff                 call   0x2cb3a4
2d082a  4c 8b c0                       mov    r8,rax
2d082d  49 8b d6                       mov    rdx,r14
2d0830  48 8b ce                       mov    rcx,rsi
2d0833  e8 b4 e8 ff ff                 call   0x2cf0ec
2d0838  84 c0                          test   al,al
2d083a  75 dc                          jne    0x2d0818
2d083c  48 8b 07                       mov    rax,QWORD PTR [rdi]
2d083f  48 89 03                       mov    QWORD PTR [rbx],rax
2d0842  48 89 7b 08                    mov    QWORD PTR [rbx+0x8],rdi
2d0846  48 8b c3                       mov    rax,rbx
2d0849  48 83 c4 20                    add    rsp,0x20
2d084d  41 5e                          pop    r14
2d084f  5f                             pop    rdi
2d0850  5e                             pop    rsi
2d0851  5d                             pop    rbp
2d0852  5b                             pop    rbx
2d0853  c3                             ret
2d0854  48 89 3b                       mov    QWORD PTR [rbx],rdi
2d0857  48 c7 43 08 00 00 00 00        mov    QWORD PTR [rbx+0x8],0x0
2d085f  eb e5                          jmp    0x2d0846

; pdata function 0x2ea1b0..0x2ea228 unwind=0x3d2690
2ea1b0  40 53                          rex push rbx
2ea1b2  55                             push   rbp
2ea1b3  56                             push   rsi
2ea1b4  57                             push   rdi
2ea1b5  41 56                          push   r14
2ea1b7  48 83 ec 30                    sub    rsp,0x30
2ea1bb  49 8b d9                       mov    rbx,r9
2ea1be  49 8b e8                       mov    rbp,r8
2ea1c1  4c 8b f1                       mov    r14,rcx
2ea1c4  e8 f7 1f fe ff                 call   0x2cc1c0
2ea1c9  49 8b ce                       mov    rcx,r14
2ea1cc  e8 ab f1 02 00                 call   0x31937c
2ea1d1  48 8b 8c 24 80 00 00 00        mov    rcx,QWORD PTR [rsp+0x80]
2ea1d9  e8 c6 11 fe ff                 call   0x2cb3a4
2ea1de  48 8b cb                       mov    rcx,rbx
2ea1e1  48 8b f0                       mov    rsi,rax
2ea1e4  e8 bb 11 fe ff                 call   0x2cb3a4
2ea1e9  48 8b cd                       mov    rcx,rbp
2ea1ec  48 8b f8                       mov    rdi,rax
2ea1ef  e8 b0 11 fe ff                 call   0x2cb3a4
2ea1f4  49 8b 4e 08                    mov    rcx,QWORD PTR [r14+0x8]
2ea1f8  48 8b d8                       mov    rbx,rax
2ea1fb  48 83 c1 10                    add    rcx,0x10
2ea1ff  e8 a0 11 fe ff                 call   0x2cb3a4
2ea204  49 8b 0e                       mov    rcx,QWORD PTR [r14]
2ea207  48 8b d0                       mov    rdx,rax
2ea20a  4c 8b cf                       mov    r9,rdi
2ea20d  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
2ea212  4c 8b c3                       mov    r8,rbx
2ea215  e8 36 31 00 00                 call   0x2ed350
2ea21a  49 8b c6                       mov    rax,r14
2ea21d  48 83 c4 30                    add    rsp,0x30
2ea221  41 5e                          pop    r14
2ea223  5f                             pop    rdi
2ea224  5e                             pop    rsi
2ea225  5d                             pop    rbp
2ea226  5b                             pop    rbx
2ea227  c3                             ret

; pdata function 0x319824..0x31984f unwind=0x3d2038
319824  40 53                          rex push rbx
319826  48 83 ec 20                    sub    rsp,0x20
31982a  48 8b d9                       mov    rbx,rcx
31982d  48 83 c1 08                    add    rcx,0x8
319831  e8 ee 71 00 00                 call   0x320a24
319836  48 39 43 10                    cmp    QWORD PTR [rbx+0x10],rax
31983a  74 06                          je     0x319842
31983c  48 83 c4 20                    add    rsp,0x20
319840  5b                             pop    rbx
319841  c3                             ret
319842  48 8d 0d 5f 3c f7 ff           lea    rcx,[rip+0xfffffffffff73c5f]        # 0x28d4a8
319849  e8 02 38 fb ff                 call   0x2cd050
31984e  cc                             int3

; heuristic leaf/code range 0x2dde94..0x2dde9c unwind=0x0
2dde94  48 8b ca                       mov    rcx,rdx
2dde97  e9 fc 1e 00 00                 jmp    0x2dfd98

; pdata function 0x2de154..0x2de1e1 unwind=0x3d2308
2de154  40 53                          rex push rbx
2de156  55                             push   rbp
2de157  56                             push   rsi
2de158  57                             push   rdi
2de159  41 56                          push   r14
2de15b  48 83 ec 20                    sub    rsp,0x20
2de15f  48 8b 41 30                    mov    rax,QWORD PTR [rcx+0x30]
2de163  48 8b f1                       mov    rsi,rcx
2de166  48 8b 69 18                    mov    rbp,QWORD PTR [rcx+0x18]
2de16a  49 23 c1                       and    rax,r9
2de16d  48 8b 49 08                    mov    rcx,QWORD PTR [rcx+0x8]
2de171  48 03 c0                       add    rax,rax
2de174  4d 8b f0                       mov    r14,r8
2de177  48 8b da                       mov    rbx,rdx
2de17a  48 8b 7c c5 08                 mov    rdi,QWORD PTR [rbp+rax*8+0x8]
2de17f  48 3b f9                       cmp    rdi,rcx
2de182  75 0d                          jne    0x2de191
2de184  48 89 0a                       mov    QWORD PTR [rdx],rcx
2de187  48 c7 42 08 00 00 00 00        mov    QWORD PTR [rdx+0x8],0x0
2de18f  eb 35                          jmp    0x2de1c6
2de191  48 8b 6c c5 00                 mov    rbp,QWORD PTR [rbp+rax*8+0x0]
2de196  eb 09                          jmp    0x2de1a1
2de198  48 3b fd                       cmp    rdi,rbp
2de19b  74 37                          je     0x2de1d4
2de19d  48 8b 7f 08                    mov    rdi,QWORD PTR [rdi+0x8]
2de1a1  48 8d 4f 10                    lea    rcx,[rdi+0x10]
2de1a5  e8 fa d1 fe ff                 call   0x2cb3a4
2de1aa  4c 8b c0                       mov    r8,rax
2de1ad  49 8b d6                       mov    rdx,r14
2de1b0  48 8b ce                       mov    rcx,rsi
2de1b3  e8 e4 fc ff ff                 call   0x2dde9c
2de1b8  84 c0                          test   al,al
2de1ba  75 dc                          jne    0x2de198
2de1bc  48 8b 07                       mov    rax,QWORD PTR [rdi]
2de1bf  48 89 03                       mov    QWORD PTR [rbx],rax
2de1c2  48 89 7b 08                    mov    QWORD PTR [rbx+0x8],rdi
2de1c6  48 8b c3                       mov    rax,rbx
2de1c9  48 83 c4 20                    add    rsp,0x20
2de1cd  41 5e                          pop    r14
2de1cf  5f                             pop    rdi
2de1d0  5e                             pop    rsi
2de1d1  5d                             pop    rbp
2de1d2  5b                             pop    rbx
2de1d3  c3                             ret
2de1d4  48 89 3b                       mov    QWORD PTR [rbx],rdi
2de1d7  48 c7 43 08 00 00 00 00        mov    QWORD PTR [rbx+0x8],0x0
2de1df  eb e5                          jmp    0x2de1c6

; pdata function 0x2ddd64..0x2ddddc unwind=0x3d2690
2ddd64  40 53                          rex push rbx
2ddd66  55                             push   rbp
2ddd67  56                             push   rsi
2ddd68  57                             push   rdi
2ddd69  41 56                          push   r14
2ddd6b  48 83 ec 30                    sub    rsp,0x30
2ddd6f  49 8b d9                       mov    rbx,r9
2ddd72  49 8b e8                       mov    rbp,r8
2ddd75  4c 8b f1                       mov    r14,rcx
2ddd78  e8 43 e4 fe ff                 call   0x2cc1c0
2ddd7d  49 8b ce                       mov    rcx,r14
2ddd80  e8 1b 4b 00 00                 call   0x2e28a0
2ddd85  48 8b 8c 24 80 00 00 00        mov    rcx,QWORD PTR [rsp+0x80]
2ddd8d  e8 12 d6 fe ff                 call   0x2cb3a4
2ddd92  48 8b cb                       mov    rcx,rbx
2ddd95  48 8b f0                       mov    rsi,rax
2ddd98  e8 07 d6 fe ff                 call   0x2cb3a4
2ddd9d  48 8b cd                       mov    rcx,rbp
2ddda0  48 8b f8                       mov    rdi,rax
2ddda3  e8 fc d5 fe ff                 call   0x2cb3a4
2ddda8  49 8b 4e 08                    mov    rcx,QWORD PTR [r14+0x8]
2dddac  48 8b d8                       mov    rbx,rax
2dddaf  48 83 c1 10                    add    rcx,0x10
2dddb3  e8 ec d5 fe ff                 call   0x2cb3a4
2dddb8  49 8b 0e                       mov    rcx,QWORD PTR [r14]
2dddbb  48 8b d0                       mov    rdx,rax
2dddbe  4c 8b cf                       mov    r9,rdi
2dddc1  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
2dddc6  4c 8b c3                       mov    r8,rbx
2dddc9  e8 d6 0c 00 00                 call   0x2deaa4
2dddce  49 8b c6                       mov    rax,r14
2dddd1  48 83 c4 30                    add    rsp,0x30
2dddd5  41 5e                          pop    r14
2dddd7  5f                             pop    rdi
2dddd8  5e                             pop    rsi
2dddd9  5d                             pop    rbp
2dddda  5b                             pop    rbx
2ddddb  c3                             ret

; pdata function 0x2e2a4c..0x2e2a77 unwind=0x3d2038
2e2a4c  40 53                          rex push rbx
2e2a4e  48 83 ec 20                    sub    rsp,0x20
2e2a52  48 8b d9                       mov    rbx,rcx
2e2a55  48 83 c1 08                    add    rcx,0x8
2e2a59  e8 4a 11 00 00                 call   0x2e3ba8
2e2a5e  48 39 43 10                    cmp    QWORD PTR [rbx+0x10],rax
2e2a62  74 06                          je     0x2e2a6a
2e2a64  48 83 c4 20                    add    rsp,0x20
2e2a68  5b                             pop    rbx
2e2a69  c3                             ret
2e2a6a  48 8d 0d 37 aa fa ff           lea    rcx,[rip+0xfffffffffffaaa37]        # 0x28d4a8
2e2a71  e8 da a5 fe ff                 call   0x2cd050
2e2a76  cc                             int3

; pdata function 0x2d45c8..0x2d460d unwind=0x3d206c
2d45c8  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2d45cd  57                             push   rdi
2d45ce  48 83 ec 20                    sub    rsp,0x20
2d45d2  48 8b da                       mov    rbx,rdx
2d45d5  48 8b f9                       mov    rdi,rcx
2d45d8  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
2d45dc  e8 df 65 ff ff                 call   0x2cabc0
2d45e1  48 8b cb                       mov    rcx,rbx
2d45e4  e8 e7 44 00 00                 call   0x2d8ad0
2d45e9  48 8b c8                       mov    rcx,rax
2d45ec  e8 b3 6d ff ff                 call   0x2cb3a4
2d45f1  4c 8b c0                       mov    r8,rax
2d45f4  48 8b d3                       mov    rdx,rbx
2d45f7  48 8b cf                       mov    rcx,rdi
2d45fa  e8 05 ad ff ff                 call   0x2cf304
2d45ff  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
2d4604  48 8b c7                       mov    rax,rdi
2d4607  48 83 c4 20                    add    rsp,0x20
2d460b  5f                             pop    rdi
2d460c  c3                             ret

; pdata function 0x2cee44..0x2ceedd unwind=0x3d2360
2cee44  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
2cee49  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2cee4e  53                             push   rbx
2cee4f  56                             push   rsi
2cee50  57                             push   rdi
2cee51  48 83 ec 30                    sub    rsp,0x30
2cee55  8a 54 24 50                    mov    dl,BYTE PTR [rsp+0x50]
2cee59  4d 8b c1                       mov    r8,r9
2cee5c  48 8b f1                       mov    rsi,rcx
2cee5f  e8 5c bd ff ff                 call   0x2cabc0
2cee64  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2cee69  e8 d6 1b 00 00                 call   0x2d0a44
2cee6e  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2cee73  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2cee78  48 8b d8                       mov    rbx,rax
2cee7b  e8 c4 1b 00 00                 call   0x2d0a44
2cee80  48 89 44 24 50                 mov    QWORD PTR [rsp+0x50],rax
2cee85  48 3b d8                       cmp    rbx,rax
2cee88  75 0a                          jne    0x2cee94
2cee8a  48 8b ce                       mov    rcx,rsi
2cee8d  e8 06 80 00 00                 call   0x2d6e98
2cee92  eb 3e                          jmp    0x2ceed2
2cee94  48 8b d0                       mov    rdx,rax
2cee97  48 8b cb                       mov    rcx,rbx
2cee9a  e8 7d 38 00 00                 call   0x2d271c
2cee9f  48 8b c8                       mov    rcx,rax
2ceea2  e8 fd c4 ff ff                 call   0x2cb3a4
2ceea7  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2ceeac  48 8b f8                       mov    rdi,rax
2ceeaf  e8 f0 c4 ff ff                 call   0x2cb3a4
2ceeb4  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ceeb9  48 8b d8                       mov    rbx,rax
2ceebc  e8 e3 c4 ff ff                 call   0x2cb3a4
2ceec1  4c 8b 03                       mov    r8,QWORD PTR [rbx]
2ceec4  4c 8b cf                       mov    r9,rdi
2ceec7  48 8b ce                       mov    rcx,rsi
2ceeca  48 8b 10                       mov    rdx,QWORD PTR [rax]
2ceecd  e8 ca 06 00 00                 call   0x2cf59c
2ceed2  48 8b c6                       mov    rax,rsi
2ceed5  48 83 c4 30                    add    rsp,0x30
2ceed9  5f                             pop    rdi
2ceeda  5e                             pop    rsi
2ceedb  5b                             pop    rbx
2ceedc  c3                             ret

; pdata function 0x2e3ce4..0x2e3d5c unwind=0x3d2038
2e3ce4  40 53                          rex push rbx
2e3ce6  48 83 ec 20                    sub    rsp,0x20
2e3cea  8b 05 78 34 0f 00              mov    eax,DWORD PTR [rip+0xf3478]        # 0x3d7168
2e3cf0  48 8b d9                       mov    rbx,rcx
2e3cf3  a8 01                          test   al,0x1
2e3cf5  75 20                          jne    0x2e3d17
2e3cf7  83 c8 01                       or     eax,0x1
2e3cfa  89 05 68 34 0f 00              mov    DWORD PTR [rip+0xf3468],eax        # 0x3d7168
2e3d00  e8 47 b1 ff ff                 call   0x2dee4c
2e3d05  4c 8b c0                       mov    r8,rax
2e3d08  48 89 05 51 34 0f 00           mov    QWORD PTR [rip+0xf3451],rax        # 0x3d7160
2e3d0f  8b 05 53 34 0f 00              mov    eax,DWORD PTR [rip+0xf3453]        # 0x3d7168
2e3d15  eb 07                          jmp    0x2e3d1e
2e3d17  4c 8b 05 42 34 0f 00           mov    r8,QWORD PTR [rip+0xf3442]        # 0x3d7160
2e3d1e  a8 02                          test   al,0x2
2e3d20  75 1f                          jne    0x2e3d41
2e3d22  48 8b 0d 37 21 0f 00           mov    rcx,QWORD PTR [rip+0xf2137]        # 0x3d5e60
2e3d29  48 8d 15 40 34 0f 00           lea    rdx,[rip+0xf3440]        # 0x3d7170
2e3d30  83 c8 02                       or     eax,0x2
2e3d33  45 33 c9                       xor    r9d,r9d
2e3d36  89 05 2c 34 0f 00              mov    DWORD PTR [rip+0xf342c],eax        # 0x3d7168
2e3d3c  e8 e3 7f fe ff                 call   0x2cbd24
2e3d41  48 8b 0d 18 21 0f 00           mov    rcx,QWORD PTR [rip+0xf2118]        # 0x3d5e60
2e3d48  48 8d 15 21 34 0f 00           lea    rdx,[rip+0xf3421]        # 0x3d7170
2e3d4f  4c 8b c3                       mov    r8,rbx
2e3d52  48 83 c4 20                    add    rsp,0x20
2e3d56  5b                             pop    rbx
2e3d57  e9 a0 7c fe ff                 jmp    0x2cb9fc

