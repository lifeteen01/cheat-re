; pdata function 0x366a60..0x366bbe unwind=0x3d3de0
366a60  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
366a65  55                             push   rbp
366a66  56                             push   rsi
366a67  57                             push   rdi
366a68  48 8b ec                       mov    rbp,rsp
366a6b  48 83 ec 70                    sub    rsp,0x70
366a6f  48 8b f2                       mov    rsi,rdx
366a72  48 8b d1                       mov    rdx,rcx
366a75  e8 8e 44 f6 ff                 call   0x2caf08
366a7a  84 c0                          test   al,al
366a7c  75 25                          jne    0x366aa3
366a7e  48 8d 55 30                    lea    rdx,[rbp+0x30]
366a82  48 8d 4d 30                    lea    rcx,[rbp+0x30]
366a86  e8 a5 5c f6 ff                 call   0x2cc730
366a8b  48 8b c8                       mov    rcx,rax
366a8e  e8 11 72 f6 ff                 call   0x2cdca4
366a93  48 8b d0                       mov    rdx,rax
366a96  48 8b ce                       mov    rcx,rsi
366a99  e8 2e 58 f6 ff                 call   0x2cc2cc
366a9e  e9 08 01 00 00                 jmp    0x366bab
366aa3  48 8b 92 18 04 00 00           mov    rdx,QWORD PTR [rdx+0x418]
366aaa  48 8b ca                       mov    rcx,rdx
366aad  e8 56 44 f6 ff                 call   0x2caf08
366ab2  84 c0                          test   al,al
366ab4  75 0f                          jne    0x366ac5
366ab6  48 8d 55 30                    lea    rdx,[rbp+0x30]
366aba  48 8d 4d 30                    lea    rcx,[rbp+0x30]
366abe  e8 6d 5c f6 ff                 call   0x2cc730
366ac3  eb c6                          jmp    0x366a8b
366ac5  48 8b 92 e0 00 00 00           mov    rdx,QWORD PTR [rdx+0xe0]
366acc  48 8b ca                       mov    rcx,rdx
366acf  e8 34 44 f6 ff                 call   0x2caf08
366ad4  84 c0                          test   al,al
366ad6  75 0f                          jne    0x366ae7
366ad8  48 8d 55 30                    lea    rdx,[rbp+0x30]
366adc  48 8d 4d 30                    lea    rcx,[rbp+0x30]
366ae0  e8 4b 5c f6 ff                 call   0x2cc730
366ae5  eb a4                          jmp    0x366a8b
366ae7  48 83 c2 14                    add    rdx,0x14
366aeb  48 8d 4d b8                    lea    rcx,[rbp-0x48]
366aef  e8 d4 da f6 ff                 call   0x2d45c8
366af4  48 8d 4d b8                    lea    rcx,[rbp-0x48]
366af8  e8 97 1b f7 ff                 call   0x2d8694
366afd  84 c0                          test   al,al
366aff  74 22                          je     0x366b23
366b01  48 8d 55 30                    lea    rdx,[rbp+0x30]
366b05  48 8d 4d 30                    lea    rcx,[rbp+0x30]
366b09  e8 22 5c f6 ff                 call   0x2cc730
366b0e  48 8b c8                       mov    rcx,rax
366b11  e8 8e 71 f6 ff                 call   0x2cdca4
366b16  48 8b d0                       mov    rdx,rax
366b19  48 8b ce                       mov    rcx,rsi
366b1c  e8 ab 57 f6 ff                 call   0x2cc2cc
366b21  eb 7f                          jmp    0x366ba2
366b23  48 8d 55 38                    lea    rdx,[rbp+0x38]
366b27  48 8d 4d b8                    lea    rcx,[rbp-0x48]
366b2b  e8 f8 1b f7 ff                 call   0x2d8728
366b30  48 8d 55 b0                    lea    rdx,[rbp-0x50]
366b34  48 8d 4d b8                    lea    rcx,[rbp-0x48]
366b38  48 8b 18                       mov    rbx,QWORD PTR [rax]
366b3b  e8 00 12 f7 ff                 call   0x2d7d40
366b40  48 8d 4d 30                    lea    rcx,[rbp+0x30]
366b44  48 8b f8                       mov    rdi,rax
366b47  e8 58 48 f6 ff                 call   0x2cb3a4
366b4c  48 8b 17                       mov    rdx,QWORD PTR [rdi]
366b4f  48 8d 4d d8                    lea    rcx,[rbp-0x28]
366b53  4c 8b c8                       mov    r9,rax
366b56  4c 8b c3                       mov    r8,rbx
366b59  e8 e6 82 f6 ff                 call   0x2cee44
366b5e  48 8d 4d d8                    lea    rcx,[rbp-0x28]
366b62  e8 2d 1b f7 ff                 call   0x2d8694
366b67  84 c0                          test   al,al
366b69  74 22                          je     0x366b8d
366b6b  48 8d 55 30                    lea    rdx,[rbp+0x30]
366b6f  48 8d 4d 30                    lea    rcx,[rbp+0x30]
366b73  e8 b8 5b f6 ff                 call   0x2cc730
366b78  48 8b c8                       mov    rcx,rax
366b7b  e8 24 71 f6 ff                 call   0x2cdca4
366b80  48 8b d0                       mov    rdx,rax
366b83  48 8b ce                       mov    rcx,rsi
366b86  e8 41 57 f6 ff                 call   0x2cc2cc
366b8b  eb 0c                          jmp    0x366b99
366b8d  48 8d 55 d8                    lea    rdx,[rbp-0x28]
366b91  48 8b ce                       mov    rcx,rsi
366b94  e8 eb 56 f6 ff                 call   0x2cc284
366b99  48 8d 4d d8                    lea    rcx,[rbp-0x28]
366b9d  e8 52 59 f6 ff                 call   0x2cc4f4
366ba2  48 8d 4d b8                    lea    rcx,[rbp-0x48]
366ba6  e8 a5 de f6 ff                 call   0x2d4a50
366bab  48 8b 9c 24 90 00 00 00        mov    rbx,QWORD PTR [rsp+0x90]
366bb3  48 8b c6                       mov    rax,rsi
366bb6  48 83 c4 70                    add    rsp,0x70
366bba  5f                             pop    rdi
366bbb  5e                             pop    rsi
366bbc  5d                             pop    rbp
366bbd  c3                             ret

