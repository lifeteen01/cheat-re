; heuristic leaf/code range 0x3c7dec..0x3c7dfb unwind=0x0
3c7dec  f3 0f 10 02                    movss  xmm0,DWORD PTR [rdx]
3c7df0  0f 2f 01                       comiss xmm0,DWORD PTR [rcx]
3c7df3  48 0f 47 ca                    cmova  rcx,rdx
3c7df7  48 8b c1                       mov    rax,rcx
3c7dfa  c3                             ret

; heuristic leaf/code range 0x3c7dfc..0x3c7e0b unwind=0x0
3c7dfc  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
3c7e00  0f 2f 02                       comiss xmm0,DWORD PTR [rdx]
3c7e03  48 0f 47 ca                    cmova  rcx,rdx
3c7e07  48 8b c1                       mov    rax,rcx
3c7e0a  c3                             ret

