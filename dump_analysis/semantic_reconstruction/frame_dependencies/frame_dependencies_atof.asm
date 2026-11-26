; heuristic leaf/code range 0x3c87f0..0x3c88ec unwind=0x0
3c87f0  f2 0f 10 15 c8 53 ee ff        movsd  xmm2,QWORD PTR [rip+0xffffffffffee53c8]        # 0x2adbc0
3c87f8  0f 57 c9                       xorps  xmm1,xmm1
3c87fb  33 d2                          xor    edx,edx
3c87fd  eb 1d                          jmp    0x3c881c
3c87ff  41 8d 40 d0                    lea    eax,[r8-0x30]
3c8803  83 f8 09                       cmp    eax,0x9
3c8806  77 21                          ja     0x3c8829
3c8808  41 8d 40 d0                    lea    eax,[r8-0x30]
3c880c  f2 0f 59 ca                    mulsd  xmm1,xmm2
3c8810  66 0f 6e c0                    movd   xmm0,eax
3c8814  f3 0f e6 c0                    cvtdq2pd xmm0,xmm0
3c8818  f2 0f 58 c8                    addsd  xmm1,xmm0
3c881c  0f be 01                       movsx  eax,BYTE PTR [rcx]
3c881f  48 ff c1                       inc    rcx
3c8822  44 8b c0                       mov    r8d,eax
3c8825  84 c0                          test   al,al
3c8827  75 d6                          jne    0x3c87ff
3c8829  41 83 f8 2e                    cmp    r8d,0x2e
3c882d  75 2e                          jne    0x3c885d
3c882f  eb 1f                          jmp    0x3c8850
3c8831  41 8d 40 d0                    lea    eax,[r8-0x30]
3c8835  83 f8 09                       cmp    eax,0x9
3c8838  77 23                          ja     0x3c885d
3c883a  41 8d 40 d0                    lea    eax,[r8-0x30]
3c883e  f2 0f 59 ca                    mulsd  xmm1,xmm2
3c8842  ff ca                          dec    edx
3c8844  66 0f 6e c0                    movd   xmm0,eax
3c8848  f3 0f e6 c0                    cvtdq2pd xmm0,xmm0
3c884c  f2 0f 58 c8                    addsd  xmm1,xmm0
3c8850  0f be 01                       movsx  eax,BYTE PTR [rcx]
3c8853  48 ff c1                       inc    rcx
3c8856  44 8b c0                       mov    r8d,eax
3c8859  84 c0                          test   al,al
3c885b  75 d4                          jne    0x3c8831
3c885d  b8 bb ff ff ff                 mov    eax,0xffffffbb
3c8862  41 03 c0                       add    eax,r8d
3c8865  a9 df ff ff ff                 test   eax,0xffffffdf
3c886a  75 69                          jne    0x3c88d5
3c886c  44 0f be 01                    movsx  r8d,BYTE PTR [rcx]
3c8870  48 8d 41 01                    lea    rax,[rcx+0x1]
3c8874  45 33 c9                       xor    r9d,r9d
3c8877  4c 8b d9                       mov    r11,rcx
3c887a  41 ba 01 00 00 00              mov    r10d,0x1
3c8880  41 80 f8 2b                    cmp    r8b,0x2b
3c8884  75 06                          jne    0x3c888c
3c8886  48 83 c1 02                    add    rcx,0x2
3c888a  eb 11                          jmp    0x3c889d
3c888c  48 8b c8                       mov    rcx,rax
3c888f  41 80 f8 2d                    cmp    r8b,0x2d
3c8893  75 0c                          jne    0x3c88a1
3c8895  49 8d 4b 02                    lea    rcx,[r11+0x2]
3c8899  41 83 ca ff                    or     r10d,0xffffffff
3c889d  44 0f be 00                    movsx  r8d,BYTE PTR [rax]
3c88a1  41 83 f8 30                    cmp    r8d,0x30
3c88a5  7c 1f                          jl     0x3c88c6
3c88a7  41 83 f8 39                    cmp    r8d,0x39
3c88ab  7f 19                          jg     0x3c88c6
3c88ad  41 8d 41 fa                    lea    eax,[r9-0x6]
3c88b1  41 8d 04 81                    lea    eax,[r9+rax*4]
3c88b5  45 8d 0c 40                    lea    r9d,[r8+rax*2]
3c88b9  0f be 01                       movsx  eax,BYTE PTR [rcx]
3c88bc  48 ff c1                       inc    rcx
3c88bf  44 8b c0                       mov    r8d,eax
3c88c2  3c 30                          cmp    al,0x30
3c88c4  7d e1                          jge    0x3c88a7
3c88c6  45 0f af ca                    imul   r9d,r10d
3c88ca  41 03 d1                       add    edx,r9d
3c88cd  eb 06                          jmp    0x3c88d5
3c88cf  f2 0f 59 ca                    mulsd  xmm1,xmm2
3c88d3  ff ca                          dec    edx
3c88d5  85 d2                          test   edx,edx
3c88d7  7f f6                          jg     0x3c88cf
3c88d9  79 0d                          jns    0x3c88e8
3c88db  83 c2 01                       add    edx,0x1
3c88de  f2 0f 59 0d 0a 52 ec ff        mulsd  xmm1,QWORD PTR [rip+0xffffffffffec520a]        # 0x28daf0
3c88e6  78 f3                          js     0x3c88db
3c88e8  0f 28 c1                       movaps xmm0,xmm1
3c88eb  c3                             ret

