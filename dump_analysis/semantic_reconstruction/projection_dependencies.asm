; pdata function 0x36c3d4..0x36c47e unwind=0x3d225c
36c3d4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36c3d9  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
36c3de  57                             push   rdi
36c3df  48 83 ec 30                    sub    rsp,0x30
36c3e3  8b 05 37 3a 09 00              mov    eax,DWORD PTR [rip+0x93a37]        # 0x3ffe20
36c3e9  49 8b f8                       mov    rdi,r8
36c3ec  48 8b da                       mov    rbx,rdx
36c3ef  48 8b f1                       mov    rsi,rcx
36c3f2  a8 01                          test   al,0x1
36c3f4  75 25                          jne    0x36c41b
36c3f6  83 c8 01                       or     eax,0x1
36c3f9  b9 32 db 7e 38                 mov    ecx,0x387edb32
36c3fe  89 05 1c 3a 09 00              mov    DWORD PTR [rip+0x93a1c],eax        # 0x3ffe20
36c404  e8 07 79 fc ff                 call   0x333d10
36c409  4c 8b 00                       mov    r8,QWORD PTR [rax]
36c40c  8b 05 0e 3a 09 00              mov    eax,DWORD PTR [rip+0x93a0e]        # 0x3ffe20
36c412  4c 89 05 ff 39 09 00           mov    QWORD PTR [rip+0x939ff],r8        # 0x3ffe18
36c419  eb 07                          jmp    0x36c422
36c41b  4c 8b 05 f6 39 09 00           mov    r8,QWORD PTR [rip+0x939f6]        # 0x3ffe18
36c422  a8 02                          test   al,0x2
36c424  75 1f                          jne    0x36c445
36c426  48 8b 0d 33 9a 06 00           mov    rcx,QWORD PTR [rip+0x69a33]        # 0x3d5e60
36c42d  48 8d 15 fc 39 09 00           lea    rdx,[rip+0x939fc]        # 0x3ffe30
36c434  83 c8 02                       or     eax,0x2
36c437  45 33 c9                       xor    r9d,r9d
36c43a  89 05 e0 39 09 00              mov    DWORD PTR [rip+0x939e0],eax        # 0x3ffe20
36c440  e8 df f8 f5 ff                 call   0x2cbd24
36c445  48 8b cb                       mov    rcx,rbx
36c448  e8 6f b7 05 00                 call   0x3c7bbc
36c44d  48 8b 0d 0c 9a 06 00           mov    rcx,QWORD PTR [rip+0x69a0c]        # 0x3d5e60
36c454  48 8d 15 d5 39 09 00           lea    rdx,[rip+0x939d5]        # 0x3ffe30
36c45b  4c 8b ce                       mov    r9,rsi
36c45e  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
36c463  4c 8b c3                       mov    r8,rbx
36c466  e8 e5 f5 f5 ff                 call   0x2cba50
36c46b  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
36c470  48 8b c3                       mov    rax,rbx
36c473  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
36c478  48 83 c4 30                    add    rsp,0x30
36c47c  5f                             pop    rdi
36c47d  c3                             ret

; heuristic leaf/code range 0x36c638..0x36c66b unwind=0x0
36c638  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
36c63c  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
36c640  0f 2f c8                       comiss xmm1,xmm0
36c643  72 26                          jb     0x36c66b
36c645  f3 0f 58 41 08                 addss  xmm0,DWORD PTR [rcx+0x8]
36c64a  0f 2f c1                       comiss xmm0,xmm1
36c64d  76 1c                          jbe    0x36c66b
36c64f  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
36c654  f3 0f 10 4a 04                 movss  xmm1,DWORD PTR [rdx+0x4]
36c659  0f 2f c8                       comiss xmm1,xmm0
36c65c  72 0d                          jb     0x36c66b
36c65e  f3 0f 58 41 0c                 addss  xmm0,DWORD PTR [rcx+0xc]
36c663  0f 2f c1                       comiss xmm0,xmm1
36c666  76 03                          jbe    0x36c66b
36c668  b0 01                          mov    al,0x1
36c66a  c3                             ret

; heuristic leaf/code range 0x36c480..0x36c48c unwind=0x0
36c480  48 85 c9                       test   rcx,rcx
36c483  74 07                          je     0x36c48c
36c485  48 63 c2                       movsxd rax,edx
36c488  48 03 c1                       add    rax,rcx
36c48b  c3                             ret

; heuristic leaf/code range 0x320cd0..0x320cf6 unwind=0x0
320cd0  f3 0f 10 0d 68 25 f7 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff72568]        # 0x293240 ; f32=360
320cd8  eb 08                          jmp    0x320ce2
320cda  f3 0f 58 05 8e 25 f7 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff7258e]        # 0x293270 ; f32=-360
320ce2  0f 2f c1                       comiss xmm0,xmm1
320ce5  77 f3                          ja     0x320cda
320ce7  0f 57 d2                       xorps  xmm2,xmm2
320cea  eb 04                          jmp    0x320cf0
320cec  f3 0f 58 c1                    addss  xmm0,xmm1
320cf0  0f 2f d0                       comiss xmm2,xmm0
320cf3  77 f7                          ja     0x320cec
320cf5  c3                             ret

