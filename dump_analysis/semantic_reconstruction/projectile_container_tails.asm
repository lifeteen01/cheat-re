; pdata function 0x3742ac..0x3742d4 unwind=0x3d2064
3742ac  48 83 ec 28                    sub    rsp,0x28
3742b0  4c 8b c1                       mov    r8,rcx
3742b3  e8 50 6c f5 ff                 call   0x2caf08
3742b8  84 c0                          test   al,al
3742ba  75 04                          jne    0x3742c0
3742bc  33 c0                          xor    eax,eax
3742be  eb 0f                          jmp    0x3742cf
3742c0  ba 38 01 00 00                 mov    edx,0x138
3742c5  49 8b c8                       mov    rcx,r8
3742c8  e8 6f ab f6 ff                 call   0x2dee3c
3742cd  8b 00                          mov    eax,DWORD PTR [rax]
3742cf  48 83 c4 28                    add    rsp,0x28
3742d3  c3                             ret

; heuristic leaf/code range 0x2ce5a4..0x2ce5a7 unwind=0x0
2ce5a4  32 c0                          xor    al,al
2ce5a6  c3                             ret

; heuristic leaf/code range 0x2d9b1c..0x2d9b24 unwind=0x0
2d9b1c  e9 df 05 00 00                 jmp    0x2da100
2d9b21  cc                             int3
2d9b22  cc                             int3
2d9b23  cc                             int3

; heuristic leaf/code range 0x2d1978..0x2d1988 unwind=0x0
2d1978  48 8b 09                       mov    rcx,QWORD PTR [rcx]
2d197b  e9 24 9a ff ff                 jmp    0x2cb3a4
2d1980  e9 67 66 00 00                 jmp    0x2d7fec
2d1985  cc                             int3
2d1986  cc                             int3
2d1987  cc                             int3

; pdata function 0x2d7660..0x2d767a unwind=0x3d2038
2d7660  40 53                          rex push rbx
2d7662  48 83 ec 20                    sub    rsp,0x20
2d7666  48 8b d9                       mov    rbx,rcx
2d7669  48 8b ca                       mov    rcx,rdx
2d766c  e8 33 3d ff ff                 call   0x2cb3a4
2d7671  48 89 03                       mov    QWORD PTR [rbx],rax
2d7674  48 83 c4 20                    add    rsp,0x20
2d7678  5b                             pop    rbx
2d7679  c3                             ret

; heuristic leaf/code range 0x2cc268..0x2cc26f unwind=0x0
2cc268  48 89 11                       mov    QWORD PTR [rcx],rdx
2cc26b  48 8b c1                       mov    rax,rcx
2cc26e  c3                             ret

