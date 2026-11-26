; heuristic leaf/code range 0x2dd988..0x2dd9b3 unwind=0x0
2dd988  e9 97 72 ff ff                 jmp    0x2d4c24
2dd98d  cc                             int3
2dd98e  cc                             int3
2dd98f  cc                             int3
2dd990  48 8b 51 08                    mov    rdx,QWORD PTR [rcx+0x8]
2dd994  48 b8 c5 4e ec c4 4e ec c4 4e  movabs rax,0x4ec4ec4ec4ec4ec5
2dd99e  48 2b 11                       sub    rdx,QWORD PTR [rcx]
2dd9a1  48 f7 ea                       imul   rdx
2dd9a4  48 c1 fa 05                    sar    rdx,0x5
2dd9a8  48 8b c2                       mov    rax,rdx
2dd9ab  48 c1 e8 3f                    shr    rax,0x3f
2dd9af  48 03 c2                       add    rax,rdx
2dd9b2  c3                             ret

; pdata function 0x2d9068..0x2d90da unwind=0x3d2040
2d9068  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d906d  57                             push   rdi
2d906e  48 83 ec 20                    sub    rsp,0x20
2d9072  48 8b d9                       mov    rbx,rcx
2d9075  e8 72 47 ff ff                 call   0x2cd7ec
2d907a  48 8b c8                       mov    rcx,rax
2d907d  e8 62 cb ff ff                 call   0x2d5be4
2d9082  84 c0                          test   al,al
2d9084  74 49                          je     0x2d90cf
2d9086  48 8b cb                       mov    rcx,rbx
2d9089  e8 5e 47 ff ff                 call   0x2cd7ec
2d908e  48 8b c8                       mov    rcx,rax
2d9091  e8 1e d1 ff ff                 call   0x2d61b4
2d9096  48 8b f8                       mov    rdi,rax
2d9099  48 85 c0                       test   rax,rax
2d909c  74 31                          je     0x2d90cf
2d909e  48 8b c8                       mov    rcx,rax
2d90a1  e8 5e 7e ff ff                 call   0x2d0f04
2d90a6  4c 8b 47 18                    mov    r8,QWORD PTR [rdi+0x18]
2d90aa  48 8d 4b 20                    lea    rcx,[rbx+0x20]
2d90ae  4c 03 c0                       add    r8,rax
2d90b1  48 8b d0                       mov    rdx,rax
2d90b4  e8 f7 8e ff ff                 call   0x2d1fb0
2d90b9  48 8b cb                       mov    rcx,rbx
2d90bc  e8 83 fd ff ff                 call   0x2d8e44
2d90c1  48 8b cb                       mov    rcx,rbx
2d90c4  e8 eb f8 ff ff                 call   0x2d89b4
2d90c9  89 83 80 00 00 00              mov    DWORD PTR [rbx+0x80],eax
2d90cf  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d90d4  48 83 c4 20                    add    rsp,0x20
2d90d8  5f                             pop    rdi
2d90d9  c3                             ret

; pdata function 0x2d4930..0x2d4991 unwind=0x3d2040
2d4930  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d4935  57                             push   rdi
2d4936  48 83 ec 20                    sub    rsp,0x20
2d493a  48 8b da                       mov    rbx,rdx
2d493d  48 8b f9                       mov    rdi,rcx
2d4940  e8 1b fc ff ff                 call   0x2d4560
2d4945  48 8d 4f 20                    lea    rcx,[rdi+0x20]
2d4949  e8 12 fc ff ff                 call   0x2d4560
2d494e  48 8d 4f 40                    lea    rcx,[rdi+0x40]
2d4952  e8 05 fd ff ff                 call   0x2d465c
2d4957  48 8b d3                       mov    rdx,rbx
2d495a  c7 87 80 00 00 00 00 00 00 00  mov    DWORD PTR [rdi+0x80],0x0
2d4964  48 8b cf                       mov    rcx,rdi
2d4967  c6 87 84 00 00 00 00           mov    BYTE PTR [rdi+0x84],0x0
2d496e  e8 b1 02 00 00                 call   0x2d4c24
2d4973  48 8b cf                       mov    rcx,rdi
2d4976  e8 ed 46 00 00                 call   0x2d9068
2d497b  48 8b cb                       mov    rcx,rbx
2d497e  e8 71 7b ff ff                 call   0x2cc4f4
2d4983  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d4988  48 8b c7                       mov    rax,rdi
2d498b  48 83 c4 20                    add    rsp,0x20
2d498f  5f                             pop    rdi
2d4990  c3                             ret

; pdata function 0x2db894..0x2db8e9 unwind=0x3d2040
2db894  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2db899  57                             push   rdi
2db89a  48 83 ec 20                    sub    rsp,0x20
2db89e  48 8b da                       mov    rbx,rdx
2db8a1  48 8b f9                       mov    rdi,rcx
2db8a4  e8 3b 93 ff ff                 call   0x2d4be4
2db8a9  48 8d 53 20                    lea    rdx,[rbx+0x20]
2db8ad  48 8d 4f 20                    lea    rcx,[rdi+0x20]
2db8b1  e8 2e 93 ff ff                 call   0x2d4be4
2db8b6  48 8d 53 40                    lea    rdx,[rbx+0x40]
2db8ba  48 8d 4f 40                    lea    rcx,[rdi+0x40]
2db8be  e8 0d fe ff ff                 call   0x2db6d0
2db8c3  8b 83 80 00 00 00              mov    eax,DWORD PTR [rbx+0x80]
2db8c9  89 87 80 00 00 00              mov    DWORD PTR [rdi+0x80],eax
2db8cf  8a 83 84 00 00 00              mov    al,BYTE PTR [rbx+0x84]
2db8d5  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2db8da  88 87 84 00 00 00              mov    BYTE PTR [rdi+0x84],al
2db8e0  48 8b c7                       mov    rax,rdi
2db8e3  48 83 c4 20                    add    rsp,0x20
2db8e7  5f                             pop    rdi
2db8e8  c3                             ret

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

; heuristic leaf/code range 0x2dd5e0..0x2dd5e8 unwind=0x0
2dd5e0  e9 af c7 ff ff                 jmp    0x2d9d94
2dd5e5  cc                             int3
2dd5e6  cc                             int3
2dd5e7  cc                             int3

