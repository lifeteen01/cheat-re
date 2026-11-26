; heuristic leaf/code range 0x2ce1d4..0x2ce1ee unwind=0x0
2ce1d4  48 63 41 3c                    movsxd rax,DWORD PTR [rcx+0x3c]
2ce1d8  44 8b 84 08 a0 00 00 00        mov    r8d,DWORD PTR [rax+rcx*1+0xa0]
2ce1e0  8b 84 08 a4 00 00 00           mov    eax,DWORD PTR [rax+rcx*1+0xa4]
2ce1e7  89 02                          mov    DWORD PTR [rdx],eax
2ce1e9  4a 8d 04 01                    lea    rax,[rcx+r8*1]
2ce1ed  c3                             ret
