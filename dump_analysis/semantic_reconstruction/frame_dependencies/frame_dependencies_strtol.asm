; pdata function 0x3ca9c0..0x3cab82 unwind=0x3d2690
3ca9c0  40 53                          rex push rbx
3ca9c2  55                             push   rbp
3ca9c3  56                             push   rsi
3ca9c4  57                             push   rdi
3ca9c5  41 56                          push   r14
3ca9c7  48 83 ec 30                    sub    rsp,0x30
3ca9cb  41 8b f8                       mov    edi,r8d
3ca9ce  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
3ca9d6  4c 8b f2                       mov    r14,rdx
3ca9d9  48 8b e9                       mov    rbp,rcx
3ca9dc  48 8b d9                       mov    rbx,rcx
3ca9df  0f be 03                       movsx  eax,BYTE PTR [rbx]
3ca9e2  48 8b f3                       mov    rsi,rbx
3ca9e5  89 44 24 70                    mov    DWORD PTR [rsp+0x70],eax
3ca9e9  48 ff c3                       inc    rbx
3ca9ec  8b 4c 24 70                    mov    ecx,DWORD PTR [rsp+0x70]
3ca9f0  e8 6b fe ff ff                 call   0x3ca860
3ca9f5  85 c0                          test   eax,eax
3ca9f7  75 e6                          jne    0x3ca9df
3ca9f9  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3ca9fd  83 f8 2d                       cmp    eax,0x2d
3caa00  75 0a                          jne    0x3caa0c
3caa02  c7 44 24 20 01 00 00 00        mov    DWORD PTR [rsp+0x20],0x1
3caa0a  eb 09                          jmp    0x3caa15
3caa0c  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3caa10  83 f8 2b                       cmp    eax,0x2b
3caa13  75 0b                          jne    0x3caa20
3caa15  0f be 03                       movsx  eax,BYTE PTR [rbx]
3caa18  48 8d 5e 02                    lea    rbx,[rsi+0x2]
3caa1c  89 44 24 70                    mov    DWORD PTR [rsp+0x70],eax
3caa20  f7 c7 ef ff ff ff              test   edi,0xffffffef
3caa26  75 26                          jne    0x3caa4e
3caa28  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3caa2c  83 f8 30                       cmp    eax,0x30
3caa2f  75 1d                          jne    0x3caa4e
3caa31  8a 03                          mov    al,BYTE PTR [rbx]
3caa33  3c 78                          cmp    al,0x78
3caa35  74 06                          je     0x3caa3d
3caa37  8a 03                          mov    al,BYTE PTR [rbx]
3caa39  3c 58                          cmp    al,0x58
3caa3b  75 11                          jne    0x3caa4e
3caa3d  0f be 43 01                    movsx  eax,BYTE PTR [rbx+0x1]
3caa41  bf 10 00 00 00                 mov    edi,0x10
3caa46  89 44 24 70                    mov    DWORD PTR [rsp+0x70],eax
3caa4a  48 83 c3 02                    add    rbx,0x2
3caa4e  85 ff                          test   edi,edi
3caa50  75 12                          jne    0x3caa64
3caa52  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3caa56  bf 0a 00 00 00                 mov    edi,0xa
3caa5b  83 f8 30                       cmp    eax,0x30
3caa5e  8d 4f fe                       lea    ecx,[rdi-0x2]
3caa61  0f 44 f9                       cmove  edi,ecx
3caa64  83 ce ff                       or     esi,0xffffffff
3caa67  33 d2                          xor    edx,edx
3caa69  8b c6                          mov    eax,esi
3caa6b  f7 f7                          div    edi
3caa6d  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
3caa71  89 54 24 24                    mov    DWORD PTR [rsp+0x24],edx
3caa75  c7 44 24 60 00 00 00 00        mov    DWORD PTR [rsp+0x60],0x0
3caa7d  c7 44 24 68 00 00 00 00        mov    DWORD PTR [rsp+0x68],0x0
3caa85  8b 4c 24 70                    mov    ecx,DWORD PTR [rsp+0x70]
3caa89  e8 c6 fd ff ff                 call   0x3ca854
3caa8e  85 c0                          test   eax,eax
3caa90  74 0d                          je     0x3caa9f
3caa92  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3caa96  83 e8 30                       sub    eax,0x30
3caa99  89 44 24 70                    mov    DWORD PTR [rsp+0x70],eax
3caa9d  eb 30                          jmp    0x3caacf
3caa9f  8b 4c 24 70                    mov    ecx,DWORD PTR [rsp+0x70]
3caaa3  e8 c0 f7 ff ff                 call   0x3ca268
3caaa8  84 c0                          test   al,al
3caaaa  0f 84 8d 00 00 00              je     0x3cab3d
3caab0  8b 4c 24 70                    mov    ecx,DWORD PTR [rsp+0x70]
3caab4  e8 c7 f7 ff ff                 call   0x3ca280
3caab9  8b 4c 24 70                    mov    ecx,DWORD PTR [rsp+0x70]
3caabd  0f b6 c0                       movzx  eax,al
3caac0  83 f0 01                       xor    eax,0x1
3caac3  c1 e0 05                       shl    eax,0x5
3caac6  83 c0 37                       add    eax,0x37
3caac9  2b c8                          sub    ecx,eax
3caacb  89 4c 24 70                    mov    DWORD PTR [rsp+0x70],ecx
3caacf  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3caad3  3b c7                          cmp    eax,edi
3caad5  7d 66                          jge    0x3cab3d
3caad7  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
3caadb  85 c0                          test   eax,eax
3caadd  78 47                          js     0x3cab26
3caadf  8b 4c 24 60                    mov    ecx,DWORD PTR [rsp+0x60]
3caae3  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
3caae7  3b c8                          cmp    ecx,eax
3caae9  77 3b                          ja     0x3cab26
3caaeb  8b 4c 24 60                    mov    ecx,DWORD PTR [rsp+0x60]
3caaef  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
3caaf3  3b c8                          cmp    ecx,eax
3caaf5  75 0c                          jne    0x3cab03
3caaf7  8b 4c 24 24                    mov    ecx,DWORD PTR [rsp+0x24]
3caafb  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3caaff  3b c1                          cmp    eax,ecx
3cab01  7f 23                          jg     0x3cab26
3cab03  c7 44 24 68 01 00 00 00        mov    DWORD PTR [rsp+0x68],0x1
3cab0b  8b 44 24 60                    mov    eax,DWORD PTR [rsp+0x60]
3cab0f  0f af c7                       imul   eax,edi
3cab12  89 44 24 60                    mov    DWORD PTR [rsp+0x60],eax
3cab16  8b 4c 24 60                    mov    ecx,DWORD PTR [rsp+0x60]
3cab1a  8b 44 24 70                    mov    eax,DWORD PTR [rsp+0x70]
3cab1e  03 c8                          add    ecx,eax
3cab20  89 4c 24 60                    mov    DWORD PTR [rsp+0x60],ecx
3cab24  eb 08                          jmp    0x3cab2e
3cab26  c7 44 24 68 ff ff ff ff        mov    DWORD PTR [rsp+0x68],0xffffffff
3cab2e  0f be 03                       movsx  eax,BYTE PTR [rbx]
3cab31  48 ff c3                       inc    rbx
3cab34  89 44 24 70                    mov    DWORD PTR [rsp+0x70],eax
3cab38  e9 48 ff ff ff                 jmp    0x3caa85
3cab3d  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
3cab41  85 c0                          test   eax,eax
3cab43  79 06                          jns    0x3cab4b
3cab45  89 74 24 60                    mov    DWORD PTR [rsp+0x60],esi
3cab49  eb 12                          jmp    0x3cab5d
3cab4b  8b 44 24 20                    mov    eax,DWORD PTR [rsp+0x20]
3cab4f  85 c0                          test   eax,eax
3cab51  74 0a                          je     0x3cab5d
3cab53  8b 44 24 60                    mov    eax,DWORD PTR [rsp+0x60]
3cab57  f7 d8                          neg    eax
3cab59  89 44 24 60                    mov    DWORD PTR [rsp+0x60],eax
3cab5d  4d 85 f6                       test   r14,r14
3cab60  74 11                          je     0x3cab73
3cab62  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
3cab66  48 8d 4b ff                    lea    rcx,[rbx-0x1]
3cab6a  85 c0                          test   eax,eax
3cab6c  48 0f 45 e9                    cmovne rbp,rcx
3cab70  49 89 2e                       mov    QWORD PTR [r14],rbp
3cab73  8b 44 24 60                    mov    eax,DWORD PTR [rsp+0x60]
3cab77  48 83 c4 30                    add    rsp,0x30
3cab7b  41 5e                          pop    r14
3cab7d  5f                             pop    rdi
3cab7e  5e                             pop    rsi
3cab7f  5d                             pop    rbp
3cab80  5b                             pop    rbx
3cab81  c3                             ret

