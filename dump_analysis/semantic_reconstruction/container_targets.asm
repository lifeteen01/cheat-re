; pdata function 0x2ef724..0x2ef752 unwind=0x3d2318
2ef724  40 53                          rex push rbx
2ef726  48 83 ec 30                    sub    rsp,0x30
2ef72a  48 8b d9                       mov    rbx,rcx
2ef72d  48 8b ca                       mov    rcx,rdx
2ef730  e8 6f bc fd ff                 call   0x2cb3a4
2ef735  4c 8b c0                       mov    r8,rax
2ef738  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ef73d  48 8b cb                       mov    rcx,rbx
2ef740  e8 db d4 ff ff                 call   0x2ecc20
2ef745  48 8b 00                       mov    rax,QWORD PTR [rax]
2ef748  48 83 c0 14                    add    rax,0x14
2ef74c  48 83 c4 30                    add    rsp,0x30
2ef750  5b                             pop    rbx
2ef751  c3                             ret

; pdata function 0x2df608..0x2df636 unwind=0x3d2318
2df608  40 53                          rex push rbx
2df60a  48 83 ec 30                    sub    rsp,0x30
2df60e  48 8b d9                       mov    rbx,rcx
2df611  48 8b ca                       mov    rcx,rdx
2df614  e8 8b bd fe ff                 call   0x2cb3a4
2df619  4c 8b c0                       mov    r8,rax
2df61c  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2df621  48 8b cb                       mov    rcx,rbx
2df624  e8 4b ef ff ff                 call   0x2de574
2df629  48 8b 00                       mov    rax,QWORD PTR [rax]
2df62c  48 83 c0 30                    add    rax,0x30
2df630  48 83 c4 30                    add    rsp,0x30
2df634  5b                             pop    rbx
2df635  c3                             ret

; pdata function 0x32b838..0x32b8b7 unwind=0x3d35fc
32b838  44 89 4c 24 20                 mov    DWORD PTR [rsp+0x20],r9d
32b83d  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
32b842  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
32b847  55                             push   rbp
32b848  53                             push   rbx
32b849  56                             push   rsi
32b84a  57                             push   rdi
32b84b  48 8b ec                       mov    rbp,rsp
32b84e  48 83 ec 28                    sub    rsp,0x28
32b852  48 8b f9                       mov    rdi,rcx
32b855  48 8d 4d 30                    lea    rcx,[rbp+0x30]
32b859  e8 e6 51 fa ff                 call   0x2d0a44
32b85e  48 8d 4d 38                    lea    rcx,[rbp+0x38]
32b862  48 89 45 28                    mov    QWORD PTR [rbp+0x28],rax
32b866  48 8b d8                       mov    rbx,rax
32b869  e8 d6 51 fa ff                 call   0x2d0a44
32b86e  48 8b f0                       mov    rsi,rax
32b871  48 3b d8                       cmp    rbx,rax
32b874  74 21                          je     0x32b897
32b876  48 8b 13                       mov    rdx,QWORD PTR [rbx]
32b879  48 8d 4d 40                    lea    rcx,[rbp+0x40]
32b87d  e8 ea 01 00 00                 call   0x32ba6c
32b882  84 c0                          test   al,al
32b884  75 11                          jne    0x32b897
32b886  48 8b 5d 28                    mov    rbx,QWORD PTR [rbp+0x28]
32b88a  48 83 c3 08                    add    rbx,0x8
32b88e  48 89 5d 28                    mov    QWORD PTR [rbp+0x28],rbx
32b892  48 3b de                       cmp    rbx,rsi
32b895  75 df                          jne    0x32b876
32b897  48 8d 55 28                    lea    rdx,[rbp+0x28]
32b89b  48 8d 4d 30                    lea    rcx,[rbp+0x30]
32b89f  e8 88 5f fa ff                 call   0x2d182c
32b8a4  48 8b 45 30                    mov    rax,QWORD PTR [rbp+0x30]
32b8a8  48 89 07                       mov    QWORD PTR [rdi],rax
32b8ab  48 8b c7                       mov    rax,rdi
32b8ae  48 83 c4 28                    add    rsp,0x28
32b8b2  5f                             pop    rdi
32b8b3  5e                             pop    rsi
32b8b4  5b                             pop    rbx
32b8b5  5d                             pop    rbp
32b8b6  c3                             ret

; pdata function 0x32cb8c..0x32cbdf unwind=0x3d2054
32cb8c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32cb91  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32cb96  57                             push   rdi
32cb97  48 83 ec 20                    sub    rsp,0x20
32cb9b  48 8b f9                       mov    rdi,rcx
32cb9e  48 8b f2                       mov    rsi,rdx
32cba1  49 8d 48 08                    lea    rcx,[r8+0x8]
32cba5  49 8b d8                       mov    rbx,r8
32cba8  48 8b 57 08                    mov    rdx,QWORD PTR [rdi+0x8]
32cbac  e8 17 eb ff ff                 call   0x32b6c8
32cbb1  48 83 47 08 f8                 add    QWORD PTR [rdi+0x8],0xfffffffffffffff8
32cbb6  48 8b cf                       mov    rcx,rdi
32cbb9  e8 e6 e7 f9 ff                 call   0x2cb3a4
32cbbe  4c 8b c0                       mov    r8,rax
32cbc1  48 8b d3                       mov    rdx,rbx
32cbc4  48 8b ce                       mov    rcx,rsi
32cbc7  e8 14 74 fa ff                 call   0x2d3fe0
32cbcc  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32cbd1  48 8b c6                       mov    rax,rsi
32cbd4  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
32cbd9  48 83 c4 20                    add    rsp,0x20
32cbdd  5f                             pop    rdi
32cbde  c3                             ret

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

