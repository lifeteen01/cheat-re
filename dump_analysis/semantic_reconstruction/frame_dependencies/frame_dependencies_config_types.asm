; pdata function 0x2ee854..0x2ee8f3 unwind=0x3d2950
2ee854  40 53                          rex push rbx
2ee856  56                             push   rsi
2ee857  57                             push   rdi
2ee858  41 56                          push   r14
2ee85a  48 83 ec 48                    sub    rsp,0x48
2ee85e  49 8b f8                       mov    rdi,r8
2ee861  48 8b f2                       mov    rsi,rdx
2ee864  4c 8b f1                       mov    r14,rcx
2ee867  e8 4c cc fe ff                 call   0x2db4b8
2ee86c  48 8d 05 d5 10 fa ff           lea    rax,[rip+0xfffffffffffa10d5]        # 0x28f948
2ee873  49 8d 4e 48                    lea    rcx,[r14+0x48]
2ee877  49 89 06                       mov    QWORD PTR [r14],rax
2ee87a  e8 7d 04 00 00                 call   0x2eecfc
2ee87f  0f 10 07                       movups xmm0,XMMWORD PTR [rdi]
2ee882  48 8b d6                       mov    rdx,rsi
2ee885  49 8d 4e 28                    lea    rcx,[r14+0x28]
2ee889  f3 41 0f 7f 46 48              movdqu XMMWORD PTR [r14+0x48],xmm0
2ee88f  e8 d4 63 fe ff                 call   0x2d4c68
2ee894  49 8d 4e 28                    lea    rcx,[r14+0x28]
2ee898  e8 4f ef fd ff                 call   0x2cd7ec
2ee89d  48 8b c8                       mov    rcx,rax
2ee8a0  e8 af 7a fe ff                 call   0x2d6354
2ee8a5  48 8b d0                       mov    rdx,rax
2ee8a8  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ee8ad  e8 02 f1 fe ff                 call   0x2dd9b4
2ee8b2  48 8b d0                       mov    rdx,rax
2ee8b5  49 8d 4e 08                    lea    rcx,[r14+0x8]
2ee8b9  e8 26 63 fe ff                 call   0x2d4be4
2ee8be  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ee8c3  e8 2c dc fd ff                 call   0x2cc4f4
2ee8c8  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2ee8cd  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
2ee8d2  48 8d 0d bf 9e f2 ff           lea    rcx,[rip+0xfffffffffff29ebf]        # 0x218798
2ee8d9  e8 de ec fe ff                 call   0x2dd5bc
2ee8de  49 8b ce                       mov    rcx,r14
2ee8e1  e8 f6 b6 ff ff                 call   0x2e9fdc
2ee8e6  49 8b c6                       mov    rax,r14
2ee8e9  48 83 c4 48                    add    rsp,0x48
2ee8ed  41 5e                          pop    r14
2ee8ef  5f                             pop    rdi
2ee8f0  5e                             pop    rsi
2ee8f1  5b                             pop    rbx
2ee8f2  c3                             ret

; pdata function 0x2df024..0x2df0c1 unwind=0x3d22d4
2df024  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2df029  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
2df02e  57                             push   rdi
2df02f  48 83 ec 40                    sub    rsp,0x40
2df033  49 8b d8                       mov    rbx,r8
2df036  48 8b fa                       mov    rdi,rdx
2df039  48 8b f1                       mov    rsi,rcx
2df03c  e8 77 c4 ff ff                 call   0x2db4b8
2df041  48 8d 05 30 e7 fa ff           lea    rax,[rip+0xfffffffffffae730]        # 0x28d778
2df048  48 8b d7                       mov    rdx,rdi
2df04b  48 89 06                       mov    QWORD PTR [rsi],rax
2df04e  48 8d 4e 28                    lea    rcx,[rsi+0x28]
2df052  8b 03                          mov    eax,DWORD PTR [rbx]
2df054  89 46 48                       mov    DWORD PTR [rsi+0x48],eax
2df057  e8 0c 5c ff ff                 call   0x2d4c68
2df05c  48 8d 4e 28                    lea    rcx,[rsi+0x28]
2df060  e8 87 e7 fe ff                 call   0x2cd7ec
2df065  48 8b c8                       mov    rcx,rax
2df068  e8 e7 72 ff ff                 call   0x2d6354
2df06d  48 8b d0                       mov    rdx,rax
2df070  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2df075  e8 3a e9 ff ff                 call   0x2dd9b4
2df07a  48 8b d0                       mov    rdx,rax
2df07d  48 8d 4e 08                    lea    rcx,[rsi+0x8]
2df081  e8 5e 5b ff ff                 call   0x2d4be4
2df086  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2df08b  e8 64 d4 fe ff                 call   0x2cc4f4
2df090  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2df095  48 89 74 24 50                 mov    QWORD PTR [rsp+0x50],rsi
2df09a  48 8d 0d f7 96 f3 ff           lea    rcx,[rip+0xfffffffffff396f7]        # 0x218798
2df0a1  e8 16 e5 ff ff                 call   0x2dd5bc
2df0a6  48 8b ce                       mov    rcx,rsi
2df0a9  e8 ce eb ff ff                 call   0x2ddc7c
2df0ae  48 8b 5c 24 58                 mov    rbx,QWORD PTR [rsp+0x58]
2df0b3  48 8b c6                       mov    rax,rsi
2df0b6  48 8b 74 24 60                 mov    rsi,QWORD PTR [rsp+0x60]
2df0bb  48 83 c4 40                    add    rsp,0x40
2df0bf  5f                             pop    rdi
2df0c0  c3                             ret

; pdata function 0x2def84..0x2df021 unwind=0x3d22d4
2def84  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2def89  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
2def8e  57                             push   rdi
2def8f  48 83 ec 40                    sub    rsp,0x40
2def93  49 8b d8                       mov    rbx,r8
2def96  48 8b fa                       mov    rdi,rdx
2def99  48 8b f1                       mov    rsi,rcx
2def9c  e8 17 c5 ff ff                 call   0x2db4b8
2defa1  48 8d 05 d8 e8 fa ff           lea    rax,[rip+0xfffffffffffae8d8]        # 0x28d880
2defa8  48 8b d7                       mov    rdx,rdi
2defab  48 89 06                       mov    QWORD PTR [rsi],rax
2defae  48 8d 4e 28                    lea    rcx,[rsi+0x28]
2defb2  8b 03                          mov    eax,DWORD PTR [rbx]
2defb4  89 46 48                       mov    DWORD PTR [rsi+0x48],eax
2defb7  e8 ac 5c ff ff                 call   0x2d4c68
2defbc  48 8d 4e 28                    lea    rcx,[rsi+0x28]
2defc0  e8 27 e8 fe ff                 call   0x2cd7ec
2defc5  48 8b c8                       mov    rcx,rax
2defc8  e8 87 73 ff ff                 call   0x2d6354
2defcd  48 8b d0                       mov    rdx,rax
2defd0  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2defd5  e8 da e9 ff ff                 call   0x2dd9b4
2defda  48 8b d0                       mov    rdx,rax
2defdd  48 8d 4e 08                    lea    rcx,[rsi+0x8]
2defe1  e8 fe 5b ff ff                 call   0x2d4be4
2defe6  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2defeb  e8 04 d5 fe ff                 call   0x2cc4f4
2deff0  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2deff5  48 89 74 24 50                 mov    QWORD PTR [rsp+0x50],rsi
2deffa  48 8d 0d 97 97 f3 ff           lea    rcx,[rip+0xfffffffffff39797]        # 0x218798
2df001  e8 b6 e5 ff ff                 call   0x2dd5bc
2df006  48 8b ce                       mov    rcx,rsi
2df009  e8 b2 ec ff ff                 call   0x2ddcc0
2df00e  48 8b 5c 24 58                 mov    rbx,QWORD PTR [rsp+0x58]
2df013  48 8b c6                       mov    rax,rsi
2df016  48 8b 74 24 60                 mov    rsi,QWORD PTR [rsp+0x60]
2df01b  48 83 c4 40                    add    rsp,0x40
2df01f  5f                             pop    rdi
2df020  c3                             ret

; pdata function 0x2df0c4..0x2df16b unwind=0x3d2950
2df0c4  40 53                          rex push rbx
2df0c6  56                             push   rsi
2df0c7  57                             push   rdi
2df0c8  41 56                          push   r14
2df0ca  48 83 ec 48                    sub    rsp,0x48
2df0ce  49 8b f8                       mov    rdi,r8
2df0d1  48 8b f2                       mov    rsi,rdx
2df0d4  4c 8b f1                       mov    r14,rcx
2df0d7  e8 dc c3 ff ff                 call   0x2db4b8
2df0dc  48 8d 05 6d e6 fa ff           lea    rax,[rip+0xfffffffffffae66d]        # 0x28d750
2df0e3  49 8d 4e 48                    lea    rcx,[r14+0x48]
2df0e7  49 89 06                       mov    QWORD PTR [r14],rax
2df0ea  e8 89 02 00 00                 call   0x2df378
2df0ef  f2 0f 10 07                    movsd  xmm0,QWORD PTR [rdi]
2df0f3  49 8d 4e 28                    lea    rcx,[r14+0x28]
2df0f7  f2 41 0f 11 46 48              movsd  QWORD PTR [r14+0x48],xmm0
2df0fd  48 8b d6                       mov    rdx,rsi
2df100  8b 47 08                       mov    eax,DWORD PTR [rdi+0x8]
2df103  41 89 46 50                    mov    DWORD PTR [r14+0x50],eax
2df107  e8 5c 5b ff ff                 call   0x2d4c68
2df10c  49 8d 4e 28                    lea    rcx,[r14+0x28]
2df110  e8 d7 e6 fe ff                 call   0x2cd7ec
2df115  48 8b c8                       mov    rcx,rax
2df118  e8 37 72 ff ff                 call   0x2d6354
2df11d  48 8b d0                       mov    rdx,rax
2df120  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2df125  e8 8a e8 ff ff                 call   0x2dd9b4
2df12a  48 8b d0                       mov    rdx,rax
2df12d  49 8d 4e 08                    lea    rcx,[r14+0x8]
2df131  e8 ae 5a ff ff                 call   0x2d4be4
2df136  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2df13b  e8 b4 d3 fe ff                 call   0x2cc4f4
2df140  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2df145  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
2df14a  48 8d 0d 47 96 f3 ff           lea    rcx,[rip+0xfffffffffff39647]        # 0x218798
2df151  e8 66 e4 ff ff                 call   0x2dd5bc
2df156  49 8b ce                       mov    rcx,r14
2df159  e8 a2 ea ff ff                 call   0x2ddc00
2df15e  49 8b c6                       mov    rax,r14
2df161  48 83 c4 48                    add    rsp,0x48
2df165  41 5e                          pop    r14
2df167  5f                             pop    rdi
2df168  5e                             pop    rsi
2df169  5b                             pop    rbx
2df16a  c3                             ret

; pdata function 0x2e4d04..0x2e4da6 unwind=0x3d2950
2e4d04  40 53                          rex push rbx
2e4d06  56                             push   rsi
2e4d07  57                             push   rdi
2e4d08  41 56                          push   r14
2e4d0a  48 83 ec 48                    sub    rsp,0x48
2e4d0e  49 8b f8                       mov    rdi,r8
2e4d11  48 8b f2                       mov    rsi,rdx
2e4d14  4c 8b f1                       mov    r14,rcx
2e4d17  e8 9c 67 ff ff                 call   0x2db4b8
2e4d1c  48 8d 05 75 90 fa ff           lea    rax,[rip+0xfffffffffffa9075]        # 0x28dd98
2e4d23  49 8d 4e 48                    lea    rcx,[r14+0x48]
2e4d27  49 89 06                       mov    QWORD PTR [r14],rax
2e4d2a  e8 6d fa fe ff                 call   0x2d479c
2e4d2f  48 8b d7                       mov    rdx,rdi
2e4d32  49 8d 4e 48                    lea    rcx,[r14+0x48]
2e4d36  e8 7d 03 00 00                 call   0x2e50b8
2e4d3b  48 8b d6                       mov    rdx,rsi
2e4d3e  49 8d 4e 28                    lea    rcx,[r14+0x28]
2e4d42  e8 21 ff fe ff                 call   0x2d4c68
2e4d47  49 8d 4e 28                    lea    rcx,[r14+0x28]
2e4d4b  e8 9c 8a fe ff                 call   0x2cd7ec
2e4d50  48 8b c8                       mov    rcx,rax
2e4d53  e8 fc 15 ff ff                 call   0x2d6354
2e4d58  48 8b d0                       mov    rdx,rax
2e4d5b  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2e4d60  e8 4f 8c ff ff                 call   0x2dd9b4
2e4d65  48 8b d0                       mov    rdx,rax
2e4d68  49 8d 4e 08                    lea    rcx,[r14+0x8]
2e4d6c  e8 73 fe fe ff                 call   0x2d4be4
2e4d71  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2e4d76  e8 79 77 fe ff                 call   0x2cc4f4
2e4d7b  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2e4d80  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
2e4d85  48 8d 0d 0c 3a f3 ff           lea    rcx,[rip+0xfffffffffff33a0c]        # 0x218798
2e4d8c  e8 2b 88 ff ff                 call   0x2dd5bc
2e4d91  49 8b ce                       mov    rcx,r14
2e4d94  e8 c7 f1 ff ff                 call   0x2e3f60
2e4d99  49 8b c6                       mov    rax,r14
2e4d9c  48 83 c4 48                    add    rsp,0x48
2e4da0  41 5e                          pop    r14
2e4da2  5f                             pop    rdi
2e4da3  5e                             pop    rsi
2e4da4  5b                             pop    rbx
2e4da5  c3                             ret

; pdata function 0x2eea0c..0x2eeaac unwind=0x3d2950
2eea0c  40 53                          rex push rbx
2eea0e  56                             push   rsi
2eea0f  57                             push   rdi
2eea10  41 56                          push   r14
2eea12  48 83 ec 48                    sub    rsp,0x48
2eea16  49 8b f8                       mov    rdi,r8
2eea19  48 8b f2                       mov    rsi,rdx
2eea1c  4c 8b f1                       mov    r14,rcx
2eea1f  e8 94 ca fe ff                 call   0x2db4b8
2eea24  48 8d 05 95 04 fa ff           lea    rax,[rip+0xfffffffffffa0495]        # 0x28eec0
2eea2b  49 8d 4e 48                    lea    rcx,[r14+0x48]
2eea2f  49 89 06                       mov    QWORD PTR [r14],rax
2eea32  e8 6d c9 fd ff                 call   0x2cb3a4
2eea37  f2 0f 10 07                    movsd  xmm0,QWORD PTR [rdi]
2eea3b  49 8d 4e 28                    lea    rcx,[r14+0x28]
2eea3f  48 8b d6                       mov    rdx,rsi
2eea42  f2 41 0f 11 46 48              movsd  QWORD PTR [r14+0x48],xmm0
2eea48  e8 1b 62 fe ff                 call   0x2d4c68
2eea4d  49 8d 4e 28                    lea    rcx,[r14+0x28]
2eea51  e8 96 ed fd ff                 call   0x2cd7ec
2eea56  48 8b c8                       mov    rcx,rax
2eea59  e8 f6 78 fe ff                 call   0x2d6354
2eea5e  48 8b d0                       mov    rdx,rax
2eea61  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2eea66  e8 49 ef fe ff                 call   0x2dd9b4
2eea6b  48 8b d0                       mov    rdx,rax
2eea6e  49 8d 4e 08                    lea    rcx,[r14+0x8]
2eea72  e8 6d 61 fe ff                 call   0x2d4be4
2eea77  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2eea7c  e8 73 da fd ff                 call   0x2cc4f4
2eea81  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2eea86  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
2eea8b  48 8d 0d 06 9d f2 ff           lea    rcx,[rip+0xfffffffffff29d06]        # 0x218798
2eea92  e8 25 eb fe ff                 call   0x2dd5bc
2eea97  49 8b ce                       mov    rcx,r14
2eea9a  e8 79 b4 ff ff                 call   0x2e9f18
2eea9f  49 8b c6                       mov    rax,r14
2eeaa2  48 83 c4 48                    add    rsp,0x48
2eeaa6  41 5e                          pop    r14
2eeaa8  5f                             pop    rdi
2eeaa9  5e                             pop    rsi
2eeaaa  5b                             pop    rbx
2eeaab  c3                             ret

; pdata function 0x2eeaac..0x2eeb53 unwind=0x3d2950
2eeaac  40 53                          rex push rbx
2eeaae  56                             push   rsi
2eeaaf  57                             push   rdi
2eeab0  41 56                          push   r14
2eeab2  48 83 ec 48                    sub    rsp,0x48
2eeab6  49 8b f8                       mov    rdi,r8
2eeab9  48 8b f2                       mov    rsi,rdx
2eeabc  4c 8b f1                       mov    r14,rcx
2eeabf  e8 f4 c9 fe ff                 call   0x2db4b8
2eeac4  48 8d 05 05 05 fa ff           lea    rax,[rip+0xfffffffffffa0505]        # 0x28efd0
2eeacb  49 8d 4e 48                    lea    rcx,[r14+0x48]
2eeacf  49 89 06                       mov    QWORD PTR [r14],rax
2eead2  e8 e5 90 0d 00                 call   0x3c7bbc
2eead7  f2 0f 10 07                    movsd  xmm0,QWORD PTR [rdi]
2eeadb  49 8d 4e 28                    lea    rcx,[r14+0x28]
2eeadf  f2 41 0f 11 46 48              movsd  QWORD PTR [r14+0x48],xmm0
2eeae5  48 8b d6                       mov    rdx,rsi
2eeae8  8b 47 08                       mov    eax,DWORD PTR [rdi+0x8]
2eeaeb  41 89 46 50                    mov    DWORD PTR [r14+0x50],eax
2eeaef  e8 74 61 fe ff                 call   0x2d4c68
2eeaf4  49 8d 4e 28                    lea    rcx,[r14+0x28]
2eeaf8  e8 ef ec fd ff                 call   0x2cd7ec
2eeafd  48 8b c8                       mov    rcx,rax
2eeb00  e8 4f 78 fe ff                 call   0x2d6354
2eeb05  48 8b d0                       mov    rdx,rax
2eeb08  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2eeb0d  e8 a2 ee fe ff                 call   0x2dd9b4
2eeb12  48 8b d0                       mov    rdx,rax
2eeb15  49 8d 4e 08                    lea    rcx,[r14+0x8]
2eeb19  e8 c6 60 fe ff                 call   0x2d4be4
2eeb1e  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2eeb23  e8 cc d9 fd ff                 call   0x2cc4f4
2eeb28  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2eeb2d  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
2eeb32  48 8d 0d 5f 9c f2 ff           lea    rcx,[rip+0xfffffffffff29c5f]        # 0x218798
2eeb39  e8 7e ea fe ff                 call   0x2dd5bc
2eeb3e  49 8b ce                       mov    rcx,r14
2eeb41  e8 1a b4 ff ff                 call   0x2e9f60
2eeb46  49 8b c6                       mov    rax,r14
2eeb49  48 83 c4 48                    add    rsp,0x48
2eeb4d  41 5e                          pop    r14
2eeb4f  5f                             pop    rdi
2eeb50  5e                             pop    rsi
2eeb51  5b                             pop    rbx
2eeb52  c3                             ret

; pdata function 0x323398..0x32343a unwind=0x3d2950
323398  40 53                          rex push rbx
32339a  56                             push   rsi
32339b  57                             push   rdi
32339c  41 56                          push   r14
32339e  48 83 ec 48                    sub    rsp,0x48
3233a2  49 8b f8                       mov    rdi,r8
3233a5  48 8b f2                       mov    rsi,rdx
3233a8  4c 8b f1                       mov    r14,rcx
3233ab  e8 08 81 fb ff                 call   0x2db4b8
3233b0  48 8d 05 31 04 f7 ff           lea    rax,[rip+0xfffffffffff70431]        # 0x2937e8
3233b7  49 8d 4e 48                    lea    rcx,[r14+0x48]
3233bb  49 89 06                       mov    QWORD PTR [r14],rax
3233be  e8 9d 11 fb ff                 call   0x2d4560
3233c3  48 8b d7                       mov    rdx,rdi
3233c6  49 8d 4e 48                    lea    rcx,[r14+0x48]
3233ca  e8 55 18 fb ff                 call   0x2d4c24
3233cf  48 8b d6                       mov    rdx,rsi
3233d2  49 8d 4e 28                    lea    rcx,[r14+0x28]
3233d6  e8 8d 18 fb ff                 call   0x2d4c68
3233db  49 8d 4e 28                    lea    rcx,[r14+0x28]
3233df  e8 08 a4 fa ff                 call   0x2cd7ec
3233e4  48 8b c8                       mov    rcx,rax
3233e7  e8 68 2f fb ff                 call   0x2d6354
3233ec  48 8b d0                       mov    rdx,rax
3233ef  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3233f4  e8 bb a5 fb ff                 call   0x2dd9b4
3233f9  48 8b d0                       mov    rdx,rax
3233fc  49 8d 4e 08                    lea    rcx,[r14+0x8]
323400  e8 df 17 fb ff                 call   0x2d4be4
323405  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
32340a  e8 e5 90 fa ff                 call   0x2cc4f4
32340f  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
323414  4c 89 74 24 70                 mov    QWORD PTR [rsp+0x70],r14
323419  48 8d 0d 78 53 ef ff           lea    rcx,[rip+0xffffffffffef5378]        # 0x218798
323420  e8 97 a1 fb ff                 call   0x2dd5bc
323425  49 8b ce                       mov    rcx,r14
323428  e8 db fb ff ff                 call   0x323008
32342d  49 8b c6                       mov    rax,r14
323430  48 83 c4 48                    add    rsp,0x48
323434  41 5e                          pop    r14
323436  5f                             pop    rdi
323437  5e                             pop    rsi
323438  5b                             pop    rbx
323439  c3                             ret

