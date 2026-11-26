; pdata function 0x2ecc20..0x2ecd56 unwind=0x3d2b60
2ecc20  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2ecc25  55                             push   rbp
2ecc26  56                             push   rsi
2ecc27  57                             push   rdi
2ecc28  41 56                          push   r14
2ecc2a  41 57                          push   r15
2ecc2c  48 8b ec                       mov    rbp,rsp
2ecc2f  48 83 ec 60                    sub    rsp,0x60
2ecc33  4c 8b f2                       mov    r14,rdx
2ecc36  49 8b d8                       mov    rbx,r8
2ecc39  49 8b d0                       mov    rdx,r8
2ecc3c  48 8b f1                       mov    rsi,rcx
2ecc3f  e8 a0 24 fe ff                 call   0x2cf0e4
2ecc44  4c 8b c8                       mov    r9,rax
2ecc47  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2ecc4b  4c 8b c3                       mov    r8,rbx
2ecc4e  48 8b ce                       mov    rcx,rsi
2ecc51  4c 8b f8                       mov    r15,rax
2ecc54  e8 7b 3b fe ff                 call   0x2d07d4
2ecc59  48 83 7d d8 00                 cmp    QWORD PTR [rbp-0x28],0x0
2ecc5e  74 19                          je     0x2ecc79
2ecc60  4c 8d 45 30                    lea    r8,[rbp+0x30]
2ecc64  c6 45 30 00                    mov    BYTE PTR [rbp+0x30],0x0
2ecc68  48 8d 55 d8                    lea    rdx,[rbp-0x28]
2ecc6c  49 8b ce                       mov    rcx,r14
2ecc6f  e8 94 21 fe ff                 call   0x2cee08
2ecc74  e9 c6 00 00 00                 jmp    0x2ecd3f
2ecc79  48 8b ce                       mov    rcx,rsi
2ecc7c  e8 a3 cb 02 00                 call   0x319824
2ecc81  48 8b cb                       mov    rcx,rbx
2ecc84  e8 1b e7 fd ff                 call   0x2cb3a4
2ecc89  48 8b d0                       mov    rdx,rax
2ecc8c  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2ecc90  e8 fb 1f ff ff                 call   0x2dec90
2ecc95  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2ecc99  48 8b f8                       mov    rdi,rax
2ecc9c  e8 03 e7 fd ff                 call   0x2cb3a4
2ecca1  48 8d 4e 08                    lea    rcx,[rsi+0x8]
2ecca5  48 8b d8                       mov    rbx,rax
2ecca8  e8 77 06 fe ff                 call   0x2cd324
2eccad  48 8b d0                       mov    rdx,rax
2eccb0  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
2eccb5  4c 8b cf                       mov    r9,rdi
2eccb8  4c 8d 05 3d 0c fa ff           lea    r8,[rip+0xfffffffffffa0c3d]        # 0x28d8fc
2eccbf  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2eccc3  e8 e8 d4 ff ff                 call   0x2ea1b0
2eccc8  48 8b ce                       mov    rcx,rsi
2ecccb  e8 74 a0 fe ff                 call   0x2d6d44
2eccd0  84 c0                          test   al,al
2eccd2  74 2f                          je     0x2ecd03
2eccd4  48 8b ce                       mov    rcx,rsi
2eccd7  e8 74 d3 02 00                 call   0x31a050
2eccdc  48 8b 4d e8                    mov    rcx,QWORD PTR [rbp-0x18]
2ecce0  48 83 c1 10                    add    rcx,0x10
2ecce4  e8 bb e6 fd ff                 call   0x2cb3a4
2ecce9  4c 8b c0                       mov    r8,rax
2eccec  48 8d 55 f0                    lea    rdx,[rbp-0x10]
2eccf0  4d 8b cf                       mov    r9,r15
2eccf3  48 8b ce                       mov    rcx,rsi
2eccf6  e8 d9 3a fe ff                 call   0x2d07d4
2eccfb  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2eccfe  f3 0f 7f 45 d0                 movdqu XMMWORD PTR [rbp-0x30],xmm0
2ecd03  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2ecd07  e8 2c a9 fe ff                 call   0x2d7638
2ecd0c  4c 8b 45 d0                    mov    r8,QWORD PTR [rbp-0x30]
2ecd10  4c 8b c8                       mov    r9,rax
2ecd13  49 8b d7                       mov    rdx,r15
2ecd16  48 8b ce                       mov    rcx,rsi
2ecd19  e8 0a a6 fe ff                 call   0x2d7328
2ecd1e  4c 8d 45 30                    lea    r8,[rbp+0x30]
2ecd22  48 89 45 40                    mov    QWORD PTR [rbp+0x40],rax
2ecd26  48 8d 55 40                    lea    rdx,[rbp+0x40]
2ecd2a  c6 45 30 01                    mov    BYTE PTR [rbp+0x30],0x1
2ecd2e  49 8b ce                       mov    rcx,r14
2ecd31  e8 d2 20 fe ff                 call   0x2cee08
2ecd36  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2ecd3a  e8 5d 26 00 00                 call   0x2ef39c
2ecd3f  48 8b 9c 24 98 00 00 00        mov    rbx,QWORD PTR [rsp+0x98]
2ecd47  49 8b c6                       mov    rax,r14
2ecd4a  48 83 c4 60                    add    rsp,0x60
2ecd4e  41 5f                          pop    r15
2ecd50  41 5e                          pop    r14
2ecd52  5f                             pop    rdi
2ecd53  5e                             pop    rsi
2ecd54  5d                             pop    rbp
2ecd55  c3                             ret

; pdata function 0x2de574..0x2de6aa unwind=0x3d2b60
2de574  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2de579  55                             push   rbp
2de57a  56                             push   rsi
2de57b  57                             push   rdi
2de57c  41 56                          push   r14
2de57e  41 57                          push   r15
2de580  48 8b ec                       mov    rbp,rsp
2de583  48 83 ec 60                    sub    rsp,0x60
2de587  4c 8b f2                       mov    r14,rdx
2de58a  49 8b d8                       mov    rbx,r8
2de58d  49 8b d0                       mov    rdx,r8
2de590  48 8b f1                       mov    rsi,rcx
2de593  e8 fc f8 ff ff                 call   0x2dde94
2de598  4c 8b c8                       mov    r9,rax
2de59b  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2de59f  4c 8b c3                       mov    r8,rbx
2de5a2  48 8b ce                       mov    rcx,rsi
2de5a5  4c 8b f8                       mov    r15,rax
2de5a8  e8 a7 fb ff ff                 call   0x2de154
2de5ad  48 83 7d d8 00                 cmp    QWORD PTR [rbp-0x28],0x0
2de5b2  74 19                          je     0x2de5cd
2de5b4  4c 8d 45 30                    lea    r8,[rbp+0x30]
2de5b8  c6 45 30 00                    mov    BYTE PTR [rbp+0x30],0x0
2de5bc  48 8d 55 d8                    lea    rdx,[rbp-0x28]
2de5c0  49 8b ce                       mov    rcx,r14
2de5c3  e8 40 08 ff ff                 call   0x2cee08
2de5c8  e9 c6 00 00 00                 jmp    0x2de693
2de5cd  48 8b ce                       mov    rcx,rsi
2de5d0  e8 77 44 00 00                 call   0x2e2a4c
2de5d5  48 8b cb                       mov    rcx,rbx
2de5d8  e8 c7 cd fe ff                 call   0x2cb3a4
2de5dd  48 8b d0                       mov    rdx,rax
2de5e0  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2de5e4  e8 a7 06 00 00                 call   0x2dec90
2de5e9  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2de5ed  48 8b f8                       mov    rdi,rax
2de5f0  e8 af cd fe ff                 call   0x2cb3a4
2de5f5  48 8d 4e 08                    lea    rcx,[rsi+0x8]
2de5f9  48 8b d8                       mov    rbx,rax
2de5fc  e8 23 ed fe ff                 call   0x2cd324
2de601  48 8b d0                       mov    rdx,rax
2de604  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
2de609  4c 8b cf                       mov    r9,rdi
2de60c  4c 8d 05 e9 f2 fa ff           lea    r8,[rip+0xfffffffffffaf2e9]        # 0x28d8fc
2de613  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2de617  e8 48 f7 ff ff                 call   0x2ddd64
2de61c  48 8b ce                       mov    rcx,rsi
2de61f  e8 20 87 ff ff                 call   0x2d6d44
2de624  84 c0                          test   al,al
2de626  74 2f                          je     0x2de657
2de628  48 8b ce                       mov    rcx,rsi
2de62b  e8 88 47 00 00                 call   0x2e2db8
2de630  48 8b 4d e8                    mov    rcx,QWORD PTR [rbp-0x18]
2de634  48 83 c1 10                    add    rcx,0x10
2de638  e8 67 cd fe ff                 call   0x2cb3a4
2de63d  4c 8b c0                       mov    r8,rax
2de640  48 8d 55 f0                    lea    rdx,[rbp-0x10]
2de644  4d 8b cf                       mov    r9,r15
2de647  48 8b ce                       mov    rcx,rsi
2de64a  e8 05 fb ff ff                 call   0x2de154
2de64f  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2de652  f3 0f 7f 45 d0                 movdqu XMMWORD PTR [rbp-0x30],xmm0
2de657  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2de65b  e8 d8 8f ff ff                 call   0x2d7638
2de660  4c 8b 45 d0                    mov    r8,QWORD PTR [rbp-0x30]
2de664  4c 8b c8                       mov    r9,rax
2de667  49 8b d7                       mov    rdx,r15
2de66a  48 8b ce                       mov    rcx,rsi
2de66d  e8 b6 8c ff ff                 call   0x2d7328
2de672  4c 8d 45 30                    lea    r8,[rbp+0x30]
2de676  48 89 45 40                    mov    QWORD PTR [rbp+0x40],rax
2de67a  48 8d 55 40                    lea    rdx,[rbp+0x40]
2de67e  c6 45 30 01                    mov    BYTE PTR [rbp+0x30],0x1
2de682  49 8b ce                       mov    rcx,r14
2de685  e8 7e 07 ff ff                 call   0x2cee08
2de68a  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2de68e  e8 71 0d 00 00                 call   0x2df404
2de693  48 8b 9c 24 98 00 00 00        mov    rbx,QWORD PTR [rsp+0x98]
2de69b  49 8b c6                       mov    rax,r14
2de69e  48 83 c4 60                    add    rsp,0x60
2de6a2  41 5f                          pop    r15
2de6a4  41 5e                          pop    r14
2de6a6  5f                             pop    rdi
2de6a7  5e                             pop    rsi
2de6a8  5d                             pop    rbp
2de6a9  c3                             ret

