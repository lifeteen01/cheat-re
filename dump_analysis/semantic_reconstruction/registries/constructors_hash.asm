; pdata function 0x2ed5f0..0x2ed663 unwind=0x3d2120
2ed5f0  40 53                          rex push rbx
2ed5f2  55                             push   rbp
2ed5f3  56                             push   rsi
2ed5f4  57                             push   rdi
2ed5f5  48 83 ec 38                    sub    rsp,0x38
2ed5f9  48 8b e9                       mov    rbp,rcx
2ed5fc  49 8b f9                       mov    rdi,r9
2ed5ff  49 8b c8                       mov    rcx,r8
2ed602  48 8b da                       mov    rbx,rdx
2ed605  e8 9a dd fd ff                 call   0x2cb3a4
2ed60a  48 8b d0                       mov    rdx,rax
2ed60d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2ed612  e8 1d 1c ff ff                 call   0x2df234
2ed617  48 8b cb                       mov    rcx,rbx
2ed61a  48 8b f0                       mov    rsi,rax
2ed61d  e8 82 dd fd ff                 call   0x2cb3a4
2ed622  48 8b cf                       mov    rcx,rdi
2ed625  48 8b d8                       mov    rbx,rax
2ed628  e8 77 dd fd ff                 call   0x2cb3a4
2ed62d  48 8b d0                       mov    rdx,rax
2ed630  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ed635  e8 6a dd fd ff                 call   0x2cb3a4
2ed63a  48 8b d5                       mov    rdx,rbp
2ed63d  b9 1c 00 00 00                 mov    ecx,0x1c
2ed642  48 8b f8                       mov    rdi,rax
2ed645  e8 e6 ee fd ff                 call   0x2cc530
2ed64a  8a 13                          mov    dl,BYTE PTR [rbx]
2ed64c  48 8b c8                       mov    rcx,rax
2ed64f  4c 8b cf                       mov    r9,rdi
2ed652  4c 8b c6                       mov    r8,rsi
2ed655  e8 e6 c9 ff ff                 call   0x2ea040
2ed65a  48 83 c4 38                    add    rsp,0x38
2ed65e  5f                             pop    rdi
2ed65f  5e                             pop    rsi
2ed660  5d                             pop    rbp
2ed661  5b                             pop    rbx
2ed662  c3                             ret

; pdata function 0x2deb40..0x2debb3 unwind=0x3d2120
2deb40  40 53                          rex push rbx
2deb42  55                             push   rbp
2deb43  56                             push   rsi
2deb44  57                             push   rdi
2deb45  48 83 ec 38                    sub    rsp,0x38
2deb49  48 8b e9                       mov    rbp,rcx
2deb4c  49 8b f9                       mov    rdi,r9
2deb4f  49 8b c8                       mov    rcx,r8
2deb52  48 8b da                       mov    rbx,rdx
2deb55  e8 4a c8 fe ff                 call   0x2cb3a4
2deb5a  48 8b d0                       mov    rdx,rax
2deb5d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2deb62  e8 cd 06 00 00                 call   0x2df234
2deb67  48 8b cb                       mov    rcx,rbx
2deb6a  48 8b f0                       mov    rsi,rax
2deb6d  e8 32 c8 fe ff                 call   0x2cb3a4
2deb72  48 8b cf                       mov    rcx,rdi
2deb75  48 8b d8                       mov    rbx,rax
2deb78  e8 27 c8 fe ff                 call   0x2cb3a4
2deb7d  48 8b d0                       mov    rdx,rax
2deb80  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2deb85  e8 1a c8 fe ff                 call   0x2cb3a4
2deb8a  48 8b d5                       mov    rdx,rbp
2deb8d  b9 50 00 00 00                 mov    ecx,0x50
2deb92  48 8b f8                       mov    rdi,rax
2deb95  e8 96 d9 fe ff                 call   0x2cc530
2deb9a  8a 13                          mov    dl,BYTE PTR [rbx]
2deb9c  48 8b c8                       mov    rcx,rax
2deb9f  4c 8b cf                       mov    r9,rdi
2deba2  4c 8b c6                       mov    r8,rsi
2deba5  e8 8e f1 ff ff                 call   0x2ddd38
2debaa  48 83 c4 38                    add    rsp,0x38
2debae  5f                             pop    rdi
2debaf  5e                             pop    rsi
2debb0  5d                             pop    rbp
2debb1  5b                             pop    rbx
2debb2  c3                             ret

; heuristic leaf/code range 0x2d6fa0..0x2d6fa8 unwind=0x0
2d6fa0  e9 3f 9b ff ff                 jmp    0x2d0ae4
2d6fa5  cc                             int3
2d6fa6  cc                             int3
2d6fa7  cc                             int3

; pdata function 0x2e2b78..0x2e2baa unwind=0x3d2040
2e2b78  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e2b7d  57                             push   rdi
2e2b7e  48 83 ec 20                    sub    rsp,0x20
2e2b82  48 8b f9                       mov    rdi,rcx
2e2b85  e8 4e 5f ff ff                 call   0x2d8ad8
2e2b8a  48 8b cf                       mov    rcx,rdi
2e2b8d  48 8b d8                       mov    rbx,rax
2e2b90  e8 57 ac fe ff                 call   0x2cd7ec
2e2b95  48 8b c8                       mov    rcx,rax
2e2b98  48 8b d3                       mov    rdx,rbx
2e2b9b  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2e2ba0  48 83 c4 20                    add    rsp,0x20
2e2ba4  5f                             pop    rdi
2e2ba5  e9 3e b7 ff ff                 jmp    0x2de2e8

; heuristic leaf/code range 0x2cef30..0x2cef40 unwind=0x0
2cef30  e9 9f 80 00 00                 jmp    0x2d6fd4
2cef35  cc                             int3
2cef36  cc                             int3
2cef37  cc                             int3
2cef38  e9 e3 80 00 00                 jmp    0x2d7020
2cef3d  cc                             int3
2cef3e  cc                             int3
2cef3f  cc                             int3

; heuristic leaf/code range 0x2cf7e4..0x2cf7ff unwind=0x0
2cf7e4  48 85 d2                       test   rdx,rdx
2cf7e7  74 12                          je     0x2cf7fb
2cf7e9  8a 01                          mov    al,BYTE PTR [rcx]
2cf7eb  48 8d 49 02                    lea    rcx,[rcx+0x2]
2cf7ef  41 88 00                       mov    BYTE PTR [r8],al
2cf7f2  49 ff c0                       inc    r8
2cf7f5  48 83 ea 01                    sub    rdx,0x1
2cf7f9  75 ee                          jne    0x2cf7e9
2cf7fb  49 8b c0                       mov    rax,r8
2cf7fe  c3                             ret

; pdata function 0x2cabc0..0x2cabd7 unwind=0x3d2038
2cabc0  40 53                          rex push rbx
2cabc2  48 83 ec 20                    sub    rsp,0x20
2cabc6  48 8b d9                       mov    rbx,rcx
2cabc9  e8 02 16 00 00                 call   0x2cc1d0
2cabce  48 8b c3                       mov    rax,rbx
2cabd1  48 83 c4 20                    add    rsp,0x20
2cabd5  5b                             pop    rbx
2cabd6  c3                             ret

; heuristic leaf/code range 0x2d8ad0..0x2d8add unwind=0x0
2d8ad0  e9 af 20 0f 00                 jmp    0x3cab84
2d8ad5  cc                             int3
2d8ad6  cc                             int3
2d8ad7  cc                             int3
2d8ad8  48 8b 41 10                    mov    rax,QWORD PTR [rcx+0x10]
2d8adc  c3                             ret

; pdata function 0x2d3fe0..0x2d3ff7 unwind=0x3d2038
2d3fe0  40 53                          rex push rbx
2d3fe2  48 83 ec 20                    sub    rsp,0x20
2d3fe6  48 8b d9                       mov    rbx,rcx
2d3fe9  e8 7a 82 ff ff                 call   0x2cc268
2d3fee  48 8b c3                       mov    rax,rbx
2d3ff1  48 83 c4 20                    add    rsp,0x20
2d3ff5  5b                             pop    rbx
2d3ff6  c3                             ret

