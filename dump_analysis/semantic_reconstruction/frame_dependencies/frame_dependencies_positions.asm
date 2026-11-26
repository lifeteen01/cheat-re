; heuristic leaf/code range 0x2dd5e0..0x2dd5e8 unwind=0x0
2dd5e0  e9 af c7 ff ff                 jmp    0x2d9d94
2dd5e5  cc                             int3
2dd5e6  cc                             int3
2dd5e7  cc                             int3

; pdata function 0x2d9d94..0x2d9dd6 unwind=0x3d2040
2d9d94  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d9d99  57                             push   rdi
2d9d9a  48 83 ec 20                    sub    rsp,0x20
2d9d9e  48 8b 79 08                    mov    rdi,QWORD PTR [rcx+0x8]
2d9da2  48 8b d9                       mov    rbx,rcx
2d9da5  48 8b ca                       mov    rcx,rdx
2d9da8  e8 f7 15 ff ff                 call   0x2cb3a4
2d9dad  48 8b cb                       mov    rcx,rbx
2d9db0  48 3b 7b 10                    cmp    rdi,QWORD PTR [rbx+0x10]
2d9db4  74 0a                          je     0x2d9dc0
2d9db6  48 8b d0                       mov    rdx,rax
2d9db9  e8 4a ff ff ff                 call   0x2d9d08
2d9dbe  eb 0b                          jmp    0x2d9dcb
2d9dc0  4c 8b c0                       mov    r8,rax
2d9dc3  48 8b d7                       mov    rdx,rdi
2d9dc6  e8 51 00 00 00                 call   0x2d9e1c
2d9dcb  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d9dd0  48 83 c4 20                    add    rsp,0x20
2d9dd4  5f                             pop    rdi
2d9dd5  c3                             ret

; heuristic leaf/code range 0x2dd990..0x2dd9b3 unwind=0x0
2dd990  48 8b 51 08                    mov    rdx,QWORD PTR [rcx+0x8]
2dd994  48 b8 c5 4e ec c4 4e ec c4 4e  movabs rax,0x4ec4ec4ec4ec4ec5
2dd99e  48 2b 11                       sub    rdx,QWORD PTR [rcx]
2dd9a1  48 f7 ea                       imul   rdx
2dd9a4  48 c1 fa 05                    sar    rdx,0x5
2dd9a8  48 8b c2                       mov    rax,rdx
2dd9ab  48 c1 e8 3f                    shr    rax,0x3f
2dd9af  48 03 c2                       add    rax,rdx
2dd9b2  c3                             ret

; pdata function 0x2dd5e8..0x2dd633 unwind=0x3d253c
2dd5e8  48 83 ec 48                    sub    rsp,0x48
2dd5ec  48 8d 0d 1d b1 f3 ff           lea    rcx,[rip+0xfffffffffff3b11d]        # 0x218710
2dd5f3  e8 f4 01 ff ff                 call   0x2cd7ec
2dd5f8  48 8b c8                       mov    rcx,rax
2dd5fb  e8 d4 81 ff ff                 call   0x2d57d4
2dd600  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dd605  e8 f6 87 ff ff                 call   0x2d5e00
2dd60a  48 8b d0                       mov    rdx,rax
2dd60d  48 8d 0d bc 97 0f 00           lea    rcx,[rip+0xf97bc]        # 0x3d6dd0
2dd614  e8 6f 03 00 00                 call   0x2dd988
2dd619  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dd61e  e8 d1 ee fe ff                 call   0x2cc4f4
2dd623  48 8d 0d a6 97 0f 00           lea    rcx,[rip+0xf97a6]        # 0x3d6dd0
2dd62a  48 83 c4 48                    add    rsp,0x48
2dd62e  e9 35 ba ff ff                 jmp    0x2d9068

