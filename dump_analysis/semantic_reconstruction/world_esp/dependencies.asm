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

; pdata function 0x3213cc..0x321484 unwind=0x3d2038
3213cc  40 53                          rex push rbx
3213ce  48 83 ec 20                    sub    rsp,0x20
3213d2  48 8b d9                       mov    rbx,rcx
3213d5  e8 72 fa fb ff                 call   0x2e0e4c
3213da  84 c0                          test   al,al
3213dc  0f 85 96 00 00 00              jne    0x321478
3213e2  e8 b5 f2 fb ff                 call   0x2e069c
3213e7  48 8b c8                       mov    rcx,rax
3213ea  e8 19 9b fa ff                 call   0x2caf08
3213ef  84 c0                          test   al,al
3213f1  0f 84 81 00 00 00              je     0x321478
3213f7  e8 a0 c6 fb ff                 call   0x2dda9c
3213fc  48 8b c8                       mov    rcx,rax
3213ff  e8 04 9b fa ff                 call   0x2caf08
321404  84 c0                          test   al,al
321406  74 70                          je     0x321478
321408  48 85 db                       test   rbx,rbx
32140b  74 6b                          je     0x321478
32140d  48 83 c3 08                    add    rbx,0x8
321411  48 8b 0b                       mov    rcx,QWORD PTR [rbx]
321414  48 85 c9                       test   rcx,rcx
321417  74 5f                          je     0x321478
321419  e8 7e fa fb ff                 call   0x2e0e9c
32141e  84 c0                          test   al,al
321420  75 5e                          jne    0x321480
321422  38 05 f0 83 0c 00              cmp    BYTE PTR [rip+0xc83f0],al        # 0x3e9818 ; CONFIG Bools.NoHittingSpikes value(+0x48)
321428  74 4e                          je     0x321478
32142a  48 8b d3                       mov    rdx,rbx
32142d  48 8d 0d bc 4d 0c 00           lea    rcx,[rip+0xc4dbc]        # 0x3e61f0
321434  e8 3b e3 fc ff                 call   0x2ef774
321439  80 38 00                       cmp    BYTE PTR [rax],0x0
32143c  74 3a                          je     0x321478
32143e  48 8b d3                       mov    rdx,rbx
321441  48 8d 0d 28 4d 0c 00           lea    rcx,[rip+0xc4d28]        # 0x3e6170
321448  e8 07 e3 fc ff                 call   0x2ef754
32144d  4c 8b 00                       mov    r8,QWORD PTR [rax]
321450  49 8b c8                       mov    rcx,r8
321453  e8 b0 9a fa ff                 call   0x2caf08
321458  84 c0                          test   al,al
32145a  74 1c                          je     0x321478
32145c  33 d2                          xor    edx,edx
32145e  49 8b c8                       mov    rcx,r8
321461  e8 ca 48 05 00                 call   0x375d30
321466  48 8b d3                       mov    rdx,rbx
321469  48 8d 0d 80 4d 0c 00           lea    rcx,[rip+0xc4d80]        # 0x3e61f0
321470  e8 ff e2 fc ff                 call   0x2ef774
321475  c6 00 00                       mov    BYTE PTR [rax],0x0
321478  32 c0                          xor    al,al
32147a  48 83 c4 20                    add    rsp,0x20
32147e  5b                             pop    rbx
32147f  c3                             ret
321480  b0 01                          mov    al,0x1
321482  eb f6                          jmp    0x32147a

; pdata function 0x2f8db0..0x2f8f74 unwind=0x3d3108
2f8db0  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
2f8db5  55                             push   rbp
2f8db6  56                             push   rsi
2f8db7  57                             push   rdi
2f8db8  41 54                          push   r12
2f8dba  41 55                          push   r13
2f8dbc  41 56                          push   r14
2f8dbe  41 57                          push   r15
2f8dc0  48 8b ec                       mov    rbp,rsp
2f8dc3  48 81 ec 80 00 00 00           sub    rsp,0x80
2f8dca  80 3d e7 0f 0f 00 00           cmp    BYTE PTR [rip+0xf0fe7],0x0        # 0x3e9db8 ; CONFIG Bools.Autolock value(+0x48)
2f8dd1  0f 84 80 01 00 00              je     0x2f8f57
2f8dd7  e8 c0 4c fe ff                 call   0x2dda9c
2f8ddc  48 8b c8                       mov    rcx,rax
2f8ddf  4c 8b e8                       mov    r13,rax
2f8de2  e8 21 21 fd ff                 call   0x2caf08
2f8de7  84 c0                          test   al,al
2f8de9  0f 84 68 01 00 00              je     0x2f8f57
2f8def  e8 40 f2 ff ff                 call   0x2f8034
2f8df4  48 8b c8                       mov    rcx,rax
2f8df7  4c 8b f0                       mov    r14,rax
2f8dfa  e8 09 21 fd ff                 call   0x2caf08
2f8dff  84 c0                          test   al,al
2f8e01  0f 84 50 01 00 00              je     0x2f8f57
2f8e07  49 8b ce                       mov    rcx,r14
2f8e0a  33 ff                          xor    edi,edi
2f8e0c  e8 13 d7 01 00                 call   0x316524
2f8e11  33 f6                          xor    esi,esi
2f8e13  44 8b e0                       mov    r12d,eax
2f8e16  85 c0                          test   eax,eax
2f8e18  0f 8e 34 01 00 00              jle    0x2f8f52
2f8e1e  44 8b 7d 40                    mov    r15d,DWORD PTR [rbp+0x40]
2f8e22  49 8b ce                       mov    rcx,r14
2f8e25  e8 da d6 01 00                 call   0x316504
2f8e2a  48 8b c8                       mov    rcx,rax
2f8e2d  48 8b d8                       mov    rbx,rax
2f8e30  e8 d3 20 fd ff                 call   0x2caf08
2f8e35  84 c0                          test   al,al
2f8e37  0f 84 0a 01 00 00              je     0x2f8f47
2f8e3d  8d 0c f5 00 00 00 00           lea    ecx,[rsi*8+0x0]
2f8e44  48 63 d1                       movsxd rdx,ecx
2f8e47  48 8b 5c 13 20                 mov    rbx,QWORD PTR [rbx+rdx*1+0x20]
2f8e4c  48 8b cb                       mov    rcx,rbx
2f8e4f  e8 b4 20 fd ff                 call   0x2caf08
2f8e54  84 c0                          test   al,al
2f8e56  0f 84 eb 00 00 00              je     0x2f8f47
2f8e5c  48 8b cb                       mov    rcx,rbx
2f8e5f  e8 f0 cb fe ff                 call   0x2e5a54
2f8e64  48 8b c8                       mov    rcx,rax
2f8e67  48 8b d0                       mov    rdx,rax
2f8e6a  e8 99 20 fd ff                 call   0x2caf08
2f8e6f  84 c0                          test   al,al
2f8e71  0f 84 d0 00 00 00              je     0x2f8f47
2f8e77  48 8b ca                       mov    rcx,rdx
2f8e7a  e8 d5 d4 fd ff                 call   0x2d6354
2f8e7f  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2f8e83  48 89 45 48                    mov    QWORD PTR [rbp+0x48],rax
2f8e87  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2f8e8b  e8 2c 94 ff ff                 call   0x2f22bc ; STRING getter=0x2f22bc CodeLock
2f8e90  48 8b c8                       mov    rcx,rax
2f8e93  e8 6c f6 fd ff                 call   0x2d8504
2f8e98  48 8b c8                       mov    rcx,rax
2f8e9b  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2f8ea5  e8 a2 cc fe ff                 call   0x2e5b4c
2f8eaa  48 39 45 48                    cmp    QWORD PTR [rbp+0x48],rax
2f8eae  74 2d                          je     0x2f8edd
2f8eb0  48 8d 55 e0                    lea    rdx,[rbp-0x20]
2f8eb4  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2f8eb8  e8 c3 a8 ff ff                 call   0x2f3780 ; STRING getter=0x2f3780 DigitSendCodeLock
2f8ebd  48 8b c8                       mov    rcx,rax
2f8ec0  e8 b7 f6 fd ff                 call   0x2d857c
2f8ec5  48 8b c8                       mov    rcx,rax
2f8ec8  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2f8ed2  e8 75 cc fe ff                 call   0x2e5b4c
2f8ed7  48 39 45 48                    cmp    QWORD PTR [rbp+0x48],rax
2f8edb  75 6a                          jne    0x2f8f47
2f8edd  ba d8 01 00 00                 mov    edx,0x1d8
2f8ee2  48 8b cb                       mov    rcx,rbx
2f8ee5  e8 52 5f fe ff                 call   0x2dee3c
2f8eea  66 83 38 10                    cmp    WORD PTR [rax],0x10
2f8eee  74 57                          je     0x2f8f47
2f8ef0  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2f8ef4  49 8b cd                       mov    rcx,r13
2f8ef7  e8 68 02 07 00                 call   0x369164
2f8efc  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2f8f01  48 8b cb                       mov    rcx,rbx
2f8f04  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
2f8f07  48 85 ff                       test   rdi,rdi
2f8f0a  75 1b                          jne    0x2f8f27
2f8f0c  48 8d 55 c0                    lea    rdx,[rbp-0x40]
2f8f10  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
2f8f15  48 8b fb                       mov    rdi,rbx
2f8f18  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
2f8f1b  e8 90 d7 06 00                 call   0x3666b0
2f8f20  f3 44 0f 2c f8                 cvttss2si r15d,xmm0
2f8f25  eb 20                          jmp    0x2f8f47
2f8f27  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2f8f2b  f2 0f 11 45 d0                 movsd  QWORD PTR [rbp-0x30],xmm0
2f8f30  89 45 d8                       mov    DWORD PTR [rbp-0x28],eax
2f8f33  e8 78 d7 06 00                 call   0x3666b0
2f8f38  f3 0f 2c c0                    cvttss2si eax,xmm0
2f8f3c  41 3b c7                       cmp    eax,r15d
2f8f3f  7f 06                          jg     0x2f8f47
2f8f41  48 8b fb                       mov    rdi,rbx
2f8f44  44 8b f8                       mov    r15d,eax
2f8f47  ff c6                          inc    esi
2f8f49  41 3b f4                       cmp    esi,r12d
2f8f4c  0f 8c d0 fe ff ff              jl     0x2f8e22
2f8f52  48 8b c7                       mov    rax,rdi
2f8f55  eb 02                          jmp    0x2f8f59
2f8f57  33 c0                          xor    eax,eax
2f8f59  48 8b 9c 24 d0 00 00 00        mov    rbx,QWORD PTR [rsp+0xd0]
2f8f61  48 81 c4 80 00 00 00           add    rsp,0x80
2f8f68  41 5f                          pop    r15
2f8f6a  41 5e                          pop    r14
2f8f6c  41 5d                          pop    r13
2f8f6e  41 5c                          pop    r12
2f8f70  5f                             pop    rdi
2f8f71  5e                             pop    rsi
2f8f72  5d                             pop    rbp
2f8f73  c3                             ret

; pdata function 0x2f8f74..0x2f9137 unwind=0x3d3108
2f8f74  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
2f8f79  55                             push   rbp
2f8f7a  56                             push   rsi
2f8f7b  57                             push   rdi
2f8f7c  41 54                          push   r12
2f8f7e  41 55                          push   r13
2f8f80  41 56                          push   r14
2f8f82  41 57                          push   r15
2f8f84  48 8b ec                       mov    rbp,rsp
2f8f87  48 81 ec 80 00 00 00           sub    rsp,0x80
2f8f8e  80 3d 0c 66 0f 00 00           cmp    BYTE PTR [rip+0xf660c],0x0        # 0x3ef5a1
2f8f95  0f 84 7f 01 00 00              je     0x2f911a
2f8f9b  e8 fc 4a fe ff                 call   0x2dda9c
2f8fa0  48 8b c8                       mov    rcx,rax
2f8fa3  4c 8b e8                       mov    r13,rax
2f8fa6  e8 5d 1f fd ff                 call   0x2caf08
2f8fab  84 c0                          test   al,al
2f8fad  0f 84 67 01 00 00              je     0x2f911a
2f8fb3  e8 7c f0 ff ff                 call   0x2f8034
2f8fb8  48 8b c8                       mov    rcx,rax
2f8fbb  4c 8b f0                       mov    r14,rax
2f8fbe  e8 45 1f fd ff                 call   0x2caf08
2f8fc3  84 c0                          test   al,al
2f8fc5  0f 84 4f 01 00 00              je     0x2f911a
2f8fcb  49 8b ce                       mov    rcx,r14
2f8fce  33 ff                          xor    edi,edi
2f8fd0  e8 4f d5 01 00                 call   0x316524
2f8fd5  33 f6                          xor    esi,esi
2f8fd7  44 8b e0                       mov    r12d,eax
2f8fda  85 c0                          test   eax,eax
2f8fdc  0f 8e 33 01 00 00              jle    0x2f9115
2f8fe2  44 8b 7d 40                    mov    r15d,DWORD PTR [rbp+0x40]
2f8fe6  49 8b ce                       mov    rcx,r14
2f8fe9  e8 16 d5 01 00                 call   0x316504
2f8fee  48 8b c8                       mov    rcx,rax
2f8ff1  48 8b d8                       mov    rbx,rax
2f8ff4  e8 0f 1f fd ff                 call   0x2caf08
2f8ff9  84 c0                          test   al,al
2f8ffb  0f 84 09 01 00 00              je     0x2f910a
2f9001  8d 0c f5 00 00 00 00           lea    ecx,[rsi*8+0x0]
2f9008  48 63 d1                       movsxd rdx,ecx
2f900b  48 8b 5c 13 20                 mov    rbx,QWORD PTR [rbx+rdx*1+0x20]
2f9010  48 8b cb                       mov    rcx,rbx
2f9013  e8 f0 1e fd ff                 call   0x2caf08
2f9018  84 c0                          test   al,al
2f901a  0f 84 ea 00 00 00              je     0x2f910a
2f9020  48 8b cb                       mov    rcx,rbx
2f9023  e8 2c ca fe ff                 call   0x2e5a54
2f9028  48 8b c8                       mov    rcx,rax
2f902b  48 8b d0                       mov    rdx,rax
2f902e  e8 d5 1e fd ff                 call   0x2caf08
2f9033  84 c0                          test   al,al
2f9035  0f 84 cf 00 00 00              je     0x2f910a
2f903b  48 8b ca                       mov    rcx,rdx
2f903e  e8 11 d3 fd ff                 call   0x2d6354
2f9043  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2f9047  48 89 45 48                    mov    QWORD PTR [rbp+0x48],rax
2f904b  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2f904f  e8 84 92 ff ff                 call   0x2f22d8 ; STRING getter=0x2f22d8 CodeLock
2f9054  48 8b c8                       mov    rcx,rax
2f9057  e8 a8 f4 fd ff                 call   0x2d8504
2f905c  48 8b c8                       mov    rcx,rax
2f905f  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2f9069  e8 de ca fe ff                 call   0x2e5b4c
2f906e  48 39 45 48                    cmp    QWORD PTR [rbp+0x48],rax
2f9072  74 2d                          je     0x2f90a1
2f9074  48 8d 55 e0                    lea    rdx,[rbp-0x20]
2f9078  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2f907c  e8 1b a7 ff ff                 call   0x2f379c ; STRING getter=0x2f379c DigitSendCodeLock
2f9081  48 8b c8                       mov    rcx,rax
2f9084  e8 f3 f4 fd ff                 call   0x2d857c
2f9089  48 8b c8                       mov    rcx,rax
2f908c  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2f9096  e8 b1 ca fe ff                 call   0x2e5b4c
2f909b  48 39 45 48                    cmp    QWORD PTR [rbp+0x48],rax
2f909f  75 69                          jne    0x2f910a
2f90a1  ba 98 02 00 00                 mov    edx,0x298
2f90a6  48 8b cb                       mov    rcx,rbx
2f90a9  e8 8e 5d fe ff                 call   0x2dee3c
2f90ae  80 38 00                       cmp    BYTE PTR [rax],0x0
2f90b1  75 57                          jne    0x2f910a
2f90b3  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2f90b7  49 8b cd                       mov    rcx,r13
2f90ba  e8 a5 00 07 00                 call   0x369164
2f90bf  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2f90c4  48 8b cb                       mov    rcx,rbx
2f90c7  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
2f90ca  48 85 ff                       test   rdi,rdi
2f90cd  75 1b                          jne    0x2f90ea
2f90cf  48 8d 55 c0                    lea    rdx,[rbp-0x40]
2f90d3  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
2f90d8  48 8b fb                       mov    rdi,rbx
2f90db  89 45 c8                       mov    DWORD PTR [rbp-0x38],eax
2f90de  e8 cd d5 06 00                 call   0x3666b0
2f90e3  f3 44 0f 2c f8                 cvttss2si r15d,xmm0
2f90e8  eb 20                          jmp    0x2f910a
2f90ea  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2f90ee  f2 0f 11 45 d0                 movsd  QWORD PTR [rbp-0x30],xmm0
2f90f3  89 45 d8                       mov    DWORD PTR [rbp-0x28],eax
2f90f6  e8 b5 d5 06 00                 call   0x3666b0
2f90fb  f3 0f 2c c0                    cvttss2si eax,xmm0
2f90ff  41 3b c7                       cmp    eax,r15d
2f9102  7f 06                          jg     0x2f910a
2f9104  48 8b fb                       mov    rdi,rbx
2f9107  44 8b f8                       mov    r15d,eax
2f910a  ff c6                          inc    esi
2f910c  41 3b f4                       cmp    esi,r12d
2f910f  0f 8c d1 fe ff ff              jl     0x2f8fe6
2f9115  48 8b c7                       mov    rax,rdi
2f9118  eb 02                          jmp    0x2f911c
2f911a  33 c0                          xor    eax,eax
2f911c  48 8b 9c 24 d0 00 00 00        mov    rbx,QWORD PTR [rsp+0xd0]
2f9124  48 81 c4 80 00 00 00           add    rsp,0x80
2f912b  41 5f                          pop    r15
2f912d  41 5e                          pop    r14
2f912f  41 5d                          pop    r13
2f9131  41 5c                          pop    r12
2f9133  5f                             pop    rdi
2f9134  5e                             pop    rsi
2f9135  5d                             pop    rbp
2f9136  c3                             ret

; pdata function 0x2f94ac..0x2f96f2 unwind=0x3d30b4
2f94ac  48 8b c4                       mov    rax,rsp
2f94af  53                             push   rbx
2f94b0  55                             push   rbp
2f94b1  56                             push   rsi
2f94b2  57                             push   rdi
2f94b3  41 54                          push   r12
2f94b5  41 55                          push   r13
2f94b7  41 56                          push   r14
2f94b9  41 57                          push   r15
2f94bb  48 81 ec b8 00 00 00           sub    rsp,0xb8
2f94c2  33 f6                          xor    esi,esi
2f94c4  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
2f94c8  40 38 35 99 ea 0d 00           cmp    BYTE PTR [rip+0xdea99],sil        # 0x3d7f68 ; CONFIG Bools.SilentMeleePlayers value(+0x48)
2f94cf  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
2f94d3  44 0f 29 40 88                 movaps XMMWORD PTR [rax-0x78],xmm8
2f94d8  89 b4 24 00 01 00 00           mov    DWORD PTR [rsp+0x100],esi
2f94df  0f 84 e4 01 00 00              je     0x2f96c9
2f94e5  e8 b2 45 fe ff                 call   0x2dda9c
2f94ea  48 8b c8                       mov    rcx,rax
2f94ed  4c 8b e0                       mov    r12,rax
2f94f0  e8 13 1a fd ff                 call   0x2caf08
2f94f5  84 c0                          test   al,al
2f94f7  0f 84 cc 01 00 00              je     0x2f96c9
2f94fd  f3 0f 10 3d 47 46 f9 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff94647]        # 0x28db4c ; f32=9999
2f9505  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
2f950a  48 8d 0d bf f2 f1 ff           lea    rcx,[rip+0xfffffffffff1f2bf]        # 0x2187d0
2f9511  33 ed                          xor    ebp,ebp
2f9513  45 33 ff                       xor    r15d,r15d
2f9516  e8 e1 a5 fe ff                 call   0x2e3afc
2f951b  48 8b c8                       mov    rcx,rax
2f951e  48 8b d8                       mov    rbx,rax
2f9521  e8 52 84 fd ff                 call   0x2d1978
2f9526  48 8b cb                       mov    rcx,rbx
2f9529  48 8b f8                       mov    rdi,rax
2f952c  e8 8f e4 fd ff                 call   0x2d79c0
2f9531  4c 8b e8                       mov    r13,rax
2f9534  48 3b f8                       cmp    rdi,rax
2f9537  0f 84 76 01 00 00              je     0x2f96b3
2f953d  f3 44 0f 10 05 ba 9c f9 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff99cba]        # 0x293200 ; f32=75
2f9546  48 8b 1f                       mov    rbx,QWORD PTR [rdi]
2f9549  48 8b cb                       mov    rcx,rbx
2f954c  e8 b7 19 fd ff                 call   0x2caf08
2f9551  84 c0                          test   al,al
2f9553  0f 84 4d 01 00 00              je     0x2f96a6
2f9559  80 7f 08 00                    cmp    BYTE PTR [rdi+0x8],0x0
2f955d  0f 85 43 01 00 00              jne    0x2f96a6
2f9563  48 8b cb                       mov    rcx,rbx
2f9566  e8 31 79 fe ff                 call   0x2e0e9c
2f956b  84 c0                          test   al,al
2f956d  0f 84 33 01 00 00              je     0x2f96a6
2f9573  41 b8 35 00 00 00              mov    r8d,0x35
2f9579  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2f957e  48 8b cb                       mov    rcx,rbx
2f9581  e8 62 f6 06 00                 call   0x368be8
2f9586  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2f958b  e8 2c e6 0c 00                 call   0x3c7bbc
2f9590  48 8b d0                       mov    rdx,rax
2f9593  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2f9598  e8 13 60 fe ff                 call   0x2df5b0
2f959d  84 c0                          test   al,al
2f959f  0f 85 01 01 00 00              jne    0x2f96a6
2f95a5  48 8b cb                       mov    rcx,rbx
2f95a8  e8 b7 01 07 00                 call   0x369764
2f95ad  48 8b c8                       mov    rcx,rax
2f95b0  e8 53 19 fd ff                 call   0x2caf08
2f95b5  84 c0                          test   al,al
2f95b7  0f 84 e9 00 00 00              je     0x2f96a6
2f95bd  33 d2                          xor    edx,edx
2f95bf  48 8b cb                       mov    rcx,rbx
2f95c2  e8 45 0c 07 00                 call   0x36a20c
2f95c7  84 c0                          test   al,al
2f95c9  0f 85 d7 00 00 00              jne    0x2f96a6
2f95cf  48 8b cb                       mov    rcx,rbx
2f95d2  e8 d9 fd 06 00                 call   0x3693b0
2f95d7  84 c0                          test   al,al
2f95d9  0f 85 c7 00 00 00              jne    0x2f96a6
2f95df  48 8b cb                       mov    rcx,rbx
2f95e2  e8 a1 1c 07 00                 call   0x36b288
2f95e7  84 c0                          test   al,al
2f95e9  0f 85 b7 00 00 00              jne    0x2f96a6
2f95ef  33 d2                          xor    edx,edx
2f95f1  49 8b cc                       mov    rcx,r12
2f95f4  e8 33 3d fd ff                 call   0x2cd32c
2f95f9  33 d2                          xor    edx,edx
2f95fb  48 8b cb                       mov    rcx,rbx
2f95fe  4c 8b f0                       mov    r14,rax
2f9601  e8 26 3d fd ff                 call   0x2cd32c
2f9606  48 85 c0                       test   rax,rax
2f9609  74 0a                          je     0x2f9615
2f960b  49 3b c6                       cmp    rax,r14
2f960e  75 05                          jne    0x2f9615
2f9610  41 b6 01                       mov    r14b,0x1
2f9613  eb 03                          jmp    0x2f9618
2f9615  45 32 f6                       xor    r14b,r14b
2f9618  45 33 c0                       xor    r8d,r8d
2f961b  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2f9620  48 8b cb                       mov    rcx,rbx
2f9623  83 ce 01                       or     esi,0x1
2f9626  e8 45 08 07 00                 call   0x369e70
2f962b  48 8b d0                       mov    rdx,rax
2f962e  48 8d 0d 2b dc 0d 00           lea    rcx,[rip+0xddc2b]        # 0x3d7260
2f9635  e8 ce 5f fe ff                 call   0x2df608
2f963a  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
2f963e  74 05                          je     0x2f9645
2f9640  45 84 f6                       test   r14b,r14b
2f9643  74 03                          je     0x2f9648
2f9645  41 b6 01                       mov    r14b,0x1
2f9648  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2f964d  83 e6 fe                       and    esi,0xfffffffe
2f9650  e8 9f 2e fd ff                 call   0x2cc4f4
2f9655  45 84 f6                       test   r14b,r14b
2f9658  75 4c                          jne    0x2f96a6
2f965a  48 8d 54 24 3c                 lea    rdx,[rsp+0x3c]
2f965f  49 8b cc                       mov    rcx,r12
2f9662  e8 fd fa 06 00                 call   0x369164
2f9667  48 8b c8                       mov    rcx,rax
2f966a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2f966f  e8 bc 68 fe ff                 call   0x2dff30
2f9674  f3 0f 2c c0                    cvttss2si eax,xmm0
2f9678  48 8b cb                       mov    rcx,rbx
2f967b  66 0f 6e f0                    movd   xmm6,eax
2f967f  0f 5b f6                       cvtdq2ps xmm6,xmm6
2f9682  e8 59 0a 07 00                 call   0x36a0e0
2f9687  84 c0                          test   al,al
2f9689  74 10                          je     0x2f969b
2f968b  44 0f 2f c6                    comiss xmm8,xmm6
2f968f  76 0a                          jbe    0x2f969b
2f9691  4d 85 ff                       test   r15,r15
2f9694  75 05                          jne    0x2f969b
2f9696  4c 8b fb                       mov    r15,rbx
2f9699  eb 0b                          jmp    0x2f96a6
2f969b  0f 2f fe                       comiss xmm7,xmm6
2f969e  76 06                          jbe    0x2f96a6
2f96a0  48 8b eb                       mov    rbp,rbx
2f96a3  0f 28 fe                       movaps xmm7,xmm6
2f96a6  48 83 c7 10                    add    rdi,0x10
2f96aa  49 3b fd                       cmp    rdi,r13
2f96ad  0f 85 93 fe ff ff              jne    0x2f9546
2f96b3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2f96b8  e8 c3 5d fe ff                 call   0x2df480
2f96bd  4d 85 ff                       test   r15,r15
2f96c0  49 0f 45 ef                    cmovne rbp,r15
2f96c4  48 8b c5                       mov    rax,rbp
2f96c7  eb 02                          jmp    0x2f96cb
2f96c9  33 c0                          xor    eax,eax
2f96cb  4c 8d 9c 24 b8 00 00 00        lea    r11,[rsp+0xb8]
2f96d3  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
2f96d8  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
2f96dd  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
2f96e2  49 8b e3                       mov    rsp,r11
2f96e5  41 5f                          pop    r15
2f96e7  41 5e                          pop    r14
2f96e9  41 5d                          pop    r13
2f96eb  41 5c                          pop    r12
2f96ed  5f                             pop    rdi
2f96ee  5e                             pop    rsi
2f96ef  5d                             pop    rbp
2f96f0  5b                             pop    rbx
2f96f1  c3                             ret

; pdata function 0x2f96f4..0x2f9869 unwind=0x3d30d8
2f96f4  40 53                          rex push rbx
2f96f6  55                             push   rbp
2f96f7  56                             push   rsi
2f96f8  57                             push   rdi
2f96f9  41 54                          push   r12
2f96fb  41 55                          push   r13
2f96fd  41 56                          push   r14
2f96ff  41 57                          push   r15
2f9701  48 83 ec 58                    sub    rsp,0x58
2f9705  80 3d 6c bb 0e 00 00           cmp    BYTE PTR [rip+0xebb6c],0x0        # 0x3e5278 ; CONFIG Bools.SilentFarmTree value(+0x48)
2f970c  0f 84 44 01 00 00              je     0x2f9856
2f9712  e8 85 43 fe ff                 call   0x2dda9c
2f9717  48 8b c8                       mov    rcx,rax
2f971a  4c 8b e8                       mov    r13,rax
2f971d  e8 e6 17 fd ff                 call   0x2caf08
2f9722  84 c0                          test   al,al
2f9724  0f 84 2c 01 00 00              je     0x2f9856
2f972a  e8 05 e9 ff ff                 call   0x2f8034
2f972f  48 8b c8                       mov    rcx,rax
2f9732  4c 8b f8                       mov    r15,rax
2f9735  e8 ce 17 fd ff                 call   0x2caf08
2f973a  84 c0                          test   al,al
2f973c  0f 84 14 01 00 00              je     0x2f9856
2f9742  49 8b cf                       mov    rcx,r15
2f9745  33 ed                          xor    ebp,ebp
2f9747  e8 d8 cd 01 00                 call   0x316524
2f974c  33 f6                          xor    esi,esi
2f974e  44 8b e0                       mov    r12d,eax
2f9751  85 c0                          test   eax,eax
2f9753  0f 8e f8 00 00 00              jle    0x2f9851
2f9759  44 8b b4 24 a0 00 00 00        mov    r14d,DWORD PTR [rsp+0xa0]
2f9761  49 8b cf                       mov    rcx,r15
2f9764  e8 9b cd 01 00                 call   0x316504
2f9769  48 8b c8                       mov    rcx,rax
2f976c  48 8b f8                       mov    rdi,rax
2f976f  e8 94 17 fd ff                 call   0x2caf08
2f9774  84 c0                          test   al,al
2f9776  0f 84 ca 00 00 00              je     0x2f9846
2f977c  8d 0c f5 00 00 00 00           lea    ecx,[rsi*8+0x0]
2f9783  48 63 d1                       movsxd rdx,ecx
2f9786  48 8b 7c 17 20                 mov    rdi,QWORD PTR [rdi+rdx*1+0x20]
2f978b  48 8b cf                       mov    rcx,rdi
2f978e  e8 75 17 fd ff                 call   0x2caf08
2f9793  84 c0                          test   al,al
2f9795  0f 84 ab 00 00 00              je     0x2f9846
2f979b  48 8b cf                       mov    rcx,rdi
2f979e  e8 b1 c2 fe ff                 call   0x2e5a54
2f97a3  48 8b c8                       mov    rcx,rax
2f97a6  48 8b d0                       mov    rdx,rax
2f97a9  e8 5a 17 fd ff                 call   0x2caf08
2f97ae  84 c0                          test   al,al
2f97b0  0f 84 90 00 00 00              je     0x2f9846
2f97b6  48 8b ca                       mov    rcx,rdx
2f97b9  e8 96 cb fd ff                 call   0x2d6354
2f97be  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2f97c3  48 8b d8                       mov    rbx,rax
2f97c6  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
2f97ce  e8 3d 8b ff ff                 call   0x2f2310 ; STRING getter=0x2f2310 TreeEntity
2f97d3  48 8b c8                       mov    rcx,rax
2f97d6  e8 f1 ed fd ff                 call   0x2d85cc
2f97db  48 8b c8                       mov    rcx,rax
2f97de  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2f97e8  e8 5f c3 fe ff                 call   0x2e5b4c
2f97ed  48 3b d8                       cmp    rbx,rax
2f97f0  75 54                          jne    0x2f9846
2f97f2  48 8b cf                       mov    rcx,rdi
2f97f5  e8 5a c2 01 00                 call   0x315a54
2f97fa  48 8b c8                       mov    rcx,rax
2f97fd  4c 8b c0                       mov    r8,rax
2f9800  e8 03 17 fd ff                 call   0x2caf08
2f9805  84 c0                          test   al,al
2f9807  74 3d                          je     0x2f9846
2f9809  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2f980e  49 8b c8                       mov    rcx,r8
2f9811  e8 be af 07 00                 call   0x3747d4
2f9816  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2f981b  49 8b cd                       mov    rcx,r13
2f981e  e8 29 fa 06 00                 call   0x36924c
2f9823  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2f9828  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2f982d  e8 fe 66 fe ff                 call   0x2dff30
2f9832  f3 0f 2c c0                    cvttss2si eax,xmm0
2f9836  48 85 ed                       test   rbp,rbp
2f9839  74 05                          je     0x2f9840
2f983b  41 3b c6                       cmp    eax,r14d
2f983e  7f 06                          jg     0x2f9846
2f9840  44 8b f0                       mov    r14d,eax
2f9843  48 8b ef                       mov    rbp,rdi
2f9846  ff c6                          inc    esi
2f9848  41 3b f4                       cmp    esi,r12d
2f984b  0f 8c 10 ff ff ff              jl     0x2f9761
2f9851  48 8b c5                       mov    rax,rbp
2f9854  eb 02                          jmp    0x2f9858
2f9856  33 c0                          xor    eax,eax
2f9858  48 83 c4 58                    add    rsp,0x58
2f985c  41 5f                          pop    r15
2f985e  41 5e                          pop    r14
2f9860  41 5d                          pop    r13
2f9862  41 5c                          pop    r12
2f9864  5f                             pop    rdi
2f9865  5e                             pop    rsi
2f9866  5d                             pop    rbp
2f9867  5b                             pop    rbx
2f9868  c3                             ret

; pdata function 0x2f9138..0x2f94ac unwind=0x3d30f0
2f9138  40 55                          rex push rbp
2f913a  53                             push   rbx
2f913b  56                             push   rsi
2f913c  57                             push   rdi
2f913d  41 54                          push   r12
2f913f  41 55                          push   r13
2f9141  41 56                          push   r14
2f9143  41 57                          push   r15
2f9145  48 8d 6c 24 e1                 lea    rbp,[rsp-0x1f]
2f914a  48 81 ec f8 00 00 00           sub    rsp,0xf8
2f9151  80 3d c0 ed 0d 00 00           cmp    BYTE PTR [rip+0xdedc0],0x0        # 0x3d7f18 ; CONFIG Bools.SilentFarmOre value(+0x48)
2f9158  75 16                          jne    0x2f9170
2f915a  80 3d e0 f0 0d 00 00           cmp    BYTE PTR [rip+0xdf0e0],0x0        # 0x3d8241
2f9161  75 0d                          jne    0x2f9170
2f9163  80 3d 0e e8 0e 00 00           cmp    BYTE PTR [rip+0xee80e],0x0        # 0x3e7978 ; CONFIG Bools.NodePath value(+0x48)
2f916a  0f 84 26 03 00 00              je     0x2f9496
2f9170  e8 27 49 fe ff                 call   0x2dda9c
2f9175  48 8b c8                       mov    rcx,rax
2f9178  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
2f917d  e8 86 1d fd ff                 call   0x2caf08
2f9182  84 c0                          test   al,al
2f9184  0f 84 0c 03 00 00              je     0x2f9496
2f918a  e8 a5 ee ff ff                 call   0x2f8034
2f918f  48 8b c8                       mov    rcx,rax
2f9192  4c 8b e0                       mov    r12,rax
2f9195  e8 6e 1d fd ff                 call   0x2caf08
2f919a  84 c0                          test   al,al
2f919c  0f 84 f4 02 00 00              je     0x2f9496
2f91a2  49 8b cc                       mov    rcx,r12
2f91a5  45 33 f6                       xor    r14d,r14d
2f91a8  e8 77 d3 01 00                 call   0x316524
2f91ad  45 33 ff                       xor    r15d,r15d
2f91b0  89 45 6f                       mov    DWORD PTR [rbp+0x6f],eax
2f91b3  85 c0                          test   eax,eax
2f91b5  0f 8e d6 02 00 00              jle    0x2f9491
2f91bb  44 8b 6d 67                    mov    r13d,DWORD PTR [rbp+0x67]
2f91bf  49 8b cc                       mov    rcx,r12
2f91c2  e8 3d d3 01 00                 call   0x316504
2f91c7  48 8b c8                       mov    rcx,rax
2f91ca  48 8b f0                       mov    rsi,rax
2f91cd  e8 36 1d fd ff                 call   0x2caf08
2f91d2  84 c0                          test   al,al
2f91d4  0f 84 aa 02 00 00              je     0x2f9484
2f91da  42 8d 0c fd 00 00 00 00        lea    ecx,[r15*8+0x0]
2f91e2  48 63 d1                       movsxd rdx,ecx
2f91e5  48 8b 74 16 20                 mov    rsi,QWORD PTR [rsi+rdx*1+0x20]
2f91ea  48 8b ce                       mov    rcx,rsi
2f91ed  e8 16 1d fd ff                 call   0x2caf08
2f91f2  84 c0                          test   al,al
2f91f4  0f 84 8a 02 00 00              je     0x2f9484
2f91fa  48 8b ce                       mov    rcx,rsi
2f91fd  e8 52 c8 fe ff                 call   0x2e5a54
2f9202  48 8b c8                       mov    rcx,rax
2f9205  48 8b d8                       mov    rbx,rax
2f9208  e8 fb 1c fd ff                 call   0x2caf08
2f920d  84 c0                          test   al,al
2f920f  0f 84 6f 02 00 00              je     0x2f9484
2f9215  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
2f9219  48 8b ca                       mov    rcx,rdx
2f921c  e8 e7 1c fd ff                 call   0x2caf08
2f9221  84 c0                          test   al,al
2f9223  0f 84 5b 02 00 00              je     0x2f9484
2f9229  48 8b 4a 20                    mov    rcx,QWORD PTR [rdx+0x20]
2f922d  e8 d6 1c fd ff                 call   0x2caf08
2f9232  84 c0                          test   al,al
2f9234  0f 84 4a 02 00 00              je     0x2f9484
2f923a  48 8b 4a 20                    mov    rcx,QWORD PTR [rdx+0x20]
2f923e  e8 c5 1c fd ff                 call   0x2caf08
2f9243  84 c0                          test   al,al
2f9245  0f 84 39 02 00 00              je     0x2f9484
2f924b  48 8b 4a 20                    mov    rcx,QWORD PTR [rdx+0x20]
2f924f  e8 60 a3 07 00                 call   0x3735b4
2f9254  48 8b c8                       mov    rcx,rax
2f9257  48 8b f8                       mov    rdi,rax
2f925a  e8 a9 1c fd ff                 call   0x2caf08
2f925f  84 c0                          test   al,al
2f9261  0f 84 1d 02 00 00              je     0x2f9484
2f9267  48 8b cb                       mov    rcx,rbx
2f926a  e8 e5 d0 fd ff                 call   0x2d6354
2f926f  48 8d 55 a1                    lea    rdx,[rbp-0x5f]
2f9273  48 8b d8                       mov    rbx,rax
2f9276  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f927a  e8 75 90 ff ff                 call   0x2f22f4 ; STRING getter=0x2f22f4 OreResourceEntity
2f927f  48 8b c8                       mov    rcx,rax
2f9282  e8 f5 f2 fd ff                 call   0x2d857c
2f9287  48 8b c8                       mov    rcx,rax
2f928a  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2f9294  e8 b3 c8 fe ff                 call   0x2e5b4c
2f9299  48 3b d8                       cmp    rbx,rax
2f929c  0f 85 e2 01 00 00              jne    0x2f9484
2f92a2  48 8d 55 77                    lea    rdx,[rbp+0x77]
2f92a6  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f92aa  e8 5d a3 ff ff                 call   0x2f360c ; STRING getter=0x2f360c stone
2f92af  48 8b c8                       mov    rcx,rax
2f92b2  e8 fd f1 fd ff                 call   0x2d84b4
2f92b7  48 8b d0                       mov    rdx,rax
2f92ba  48 8b cf                       mov    rcx,rdi
2f92bd  e8 9e 16 0d 00                 call   0x3ca960
2f92c2  48 85 c0                       test   rax,rax
2f92c5  75 4e                          jne    0x2f9315
2f92c7  48 8d 55 93                    lea    rdx,[rbp-0x6d]
2f92cb  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f92cf  e8 d8 ae ff ff                 call   0x2f41ac ; STRING getter=0x2f41ac sulfur
2f92d4  48 8b c8                       mov    rcx,rax
2f92d7  e8 34 3e fe ff                 call   0x2dd110
2f92dc  48 8b d0                       mov    rdx,rax
2f92df  48 8b cf                       mov    rcx,rdi
2f92e2  e8 79 16 0d 00                 call   0x3ca960
2f92e7  48 85 c0                       test   rax,rax
2f92ea  75 29                          jne    0x2f9315
2f92ec  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
2f92f0  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f92f4  e8 6b b6 ff ff                 call   0x2f4964 ; STRING getter=0x2f4964 metal
2f92f9  48 8b c8                       mov    rcx,rax
2f92fc  e8 b3 f1 fd ff                 call   0x2d84b4
2f9301  48 8b d0                       mov    rdx,rax
2f9304  48 8b cf                       mov    rcx,rdi
2f9307  e8 54 16 0d 00                 call   0x3ca960
2f930c  48 85 c0                       test   rax,rax
2f930f  0f 84 6f 01 00 00              je     0x2f9484
2f9315  48 8d 55 87                    lea    rdx,[rbp-0x79]
2f9319  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f931d  e8 a6 be ff ff                 call   0x2f51c8 ; STRING getter=0x2f51c8 stone
2f9322  48 8b c8                       mov    rcx,rax
2f9325  e8 8a f1 fd ff                 call   0x2d84b4
2f932a  48 8b d0                       mov    rdx,rax
2f932d  48 8b cf                       mov    rcx,rdi
2f9330  e8 2b 16 0d 00                 call   0x3ca960
2f9335  48 85 c0                       test   rax,rax
2f9338  74 0d                          je     0x2f9347
2f933a  80 3d 87 e6 0e 00 00           cmp    BYTE PTR [rip+0xee687],0x0        # 0x3e79c8 ; CONFIG Bools.StoneOre value(+0x48)
2f9341  0f 84 3d 01 00 00              je     0x2f9484
2f9347  48 8d 55 9a                    lea    rdx,[rbp-0x66]
2f934b  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f934f  e8 58 cc ff ff                 call   0x2f5fac ; STRING getter=0x2f5fac sulfur
2f9354  48 8b c8                       mov    rcx,rax
2f9357  e8 b4 3d fe ff                 call   0x2dd110
2f935c  48 8b d0                       mov    rdx,rax
2f935f  48 8b cf                       mov    rcx,rdi
2f9362  e8 f9 15 0d 00                 call   0x3ca960
2f9367  48 85 c0                       test   rax,rax
2f936a  74 0d                          je     0x2f9379
2f936c  80 3d 95 e7 0e 00 00           cmp    BYTE PTR [rip+0xee795],0x0        # 0x3e7b08 ; CONFIG Bools.SulfurOre value(+0x48)
2f9373  0f 84 0b 01 00 00              je     0x2f9484
2f9379  48 8d 55 8d                    lea    rdx,[rbp-0x73]
2f937d  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f9381  e8 c2 d7 ff ff                 call   0x2f6b48 ; STRING getter=0x2f6b48 metal
2f9386  48 8b c8                       mov    rcx,rax
2f9389  e8 26 f1 fd ff                 call   0x2d84b4
2f938e  48 8b d0                       mov    rdx,rax
2f9391  48 8b cf                       mov    rcx,rdi
2f9394  e8 c7 15 0d 00                 call   0x3ca960
2f9399  48 85 c0                       test   rax,rax
2f939c  74 0d                          je     0x2f93ab
2f939e  80 3d c3 e6 0e 00 00           cmp    BYTE PTR [rip+0xee6c3],0x0        # 0x3e7a68 ; CONFIG Bools.MetalOre value(+0x48)
2f93a5  0f 84 d9 00 00 00              je     0x2f9484
2f93ab  48 8d 55 b3                    lea    rdx,[rbp-0x4d]
2f93af  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f93b3  e8 cc de ff ff                 call   0x2f7284 ; STRING getter=0x2f7284 assets/bundled/prefabs/radtown/ore_stone.prefab
2f93b8  48 8b c8                       mov    rcx,rax
2f93bb  e8 04 73 02 00                 call   0x3206c4
2f93c0  48 8b d0                       mov    rdx,rax
2f93c3  48 8b cf                       mov    rcx,rdi
2f93c6  e8 95 15 0d 00                 call   0x3ca960
2f93cb  48 85 c0                       test   rax,rax
2f93ce  0f 85 b0 00 00 00              jne    0x2f9484
2f93d4  48 8d 55 e4                    lea    rdx,[rbp-0x1c]
2f93d8  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f93dc  e8 93 e8 ff ff                 call   0x2f7c74 ; STRING getter=0x2f7c74 assets/bundled/prefabs/radtown/ore_metal.prefab
2f93e1  48 8b c8                       mov    rcx,rax
2f93e4  e8 db 72 02 00                 call   0x3206c4
2f93e9  48 8b d0                       mov    rdx,rax
2f93ec  48 8b cf                       mov    rcx,rdi
2f93ef  e8 6c 15 0d 00                 call   0x3ca960
2f93f4  48 85 c0                       test   rax,rax
2f93f7  0f 85 87 00 00 00              jne    0x2f9484
2f93fd  48 8d 55 b3                    lea    rdx,[rbp-0x4d]
2f9401  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2f9405  e8 6e 6e ff ff                 call   0x2f0278 ; STRING getter=0x2f0278 assets/bundled/prefabs/radtown/ore_sulfur.prefab
2f940a  48 8b c8                       mov    rcx,rax
2f940d  e8 da 72 02 00                 call   0x3206ec
2f9412  48 8b d0                       mov    rdx,rax
2f9415  48 8b cf                       mov    rcx,rdi
2f9418  e8 43 15 0d 00                 call   0x3ca960
2f941d  48 85 c0                       test   rax,rax
2f9420  75 62                          jne    0x2f9484
2f9422  48 8b 4c 24 30                 mov    rcx,QWORD PTR [rsp+0x30]
2f9427  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2f942c  e8 1b fe 06 00                 call   0x36924c
2f9431  f2 0f 10 44 24 20              movsd  xmm0,QWORD PTR [rsp+0x20]
2f9437  48 8b ce                       mov    rcx,rsi
2f943a  8b 44 24 28                    mov    eax,DWORD PTR [rsp+0x28]
2f943e  4d 85 f6                       test   r14,r14
2f9441  75 1e                          jne    0x2f9461
2f9443  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2f9448  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2f944e  4c 8b f6                       mov    r14,rsi
2f9451  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2f9455  e8 56 d2 06 00                 call   0x3666b0
2f945a  f3 44 0f 2c e8                 cvttss2si r13d,xmm0
2f945f  eb 23                          jmp    0x2f9484
2f9461  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2f9466  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2f946c  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2f9470  e8 3b d2 06 00                 call   0x3666b0
2f9475  f3 0f 2c c0                    cvttss2si eax,xmm0
2f9479  41 3b c5                       cmp    eax,r13d
2f947c  7f 06                          jg     0x2f9484
2f947e  4c 8b f6                       mov    r14,rsi
2f9481  44 8b e8                       mov    r13d,eax
2f9484  41 ff c7                       inc    r15d
2f9487  44 3b 7d 6f                    cmp    r15d,DWORD PTR [rbp+0x6f]
2f948b  0f 8c 2e fd ff ff              jl     0x2f91bf
2f9491  49 8b c6                       mov    rax,r14
2f9494  eb 02                          jmp    0x2f9498
2f9496  33 c0                          xor    eax,eax
2f9498  48 81 c4 f8 00 00 00           add    rsp,0xf8
2f949f  41 5f                          pop    r15
2f94a1  41 5e                          pop    r14
2f94a3  41 5d                          pop    r13
2f94a5  41 5c                          pop    r12
2f94a7  5f                             pop    rdi
2f94a8  5e                             pop    rsi
2f94a9  5b                             pop    rbx
2f94aa  5d                             pop    rbp
2f94ab  c3                             ret

