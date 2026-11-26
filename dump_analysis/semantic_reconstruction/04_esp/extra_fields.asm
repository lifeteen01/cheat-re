; pdata function 0x372bf4..0x372c1b unwind=0x3d2038
372bf4  40 53                          rex push rbx
372bf6  48 83 ec 20                    sub    rsp,0x20
372bfa  8b da                          mov    ebx,edx
372bfc  4c 8b c1                       mov    r8,rcx
372bff  e8 04 83 f5 ff                 call   0x2caf08
372c04  84 c0                          test   al,al
372c06  74 0d                          je     0x372c15
372c08  49 8b c8                       mov    rcx,r8
372c0b  e8 bc ff ff ff                 call   0x372bcc
372c10  85 c3                          test   ebx,eax
372c12  0f 95 c0                       setne  al
372c15  48 83 c4 20                    add    rsp,0x20
372c19  5b                             pop    rbx
372c1a  c3                             ret

; heuristic leaf/code range 0x372c64..0x372c74 unwind=0x0
372c67  8a 05 bd 60 f3 ff              mov    al,BYTE PTR [rip+0xfffffffffff360bd]        # 0x2a8d2a
372c6d  88 42 06                       mov    BYTE PTR [rdx+0x6],al
372c70  48 8b c2                       mov    rax,rdx
372c73  c3                             ret

; heuristic leaf/code range 0x36c480..0x36c48c unwind=0x0
36c480  48 85 c9                       test   rcx,rcx
36c483  74 07                          je     0x36c48c
36c485  48 63 c2                       movsxd rax,edx
36c488  48 03 c1                       add    rax,rcx
36c48b  c3                             ret

; heuristic leaf/code range 0x2dee3c..0x2dee4a unwind=0x0
2dee3c  4c 8d 04 11                    lea    r8,[rcx+rdx*1]
2dee40  48 f7 d9                       neg    rcx
2dee43  48 1b c0                       sbb    rax,rax
2dee46  49 23 c0                       and    rax,r8
2dee49  c3                             ret

; pdata function 0x36a178..0x36a19d unwind=0x3d2064
36a178  48 83 ec 28                    sub    rsp,0x28
36a17c  48 8b d1                       mov    rdx,rcx
36a17f  e8 84 0d f6 ff                 call   0x2caf08
36a184  84 c0                          test   al,al
36a186  74 10                          je     0x36a198
36a188  48 8b ca                       mov    rcx,rdx
36a18b  e8 d8 d4 ff ff                 call   0x367668
36a190  3d 14 d5 e1 f4                 cmp    eax,0xf4e1d514
36a195  0f 95 c0                       setne  al
36a198  48 83 c4 28                    add    rsp,0x28
36a19c  c3                             ret

