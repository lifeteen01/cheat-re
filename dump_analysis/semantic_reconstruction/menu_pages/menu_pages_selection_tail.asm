; heuristic leaf/code range 0x2d6510..0x2d651d unwind=0x0
2d6510  8d 51 bf                       lea    edx,[rcx-0x41]
2d6513  80 fa 19                       cmp    dl,0x19
2d6516  8d 41 20                       lea    eax,[rcx+0x20]
2d6519  0f 47 c1                       cmova  eax,ecx
2d651c  c3                             ret

; pdata function 0x36306c..0x3630a8 unwind=0x3d2040
36306c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
363071  57                             push   rdi
363072  48 83 ec 20                    sub    rsp,0x20
363076  48 8b 39                       mov    rdi,QWORD PTR [rcx]
363079  48 8b d9                       mov    rbx,rcx
36307c  48 3b 79 08                    cmp    rdi,QWORD PTR [rcx+0x8]
363080  74 1b                          je     0x36309d
363082  e8 9d a2 f6 ff                 call   0x2cd324
363087  48 8b 53 08                    mov    rdx,QWORD PTR [rbx+0x8]
36308b  4c 8b c0                       mov    r8,rax
36308e  48 8b cf                       mov    rcx,rdi
363091  e8 4a 7e f8 ff                 call   0x2eaee0
363096  48 8b 03                       mov    rax,QWORD PTR [rbx]
363099  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
36309d  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3630a2  48 83 c4 20                    add    rsp,0x20
3630a6  5f                             pop    rdi
3630a7  c3                             ret

