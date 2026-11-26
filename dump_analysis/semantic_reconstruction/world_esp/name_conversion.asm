; pdata function 0x393c38..0x393cba unwind=0x3d2308
393c38  40 53                          rex push rbx
393c3a  55                             push   rbp
393c3b  56                             push   rsi
393c3c  57                             push   rdi
393c3d  41 56                          push   r14
393c3f  48 83 ec 20                    sub    rsp,0x20
393c43  48 63 fa                       movsxd rdi,edx
393c46  45 33 f6                       xor    r14d,r14d
393c49  48 03 f9                       add    rdi,rcx
393c4c  49 8b f1                       mov    rsi,r9
393c4f  4d 8b d8                       mov    r11,r8
393c52  48 8b d9                       mov    rbx,rcx
393c55  4c 8b d1                       mov    r10,rcx
393c58  48 8d 6f ff                    lea    rbp,[rdi-0x1]
393c5c  48 3b cd                       cmp    rcx,rbp
393c5f  73 45                          jae    0x393ca6
393c61  48 85 f6                       test   rsi,rsi
393c64  74 05                          je     0x393c6b
393c66  4c 3b de                       cmp    r11,rsi
393c69  73 3b                          jae    0x393ca6
393c6b  41 0f b7 03                    movzx  eax,WORD PTR [r11]
393c6f  66 85 c0                       test   ax,ax
393c72  74 32                          je     0x393ca6
393c74  49 83 c3 02                    add    r11,0x2
393c78  b9 80 00 00 00                 mov    ecx,0x80
393c7d  66 3b c1                       cmp    ax,cx
393c80  73 08                          jae    0x393c8a
393c82  41 88 02                       mov    BYTE PTR [r10],al
393c85  8d 41 81                       lea    eax,[rcx-0x7f]
393c88  eb 14                          jmp    0x393c9e
393c8a  8b d7                          mov    edx,edi
393c8c  44 8b c0                       mov    r8d,eax
393c8f  41 2b d2                       sub    edx,r10d
393c92  49 8b ca                       mov    rcx,r10
393c95  ff ca                          dec    edx
393c97  e8 68 fd ff ff                 call   0x393a04
393c9c  48 98                          cdqe
393c9e  4c 03 d0                       add    r10,rax
393ca1  4c 3b d5                       cmp    r10,rbp
393ca4  72 bb                          jb     0x393c61
393ca6  45 88 32                       mov    BYTE PTR [r10],r14b
393ca9  44 2b d3                       sub    r10d,ebx
393cac  41 8b c2                       mov    eax,r10d
393caf  48 83 c4 20                    add    rsp,0x20
393cb3  41 5e                          pop    r14
393cb5  5f                             pop    rdi
393cb6  5e                             pop    rsi
393cb7  5d                             pop    rbp
393cb8  5b                             pop    rbx
393cb9  c3                             ret

