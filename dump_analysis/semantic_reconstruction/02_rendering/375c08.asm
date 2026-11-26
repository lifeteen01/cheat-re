; pdata function 0x375c08..0x375d2f unwind=0x3d40e4
375c08  48 8b c4                       mov    rax,rsp
375c0b  53                             push   rbx
375c0c  55                             push   rbp
375c0d  56                             push   rsi
375c0e  57                             push   rdi
375c0f  48 81 ec 88 00 00 00           sub    rsp,0x88
375c16  48 8b f2                       mov    rsi,rdx
375c19  48 8d 48 18                    lea    rcx,[rax+0x18]
375c1d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
375c22  41 8b e9                       mov    ebp,r9d
375c25  41 8b f8                       mov    edi,r8d
375c28  e8 9f fd ff ff                 call   0x3759cc ; STRING getter=0x3759cc Byte
375c2d  48 8b c8                       mov    rcx,rax
375c30  e8 d7 03 00 00                 call   0x37600c
375c35  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
375c3a  48 8b d8                       mov    rbx,rax
375c3d  48 8d 8c 24 c0 00 00 00        lea    rcx,[rsp+0xc0]
375c45  e8 e6 fc ff ff                 call   0x375930 ; STRING getter=0x375930 System
375c4a  48 8b c8                       mov    rcx,rax
375c4d  e8 1e fb ff ff                 call   0x375770
375c52  48 8b c8                       mov    rcx,rax
375c55  44 8b c7                       mov    r8d,edi
375c58  48 8b d3                       mov    rdx,rbx
375c5b  e8 84 02 00 00                 call   0x375ee4
375c60  45 33 c0                       xor    r8d,r8d
375c63  4c 8d 48 20                    lea    r9,[rax+0x20]
375c67  85 ff                          test   edi,edi
375c69  7e 11                          jle    0x375c7c
375c6b  42 8a 0c 06                    mov    cl,BYTE PTR [rsi+r8*1]
375c6f  42 88 4c 00 20                 mov    BYTE PTR [rax+r8*1+0x20],cl
375c74  41 ff c0                       inc    r8d
375c77  44 3b c7                       cmp    r8d,edi
375c7a  7c ef                          jl     0x375c6b
375c7c  4c 89 4c 24 30                 mov    QWORD PTR [rsp+0x30],r9
375c81  8b 40 18                       mov    eax,DWORD PTR [rax+0x18]
375c84  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
375c88  8b 05 a2 ce 08 00              mov    eax,DWORD PTR [rip+0x8cea2]        # 0x402b30
375c8e  a8 01                          test   al,0x1
375c90  75 3d                          jne    0x375ccf
375c92  83 c8 01                       or     eax,0x1
375c95  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
375c9a  48 8d 8c 24 c0 00 00 00        lea    rcx,[rsp+0xc0]
375ca2  89 05 88 ce 08 00              mov    DWORD PTR [rip+0x8ce88],eax        # 0x402b30
375ca8  e8 a7 fd ff ff                 call   0x375a54
375cad  48 8b c8                       mov    rcx,rax
375cb0  e8 a7 03 00 00                 call   0x37605c
375cb5  48 8b c8                       mov    rcx,rax
375cb8  e8 97 04 00 00                 call   0x376154
375cbd  4c 8b c0                       mov    r8,rax
375cc0  48 89 05 61 ce 08 00           mov    QWORD PTR [rip+0x8ce61],rax        # 0x402b28
375cc7  8b 05 63 ce 08 00              mov    eax,DWORD PTR [rip+0x8ce63]        # 0x402b30
375ccd  eb 07                          jmp    0x375cd6
375ccf  4c 8b 05 52 ce 08 00           mov    r8,QWORD PTR [rip+0x8ce52]        # 0x402b28
375cd6  a8 02                          test   al,0x2
375cd8  75 1f                          jne    0x375cf9
375cda  48 8b 0d 7f 01 06 00           mov    rcx,QWORD PTR [rip+0x6017f]        # 0x3d5e60
375ce1  48 8d 15 58 ce 08 00           lea    rdx,[rip+0x8ce58]        # 0x402b40
375ce8  83 c8 02                       or     eax,0x2
375ceb  45 33 c9                       xor    r9d,r9d
375cee  89 05 3c ce 08 00              mov    DWORD PTR [rip+0x8ce3c],eax        # 0x402b30
375cf4  e8 2b 60 f5 ff                 call   0x2cbd24
375cf9  48 8b 0d 60 01 06 00           mov    rcx,QWORD PTR [rip+0x60160]        # 0x3d5e60
375d00  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
375d05  44 8b cd                       mov    r9d,ebp
375d08  48 8d 15 31 ce 08 00           lea    rdx,[rip+0x8ce31]        # 0x402b40
375d0f  e8 b4 54 fb ff                 call   0x32b1c8
375d14  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
375d19  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
375d1e  e8 dd fb ff ff                 call   0x375900
375d23  48 81 c4 88 00 00 00           add    rsp,0x88
375d2a  5f                             pop    rdi
375d2b  5e                             pop    rsi
375d2c  5d                             pop    rbp
375d2d  5b                             pop    rbx
375d2e  c3                             ret
