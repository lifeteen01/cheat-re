; pdata function 0x2d7e18..0x2d7eb5 unwind=0x3d2354
2d7e18  40 53                          rex push rbx
2d7e1a  56                             push   rsi
2d7e1b  57                             push   rdi
2d7e1c  48 83 ec 40                    sub    rsp,0x40
2d7e20  48 8b f2                       mov    rsi,rdx
2d7e23  48 8d 51 14                    lea    rdx,[rcx+0x14]
2d7e27  48 8b ca                       mov    rcx,rdx
2d7e2a  e8 d9 30 ff ff                 call   0x2caf08
2d7e2f  84 c0                          test   al,al
2d7e31  75 24                          jne    0x2d7e57
2d7e33  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2d7e38  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2d7e3d  e8 ee 48 ff ff                 call   0x2cc730
2d7e42  48 8b c8                       mov    rcx,rax
2d7e45  e8 5a 5e ff ff                 call   0x2cdca4
2d7e4a  48 8b d0                       mov    rdx,rax
2d7e4d  48 8b ce                       mov    rcx,rsi
2d7e50  e8 77 44 ff ff                 call   0x2cc2cc
2d7e55  eb 53                          jmp    0x2d7eaa
2d7e57  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d7e5c  e8 67 c7 ff ff                 call   0x2d45c8
2d7e61  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2d7e66  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d7e6b  e8 b8 08 00 00                 call   0x2d8728
2d7e70  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
2d7e75  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d7e7a  48 8b 18                       mov    rbx,QWORD PTR [rax]
2d7e7d  e8 be fe ff ff                 call   0x2d7d40
2d7e82  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2d7e87  48 8b f8                       mov    rdi,rax
2d7e8a  e8 15 35 ff ff                 call   0x2cb3a4
2d7e8f  48 8b 17                       mov    rdx,QWORD PTR [rdi]
2d7e92  4c 8b c8                       mov    r9,rax
2d7e95  4c 8b c3                       mov    r8,rbx
2d7e98  48 8b ce                       mov    rcx,rsi
2d7e9b  e8 a4 6f ff ff                 call   0x2cee44
2d7ea0  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d7ea5  e8 a6 cb ff ff                 call   0x2d4a50
2d7eaa  48 8b c6                       mov    rax,rsi
2d7ead  48 83 c4 40                    add    rsp,0x40
2d7eb1  5f                             pop    rdi
2d7eb2  5e                             pop    rsi
2d7eb3  5b                             pop    rbx
2d7eb4  c3                             ret

; heuristic leaf/code range 0x2cd7ec..0x2cd7f4 unwind=0x0
2cd7ec  e9 f3 fc ff ff                 jmp    0x2cd4e4
2cd7f1  cc                             int3
2cd7f2  cc                             int3
2cd7f3  cc                             int3

