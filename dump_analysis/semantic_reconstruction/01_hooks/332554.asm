; pdata function 0x332554..0x33263b unwind=0x3d2040
332554  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
332559  57                             push   rdi
33255a  48 83 ec 20                    sub    rsp,0x20
33255e  33 c0                          xor    eax,eax
332560  48 8b d9                       mov    rbx,rcx
332563  38 05 9f 71 0c 00              cmp    BYTE PTR [rip+0xc719f],al        # 0x3f9708 ; CONFIG Bools.NoWaterBlur value(+0x48)
332569  74 24                          je     0x33258f
33256b  88 41 68                       mov    BYTE PTR [rcx+0x68],al
33256e  88 81 e8 00 00 00              mov    BYTE PTR [rcx+0xe8],al
332574  88 41 48                       mov    BYTE PTR [rcx+0x48],al
332577  88 81 88 00 00 00              mov    BYTE PTR [rcx+0x88],al
33257d  88 81 a8 00 00 00              mov    BYTE PTR [rcx+0xa8],al
332583  88 81 08 01 00 00              mov    BYTE PTR [rcx+0x108],al
332589  88 81 c8 00 00 00              mov    BYTE PTR [rcx+0xc8],al
33258f  38 05 c3 71 0c 00              cmp    BYTE PTR [rip+0xc71c3],al        # 0x3f9758 ; CONFIG Bools.water value(+0x48)
332595  74 2b                          je     0x3325c2
332597  48 89 41 60                    mov    QWORD PTR [rcx+0x60],rax
33259b  48 89 81 e0 00 00 00           mov    QWORD PTR [rcx+0xe0],rax
3325a2  48 89 41 40                    mov    QWORD PTR [rcx+0x40],rax
3325a6  48 89 81 80 00 00 00           mov    QWORD PTR [rcx+0x80],rax
3325ad  48 89 81 a0 00 00 00           mov    QWORD PTR [rcx+0xa0],rax
3325b4  48 89 81 00 01 00 00           mov    QWORD PTR [rcx+0x100],rax
3325bb  48 89 81 c0 00 00 00           mov    QWORD PTR [rcx+0xc0],rax
3325c2  8b 3d a0 71 0c 00              mov    edi,DWORD PTR [rip+0xc71a0]        # 0x3f9768
3325c8  40 f6 c7 01                    test   dil,0x1
3325cc  75 1e                          jne    0x3325ec
3325ce  83 cf 01                       or     edi,0x1
3325d1  48 8d 0d f0 41 0b 00           lea    rcx,[rip+0xb41f0]        # 0x3e67c8
3325d8  89 3d 8a 71 0c 00              mov    DWORD PTR [rip+0xc718a],edi        # 0x3f9768
3325de  e8 f5 bf f9 ff                 call   0x2ce5d8
3325e3  48 89 05 76 71 0c 00           mov    QWORD PTR [rip+0xc7176],rax        # 0x3f9760
3325ea  eb 07                          jmp    0x3325f3
3325ec  48 8b 05 6d 71 0c 00           mov    rax,QWORD PTR [rip+0xc716d]        # 0x3f9760
3325f3  40 f6 c7 02                    test   dil,0x2
3325f7  75 22                          jne    0x33261b
3325f9  48 8b 0d 60 38 0a 00           mov    rcx,QWORD PTR [rip+0xa3860]        # 0x3d5e60
332600  48 8d 15 69 71 0c 00           lea    rdx,[rip+0xc7169]        # 0x3f9770
332607  83 cf 02                       or     edi,0x2
33260a  45 33 c9                       xor    r9d,r9d
33260d  4c 8b c0                       mov    r8,rax
332610  89 3d 52 71 0c 00              mov    DWORD PTR [rip+0xc7152],edi        # 0x3f9768
332616  e8 09 97 f9 ff                 call   0x2cbd24
33261b  48 8b 0d 3e 38 0a 00           mov    rcx,QWORD PTR [rip+0xa383e]        # 0x3d5e60
332622  48 8d 15 47 71 0c 00           lea    rdx,[rip+0xc7147]        # 0x3f9770
332629  4c 8b c3                       mov    r8,rbx
33262c  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
332631  48 83 c4 20                    add    rsp,0x20
332635  5f                             pop    rdi
332636  e9 c1 93 f9 ff                 jmp    0x2cb9fc
