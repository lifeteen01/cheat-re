; pdata function 0x3af774..0x3af812 unwind=0x3d225c
3af774  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3af779  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3af77e  57                             push   rdi
3af77f  48 83 ec 30                    sub    rsp,0x30
3af783  8b 05 67 f4 05 00              mov    eax,DWORD PTR [rip+0x5f467]        # 0x40ebf0
3af789  49 8b d8                       mov    rbx,r8
3af78c  8b fa                          mov    edi,edx
3af78e  48 8b f1                       mov    rsi,rcx
3af791  a8 01                          test   al,0x1
3af793  75 25                          jne    0x3af7ba
3af795  83 c8 01                       or     eax,0x1
3af798  b9 82 a6 93 cc                 mov    ecx,0xcc93a682
3af79d  89 05 4d f4 05 00              mov    DWORD PTR [rip+0x5f44d],eax        # 0x40ebf0
3af7a3  e8 68 45 f8 ff                 call   0x333d10
3af7a8  4c 8b 00                       mov    r8,QWORD PTR [rax]
3af7ab  8b 05 3f f4 05 00              mov    eax,DWORD PTR [rip+0x5f43f]        # 0x40ebf0
3af7b1  4c 89 05 30 f4 05 00           mov    QWORD PTR [rip+0x5f430],r8        # 0x40ebe8
3af7b8  eb 07                          jmp    0x3af7c1
3af7ba  4c 8b 05 27 f4 05 00           mov    r8,QWORD PTR [rip+0x5f427]        # 0x40ebe8
3af7c1  a8 02                          test   al,0x2
3af7c3  75 1f                          jne    0x3af7e4
3af7c5  48 8b 0d 94 66 02 00           mov    rcx,QWORD PTR [rip+0x26694]        # 0x3d5e60
3af7cc  48 8d 15 2d f4 05 00           lea    rdx,[rip+0x5f42d]        # 0x40ec00
3af7d3  83 c8 02                       or     eax,0x2
3af7d6  45 33 c9                       xor    r9d,r9d
3af7d9  89 05 11 f4 05 00              mov    DWORD PTR [rip+0x5f411],eax        # 0x40ebf0
3af7df  e8 40 c5 f1 ff                 call   0x2cbd24
3af7e4  48 8b 0d 75 66 02 00           mov    rcx,QWORD PTR [rip+0x26675]        # 0x3d5e60
3af7eb  48 8d 15 0e f4 05 00           lea    rdx,[rip+0x5f40e]        # 0x40ec00
3af7f2  44 8b cf                       mov    r9d,edi
3af7f5  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3af7fa  4c 8b c6                       mov    r8,rsi
3af7fd  e8 76 06 00 00                 call   0x3afe78
3af802  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
3af807  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
3af80c  48 83 c4 30                    add    rsp,0x30
3af810  5f                             pop    rdi
3af811  c3                             ret
