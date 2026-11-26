; pdata function 0x2d866c..0x2d8692 unwind=0x3d2038
2d866c  40 53                          rex push rbx
2d866e  48 83 ec 20                    sub    rsp,0x20
2d8672  48 8b d9                       mov    rbx,rcx
2d8675  e8 4e 04 00 00                 call   0x2d8ac8
2d867a  84 c0                          test   al,al
2d867c  74 0b                          je     0x2d8689
2d867e  48 8b d3                       mov    rdx,rbx
2d8681  48 8b cb                       mov    rcx,rbx
2d8684  e8 bf fc ff ff                 call   0x2d8348
2d8689  48 8b c3                       mov    rax,rbx
2d868c  48 83 c4 20                    add    rsp,0x20
2d8690  5b                             pop    rbx
2d8691  c3                             ret

; heuristic leaf/code range 0x2d8348..0x2d8384 unwind=0x0
2d8348  4c 8b d2                       mov    r10,rdx
2d834b  4c 8b d9                       mov    r11,rcx
2d834e  45 33 c9                       xor    r9d,r9d
2d8351  b8 25 49 92 24                 mov    eax,0x24924925
2d8356  41 f7 e1                       mul    r9d
2d8359  41 8b c1                       mov    eax,r9d
2d835c  2b c2                          sub    eax,edx
2d835e  d1 e8                          shr    eax,1
2d8360  03 c2                          add    eax,edx
2d8362  c1 e8 05                       shr    eax,0x5
2d8365  0f be c0                       movsx  eax,al
2d8368  6b c8 38                       imul   ecx,eax,0x38
2d836b  41 8a c1                       mov    al,r9b
2d836e  2a c1                          sub    al,cl
2d8370  04 37                          add    al,0x37
2d8372  43 32 04 0a                    xor    al,BYTE PTR [r10+r9*1]
2d8376  43 88 04 0b                    mov    BYTE PTR [r11+r9*1],al
2d837a  41 ff c1                       inc    r9d
2d837d  41 83 f9 0f                    cmp    r9d,0xf
2d8381  7c ce                          jl     0x2d8351
2d8383  c3                             ret

; heuristic leaf/code range 0x2ef7dc..0x2ef7e0 unwind=0x0
2ef7dc  8b 41 48                       mov    eax,DWORD PTR [rcx+0x48]
2ef7df  c3                             ret

