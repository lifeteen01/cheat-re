; pdata function 0x372bcc..0x372bf4 unwind=0x3d2064
372bcc  48 83 ec 28                    sub    rsp,0x28
372bd0  4c 8b c1                       mov    r8,rcx
372bd3  e8 30 83 f5 ff                 call   0x2caf08
372bd8  84 c0                          test   al,al
372bda  75 04                          jne    0x372be0
372bdc  33 c0                          xor    eax,eax
372bde  eb 0f                          jmp    0x372bef
372be0  ba 24 00 00 00                 mov    edx,0x24
372be5  49 8b c8                       mov    rcx,r8
372be8  e8 4f c2 f6 ff                 call   0x2dee3c
372bed  8b 00                          mov    eax,DWORD PTR [rax]
372bef  48 83 c4 28                    add    rsp,0x28
372bf3  c3                             ret

; pdata function 0x367668..0x367684 unwind=0x3d2064
367668  48 83 ec 28                    sub    rsp,0x28
36766c  48 8b d1                       mov    rdx,rcx
36766f  e8 94 38 f6 ff                 call   0x2caf08
367674  84 c0                          test   al,al
367676  75 04                          jne    0x36767c
367678  33 c0                          xor    eax,eax
36767a  eb 03                          jmp    0x36767f
36767c  8b 42 54                       mov    eax,DWORD PTR [rdx+0x54]
36767f  48 83 c4 28                    add    rsp,0x28
367683  c3                             ret

; pdata function 0x3176bc..0x3177b2 unwind=0x3d3120
3176bc  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
3176c1  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
3176c6  4c 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],r9
3176cb  55                             push   rbp
3176cc  57                             push   rdi
3176cd  41 54                          push   r12
3176cf  41 56                          push   r14
3176d1  41 57                          push   r15
3176d3  48 8b ec                       mov    rbp,rsp
3176d6  48 81 ec 80 00 00 00           sub    rsp,0x80
3176dd  44 8b e2                       mov    r12d,edx
3176e0  48 8b f1                       mov    rsi,rcx
3176e3  48 8d 55 48                    lea    rdx,[rbp+0x48]
3176e7  4d 8b f1                       mov    r14,r9
3176ea  48 8d 4d 30                    lea    rcx,[rbp+0x30]
3176ee  4d 8b f8                       mov    r15,r8
3176f1  e8 3e 7b fc ff                 call   0x2df234
3176f6  48 83 c6 30                    add    rsi,0x30
3176fa  48 8d 55 a0                    lea    rdx,[rbp-0x60]
3176fe  48 8b ce                       mov    rcx,rsi
317701  48 8b 38                       mov    rdi,QWORD PTR [rax]
317704  e8 6f 33 00 00                 call   0x31aa78
317709  48 8d 55 a8                    lea    rdx,[rbp-0x58]
31770d  48 8b ce                       mov    rcx,rsi
317710  48 8b 18                       mov    rbx,QWORD PTR [rax]
317713  e8 48 33 00 00                 call   0x31aa60
317718  4c 8b cf                       mov    r9,rdi
31771b  48 8d 4d b0                    lea    rcx,[rbp-0x50]
31771f  4c 8b c3                       mov    r8,rbx
317722  48 8b 10                       mov    rdx,QWORD PTR [rax]
317725  e8 42 66 fd ff                 call   0x2edd6c
31772a  48 8d 55 b8                    lea    rdx,[rbp-0x48]
31772e  48 8b ce                       mov    rcx,rsi
317731  48 8b d8                       mov    rbx,rax
317734  e8 3f 33 00 00                 call   0x31aa78
317739  48 8b d0                       mov    rdx,rax
31773c  48 8b cb                       mov    rcx,rbx
31773f  e8 f0 4d fb ff                 call   0x2cc534
317744  84 c0                          test   al,al
317746  74 4e                          je     0x317796
317748  33 d2                          xor    edx,edx
31774a  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31774e  44 8d 42 40                    lea    r8d,[rdx+0x40]
317752  e8 19 16 0b 00                 call   0x3c8d70
317757  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31775b  e8 30 78 fd ff                 call   0x2eef90
317760  49 8b d7                       mov    rdx,r15
317763  44 89 65 f0                    mov    DWORD PTR [rbp-0x10],r12d
317767  48 8d 4d d0                    lea    rcx,[rbp-0x30]
31776b  e8 b4 d4 fb ff                 call   0x2d4c24
317770  48 8d 4d c0                    lea    rcx,[rbp-0x40]
317774  4c 89 75 c8                    mov    QWORD PTR [rbp-0x38],r14
317778  e8 4f 9c 00 00                 call   0x3213cc
31777d  84 c0                          test   al,al
31777f  74 0c                          je     0x31778d
317781  48 8d 55 c0                    lea    rdx,[rbp-0x40]
317785  48 8b ce                       mov    rcx,rsi
317788  e8 17 96 00 00                 call   0x320da4
31778d  48 8d 4d c0                    lea    rcx,[rbp-0x40]
317791  e8 52 7d fc ff                 call   0x2df4e8
317796  4c 8d 9c 24 80 00 00 00        lea    r11,[rsp+0x80]
31779e  49 8b 5b 38                    mov    rbx,QWORD PTR [r11+0x38]
3177a2  49 8b 73 40                    mov    rsi,QWORD PTR [r11+0x40]
3177a6  49 8b e3                       mov    rsp,r11
3177a9  41 5f                          pop    r15
3177ab  41 5e                          pop    r14
3177ad  41 5c                          pop    r12
3177af  5f                             pop    rdi
3177b0  5d                             pop    rbp
3177b1  c3                             ret

