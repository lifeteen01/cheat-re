; heuristic leaf/code range 0x393a04..0x393a19 unwind=0x0
393a04  4c 8b c9                       mov    r9,rcx
393a07  41 81 f8 80 00 00 00           cmp    r8d,0x80
393a0e  73 09                          jae    0x393a19
393a10  44 88 01                       mov    BYTE PTR [rcx],r8b
393a13  b8 01 00 00 00                 mov    eax,0x1
393a18  c3                             ret

