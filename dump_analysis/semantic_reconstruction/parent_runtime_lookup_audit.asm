; heuristic leaf/code range 0x2ce1d4..0x2ce1ee unwind=0x0
2ce1d4  48 63 41 3c                    movsxd rax,DWORD PTR [rcx+0x3c]
2ce1d8  44 8b 84 08 a0 00 00 00        mov    r8d,DWORD PTR [rax+rcx*1+0xa0]
2ce1e0  8b 84 08 a4 00 00 00           mov    eax,DWORD PTR [rax+rcx*1+0xa4]
2ce1e7  89 02                          mov    DWORD PTR [rdx],eax
2ce1e9  4a 8d 04 01                    lea    rax,[rcx+r8*1]
2ce1ed  c3                             ret

; pdata function 0x2ce1f0..0x2ce237 unwind=0x3d2064
2ce1f0  48 83 ec 28                    sub    rsp,0x28
2ce1f4  4c 8b d2                       mov    r10,rdx
2ce1f7  c7 44 24 40 00 00 00 00        mov    DWORD PTR [rsp+0x40],0x0
2ce1ff  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2ce204  e8 cb ff ff ff                 call   0x2ce1d4
2ce209  44 8b 4c 24 40                 mov    r9d,DWORD PTR [rsp+0x40]
2ce20e  45 33 c0                       xor    r8d,r8d
2ce211  4c 8b d8                       mov    r11,rax
2ce214  45 85 c9                       test   r9d,r9d
2ce217  74 17                          je     0x2ce230
2ce219  4b 8d 14 40                    lea    rdx,[r8+r8*2]
2ce21d  49 8d 04 93                    lea    rax,[r11+rdx*4]
2ce221  8b 08                          mov    ecx,DWORD PTR [rax]
2ce223  49 3b ca                       cmp    rcx,r10
2ce226  74 0a                          je     0x2ce232
2ce228  41 ff c0                       inc    r8d
2ce22b  45 3b c1                       cmp    r8d,r9d
2ce22e  72 e9                          jb     0x2ce219
2ce230  33 c0                          xor    eax,eax
2ce232  48 83 c4 28                    add    rsp,0x28
2ce236  c3                             ret

