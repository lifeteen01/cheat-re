; heuristic leaf/code range 0x2cf7e4..0x2cf7ff unwind=0x0
2cf7e4  48 85 d2                       test   rdx,rdx
2cf7e7  74 12                          je     0x2cf7fb
2cf7e9  8a 01                          mov    al,BYTE PTR [rcx]
2cf7eb  48 8d 49 02                    lea    rcx,[rcx+0x2]
2cf7ef  41 88 00                       mov    BYTE PTR [r8],al
2cf7f2  49 ff c0                       inc    r8
2cf7f5  48 83 ea 01                    sub    rdx,0x1
2cf7f9  75 ee                          jne    0x2cf7e9
2cf7fb  49 8b c0                       mov    rax,r8
2cf7fe  c3                             ret

