; pdata function 0x336438..0x33649e unwind=0x3d206c
336438  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
33643d  57                             push   rdi
33643e  48 83 ec 20                    sub    rsp,0x20
336442  48 8b da                       mov    rbx,rdx
336445  48 8b f9                       mov    rdi,rcx
336448  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
33644c  e8 bf 86 f9 ff                 call   0x2ceb10
336451  48 8b cb                       mov    rcx,rbx
336454  e8 7b 2f fa ff                 call   0x2d93d4
336459  48 8b cb                       mov    rcx,rbx
33645c  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
336461  e8 72 81 f9 ff                 call   0x2ce5d8
336466  48 8b cb                       mov    rcx,rbx
336469  48 89 44 24 48                 mov    QWORD PTR [rsp+0x48],rax
33646e  e8 75 2f fa ff                 call   0x2d93e8
336473  48 8b c8                       mov    rcx,rax
336476  e8 29 4f f9 ff                 call   0x2cb3a4
33647b  48 8b d0                       mov    rdx,rax
33647e  4c 8d 4c 24 30                 lea    r9,[rsp+0x30]
336483  4c 8d 44 24 48                 lea    r8,[rsp+0x48]
336488  48 8b cf                       mov    rcx,rdi
33648b  e8 b4 35 fa ff                 call   0x2d9a44
336490  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
336495  48 8b c7                       mov    rax,rdi
336498  48 83 c4 20                    add    rsp,0x20
33649c  5f                             pop    rdi
33649d  c3                             ret

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

; heuristic leaf/code range 0x2d4a80..0x2d4ab4 unwind=0x0
2d4a80  e9 e7 2d 00 00                 jmp    0x2d786c
2d4a85  cc                             int3
2d4a86  cc                             int3
2d4a87  cc                             int3
2d4a88  e9 bb ff ff ff                 jmp    0x2d4a48
2d4a8d  cc                             int3
2d4a8e  cc                             int3
2d4a8f  cc                             int3
2d4a90  48 83 c1 18                    add    rcx,0x18
2d4a94  e9 5b 7a ff ff                 jmp    0x2cc4f4
2d4a99  cc                             int3
2d4a9a  cc                             int3
2d4a9b  cc                             int3
2d4a9c  48 8b 51 08                    mov    rdx,QWORD PTR [rcx+0x8]
2d4aa0  48 8b 41 10                    mov    rax,QWORD PTR [rcx+0x10]
2d4aa4  48 89 02                       mov    QWORD PTR [rdx],rax
2d4aa7  48 8b 51 10                    mov    rdx,QWORD PTR [rcx+0x10]
2d4aab  48 8b 41 08                    mov    rax,QWORD PTR [rcx+0x8]
2d4aaf  48 89 42 08                    mov    QWORD PTR [rdx+0x8],rax
2d4ab3  c3                             ret

; pdata function 0x336374..0x3363cf unwind=0x3d206c
336374  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
336379  57                             push   rdi
33637a  48 83 ec 20                    sub    rsp,0x20
33637e  48 8b f9                       mov    rdi,rcx
336381  48 8b da                       mov    rbx,rdx
336384  48 8b ca                       mov    rcx,rdx
336387  e8 98 6f f9 ff                 call   0x2cd324
33638c  48 8b d0                       mov    rdx,rax
33638f  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
336394  e8 0b 50 f9 ff                 call   0x2cb3a4
336399  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
33639d  4c 8b c0                       mov    r8,rax
3363a0  48 8b cf                       mov    rcx,rdi
3363a3  e8 68 87 f9 ff                 call   0x2ceb10
3363a8  4c 8d 4b 08                    lea    r9,[rbx+0x8]
3363ac  4c 8b c3                       mov    r8,rbx
3363af  49 8b 11                       mov    rdx,QWORD PTR [r9]
3363b2  48 8b cf                       mov    rcx,rdi
3363b5  48 2b 13                       sub    rdx,QWORD PTR [rbx]
3363b8  48 c1 fa 03                    sar    rdx,0x3
3363bc  e8 67 f3 ff ff                 call   0x335728
3363c1  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
3363c6  48 8b c7                       mov    rax,rdi
3363c9  48 83 c4 20                    add    rsp,0x20
3363cd  5f                             pop    rdi
3363ce  c3                             ret

; heuristic leaf/code range 0x2cc46c..0x2cc477 unwind=0x0
2cc46c  48 89 11                       mov    QWORD PTR [rcx],rdx
2cc46f  48 8b c1                       mov    rax,rcx
2cc472  4c 89 41 08                    mov    QWORD PTR [rcx+0x8],r8
2cc476  c3                             ret

