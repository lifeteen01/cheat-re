; pdata function 0x2cc0fc..0x2cc124 unwind=0x3d2038
2cc0fc  40 53                          rex push rbx
2cc0fe  48 83 ec 20                    sub    rsp,0x20
2cc102  48 8d 59 01                    lea    rbx,[rcx+0x1]
2cc106  8b c2                          mov    eax,edx
2cc108  8a 09                          mov    cl,BYTE PTR [rcx]
2cc10a  eb 0e                          jmp    0x2cc11a
2cc10c  8a d1                          mov    dl,cl
2cc10e  8b c8                          mov    ecx,eax
2cc110  e8 0f 00 00 00                 call   0x2cc124
2cc115  8a 0b                          mov    cl,BYTE PTR [rbx]
2cc117  48 ff c3                       inc    rbx
2cc11a  84 c9                          test   cl,cl
2cc11c  75 ee                          jne    0x2cc10c
2cc11e  48 83 c4 20                    add    rsp,0x20
2cc122  5b                             pop    rbx
2cc123  c3                             ret

; heuristic leaf/code range 0x2ce23c..0x2ce243 unwind=0x0
2ce23c  48 c1 e9 20                    shr    rcx,0x20
2ce240  8b c1                          mov    eax,ecx
2ce242  c3                             ret

; heuristic leaf/code range 0x2ce238..0x2ce23b unwind=0x0
2ce238  8b c1                          mov    eax,ecx
2ce23a  c3                             ret

; pdata function 0x2cc448..0x2cc46a unwind=0x3d2038
2cc448  40 53                          rex push rbx
2cc44a  48 83 ec 20                    sub    rsp,0x20
2cc44e  48 8b d9                       mov    rbx,rcx
2cc451  e8 66 21 00 00                 call   0x2ce5bc
2cc456  48 8b d0                       mov    rdx,rax
2cc459  48 8b cb                       mov    rcx,rbx
2cc45c  e8 c3 ff ff ff                 call   0x2cc424
2cc461  48 8b c3                       mov    rax,rbx
2cc464  48 83 c4 20                    add    rsp,0x20
2cc468  5b                             pop    rbx
2cc469  c3                             ret

; pdata function 0x2cc3e0..0x2cc421 unwind=0x3d2040
2cc3e0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2cc3e5  57                             push   rdi
2cc3e6  48 83 ec 20                    sub    rsp,0x20
2cc3ea  48 8b f9                       mov    rdi,rcx
2cc3ed  48 89 11                       mov    QWORD PTR [rcx],rdx
2cc3f0  48 8b ca                       mov    rcx,rdx
2cc3f3  48 8b da                       mov    rbx,rdx
2cc3f6  e8 c5 23 00 00                 call   0x2ce7c0
2cc3fb  48 8b 80 88 00 00 00           mov    rax,QWORD PTR [rax+0x88]
2cc402  44 8b c0                       mov    r8d,eax
2cc405  4c 03 c3                       add    r8,rbx
2cc408  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2cc40d  48 c1 e8 20                    shr    rax,0x20
2cc411  89 47 10                       mov    DWORD PTR [rdi+0x10],eax
2cc414  48 8b c7                       mov    rax,rdi
2cc417  4c 89 47 08                    mov    QWORD PTR [rdi+0x8],r8
2cc41b  48 83 c4 20                    add    rsp,0x20
2cc41f  5f                             pop    rdi
2cc420  c3                             ret

; heuristic leaf/code range 0x2cc540..0x2cc54b unwind=0x0
2cc540  48 8b 01                       mov    rax,QWORD PTR [rcx]
2cc543  48 39 41 08                    cmp    QWORD PTR [rcx+0x8],rax
2cc547  0f 95 c0                       setne  al
2cc54a  c3                             ret

; heuristic leaf/code range 0x2cea7c..0x2cea84 unwind=0x0
2cea7c  48 8b 41 08                    mov    rax,QWORD PTR [rcx+0x8]
2cea80  8b 40 18                       mov    eax,DWORD PTR [rax+0x18]
2cea83  c3                             ret

; heuristic leaf/code range 0x2ce700..0x2ce718 unwind=0x0
2ce700  4c 8b 09                       mov    r9,QWORD PTR [rcx]
2ce703  48 8b 41 08                    mov    rax,QWORD PTR [rcx+0x8]
2ce707  44 8b c2                       mov    r8d,edx
2ce70a  8b 40 20                       mov    eax,DWORD PTR [rax+0x20]
2ce70d  49 03 c1                       add    rax,r9
2ce710  42 8b 04 80                    mov    eax,DWORD PTR [rax+r8*4]
2ce714  49 03 c1                       add    rax,r9
2ce717  c3                             ret

; heuristic leaf/code range 0x2cd758..0x2cd77a unwind=0x0
2cd758  48 8b 41 08                    mov    rax,QWORD PTR [rcx+0x8]
2cd75c  4c 8b 09                       mov    r9,QWORD PTR [rcx]
2cd75f  8b d2                          mov    edx,edx
2cd761  8b 48 24                       mov    ecx,DWORD PTR [rax+0x24]
2cd764  44 8b 40 1c                    mov    r8d,DWORD PTR [rax+0x1c]
2cd768  49 03 c9                       add    rcx,r9
2cd76b  0f b7 14 51                    movzx  edx,WORD PTR [rcx+rdx*2]
2cd76f  4b 8d 04 01                    lea    rax,[r9+r8*1]
2cd773  8b 04 90                       mov    eax,DWORD PTR [rax+rdx*4]
2cd776  49 03 c1                       add    rax,r9
2cd779  c3                             ret

; pdata function 0x2ce790..0x2ce7bd unwind=0x3d2038
2ce790  40 53                          rex push rbx
2ce792  48 83 ec 20                    sub    rsp,0x20
2ce796  48 8b d9                       mov    rbx,rcx
2ce799  48 8b 09                       mov    rcx,QWORD PTR [rcx]
2ce79c  e8 37 fe ff ff                 call   0x2ce5d8
2ce7a1  48 89 03                       mov    QWORD PTR [rbx],rax
2ce7a4  48 3b 43 08                    cmp    rax,QWORD PTR [rbx+0x8]
2ce7a8  74 0b                          je     0x2ce7b5
2ce7aa  48 83 78 30 00                 cmp    QWORD PTR [rax+0x30],0x0
2ce7af  74 04                          je     0x2ce7b5
2ce7b1  b0 01                          mov    al,0x1
2ce7b3  eb 02                          jmp    0x2ce7b7
2ce7b5  32 c0                          xor    al,al
2ce7b7  48 83 c4 20                    add    rsp,0x20
2ce7bb  5b                             pop    rbx
2ce7bc  c3                             ret

