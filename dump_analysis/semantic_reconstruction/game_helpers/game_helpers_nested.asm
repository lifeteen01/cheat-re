; pdata function 0x370aa4..0x370b1c unwind=0x3d2038
370aa4  40 53                          rex push rbx
370aa6  48 83 ec 20                    sub    rsp,0x20
370aaa  8b 05 60 f5 08 00              mov    eax,DWORD PTR [rip+0x8f560]        # 0x400010
370ab0  48 8b d9                       mov    rbx,rcx
370ab3  a8 01                          test   al,0x1
370ab5  75 20                          jne    0x370ad7
370ab7  83 c8 01                       or     eax,0x1
370aba  89 05 50 f5 08 00              mov    DWORD PTR [rip+0x8f550],eax        # 0x400010
370ac0  e8 9f b6 f5 ff                 call   0x2cc164
370ac5  4c 8b c0                       mov    r8,rax
370ac8  48 89 05 39 f5 08 00           mov    QWORD PTR [rip+0x8f539],rax        # 0x400008
370acf  8b 05 3b f5 08 00              mov    eax,DWORD PTR [rip+0x8f53b]        # 0x400010
370ad5  eb 07                          jmp    0x370ade
370ad7  4c 8b 05 2a f5 08 00           mov    r8,QWORD PTR [rip+0x8f52a]        # 0x400008
370ade  a8 02                          test   al,0x2
370ae0  75 1f                          jne    0x370b01
370ae2  48 8b 0d 77 53 06 00           mov    rcx,QWORD PTR [rip+0x65377]        # 0x3d5e60
370ae9  48 8d 15 30 f5 08 00           lea    rdx,[rip+0x8f530]        # 0x400020
370af0  83 c8 02                       or     eax,0x2
370af3  45 33 c9                       xor    r9d,r9d
370af6  89 05 14 f5 08 00              mov    DWORD PTR [rip+0x8f514],eax        # 0x400010
370afc  e8 23 b2 f5 ff                 call   0x2cbd24
370b01  48 8b 0d 58 53 06 00           mov    rcx,QWORD PTR [rip+0x65358]        # 0x3d5e60
370b08  48 8d 15 11 f5 08 00           lea    rdx,[rip+0x8f511]        # 0x400020
370b0f  4c 8b c3                       mov    r8,rbx
370b12  48 83 c4 20                    add    rsp,0x20
370b16  5b                             pop    rbx
370b17  e9 e0 ae f5 ff                 jmp    0x2cb9fc

; pdata function 0x370884..0x370966 unwind=0x3d2354
370884  40 53                          rex push rbx
370886  56                             push   rsi
370887  57                             push   rdi
370888  48 83 ec 40                    sub    rsp,0x40
37088c  8b 05 6e f8 08 00              mov    eax,DWORD PTR [rip+0x8f86e]        # 0x400100
370892  48 8b f1                       mov    rsi,rcx
370895  a8 01                          test   al,0x1
370897  0f 85 82 00 00 00              jne    0x37091f
37089d  83 c8 01                       or     eax,0x1
3708a0  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3708a5  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
3708aa  89 05 50 f8 08 00              mov    DWORD PTR [rip+0x8f850],eax        # 0x400100
3708b0  e8 fb fa ff ff                 call   0x3703b0 ; STRING getter=0x3703b0 System
3708b5  48 8b c8                       mov    rcx,rax
3708b8  e8 53 c8 f6 ff                 call   0x2dd110
3708bd  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3708c2  48 8b f8                       mov    rdi,rax
3708c5  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
3708ca  e8 25 fa ff ff                 call   0x3702f4
3708cf  48 8b c8                       mov    rcx,rax
3708d2  e8 61 c8 f6 ff                 call   0x2dd138
3708d7  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3708dc  48 8b d8                       mov    rbx,rax
3708df  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
3708e4  e8 57 f9 ff ff                 call   0x370240 ; STRING getter=0x370240 Type
3708e9  48 8b c8                       mov    rcx,rax
3708ec  e8 fb 2c f7 ff                 call   0x2e35ec
3708f1  48 8b c8                       mov    rcx,rax
3708f4  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
3708fc  41 b9 01 00 00 00              mov    r9d,0x1
370902  4c 8b c7                       mov    r8,rdi
370905  48 8b d3                       mov    rdx,rbx
370908  e8 5f 38 fc ff                 call   0x33416c
37090d  4c 8b 00                       mov    r8,QWORD PTR [rax]
370910  8b 05 ea f7 08 00              mov    eax,DWORD PTR [rip+0x8f7ea]        # 0x400100
370916  4c 89 05 db f7 08 00           mov    QWORD PTR [rip+0x8f7db],r8        # 0x4000f8
37091d  eb 07                          jmp    0x370926
37091f  4c 8b 05 d2 f7 08 00           mov    r8,QWORD PTR [rip+0x8f7d2]        # 0x4000f8
370926  a8 02                          test   al,0x2
370928  75 1f                          jne    0x370949
37092a  48 8b 0d 2f 55 06 00           mov    rcx,QWORD PTR [rip+0x6552f]        # 0x3d5e60
370931  48 8d 15 d8 f7 08 00           lea    rdx,[rip+0x8f7d8]        # 0x400110
370938  83 c8 02                       or     eax,0x2
37093b  45 33 c9                       xor    r9d,r9d
37093e  89 05 bc f7 08 00              mov    DWORD PTR [rip+0x8f7bc],eax        # 0x400100
370944  e8 db b3 f5 ff                 call   0x2cbd24
370949  48 8b 0d 10 55 06 00           mov    rcx,QWORD PTR [rip+0x65510]        # 0x3d5e60
370950  48 8d 15 b9 f7 08 00           lea    rdx,[rip+0x8f7b9]        # 0x400110
370957  4c 8b c6                       mov    r8,rsi
37095a  48 83 c4 40                    add    rsp,0x40
37095e  5f                             pop    rdi
37095f  5e                             pop    rsi
370960  5b                             pop    rbx
370961  e9 96 b0 f5 ff                 jmp    0x2cb9fc

; pdata function 0x3739c4..0x373a65 unwind=0x3d2348
3739c4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3739c9  57                             push   rdi
3739ca  48 83 ec 30                    sub    rsp,0x30
3739ce  48 8b da                       mov    rbx,rdx
3739d1  48 8b f9                       mov    rdi,rcx
3739d4  e8 2f 75 f5 ff                 call   0x2caf08
3739d9  84 c0                          test   al,al
3739db  74 7a                          je     0x373a57
3739dd  8b 0d 8d de 08 00              mov    ecx,DWORD PTR [rip+0x8de8d]        # 0x401870
3739e3  f6 c1 01                       test   cl,0x1
3739e6  75 20                          jne    0x373a08
3739e8  4c 8b 05 11 35 06 00           mov    r8,QWORD PTR [rip+0x63511]        # 0x3d6f00
3739ef  83 c9 01                       or     ecx,0x1
3739f2  49 81 c0 50 db 9e 01           add    r8,0x19edb50
3739f9  89 0d 71 de 08 00              mov    DWORD PTR [rip+0x8de71],ecx        # 0x401870
3739ff  4c 89 05 62 de 08 00           mov    QWORD PTR [rip+0x8de62],r8        # 0x401868
373a06  eb 07                          jmp    0x373a0f
373a08  4c 8b 05 59 de 08 00           mov    r8,QWORD PTR [rip+0x8de59]        # 0x401868
373a0f  f6 c1 02                       test   cl,0x2
373a12  75 1f                          jne    0x373a33
373a14  83 c9 02                       or     ecx,0x2
373a17  48 8d 15 62 de 08 00           lea    rdx,[rip+0x8de62]        # 0x401880
373a1e  89 0d 4c de 08 00              mov    DWORD PTR [rip+0x8de4c],ecx        # 0x401870
373a24  45 33 c9                       xor    r9d,r9d
373a27  48 8b 0d 32 24 06 00           mov    rcx,QWORD PTR [rip+0x62432]        # 0x3d5e60
373a2e  e8 f1 82 f5 ff                 call   0x2cbd24
373a33  48 8b 0d 26 24 06 00           mov    rcx,QWORD PTR [rip+0x62426]        # 0x3d5e60
373a3a  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
373a3f  4c 8b cf                       mov    r9,rdi
373a42  48 8d 15 37 de 08 00           lea    rdx,[rip+0x8de37]        # 0x401880
373a49  e8 46 e6 f5 ff                 call   0x2d2094
373a4e  0f 10 44 24 20                 movups xmm0,XMMWORD PTR [rsp+0x20]
373a53  f3 0f 7f 03                    movdqu XMMWORD PTR [rbx],xmm0
373a57  48 8b c3                       mov    rax,rbx
373a5a  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
373a5f  48 83 c4 30                    add    rsp,0x30
373a63  5f                             pop    rdi
373a64  c3                             ret

; heuristic leaf/code range 0x322184..0x32218c unwind=0x0
322184  80 79 22 00                    cmp    BYTE PTR [rcx+0x22],0x0
322188  0f 95 c0                       setne  al
32218b  c3                             ret

; heuristic leaf/code range 0x322058..0x322094 unwind=0x0
322058  4c 8b d2                       mov    r10,rdx
32205b  4c 8b d9                       mov    r11,rcx
32205e  45 33 c9                       xor    r9d,r9d
322061  b8 25 49 92 24                 mov    eax,0x24924925
322066  41 f7 e1                       mul    r9d
322069  41 8b c1                       mov    eax,r9d
32206c  2b c2                          sub    eax,edx
32206e  d1 e8                          shr    eax,1
322070  03 c2                          add    eax,edx
322072  c1 e8 05                       shr    eax,0x5
322075  0f be c0                       movsx  eax,al
322078  6b c8 38                       imul   ecx,eax,0x38
32207b  41 8a c1                       mov    al,r9b
32207e  2a c1                          sub    al,cl
322080  04 37                          add    al,0x37
322082  43 32 04 0a                    xor    al,BYTE PTR [r10+r9*1]
322086  43 88 04 0b                    mov    BYTE PTR [r11+r9*1],al
32208a  41 ff c1                       inc    r9d
32208d  41 83 f9 23                    cmp    r9d,0x23
322091  7c ce                          jl     0x322061
322093  c3                             ret

; heuristic leaf/code range 0x3209b4..0x3209bc unwind=0x0
3209b4  80 79 1b 00                    cmp    BYTE PTR [rcx+0x1b],0x0
3209b8  0f 95 c0                       setne  al
3209bb  c3                             ret

; heuristic leaf/code range 0x320118..0x320154 unwind=0x0
320118  4c 8b d2                       mov    r10,rdx
32011b  4c 8b d9                       mov    r11,rcx
32011e  45 33 c9                       xor    r9d,r9d
320121  b8 25 49 92 24                 mov    eax,0x24924925
320126  41 f7 e1                       mul    r9d
320129  41 8b c1                       mov    eax,r9d
32012c  2b c2                          sub    eax,edx
32012e  d1 e8                          shr    eax,1
320130  03 c2                          add    eax,edx
320132  c1 e8 05                       shr    eax,0x5
320135  0f be c0                       movsx  eax,al
320138  6b c8 38                       imul   ecx,eax,0x38
32013b  41 8a c1                       mov    al,r9b
32013e  2a c1                          sub    al,cl
320140  04 37                          add    al,0x37
320142  43 32 04 0a                    xor    al,BYTE PTR [r10+r9*1]
320146  43 88 04 0b                    mov    BYTE PTR [r11+r9*1],al
32014a  41 ff c1                       inc    r9d
32014d  41 83 f9 1c                    cmp    r9d,0x1c
320151  7c ce                          jl     0x320121
320153  c3                             ret

; heuristic leaf/code range 0x3209dc..0x3209e4 unwind=0x0
3209dc  80 79 21 00                    cmp    BYTE PTR [rcx+0x21],0x0
3209e0  0f 95 c0                       setne  al
3209e3  c3                             ret

; heuristic leaf/code range 0x332248..0x332284 unwind=0x0
332248  4c 8b d2                       mov    r10,rdx
33224b  4c 8b d9                       mov    r11,rcx
33224e  45 33 c9                       xor    r9d,r9d
332251  b8 25 49 92 24                 mov    eax,0x24924925
332256  41 f7 e1                       mul    r9d
332259  41 8b c1                       mov    eax,r9d
33225c  2b c2                          sub    eax,edx
33225e  d1 e8                          shr    eax,1
332260  03 c2                          add    eax,edx
332262  c1 e8 05                       shr    eax,0x5
332265  0f be c0                       movsx  eax,al
332268  6b c8 38                       imul   ecx,eax,0x38
33226b  41 8a c1                       mov    al,r9b
33226e  2a c1                          sub    al,cl
332270  04 37                          add    al,0x37
332272  43 32 04 0a                    xor    al,BYTE PTR [r10+r9*1]
332276  43 88 04 0b                    mov    BYTE PTR [r11+r9*1],al
33227a  41 ff c1                       inc    r9d
33227d  41 83 f9 22                    cmp    r9d,0x22
332281  7c ce                          jl     0x332251
332283  c3                             ret

; pdata function 0x2f9950..0x2f9969 unwind=0x3d2064
2f9950  48 83 ec 28                    sub    rsp,0x28
2f9954  48 8b 49 18                    mov    rcx,QWORD PTR [rcx+0x18]
2f9958  e8 e3 eb ff ff                 call   0x2f8540
2f995d  48 8b c8                       mov    rcx,rax
2f9960  48 83 c4 28                    add    rsp,0x28
2f9964  e9 67 c2 01 00                 jmp    0x315bd0

; pdata function 0x367684..0x3677ba unwind=0x3d2b60
367684  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
367689  55                             push   rbp
36768a  56                             push   rsi
36768b  57                             push   rdi
36768c  41 56                          push   r14
36768e  41 57                          push   r15
367690  48 8b ec                       mov    rbp,rsp
367693  48 83 ec 60                    sub    rsp,0x60
367697  4c 8b f2                       mov    r14,rdx
36769a  49 8b d8                       mov    rbx,r8
36769d  49 8b d0                       mov    rdx,r8
3676a0  48 8b f1                       mov    rsi,rcx
3676a3  e8 fc 30 f8 ff                 call   0x2ea7a4
3676a8  4c 8b c8                       mov    r9,rax
3676ab  48 8d 55 d0                    lea    rdx,[rbp-0x30]
3676af  4c 8b c3                       mov    r8,rbx
3676b2  48 8b ce                       mov    rcx,rsi
3676b5  4c 8b f8                       mov    r15,rax
3676b8  e8 3b 47 f8 ff                 call   0x2ebdf8
3676bd  48 83 7d d8 00                 cmp    QWORD PTR [rbp-0x28],0x0
3676c2  74 19                          je     0x3676dd
3676c4  4c 8d 45 30                    lea    r8,[rbp+0x30]
3676c8  c6 45 30 00                    mov    BYTE PTR [rbp+0x30],0x0
3676cc  48 8d 55 d8                    lea    rdx,[rbp-0x28]
3676d0  49 8b ce                       mov    rcx,r14
3676d3  e8 30 77 f6 ff                 call   0x2cee08
3676d8  e9 c6 00 00 00                 jmp    0x3677a3
3676dd  48 8b ce                       mov    rcx,rsi
3676e0  e8 6b 21 fb ff                 call   0x319850
3676e5  48 8b cb                       mov    rcx,rbx
3676e8  e8 b7 3c f6 ff                 call   0x2cb3a4
3676ed  48 8b d0                       mov    rdx,rax
3676f0  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3676f4  e8 97 75 f7 ff                 call   0x2dec90
3676f9  48 8d 4d 30                    lea    rcx,[rbp+0x30]
3676fd  48 8b f8                       mov    rdi,rax
367700  e8 9f 3c f6 ff                 call   0x2cb3a4
367705  48 8d 4e 08                    lea    rcx,[rsi+0x8]
367709  48 8b d8                       mov    rbx,rax
36770c  e8 13 5c f6 ff                 call   0x2cd324
367711  48 8b d0                       mov    rdx,rax
367714  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
367719  4c 8b cf                       mov    r9,rdi
36771c  4c 8d 05 d9 61 f2 ff           lea    r8,[rip+0xfffffffffff261d9]        # 0x28d8fc
367723  48 8d 4d e0                    lea    rcx,[rbp-0x20]
367727  e8 ec 2b f8 ff                 call   0x2ea318
36772c  48 8b ce                       mov    rcx,rsi
36772f  e8 10 f6 f6 ff                 call   0x2d6d44
367734  84 c0                          test   al,al
367736  74 2f                          je     0x367767
367738  48 8b ce                       mov    rcx,rsi
36773b  e8 60 29 fb ff                 call   0x31a0a0
367740  48 8b 4d e8                    mov    rcx,QWORD PTR [rbp-0x18]
367744  48 83 c1 10                    add    rcx,0x10
367748  e8 57 3c f6 ff                 call   0x2cb3a4
36774d  4c 8b c0                       mov    r8,rax
367750  48 8d 55 f0                    lea    rdx,[rbp-0x10]
367754  4d 8b cf                       mov    r9,r15
367757  48 8b ce                       mov    rcx,rsi
36775a  e8 99 46 f8 ff                 call   0x2ebdf8
36775f  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
367762  f3 0f 7f 45 d0                 movdqu XMMWORD PTR [rbp-0x30],xmm0
367767  48 8d 4d e0                    lea    rcx,[rbp-0x20]
36776b  e8 c8 fe f6 ff                 call   0x2d7638
367770  4c 8b 45 d0                    mov    r8,QWORD PTR [rbp-0x30]
367774  4c 8b c8                       mov    r9,rax
367777  49 8b d7                       mov    rdx,r15
36777a  48 8b ce                       mov    rcx,rsi
36777d  e8 a6 fb f6 ff                 call   0x2d7328
367782  4c 8d 45 30                    lea    r8,[rbp+0x30]
367786  48 89 45 40                    mov    QWORD PTR [rbp+0x40],rax
36778a  48 8d 55 40                    lea    rdx,[rbp+0x40]
36778e  c6 45 30 01                    mov    BYTE PTR [rbp+0x30],0x1
367792  49 8b ce                       mov    rcx,r14
367795  e8 6e 76 f6 ff                 call   0x2cee08
36779a  48 8d 4d e0                    lea    rcx,[rbp-0x20]
36779e  e8 01 7c f8 ff                 call   0x2ef3a4
3677a3  48 8b 9c 24 98 00 00 00        mov    rbx,QWORD PTR [rsp+0x98]
3677ab  49 8b c6                       mov    rax,r14
3677ae  48 83 c4 60                    add    rsp,0x60
3677b2  41 5f                          pop    r15
3677b4  41 5e                          pop    r14
3677b6  5f                             pop    rdi
3677b7  5e                             pop    rsi
3677b8  5d                             pop    rbp
3677b9  c3                             ret

