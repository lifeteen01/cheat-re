; pdata function 0x2eaa28..0x2eaac0 unwind=0x3d2130
2eaa28  40 53                          rex push rbx
2eaa2a  55                             push   rbp
2eaa2b  56                             push   rsi
2eaa2c  57                             push   rdi
2eaa2d  48 83 ec 28                    sub    rsp,0x28
2eaa31  49 8b d9                       mov    rbx,r9
2eaa34  49 8b f0                       mov    rsi,r8
2eaa37  48 8b ea                       mov    rbp,rdx
2eaa3a  48 8b f9                       mov    rdi,rcx
2eaa3d  e8 ba ba 02 00                 call   0x3164fc
2eaa42  84 c0                          test   al,al
2eaa44  74 04                          je     0x2eaa4a
2eaa46  b0 01                          mov    al,0x1
2eaa48  eb 5a                          jmp    0x2eaaa4
2eaa4a  48 8b d3                       mov    rdx,rbx
2eaa4d  48 8b cd                       mov    rcx,rbp
2eaa50  e8 cf 97 04 00                 call   0x334224
2eaa55  48 8b d8                       mov    rbx,rax
2eaa58  48 85 c0                       test   rax,rax
2eaa5b  74 45                          je     0x2eaaa2
2eaa5d  48 8b 90 d8 01 00 00           mov    rdx,QWORD PTR [rax+0x1d8]
2eaa64  48 85 d2                       test   rdx,rdx
2eaa67  74 39                          je     0x2eaaa2
2eaa69  48 8b c8                       mov    rcx,rax
2eaa6c  e8 ef 9e 04 00                 call   0x334960
2eaa71  48 8b c8                       mov    rcx,rax
2eaa74  48 85 c0                       test   rax,rax
2eaa77  74 29                          je     0x2eaaa2
2eaa79  48 83 38 00                    cmp    QWORD PTR [rax],0x0
2eaa7d  74 23                          je     0x2eaaa2
2eaa7f  48 39 30                       cmp    QWORD PTR [rax],rsi
2eaa82  74 1e                          je     0x2eaaa2
2eaa84  48 8d 93 00 15 00 00           lea    rdx,[rbx+0x1500]
2eaa8b  eb 10                          jmp    0x2eaa9d
2eaa8d  48 8b 03                       mov    rax,QWORD PTR [rbx]
2eaa90  48 85 c0                       test   rax,rax
2eaa93  74 05                          je     0x2eaa9a
2eaa95  48 3b 01                       cmp    rax,QWORD PTR [rcx]
2eaa98  74 13                          je     0x2eaaad
2eaa9a  48 ff c3                       inc    rbx
2eaa9d  48 3b da                       cmp    rbx,rdx
2eaaa0  76 eb                          jbe    0x2eaa8d
2eaaa2  32 c0                          xor    al,al
2eaaa4  48 83 c4 28                    add    rsp,0x28
2eaaa8  5f                             pop    rdi
2eaaa9  5e                             pop    rsi
2eaaaa  5d                             pop    rbp
2eaaab  5b                             pop    rbx
2eaaac  c3                             ret
2eaaad  48 89 33                       mov    QWORD PTR [rbx],rsi
2eaab0  48 89 07                       mov    QWORD PTR [rdi],rax
2eaab3  48 89 77 28                    mov    QWORD PTR [rdi+0x28],rsi
2eaab7  c7 47 30 02 00 00 00           mov    DWORD PTR [rdi+0x30],0x2
2eaabe  eb 86                          jmp    0x2eaa46
