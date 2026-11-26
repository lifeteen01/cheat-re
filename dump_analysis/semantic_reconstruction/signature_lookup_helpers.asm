; pdata function 0x334908..0x33494d unwind=0x3d2120
334908  40 53                          rex push rbx
33490a  55                             push   rbp
33490b  56                             push   rsi
33490c  57                             push   rdi
33490d  48 83 ec 38                    sub    rsp,0x38
334911  48 8b f1                       mov    rsi,rcx
334914  49 8b e8                       mov    rbp,r8
334917  48 8b ca                       mov    rcx,rdx
33491a  48 8b fa                       mov    rdi,rdx
33491d  e8 ae 9c f9 ff                 call   0x2ce5d0
334922  48 8b ce                       mov    rcx,rsi
334925  48 8b d8                       mov    rbx,rax
334928  e8 b7 8b f9 ff                 call   0x2cd4e4
33492d  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
334931  48 8b c8                       mov    rcx,rax
334934  4c 8b cf                       mov    r9,rdi
334937  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33493c  4c 8b c5                       mov    r8,rbp
33493f  e8 74 d0 f9 ff                 call   0x2d19b8
334944  48 83 c4 38                    add    rsp,0x38
334948  5f                             pop    rdi
334949  5e                             pop    rsi
33494a  5d                             pop    rbp
33494b  5b                             pop    rbx
33494c  c3                             ret

; heuristic leaf/code range 0x2d55e4..0x2d55ec unwind=0x0
2d55e4  e9 1b 26 00 00                 jmp    0x2d7c04
2d55e9  cc                             int3
2d55ea  cc                             int3
2d55eb  cc                             int3

; heuristic leaf/code range 0x320cf8..0x320d0c unwind=0x0
320cf8  48 8b 51 10                    mov    rdx,QWORD PTR [rcx+0x10]
320cfc  48 ff ca                       dec    rdx
320cff  e9 a4 62 fb ff                 jmp    0x2d6fa8
320d04  e9 cf 90 fb ff                 jmp    0x2d9dd8
320d09  cc                             int3
320d0a  cc                             int3
320d0b  cc                             int3

; pdata function 0x2d9498..0x2d94d9 unwind=0x3d2120
2d9498  40 53                          rex push rbx
2d949a  55                             push   rbp
2d949b  56                             push   rsi
2d949c  57                             push   rdi
2d949d  48 83 ec 38                    sub    rsp,0x38
2d94a1  48 8b d9                       mov    rbx,rcx
2d94a4  49 8b f9                       mov    rdi,r9
2d94a7  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
2d94ac  49 8b f0                       mov    rsi,r8
2d94af  48 8b ea                       mov    rbp,rdx
2d94b2  e8 ed 1e ff ff                 call   0x2cb3a4
2d94b7  4c 8b cf                       mov    r9,rdi
2d94ba  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2d94bf  4c 8b c6                       mov    r8,rsi
2d94c2  48 8b d3                       mov    rdx,rbx
2d94c5  48 8b cd                       mov    rcx,rbp
2d94c8  e8 23 ad ff ff                 call   0x2d41f0
2d94cd  48 8b c5                       mov    rax,rbp
2d94d0  48 83 c4 38                    add    rsp,0x38
2d94d4  5f                             pop    rdi
2d94d5  5e                             pop    rsi
2d94d6  5d                             pop    rbp
2d94d7  5b                             pop    rbx
2d94d8  c3                             ret

; heuristic leaf/code range 0x3352c0..0x3352e0 unwind=0x0
3352c0  e9 7b fd ff ff                 jmp    0x335040
3352c5  cc                             int3
3352c6  cc                             int3
3352c7  cc                             int3
3352c8  e9 13 00 00 00                 jmp    0x3352e0
3352cd  cc                             int3
3352ce  cc                             int3
3352cf  cc                             int3
3352d0  e9 6b fe ff ff                 jmp    0x335140
3352d5  cc                             int3
3352d6  cc                             int3
3352d7  cc                             int3
3352d8  e9 63 ff ff ff                 jmp    0x335240
3352dd  cc                             int3
3352de  cc                             int3
3352df  cc                             int3

; heuristic leaf/code range 0x3352d0..0x3352e0 unwind=0x0
3352d0  e9 6b fe ff ff                 jmp    0x335140
3352d5  cc                             int3
3352d6  cc                             int3
3352d7  cc                             int3
3352d8  e9 63 ff ff ff                 jmp    0x335240
3352dd  cc                             int3
3352de  cc                             int3
3352df  cc                             int3

; heuristic leaf/code range 0x3352d8..0x3352e0 unwind=0x0
3352d8  e9 63 ff ff ff                 jmp    0x335240
3352dd  cc                             int3
3352de  cc                             int3
3352df  cc                             int3

; heuristic leaf/code range 0x3352c8..0x3352e0 unwind=0x0
3352c8  e9 13 00 00 00                 jmp    0x3352e0
3352cd  cc                             int3
3352ce  cc                             int3
3352cf  cc                             int3
3352d0  e9 6b fe ff ff                 jmp    0x335140
3352d5  cc                             int3
3352d6  cc                             int3
3352d7  cc                             int3
3352d8  e9 63 ff ff ff                 jmp    0x335240
3352dd  cc                             int3
3352de  cc                             int3
3352df  cc                             int3

; heuristic leaf/code range 0x3352b8..0x3352e0 unwind=0x0
3352b8  e9 a3 f3 ff ff                 jmp    0x334660
3352bd  cc                             int3
3352be  cc                             int3
3352bf  cc                             int3
3352c0  e9 7b fd ff ff                 jmp    0x335040
3352c5  cc                             int3
3352c6  cc                             int3
3352c7  cc                             int3
3352c8  e9 13 00 00 00                 jmp    0x3352e0
3352cd  cc                             int3
3352ce  cc                             int3
3352cf  cc                             int3
3352d0  e9 6b fe ff ff                 jmp    0x335140
3352d5  cc                             int3
3352d6  cc                             int3
3352d7  cc                             int3
3352d8  e9 63 ff ff ff                 jmp    0x335240
3352dd  cc                             int3
3352de  cc                             int3
3352df  cc                             int3

; heuristic leaf/code range 0x334950..0x334960 unwind=0x0
334950  e9 63 07 00 00                 jmp    0x3350b8
334955  cc                             int3
334956  cc                             int3
334957  cc                             int3
334958  e9 97 01 00 00                 jmp    0x334af4
33495d  cc                             int3
33495e  cc                             int3
33495f  cc                             int3

; heuristic leaf/code range 0x334760..0x33479a unwind=0x0
334760  e9 17 04 00 00                 jmp    0x334b7c
334765  cc                             int3
334766  cc                             int3
334767  cc                             int3
334768  4c 8b c9                       mov    r9,rcx
33476b  41 f7 d0                       not    r8d
33476e  85 d2                          test   edx,edx
334770  74 21                          je     0x334793
334772  41 0f be 01                    movsx  eax,BYTE PTR [r9]
334776  49 ff c1                       inc    r9
334779  41 33 c0                       xor    eax,r8d
33477c  41 c1 e8 08                    shr    r8d,0x8
334780  0f b6 c8                       movzx  ecx,al
334783  48 8d 05 e6 06 f6 ff           lea    rax,[rip+0xfffffffffff606e6]        # 0x294e70
33478a  44 33 04 88                    xor    r8d,DWORD PTR [rax+rcx*4]
33478e  83 c2 ff                       add    edx,0xffffffff
334791  75 df                          jne    0x334772
334793  41 f7 d0                       not    r8d
334796  41 8b c0                       mov    eax,r8d
334799  c3                             ret

; heuristic leaf/code range 0x334958..0x334960 unwind=0x0
334958  e9 97 01 00 00                 jmp    0x334af4
33495d  cc                             int3
33495e  cc                             int3
33495f  cc                             int3

