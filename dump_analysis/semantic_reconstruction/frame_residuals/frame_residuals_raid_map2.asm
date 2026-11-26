; pdata function 0x3365f8..0x336621 unwind=0x3d2040
3365f8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3365fd  57                             push   rdi
3365fe  48 83 ec 20                    sub    rsp,0x20
336602  48 8b da                       mov    rbx,rdx
336605  48 8b f9                       mov    rdi,rcx
336608  e8 87 db f9 ff                 call   0x2d4194
33660d  8b 43 20                       mov    eax,DWORD PTR [rbx+0x20]
336610  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
336615  89 47 20                       mov    DWORD PTR [rdi+0x20],eax
336618  48 8b c7                       mov    rax,rdi
33661b  48 83 c4 20                    add    rsp,0x20
33661f  5f                             pop    rdi
336620  c3                             ret

; pdata function 0x36d038..0x36d089 unwind=0x3d2040
36d038  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36d03d  57                             push   rdi
36d03e  48 83 ec 20                    sub    rsp,0x20
36d042  49 8b d8                       mov    rbx,r8
36d045  48 8b f9                       mov    rdi,rcx
36d048  e8 73 f1 f5 ff                 call   0x2cc1c0
36d04d  48 8b cf                       mov    rcx,rdi
36d050  e8 b3 28 00 00                 call   0x36f908
36d055  48 8b cb                       mov    rcx,rbx
36d058  e8 47 e3 f5 ff                 call   0x2cb3a4
36d05d  48 8b 4f 08                    mov    rcx,QWORD PTR [rdi+0x8]
36d061  48 8b d8                       mov    rbx,rax
36d064  48 83 c1 10                    add    rcx,0x10
36d068  e8 37 e3 f5 ff                 call   0x2cb3a4
36d06d  48 8b 0f                       mov    rcx,QWORD PTR [rdi]
36d070  48 8b d0                       mov    rdx,rax
36d073  4c 8b c3                       mov    r8,rbx
36d076  e8 01 0a 00 00                 call   0x36da7c
36d07b  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
36d080  48 8b c7                       mov    rax,rdi
36d083  48 83 c4 20                    add    rsp,0x20
36d087  5f                             pop    rdi
36d088  c3                             ret

; pdata function 0x2ebdf8..0x2ebe85 unwind=0x3d2308
2ebdf8  40 53                          rex push rbx
2ebdfa  55                             push   rbp
2ebdfb  56                             push   rsi
2ebdfc  57                             push   rdi
2ebdfd  41 56                          push   r14
2ebdff  48 83 ec 20                    sub    rsp,0x20
2ebe03  48 8b 41 30                    mov    rax,QWORD PTR [rcx+0x30]
2ebe07  48 8b f1                       mov    rsi,rcx
2ebe0a  48 8b 69 18                    mov    rbp,QWORD PTR [rcx+0x18]
2ebe0e  49 23 c1                       and    rax,r9
2ebe11  48 8b 49 08                    mov    rcx,QWORD PTR [rcx+0x8]
2ebe15  48 03 c0                       add    rax,rax
2ebe18  4d 8b f0                       mov    r14,r8
2ebe1b  48 8b da                       mov    rbx,rdx
2ebe1e  48 8b 7c c5 08                 mov    rdi,QWORD PTR [rbp+rax*8+0x8]
2ebe23  48 3b f9                       cmp    rdi,rcx
2ebe26  75 0d                          jne    0x2ebe35
2ebe28  48 89 0a                       mov    QWORD PTR [rdx],rcx
2ebe2b  48 c7 42 08 00 00 00 00        mov    QWORD PTR [rdx+0x8],0x0
2ebe33  eb 35                          jmp    0x2ebe6a
2ebe35  48 8b 6c c5 00                 mov    rbp,QWORD PTR [rbp+rax*8+0x0]
2ebe3a  eb 09                          jmp    0x2ebe45
2ebe3c  48 3b fd                       cmp    rdi,rbp
2ebe3f  74 37                          je     0x2ebe78
2ebe41  48 8b 7f 08                    mov    rdi,QWORD PTR [rdi+0x8]
2ebe45  48 8d 4f 10                    lea    rcx,[rdi+0x10]
2ebe49  e8 56 f5 fd ff                 call   0x2cb3a4
2ebe4e  4c 8b c0                       mov    r8,rax
2ebe51  49 8b d6                       mov    rdx,r14
2ebe54  48 8b ce                       mov    rcx,rsi
2ebe57  e8 50 e9 ff ff                 call   0x2ea7ac
2ebe5c  84 c0                          test   al,al
2ebe5e  75 dc                          jne    0x2ebe3c
2ebe60  48 8b 07                       mov    rax,QWORD PTR [rdi]
2ebe63  48 89 03                       mov    QWORD PTR [rbx],rax
2ebe66  48 89 7b 08                    mov    QWORD PTR [rbx+0x8],rdi
2ebe6a  48 8b c3                       mov    rax,rbx
2ebe6d  48 83 c4 20                    add    rsp,0x20
2ebe71  41 5e                          pop    r14
2ebe73  5f                             pop    rdi
2ebe74  5e                             pop    rsi
2ebe75  5d                             pop    rbp
2ebe76  5b                             pop    rbx
2ebe77  c3                             ret
2ebe78  48 89 3b                       mov    QWORD PTR [rbx],rdi
2ebe7b  48 c7 43 08 00 00 00 00        mov    QWORD PTR [rbx+0x8],0x0
2ebe83  eb e5                          jmp    0x2ebe6a

