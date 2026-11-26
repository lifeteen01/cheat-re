; heuristic leaf/code range 0x2d553c..0x2d554d unwind=0x0
2d553c  e9 5f 1a 00 00                 jmp    0x2d6fa0
2d5541  cc                             int3
2d5542  cc                             int3
2d5543  cc                             int3
2d5544  41 8b 00                       mov    eax,DWORD PTR [r8]
2d5547  39 02                          cmp    DWORD PTR [rdx],eax
2d5549  0f 94 c0                       sete   al
2d554c  c3                             ret

; pdata function 0x2cf0ec..0x2cf11c unwind=0x3d2040
2cf0ec  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2cf0f1  57                             push   rdi
2cf0f2  48 83 ec 20                    sub    rsp,0x20
2cf0f6  49 8b d8                       mov    rbx,r8
2cf0f9  48 8b fa                       mov    rdi,rdx
2cf0fc  e8 a3 c2 ff ff                 call   0x2cb3a4
2cf101  48 8b c8                       mov    rcx,rax
2cf104  4c 8b c3                       mov    r8,rbx
2cf107  48 8b d7                       mov    rdx,rdi
2cf10a  e8 35 64 00 00                 call   0x2d5544
2cf10f  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2cf114  34 01                          xor    al,0x1
2cf116  48 83 c4 20                    add    rsp,0x20
2cf11a  5f                             pop    rdi
2cf11b  c3                             ret

; heuristic leaf/code range 0x2dfd98..0x2dfdcb unwind=0x0
2dfd98  e9 db 2d 00 00                 jmp    0x2e2b78
2dfd9d  cc                             int3
2dfd9e  cc                             int3
2dfd9f  cc                             int3
2dfda0  48 8b ca                       mov    rcx,rdx
2dfda3  49 8b d0                       mov    rdx,r8
2dfda6  e9 85 f1 fe ff                 jmp    0x2cef30
2dfdab  cc                             int3
2dfdac  f3 0f 10 02                    movss  xmm0,DWORD PTR [rdx]
2dfdb0  48 8b c1                       mov    rax,rcx
2dfdb3  f3 0f 58 01                    addss  xmm0,DWORD PTR [rcx]
2dfdb7  f3 0f 11 01                    movss  DWORD PTR [rcx],xmm0
2dfdbb  f3 0f 10 4a 04                 movss  xmm1,DWORD PTR [rdx+0x4]
2dfdc0  f3 0f 58 49 04                 addss  xmm1,DWORD PTR [rcx+0x4]
2dfdc5  f3 0f 11 49 04                 movss  DWORD PTR [rcx+0x4],xmm1
2dfdca  c3                             ret

; pdata function 0x2dde9c..0x2ddecc unwind=0x3d2040
2dde9c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2ddea1  57                             push   rdi
2ddea2  48 83 ec 20                    sub    rsp,0x20
2ddea6  49 8b d8                       mov    rbx,r8
2ddea9  48 8b fa                       mov    rdi,rdx
2ddeac  e8 f3 d4 fe ff                 call   0x2cb3a4
2ddeb1  48 8b c8                       mov    rcx,rax
2ddeb4  4c 8b c3                       mov    r8,rbx
2ddeb7  48 8b d7                       mov    rdx,rdi
2ddeba  e8 e1 1e 00 00                 call   0x2dfda0
2ddebf  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2ddec4  34 01                          xor    al,0x1
2ddec6  48 83 c4 20                    add    rsp,0x20
2ddeca  5f                             pop    rdi
2ddecb  c3                             ret

; pdata function 0x2ed350..0x2ed39b unwind=0x3d2130
2ed350  40 53                          rex push rbx
2ed352  55                             push   rbp
2ed353  56                             push   rsi
2ed354  57                             push   rdi
2ed355  48 83 ec 28                    sub    rsp,0x28
2ed359  48 8b 4c 24 70                 mov    rcx,QWORD PTR [rsp+0x70]
2ed35e  49 8b d9                       mov    rbx,r9
2ed361  49 8b f0                       mov    rsi,r8
2ed364  48 8b ea                       mov    rbp,rdx
2ed367  e8 38 e0 fd ff                 call   0x2cb3a4
2ed36c  48 8b cb                       mov    rcx,rbx
2ed36f  48 8b f8                       mov    rdi,rax
2ed372  e8 2d e0 fd ff                 call   0x2cb3a4
2ed377  48 8b ce                       mov    rcx,rsi
2ed37a  48 8b d8                       mov    rbx,rax
2ed37d  e8 22 e0 fd ff                 call   0x2cb3a4
2ed382  48 8b d0                       mov    rdx,rax
2ed385  4c 8b cf                       mov    r9,rdi
2ed388  4c 8b c3                       mov    r8,rbx
2ed38b  48 8b cd                       mov    rcx,rbp
2ed38e  48 83 c4 28                    add    rsp,0x28
2ed392  5f                             pop    rdi
2ed393  5e                             pop    rsi
2ed394  5d                             pop    rbp
2ed395  5b                             pop    rbx
2ed396  e9 55 02 00 00                 jmp    0x2ed5f0

; pdata function 0x2deaa4..0x2deaef unwind=0x3d2130
2deaa4  40 53                          rex push rbx
2deaa6  55                             push   rbp
2deaa7  56                             push   rsi
2deaa8  57                             push   rdi
2deaa9  48 83 ec 28                    sub    rsp,0x28
2deaad  48 8b 4c 24 70                 mov    rcx,QWORD PTR [rsp+0x70]
2deab2  49 8b d9                       mov    rbx,r9
2deab5  49 8b f0                       mov    rsi,r8
2deab8  48 8b ea                       mov    rbp,rdx
2deabb  e8 e4 c8 fe ff                 call   0x2cb3a4
2deac0  48 8b cb                       mov    rcx,rbx
2deac3  48 8b f8                       mov    rdi,rax
2deac6  e8 d9 c8 fe ff                 call   0x2cb3a4
2deacb  48 8b ce                       mov    rcx,rsi
2deace  48 8b d8                       mov    rbx,rax
2dead1  e8 ce c8 fe ff                 call   0x2cb3a4
2dead6  48 8b d0                       mov    rdx,rax
2dead9  4c 8b cf                       mov    r9,rdi
2deadc  4c 8b c3                       mov    r8,rbx
2deadf  48 8b cd                       mov    rcx,rbp
2deae2  48 83 c4 28                    add    rsp,0x28
2deae6  5f                             pop    rdi
2deae7  5e                             pop    rsi
2deae8  5d                             pop    rbp
2deae9  5b                             pop    rbx
2deaea  e9 51 00 00 00                 jmp    0x2deb40

; pdata function 0x2d7328..0x2d73cb unwind=0x3d23dc
2d7328  4c 8b dc                       mov    r11,rsp
2d732b  49 89 5b 10                    mov    QWORD PTR [r11+0x10],rbx
2d732f  49 89 73 20                    mov    QWORD PTR [r11+0x20],rsi
2d7333  4d 89 43 18                    mov    QWORD PTR [r11+0x18],r8
2d7337  57                             push   rdi
2d7338  48 83 ec 20                    sub    rsp,0x20
2d733c  49 8b 40 08                    mov    rax,QWORD PTR [r8+0x8]
2d7340  48 8b da                       mov    rbx,rdx
2d7343  48 ff 41 10                    inc    QWORD PTR [rcx+0x10]
2d7347  49 8d 53 18                    lea    rdx,[r11+0x18]
2d734b  48 8b f9                       mov    rdi,rcx
2d734e  49 89 43 08                    mov    QWORD PTR [r11+0x8],rax
2d7352  49 8b c9                       mov    rcx,r9
2d7355  49 8b f1                       mov    rsi,r9
2d7358  e8 97 3f ff ff                 call   0x2cb2f4
2d735d  48 8d 4e 08                    lea    rcx,[rsi+0x8]
2d7361  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2d7366  e8 89 3f ff ff                 call   0x2cb2f4
2d736b  48 8b 44 24 30                 mov    rax,QWORD PTR [rsp+0x30]
2d7370  48 89 30                       mov    QWORD PTR [rax],rsi
2d7373  48 8b 44 24 40                 mov    rax,QWORD PTR [rsp+0x40]
2d7378  48 89 70 08                    mov    QWORD PTR [rax+0x8],rsi
2d737c  48 8b 4f 30                    mov    rcx,QWORD PTR [rdi+0x30]
2d7380  48 8b 57 18                    mov    rdx,QWORD PTR [rdi+0x18]
2d7384  48 23 cb                       and    rcx,rbx
2d7387  48 03 c9                       add    rcx,rcx
2d738a  48 8b 04 ca                    mov    rax,QWORD PTR [rdx+rcx*8]
2d738e  48 3b 47 08                    cmp    rax,QWORD PTR [rdi+0x8]
2d7392  75 06                          jne    0x2d739a
2d7394  48 89 34 ca                    mov    QWORD PTR [rdx+rcx*8],rsi
2d7398  eb 19                          jmp    0x2d73b3
2d739a  48 3b 44 24 40                 cmp    rax,QWORD PTR [rsp+0x40]
2d739f  75 06                          jne    0x2d73a7
2d73a1  48 89 34 ca                    mov    QWORD PTR [rdx+rcx*8],rsi
2d73a5  eb 11                          jmp    0x2d73b8
2d73a7  48 8b 44 24 30                 mov    rax,QWORD PTR [rsp+0x30]
2d73ac  48 39 44 ca 08                 cmp    QWORD PTR [rdx+rcx*8+0x8],rax
2d73b1  75 05                          jne    0x2d73b8
2d73b3  48 89 74 ca 08                 mov    QWORD PTR [rdx+rcx*8+0x8],rsi
2d73b8  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
2d73bd  48 8b c6                       mov    rax,rsi
2d73c0  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
2d73c5  48 83 c4 20                    add    rsp,0x20
2d73c9  5f                             pop    rdi
2d73ca  c3                             ret

; heuristic leaf/code range 0x2d8694..0x2d869d unwind=0x0
2d8694  48 83 79 10 00                 cmp    QWORD PTR [rcx+0x10],0x0
2d8699  0f 94 c0                       sete   al
2d869c  c3                             ret

; pdata function 0x2d8728..0x2d877b unwind=0x3d2054
2d8728  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d872d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d8732  57                             push   rdi
2d8733  48 83 ec 20                    sub    rsp,0x20
2d8737  48 8b f2                       mov    rsi,rdx
2d873a  48 8b f9                       mov    rdi,rcx
2d873d  e8 9a ee ff ff                 call   0x2d75dc
2d8742  48 8b c8                       mov    rcx,rax
2d8745  e8 5a 2c ff ff                 call   0x2cb3a4
2d874a  4c 8b 47 10                    mov    r8,QWORD PTR [rdi+0x10]
2d874e  48 8b cf                       mov    rcx,rdi
2d8751  4a 8d 1c 40                    lea    rbx,[rax+r8*2]
2d8755  e8 4a 2c ff ff                 call   0x2cb3a4
2d875a  4c 8b c0                       mov    r8,rax
2d875d  48 8b d3                       mov    rdx,rbx
2d8760  48 8b ce                       mov    rcx,rsi
2d8763  e8 78 b8 ff ff                 call   0x2d3fe0
2d8768  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d876d  48 8b c6                       mov    rax,rsi
2d8770  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d8775  48 83 c4 20                    add    rsp,0x20
2d8779  5f                             pop    rdi
2d877a  c3                             ret

; pdata function 0x2d7d40..0x2d7d8e unwind=0x3d2054
2d7d40  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d7d45  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d7d4a  57                             push   rdi
2d7d4b  48 83 ec 20                    sub    rsp,0x20
2d7d4f  48 8b f2                       mov    rsi,rdx
2d7d52  48 8b f9                       mov    rdi,rcx
2d7d55  e8 82 f8 ff ff                 call   0x2d75dc
2d7d5a  48 8b c8                       mov    rcx,rax
2d7d5d  e8 42 36 ff ff                 call   0x2cb3a4
2d7d62  48 8b cf                       mov    rcx,rdi
2d7d65  48 8b d8                       mov    rbx,rax
2d7d68  e8 37 36 ff ff                 call   0x2cb3a4
2d7d6d  4c 8b c0                       mov    r8,rax
2d7d70  48 8b d3                       mov    rdx,rbx
2d7d73  48 8b ce                       mov    rcx,rsi
2d7d76  e8 65 c2 ff ff                 call   0x2d3fe0
2d7d7b  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d7d80  48 8b c6                       mov    rax,rsi
2d7d83  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d7d88  48 83 c4 20                    add    rsp,0x20
2d7d8c  5f                             pop    rdi
2d7d8d  c3                             ret

; pdata function 0x2cf304..0x2cf3f0 unwind=0x3d2674
2cf304  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2cf309  55                             push   rbp
2cf30a  56                             push   rsi
2cf30b  57                             push   rdi
2cf30c  48 83 ec 20                    sub    rsp,0x20
2cf310  49 8b d8                       mov    rbx,r8
2cf313  48 8b ea                       mov    rbp,rdx
2cf316  48 8b f9                       mov    rdi,rcx
2cf319  e8 56 98 00 00                 call   0x2d8b74
2cf31e  48 3b d8                       cmp    rbx,rax
2cf321  0f 87 c3 00 00 00              ja     0x2cf3ea
2cf327  48 8d 34 1b                    lea    rsi,[rbx+rbx*1]
2cf32b  48 8b cf                       mov    rcx,rdi
2cf32e  48 83 fb 07                    cmp    rbx,0x7
2cf332  77 24                          ja     0x2cf358
2cf334  4c 8b c3                       mov    r8,rbx
2cf337  48 89 5f 10                    mov    QWORD PTR [rdi+0x10],rbx
2cf33b  48 8b d5                       mov    rdx,rbp
2cf33e  48 c7 47 18 07 00 00 00        mov    QWORD PTR [rdi+0x18],0x7
2cf346  e8 35 26 00 00                 call   0x2d1980
2cf34b  33 c0                          xor    eax,eax
2cf34d  48 8d 0c 3e                    lea    rcx,[rsi+rdi*1]
2cf351  66 89 44 24 40                 mov    WORD PTR [rsp+0x40],ax
2cf356  eb 7b                          jmp    0x2cf3d3
2cf358  e8 17 98 00 00                 call   0x2d8b74
2cf35d  4c 8b c0                       mov    r8,rax
2cf360  ba 07 00 00 00                 mov    edx,0x7
2cf365  48 8b cb                       mov    rcx,rbx
2cf368  e8 73 76 00 00                 call   0x2d69e0
2cf36d  48 8b cf                       mov    rcx,rdi
2cf370  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
2cf375  e8 aa df ff ff                 call   0x2cd324
2cf37a  48 8b c8                       mov    rcx,rax
2cf37d  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2cf382  e8 bd fd ff ff                 call   0x2cf144
2cf387  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2cf38c  48 89 44 24 50                 mov    QWORD PTR [rsp+0x50],rax
2cf391  48 8b cf                       mov    rcx,rdi
2cf394  e8 5b bf ff ff                 call   0x2cb2f4
2cf399  48 8b 44 24 40                 mov    rax,QWORD PTR [rsp+0x40]
2cf39e  48 8b 4c 24 50                 mov    rcx,QWORD PTR [rsp+0x50]
2cf3a3  48 89 47 18                    mov    QWORD PTR [rdi+0x18],rax
2cf3a7  48 89 5f 10                    mov    QWORD PTR [rdi+0x10],rbx
2cf3ab  e8 f4 bf ff ff                 call   0x2cb3a4
2cf3b0  48 8b c8                       mov    rcx,rax
2cf3b3  4c 8b c3                       mov    r8,rbx
2cf3b6  48 8b d5                       mov    rdx,rbp
2cf3b9  e8 c2 25 00 00                 call   0x2d1980
2cf3be  48 8b 4c 24 50                 mov    rcx,QWORD PTR [rsp+0x50]
2cf3c3  33 c0                          xor    eax,eax
2cf3c5  66 89 44 24 40                 mov    WORD PTR [rsp+0x40],ax
2cf3ca  e8 d5 bf ff ff                 call   0x2cb3a4
2cf3cf  48 8d 0c 06                    lea    rcx,[rsi+rax*1]
2cf3d3  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2cf3d8  e8 cb 88 00 00                 call   0x2d7ca8
2cf3dd  48 8b 5c 24 48                 mov    rbx,QWORD PTR [rsp+0x48]
2cf3e2  48 83 c4 20                    add    rsp,0x20
2cf3e6  5f                             pop    rdi
2cf3e7  5e                             pop    rsi
2cf3e8  5d                             pop    rbp
2cf3e9  c3                             ret
2cf3ea  e8 3d e3 ff ff                 call   0x2cd72c
2cf3ef  cc                             int3

; pdata function 0x2cf59c..0x2cf65e unwind=0x3d2684
2cf59c  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2cf5a1  53                             push   rbx
2cf5a2  56                             push   rsi
2cf5a3  57                             push   rdi
2cf5a4  48 83 ec 20                    sub    rsp,0x20
2cf5a8  49 8b f1                       mov    rsi,r9
2cf5ab  48 c7 41 10 00 00 00 00        mov    QWORD PTR [rcx+0x10],0x0
2cf5b3  48 8b f9                       mov    rdi,rcx
2cf5b6  48 c7 41 18 0f 00 00 00        mov    QWORD PTR [rcx+0x18],0xf
2cf5be  e8 65 f0 ff ff                 call   0x2ce628
2cf5c3  48 3b f0                       cmp    rsi,rax
2cf5c6  0f 87 8c 00 00 00              ja     0x2cf658
2cf5cc  48 83 fe 0f                    cmp    rsi,0xf
2cf5d0  76 40                          jbe    0x2cf612
2cf5d2  48 8b d6                       mov    rdx,rsi
2cf5d5  48 8b cf                       mov    rcx,rdi
2cf5d8  e8 b7 d9 ff ff                 call   0x2ccf94
2cf5dd  48 8b cf                       mov    rcx,rdi
2cf5e0  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
2cf5e5  e8 3a dd ff ff                 call   0x2cd324
2cf5ea  48 8b c8                       mov    rcx,rax
2cf5ed  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2cf5f2  e8 a5 ba ff ff                 call   0x2cb09c
2cf5f7  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
2cf5fc  48 89 44 24 58                 mov    QWORD PTR [rsp+0x58],rax
2cf601  48 8b cf                       mov    rcx,rdi
2cf604  e8 eb bc ff ff                 call   0x2cb2f4
2cf609  48 8b 44 24 40                 mov    rax,QWORD PTR [rsp+0x40]
2cf60e  48 89 47 18                    mov    QWORD PTR [rdi+0x18],rax
2cf612  48 8b cf                       mov    rcx,rdi
2cf615  e8 ca de ff ff                 call   0x2cd4e4
2cf61a  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2cf61f  48 8b d8                       mov    rbx,rax
2cf622  e8 7d bd ff ff                 call   0x2cb3a4
2cf627  4c 8b c3                       mov    r8,rbx
2cf62a  48 8b d6                       mov    rdx,rsi
2cf62d  48 8b 08                       mov    rcx,QWORD PTR [rax]
2cf630  e8 af 01 00 00                 call   0x2cf7e4
2cf635  48 89 77 10                    mov    QWORD PTR [rdi+0x10],rsi
2cf639  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2cf63e  c6 04 33 00                    mov    BYTE PTR [rbx+rsi*1],0x0
2cf642  48 c7 44 24 40 00 00 00 00     mov    QWORD PTR [rsp+0x40],0x0
2cf64b  e8 b0 53 00 00                 call   0x2d4a00
2cf650  48 83 c4 20                    add    rsp,0x20
2cf654  5f                             pop    rdi
2cf655  5e                             pop    rsi
2cf656  5b                             pop    rbx
2cf657  c3                             ret
2cf658  e8 cf e0 ff ff                 call   0x2cd72c
2cf65d  cc                             int3

; pdata function 0x31937c..0x3193a4 unwind=0x3d2038
31937c  40 53                          rex push rbx
31937e  48 83 ec 20                    sub    rsp,0x20
319382  48 8b d9                       mov    rbx,rcx
319385  48 c7 41 08 00 00 00 00        mov    QWORD PTR [rcx+0x8],0x0
31938d  48 8b 09                       mov    rcx,QWORD PTR [rcx]
319390  ba 01 00 00 00                 mov    edx,0x1
319395  e8 ea 14 00 00                 call   0x31a884
31939a  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
31939e  48 83 c4 20                    add    rsp,0x20
3193a2  5b                             pop    rbx
3193a3  c3                             ret

; pdata function 0x2e28a0..0x2e28c8 unwind=0x3d2038
2e28a0  40 53                          rex push rbx
2e28a2  48 83 ec 20                    sub    rsp,0x20
2e28a6  48 8b d9                       mov    rbx,rcx
2e28a9  48 c7 41 08 00 00 00 00        mov    QWORD PTR [rcx+0x8],0x0
2e28b1  48 8b 09                       mov    rcx,QWORD PTR [rcx]
2e28b4  ba 01 00 00 00                 mov    edx,0x1
2e28b9  e8 d6 09 00 00                 call   0x2e3294
2e28be  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
2e28c2  48 83 c4 20                    add    rsp,0x20
2e28c6  5b                             pop    rbx
2e28c7  c3                             ret

; pdata function 0x2d6d44..0x2d6dce unwind=0x3d23ec
2d6d44  40 53                          rex push rbx
2d6d46  48 83 ec 40                    sub    rsp,0x40
2d6d4a  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
2d6d4f  48 8b d9                       mov    rbx,rcx
2d6d52  0f 29 7c 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm7
2d6d57  e8 84 1d 00 00                 call   0x2d8ae0
2d6d5c  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2d6d60  0f 28 f8                       movaps xmm7,xmm0
2d6d63  48 83 c2 01                    add    rdx,0x1
2d6d67  0f 57 f6                       xorps  xmm6,xmm6
2d6d6a  78 07                          js     0x2d6d73
2d6d6c  f3 48 0f 2a f2                 cvtsi2ss xmm6,rdx
2d6d71  eb 15                          jmp    0x2d6d88
2d6d73  48 8b c2                       mov    rax,rdx
2d6d76  83 e2 01                       and    edx,0x1
2d6d79  48 d1 e8                       shr    rax,1
2d6d7c  48 0b c2                       or     rax,rdx
2d6d7f  f3 48 0f 2a f0                 cvtsi2ss xmm6,rax
2d6d84  f3 0f 58 f6                    addss  xmm6,xmm6
2d6d88  48 8b cb                       mov    rcx,rbx
2d6d8b  e8 80 10 00 00                 call   0x2d7e10
2d6d90  48 8b c8                       mov    rcx,rax
2d6d93  0f 57 c0                       xorps  xmm0,xmm0
2d6d96  48 85 c0                       test   rax,rax
2d6d99  78 07                          js     0x2d6da2
2d6d9b  f3 48 0f 2a c0                 cvtsi2ss xmm0,rax
2d6da0  eb 12                          jmp    0x2d6db4
2d6da2  48 d1 e8                       shr    rax,1
2d6da5  83 e1 01                       and    ecx,0x1
2d6da8  48 0b c1                       or     rax,rcx
2d6dab  f3 48 0f 2a c0                 cvtsi2ss xmm0,rax
2d6db0  f3 0f 58 c0                    addss  xmm0,xmm0
2d6db4  f3 0f 5e f0                    divss  xmm6,xmm0
2d6db8  0f 2f f7                       comiss xmm6,xmm7
2d6dbb  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
2d6dc0  0f 28 7c 24 20                 movaps xmm7,XMMWORD PTR [rsp+0x20]
2d6dc5  0f 97 c0                       seta   al
2d6dc8  48 83 c4 40                    add    rsp,0x40
2d6dcc  5b                             pop    rbx
2d6dcd  c3                             ret

