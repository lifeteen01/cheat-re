; pdata function 0x2ce3dc..0x2ce559 unwind=0x3d20a8
2ce3dc  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2ce3e1  48 89 7c 24 10                 mov    QWORD PTR [rsp+0x10],rdi
2ce3e6  4c 8b da                       mov    r11,rdx
2ce3e9  48 8b f9                       mov    rdi,rcx
2ce3ec  41 0f b6 5b 02                 movzx  ebx,BYTE PTR [r11+0x2]
2ce3f1  4d 8d 4b 04                    lea    r9,[r11+0x4]
2ce3f5  45 33 d2                       xor    r10d,r10d
2ce3f8  45 89 10                       mov    DWORD PTR [r8],r10d
2ce3fb  84 db                          test   bl,bl
2ce3fd  74 60                          je     0x2ce45f
2ce3ff  41 0f b6 51 01                 movzx  edx,BYTE PTR [r9+0x1]
2ce404  8b ca                          mov    ecx,edx
2ce406  83 e1 0f                       and    ecx,0xf
2ce409  83 f9 06                       cmp    ecx,0x6
2ce40c  0f 87 f0 00 00 00              ja     0x2ce502
2ce412  0f 84 23 01 00 00              je     0x2ce53b
2ce418  85 c9                          test   ecx,ecx
2ce41a  0f 84 d1 00 00 00              je     0x2ce4f1
2ce420  83 e9 01                       sub    ecx,0x1
2ce423  0f 84 87 00 00 00              je     0x2ce4b0
2ce429  83 e9 01                       sub    ecx,0x1
2ce42c  74 72                          je     0x2ce4a0
2ce42e  83 e9 02                       sub    ecx,0x2
2ce431  74 51                          je     0x2ce484
2ce433  83 f9 01                       cmp    ecx,0x1
2ce436  75 1b                          jne    0x2ce453
2ce438  c0 ea 04                       shr    dl,0x4
2ce43b  80 fa 04                       cmp    dl,0x4
2ce43e  0f 84 03 01 00 00              je     0x2ce547
2ce444  41 c7 00 00 00 00 00           mov    DWORD PTR [r8],0x0
2ce44b  49 83 c1 04                    add    r9,0x4
2ce44f  41 83 c2 02                    add    r10d,0x2
2ce453  49 83 c1 02                    add    r9,0x2
2ce457  41 ff c2                       inc    r10d
2ce45a  44 3b d3                       cmp    r10d,ebx
2ce45d  72 a0                          jb     0x2ce3ff
2ce45f  41 f6 03 20                    test   BYTE PTR [r11],0x20
2ce463  0f 84 e2 00 00 00              je     0x2ce54b
2ce469  41 0f b6 53 02                 movzx  edx,BYTE PTR [r11+0x2]
2ce46e  f6 c2 01                       test   dl,0x1
2ce471  8d 4a 01                       lea    ecx,[rdx+0x1]
2ce474  0f 44 ca                       cmove  ecx,edx
2ce477  45 8b 5c 4b 0c                 mov    r11d,DWORD PTR [r11+rcx*2+0xc]
2ce47c  4c 03 df                       add    r11,rdi
2ce47f  e9 68 ff ff ff                 jmp    0x2ce3ec
2ce484  c0 ea 04                       shr    dl,0x4
2ce487  80 fa 04                       cmp    dl,0x4
2ce48a  0f 84 b7 00 00 00              je     0x2ce547
2ce490  49 83 c1 02                    add    r9,0x2
2ce494  41 c7 00 00 00 00 00           mov    DWORD PTR [r8],0x0
2ce49b  41 ff c2                       inc    r10d
2ce49e  eb b3                          jmp    0x2ce453
2ce4a0  d1 ea                          shr    edx,1
2ce4a2  81 e2 f8 ff ff 7f              and    edx,0x7ffffff8
2ce4a8  83 c2 08                       add    edx,0x8
2ce4ab  41 01 10                       add    DWORD PTR [r8],edx
2ce4ae  eb a3                          jmp    0x2ce453
2ce4b0  41 8a 41 03                    mov    al,BYTE PTR [r9+0x3]
2ce4b4  41 0f b7 49 02                 movzx  ecx,WORD PTR [r9+0x2]
2ce4b9  c0 e8 04                       shr    al,0x4
2ce4bc  84 c0                          test   al,al
2ce4be  75 11                          jne    0x2ce4d1
2ce4c0  8d 04 cd 00 00 00 00           lea    eax,[rcx*8+0x0]
2ce4c7  b9 02 00 00 00                 mov    ecx,0x2
2ce4cc  8d 51 ff                       lea    edx,[rcx-0x1]
2ce4cf  eb 12                          jmp    0x2ce4e3
2ce4d1  41 0f b7 41 04                 movzx  eax,WORD PTR [r9+0x4]
2ce4d6  c1 e0 10                       shl    eax,0x10
2ce4d9  0b c1                          or     eax,ecx
2ce4db  b9 04 00 00 00                 mov    ecx,0x4
2ce4e0  8d 51 fe                       lea    edx,[rcx-0x2]
2ce4e3  41 01 00                       add    DWORD PTR [r8],eax
2ce4e6  4c 03 c9                       add    r9,rcx
2ce4e9  44 03 d2                       add    r10d,edx
2ce4ec  e9 62 ff ff ff                 jmp    0x2ce453
2ce4f1  c0 ea 04                       shr    dl,0x4
2ce4f4  80 fa 04                       cmp    dl,0x4
2ce4f7  74 4e                          je     0x2ce547
2ce4f9  41 83 00 08                    add    DWORD PTR [r8],0x8
2ce4fd  e9 51 ff ff ff                 jmp    0x2ce453
2ce502  83 e9 07                       sub    ecx,0x7
2ce505  0f 84 40 ff ff ff              je     0x2ce44b
2ce50b  83 e9 01                       sub    ecx,0x1
2ce50e  74 2b                          je     0x2ce53b
2ce510  83 e9 01                       sub    ecx,0x1
2ce513  0f 84 32 ff ff ff              je     0x2ce44b
2ce519  83 f9 01                       cmp    ecx,0x1
2ce51c  0f 85 31 ff ff ff              jne    0x2ce453
2ce522  c0 ea 04                       shr    dl,0x4
2ce525  84 d2                          test   dl,dl
2ce527  75 09                          jne    0x2ce532
2ce529  41 83 00 40                    add    DWORD PTR [r8],0x40
2ce52d  e9 21 ff ff ff                 jmp    0x2ce453
2ce532  41 83 00 48                    add    DWORD PTR [r8],0x48
2ce536  e9 18 ff ff ff                 jmp    0x2ce453
2ce53b  49 83 c1 02                    add    r9,0x2
2ce53f  41 ff c2                       inc    r10d
2ce542  e9 0c ff ff ff                 jmp    0x2ce453
2ce547  33 c0                          xor    eax,eax
2ce549  eb 03                          jmp    0x2ce54e
2ce54b  41 8b 00                       mov    eax,DWORD PTR [r8]
2ce54e  48 8b 5c 24 08                 mov    rbx,QWORD PTR [rsp+0x8]
2ce553  48 8b 7c 24 10                 mov    rdi,QWORD PTR [rsp+0x10]
2ce558  c3                             ret
