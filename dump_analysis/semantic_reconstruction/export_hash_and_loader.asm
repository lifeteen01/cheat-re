; heuristic leaf/code range 0x2cc124..0x2cc143 unwind=0x0
2cc124  0f be c2                       movsx  eax,dl
2cc127  80 ea 41                       sub    dl,0x41
2cc12a  44 8b c0                       mov    r8d,eax
2cc12d  41 83 c8 20                    or     r8d,0x20
2cc131  80 fa 19                       cmp    dl,0x19
2cc134  44 0f 47 c0                    cmova  r8d,eax
2cc138  44 33 c1                       xor    r8d,ecx
2cc13b  41 69 c0 93 01 00 01           imul   eax,r8d,0x1000193
2cc142  c3                             ret

; pdata function 0x2ce5bc..0x2ce5ce unwind=0x3d2064
2ce5bc  48 83 ec 28                    sub    rsp,0x28
2ce5c0  e8 e3 ff ff ff                 call   0x2ce5a8
2ce5c5  48 8b 40 10                    mov    rax,QWORD PTR [rax+0x10]
2ce5c9  48 83 c4 28                    add    rsp,0x28
2ce5cd  c3                             ret

; pdata function 0x2cc424..0x2cc445 unwind=0x3d2038
2cc424  40 53                          rex push rbx
2cc426  48 83 ec 20                    sub    rsp,0x20
2cc42a  48 8b d9                       mov    rbx,rcx
2cc42d  48 8b ca                       mov    rcx,rdx
2cc430  e8 a3 21 00 00                 call   0x2ce5d8
2cc435  48 89 03                       mov    QWORD PTR [rbx],rax
2cc438  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
2cc43c  48 8b c3                       mov    rax,rbx
2cc43f  48 83 c4 20                    add    rsp,0x20
2cc443  5b                             pop    rbx
2cc444  c3                             ret

; heuristic leaf/code range 0x2ce5d8..0x2ce5dc unwind=0x0
2ce5d8  48 8b 01                       mov    rax,QWORD PTR [rcx]
2ce5db  c3                             ret

; heuristic leaf/code range 0x2ce7c0..0x2ce7c8 unwind=0x0
2ce7c0  48 63 41 3c                    movsxd rax,DWORD PTR [rcx+0x3c]
2ce7c4  48 03 c1                       add    rax,rcx
2ce7c7  c3                             ret

