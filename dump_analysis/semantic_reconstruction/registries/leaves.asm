; pdata function 0x2ea040..0x2ea069 unwind=0x3d2318
2ea040  40 53                          rex push rbx
2ea042  48 83 ec 30                    sub    rsp,0x30
2ea046  4d 8b d1                       mov    r10,r9
2ea049  49 8b d0                       mov    rdx,r8
2ea04c  32 c0                          xor    al,al
2ea04e  4d 8b c2                       mov    r8,r10
2ea051  45 32 c9                       xor    r9b,r9b
2ea054  88 44 24 20                    mov    BYTE PTR [rsp+0x20],al
2ea058  48 8b d9                       mov    rbx,rcx
2ea05b  e8 70 04 00 00                 call   0x2ea4d0
2ea060  48 8b c3                       mov    rax,rbx
2ea063  48 83 c4 30                    add    rsp,0x30
2ea067  5b                             pop    rbx
2ea068  c3                             ret

; pdata function 0x2ddd38..0x2ddd61 unwind=0x3d2318
2ddd38  40 53                          rex push rbx
2ddd3a  48 83 ec 30                    sub    rsp,0x30
2ddd3e  4d 8b d1                       mov    r10,r9
2ddd41  49 8b d0                       mov    rdx,r8
2ddd44  32 c0                          xor    al,al
2ddd46  4d 8b c2                       mov    r8,r10
2ddd49  45 32 c9                       xor    r9b,r9b
2ddd4c  88 44 24 20                    mov    BYTE PTR [rsp+0x20],al
2ddd50  48 8b d9                       mov    rbx,rcx
2ddd53  e8 f8 00 00 00                 call   0x2dde50
2ddd58  48 8b c3                       mov    rax,rbx
2ddd5b  48 83 c4 30                    add    rsp,0x30
2ddd5f  5b                             pop    rbx
2ddd60  c3                             ret

; heuristic leaf/code range 0x2d0ae4..0x2d0b08 unwind=0x0
2d0ae4  48 8b d1                       mov    rdx,rcx
2d0ae7  48 b9 25 23 22 84 e4 9c f2 cb  movabs rcx,0xcbf29ce484222325
2d0af1  e9 a6 fd ff ff                 jmp    0x2d089c
2d0af6  cc                             int3
2d0af7  cc                             int3
2d0af8  48 8b c2                       mov    rax,rdx
2d0afb  48 8b d1                       mov    rdx,rcx
2d0afe  48 8b c8                       mov    rcx,rax
2d0b01  e9 72 43 00 00                 jmp    0x2d4e78
2d0b06  cc                             int3
2d0b07  cc                             int3

; heuristic leaf/code range 0x2de2e8..0x2de300 unwind=0x0
2de2e8  4c 8b c2                       mov    r8,rdx
2de2eb  48 8b d1                       mov    rdx,rcx
2de2ee  48 b9 25 23 22 84 e4 9c f2 cb  movabs rcx,0xcbf29ce484222325
2de2f8  e9 7b 8d ff ff                 jmp    0x2d7078
2de2fd  cc                             int3
2de2fe  cc                             int3
2de2ff  cc                             int3

; pdata function 0x2d6fd4..0x2d701e unwind=0x3d2054
2d6fd4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d6fd9  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d6fde  57                             push   rdi
2d6fdf  48 83 ec 20                    sub    rsp,0x20
2d6fe3  48 8b f1                       mov    rsi,rcx
2d6fe6  48 8b fa                       mov    rdi,rdx
2d6fe9  48 8b ca                       mov    rcx,rdx
2d6fec  e8 f3 64 ff ff                 call   0x2cd4e4
2d6ff1  48 8b ce                       mov    rcx,rsi
2d6ff4  48 8b d8                       mov    rbx,rax
2d6ff7  e8 e8 64 ff ff                 call   0x2cd4e4
2d6ffc  4c 8b 4f 10                    mov    r9,QWORD PTR [rdi+0x10]
2d7000  48 8b c8                       mov    rcx,rax
2d7003  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
2d7007  4c 8b c3                       mov    r8,rbx
2d700a  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d700f  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d7014  48 83 c4 20                    add    rsp,0x20
2d7018  5f                             pop    rdi
2d7019  e9 6a a9 ff ff                 jmp    0x2d1988

; pdata function 0x2cc1d0..0x2cc1f7 unwind=0x3d2038
2cc1d0  40 53                          rex push rbx
2cc1d2  48 83 ec 20                    sub    rsp,0x20
2cc1d6  48 8b d9                       mov    rbx,rcx
2cc1d9  e8 92 01 00 00                 call   0x2cc370
2cc1de  48 8b c3                       mov    rax,rbx
2cc1e1  48 c7 43 10 00 00 00 00        mov    QWORD PTR [rbx+0x10],0x0
2cc1e9  48 c7 43 18 00 00 00 00        mov    QWORD PTR [rbx+0x18],0x0
2cc1f1  48 83 c4 20                    add    rsp,0x20
2cc1f5  5b                             pop    rbx
2cc1f6  c3                             ret

; heuristic leaf/code range 0x3cab84..0x3cab97 unwind=0x0
3cab84  33 d2                          xor    edx,edx
3cab86  8b c2                          mov    eax,edx
3cab88  66 39 11                       cmp    WORD PTR [rcx],dx
3cab8b  74 09                          je     0x3cab96
3cab8d  48 ff c0                       inc    rax
3cab90  66 39 14 41                    cmp    WORD PTR [rcx+rax*2],dx
3cab94  75 f7                          jne    0x3cab8d
3cab96  c3                             ret

; pdata function 0x2cb9fc..0x2cba4f unwind=0x3d2038
2cb9fc  40 53                          rex push rbx
2cb9fe  48 83 ec 20                    sub    rsp,0x20
2cba02  48 8b da                       mov    rbx,rdx
2cba05  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2cba0a  49 8b d0                       mov    rdx,r8
2cba0d  e8 56 08 00 00                 call   0x2cc268
2cba12  33 c0                          xor    eax,eax
2cba14  48 c7 83 80 00 00 00 01 00 00 00 mov    QWORD PTR [rbx+0x80],0x1
2cba1f  88 44 24 38                    mov    BYTE PTR [rsp+0x38],al
2cba23  48 8b cb                       mov    rcx,rbx
2cba26  48 8b 44 24 48                 mov    rax,QWORD PTR [rsp+0x48]
2cba2b  48 89 83 88 00 00 00           mov    QWORD PTR [rbx+0x88],rax
2cba32  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2cba36  89 83 d0 00 00 00              mov    DWORD PTR [rbx+0xd0],eax
2cba3c  48 8d 44 24 28                 lea    rax,[rsp+0x28]
2cba41  48 89 43 78                    mov    QWORD PTR [rbx+0x78],rax
2cba45  48 83 c4 20                    add    rsp,0x20
2cba49  5b                             pop    rbx
2cba4a  e9 85 21 10 00                 jmp    0x3cdbd4

; heuristic leaf/code range 0x2cc730..0x2cc737 unwind=0x0
2cc730  c6 02 37                       mov    BYTE PTR [rdx],0x37
2cc733  48 8b c2                       mov    rax,rdx
2cc736  c3                             ret

; pdata function 0x2cdca4..0x2cdcca unwind=0x3d2038
2cdca4  40 53                          rex push rbx
2cdca6  48 83 ec 20                    sub    rsp,0x20
2cdcaa  48 8b d9                       mov    rbx,rcx
2cdcad  e8 aa 08 00 00                 call   0x2ce55c
2cdcb2  84 c0                          test   al,al
2cdcb4  74 0b                          je     0x2cdcc1
2cdcb6  48 8b d3                       mov    rdx,rbx
2cdcb9  48 8b cb                       mov    rcx,rbx
2cdcbc  e8 1b fd ff ff                 call   0x2cd9dc
2cdcc1  48 8b c3                       mov    rax,rbx
2cdcc4  48 83 c4 20                    add    rsp,0x20
2cdcc8  5b                             pop    rbx
2cdcc9  c3                             ret

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

