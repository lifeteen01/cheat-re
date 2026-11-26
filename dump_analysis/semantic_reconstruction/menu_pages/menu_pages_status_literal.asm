; heuristic leaf/code range 0x3517cc..0x3517dd unwind=0x0
3517cc  48 b8 79 5d 4c 4e 49 5d 51 3e  movabs rax,0x3e515d494e4c5d79
3517d6  48 89 02                       mov    QWORD PTR [rdx],rax
3517d9  48 8b c2                       mov    rax,rdx
3517dc  c3                             ret

; heuristic leaf/code range 0x2e3400..0x2e343c unwind=0x0
2e3400  4c 8b d2                       mov    r10,rdx
2e3403  4c 8b d9                       mov    r11,rcx
2e3406  45 33 c9                       xor    r9d,r9d
2e3409  b8 25 49 92 24                 mov    eax,0x24924925
2e340e  41 f7 e1                       mul    r9d
2e3411  41 8b c1                       mov    eax,r9d
2e3414  2b c2                          sub    eax,edx
2e3416  d1 e8                          shr    eax,1
2e3418  03 c2                          add    eax,edx
2e341a  c1 e8 05                       shr    eax,0x5
2e341d  0f be c0                       movsx  eax,al
2e3420  6b c8 38                       imul   ecx,eax,0x38
2e3423  41 8a c1                       mov    al,r9b
2e3426  2a c1                          sub    al,cl
2e3428  04 37                          add    al,0x37
2e342a  43 32 04 0a                    xor    al,BYTE PTR [r10+r9*1]
2e342e  43 88 04 0b                    mov    BYTE PTR [r11+r9*1],al
2e3432  41 ff c1                       inc    r9d
2e3435  41 83 f9 08                    cmp    r9d,0x8
2e3439  7c ce                          jl     0x2e3409
2e343b  c3                             ret

