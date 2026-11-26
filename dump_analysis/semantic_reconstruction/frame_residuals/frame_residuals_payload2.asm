; heuristic leaf/code range 0x2d6fa0..0x2d6fa8 unwind=0x0
2d6fa0  e9 3f 9b ff ff                 jmp    0x2d0ae4
2d6fa5  cc                             int3
2d6fa6  cc                             int3
2d6fa7  cc                             int3

; heuristic leaf/code range 0x319b5c..0x319b64 unwind=0x0
319b5c  e9 03 25 fd ff                 jmp    0x2ec064
319b61  cc                             int3
319b62  cc                             int3
319b63  cc                             int3

; pdata function 0x2f7d68..0x2f7d9c unwind=0x3d2040
2f7d68  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2f7d6d  57                             push   rdi
2f7d6e  48 83 ec 20                    sub    rsp,0x20
2f7d72  8b da                          mov    ebx,edx
2f7d74  48 8b f9                       mov    rdi,rcx
2f7d77  e8 68 76 ff ff                 call   0x2ef3e4
2f7d7c  f6 c3 01                       test   bl,0x1
2f7d7f  74 0d                          je     0x2f7d8e
2f7d81  ba 20 00 00 00                 mov    edx,0x20
2f7d86  48 8b cf                       mov    rcx,rdi
2f7d89  e8 3e 26 09 00                 call   0x38a3cc
2f7d8e  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2f7d93  48 8b c7                       mov    rax,rdi
2f7d96  48 83 c4 20                    add    rsp,0x20
2f7d9a  5f                             pop    rdi
2f7d9b  c3                             ret

; heuristic leaf/code range 0x2df4e8..0x2df4f4 unwind=0x0
2df4e8  48 83 c1 10                    add    rcx,0x10
2df4ec  e9 03 d0 fe ff                 jmp    0x2cc4f4
2df4f1  cc                             int3
2df4f2  cc                             int3
2df4f3  cc                             int3

