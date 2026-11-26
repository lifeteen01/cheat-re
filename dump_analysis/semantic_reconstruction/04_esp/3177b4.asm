; pdata function 0x3177b4..0x317879 unwind=0x3d3148
3177b4  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
3177b9  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
3177be  55                             push   rbp
3177bf  56                             push   rsi
3177c0  57                             push   rdi
3177c1  41 56                          push   r14
3177c3  41 57                          push   r15
3177c5  48 8b ec                       mov    rbp,rsp
3177c8  48 83 ec 50                    sub    rsp,0x50
3177cc  4c 8b f2                       mov    r14,rdx
3177cf  48 8b f1                       mov    rsi,rcx
3177d2  48 8d 55 38                    lea    rdx,[rbp+0x38]
3177d6  45 8a f8                       mov    r15b,r8b
3177d9  48 8d 4d 30                    lea    rcx,[rbp+0x30]
3177dd  e8 52 7a fc ff                 call   0x2df234
3177e2  48 83 c6 18                    add    rsi,0x18
3177e6  48 8d 55 48                    lea    rdx,[rbp+0x48]
3177ea  48 8b ce                       mov    rcx,rsi
3177ed  48 8b 38                       mov    rdi,QWORD PTR [rax]
3177f0  e8 83 32 00 00                 call   0x31aa78
3177f5  48 8d 55 d0                    lea    rdx,[rbp-0x30]
3177f9  48 8b ce                       mov    rcx,rsi
3177fc  48 8b 18                       mov    rbx,QWORD PTR [rax]
3177ff  e8 5c 32 00 00                 call   0x31aa60
317804  4c 8b cf                       mov    r9,rdi
317807  48 8d 4d d8                    lea    rcx,[rbp-0x28]
31780b  4c 8b c3                       mov    r8,rbx
31780e  48 8b 10                       mov    rdx,QWORD PTR [rax]
317811  e8 d6 65 fd ff                 call   0x2eddec
317816  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31781a  48 8b ce                       mov    rcx,rsi
31781d  48 8b d8                       mov    rbx,rax
317820  e8 53 32 00 00                 call   0x31aa78
317825  48 8b d0                       mov    rdx,rax
317828  48 8b cb                       mov    rcx,rbx
31782b  e8 04 4d fb ff                 call   0x2cc534
317830  84 c0                          test   al,al
317832  74 31                          je     0x317865
317834  0f 57 c0                       xorps  xmm0,xmm0
317837  48 8d 4d e8                    lea    rcx,[rbp-0x18]
31783b  0f 11 45 e8                    movups XMMWORD PTR [rbp-0x18],xmm0
31783f  e8 6c 77 fd ff                 call   0x2eefb0
317844  48 8d 4d e8                    lea    rcx,[rbp-0x18]
317848  4c 89 75 e8                    mov    QWORD PTR [rbp-0x18],r14
31784c  44 88 7d f0                    mov    BYTE PTR [rbp-0x10],r15b
317850  e8 2f 9c 00 00                 call   0x321484
317855  84 c0                          test   al,al
317857  74 0c                          je     0x317865
317859  48 8d 55 e8                    lea    rdx,[rbp-0x18]
31785d  48 8b ce                       mov    rcx,rsi
317860  e8 47 95 00 00                 call   0x320dac
317865  48 8b 9c 24 90 00 00 00        mov    rbx,QWORD PTR [rsp+0x90]
31786d  48 83 c4 50                    add    rsp,0x50
317871  41 5f                          pop    r15
317873  41 5e                          pop    r14
317875  5f                             pop    rdi
317876  5e                             pop    rsi
317877  5d                             pop    rbp
317878  c3                             ret
