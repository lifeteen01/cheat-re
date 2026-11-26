; pdata function 0x2db1b0..0x2db252 unwind=0x3d2950
2db1b0  40 53                          rex push rbx
2db1b2  56                             push   rsi
2db1b3  57                             push   rdi
2db1b4  41 56                          push   r14
2db1b6  48 83 ec 48                    sub    rsp,0x48
2db1ba  49 8b f8                       mov    rdi,r8
2db1bd  48 8b f2                       mov    rsi,rdx
2db1c0  4c 8b f1                       mov    r14,rcx
2db1c3  e8 f0 02 00 00                 call   0x2db4b8
2db1c8  48 8d 05 e9 24 fb ff           lea    rax,[rip+0xfffffffffffb24e9]        # 0x28d6b8
2db1cf  49 8d 4e 48                    lea    rcx,[r14+0x48]
2db1d3  49 89 06                       mov    QWORD PTR [r14],rax
2db1d6  e8 7d 95 ff ff                 call   0x2d4758
2db1db  48 8b d7                       mov    rdx,rdi
2db1de  49 8d 4e 48                    lea    rcx,[r14+0x48]
2db1e2  e8 89 9a ff ff                 call   0x2d4c70
2db1e7  48 8b d6                       mov    rdx,rsi
2db1ea  49 8d 4e 28                    lea    rcx,[r14+0x28]
2db1ee  e8 75 9a ff ff                 call   0x2d4c68
2db1f3  49 8d 4e 28                    lea    rcx,[r14+0x28]
2db1f7  e8 f0 25 ff ff                 call   0x2cd7ec
2db1fc  48 8b c8                       mov    rcx,rax
2db1ff  e8 50 b1 ff ff                 call   0x2d6354
2db204  48 8b d0                       mov    rdx,rax
2db207  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2db20c  e8 a3 27 00 00                 call   0x2dd9b4
2db211  48 8b d0                       mov    rdx,rax
2db214  49 8d 4e 08                    lea    rcx,[r14+0x8]
2db218  e8 c7 99 ff ff                 call   0x2d4be4
2db21d  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2db222  e8 cd 12 ff ff                 call   0x2cc4f4
2db227  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2db22c  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
2db231  48 8d 0d 60 d5 f3 ff           lea    rcx,[rip+0xfffffffffff3d560]        # 0x218798
2db238  e8 7f 23 00 00                 call   0x2dd5bc
2db23d  49 8b ce                       mov    rcx,r14
2db240  e8 ef e4 ff ff                 call   0x2d9734
2db245  49 8b c6                       mov    rax,r14
2db248  48 83 c4 48                    add    rsp,0x48
2db24c  41 5e                          pop    r14
2db24e  5f                             pop    rdi
2db24f  5e                             pop    rsi
2db250  5b                             pop    rbx
2db251  c3                             ret

