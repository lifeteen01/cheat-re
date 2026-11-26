; pdata function 0x36de40..0x36de80 unwind=0x3d2430
36de40  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
36de45  57                             push   rdi
36de46  48 83 ec 20                    sub    rsp,0x20
36de4a  48 8b f9                       mov    rdi,rcx
36de4d  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
36de52  e8 d9 61 f6 ff                 call   0x2d4030
36de57  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
36de5c  48 8b d8                       mov    rbx,rax
36de5f  e8 40 d5 f5 ff                 call   0x2cb3a4
36de64  4c 8b c0                       mov    r8,rax
36de67  48 8b d3                       mov    rdx,rbx
36de6a  48 8b cf                       mov    rcx,rdi
36de6d  e8 06 ff ff ff                 call   0x36dd78
36de72  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
36de77  48 8b c7                       mov    rax,rdi
36de7a  48 83 c4 20                    add    rsp,0x20
36de7e  5f                             pop    rdi
36de7f  c3                             ret

; pdata function 0x36cff8..0x36d038 unwind=0x3d2040
36cff8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36cffd  57                             push   rdi
36cffe  48 83 ec 20                    sub    rsp,0x20
36d002  48 8b f9                       mov    rdi,rcx
36d005  49 8b d8                       mov    rbx,r8
36d008  48 8b ca                       mov    rcx,rdx
36d00b  e8 94 e3 f5 ff                 call   0x2cb3a4
36d010  48 8b cb                       mov    rcx,rbx
36d013  48 63 10                       movsxd rdx,DWORD PTR [rax]
36d016  48 89 17                       mov    QWORD PTR [rdi],rdx
36d019  e8 86 e3 f5 ff                 call   0x2cb3a4
36d01e  48 8b d0                       mov    rdx,rax
36d021  48 8d 4f 08                    lea    rcx,[rdi+0x8]
36d025  e8 ce 95 fc ff                 call   0x3365f8
36d02a  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
36d02f  48 8b c7                       mov    rax,rdi
36d032  48 83 c4 20                    add    rsp,0x20
36d036  5f                             pop    rdi
36d037  c3                             ret

; pdata function 0x370168..0x37019c unwind=0x3d2040
370168  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37016d  57                             push   rdi
37016e  48 83 ec 20                    sub    rsp,0x20
370172  48 8b d9                       mov    rbx,rcx
370175  48 8b fa                       mov    rdi,rdx
370178  49 8b c8                       mov    rcx,r8
37017b  e8 24 b2 f5 ff                 call   0x2cb3a4
370180  4c 8b c0                       mov    r8,rax
370183  48 8b d7                       mov    rdx,rdi
370186  48 8b cb                       mov    rcx,rbx
370189  e8 a2 da ff ff                 call   0x36dc30
37018e  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
370193  48 8b c7                       mov    rax,rdi
370196  48 83 c4 20                    add    rsp,0x20
37019a  5f                             pop    rdi
37019b  c3                             ret

; pdata function 0x36e1cc..0x36e1fa unwind=0x3d2318
36e1cc  40 53                          rex push rbx
36e1ce  48 83 ec 30                    sub    rsp,0x30
36e1d2  48 8b d9                       mov    rbx,rcx
36e1d5  48 8b ca                       mov    rcx,rdx
36e1d8  e8 c7 d1 f5 ff                 call   0x2cb3a4
36e1dd  4c 8b c0                       mov    r8,rax
36e1e0  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36e1e5  48 8b cb                       mov    rcx,rbx
36e1e8  e8 db f4 ff ff                 call   0x36d6c8
36e1ed  48 8b 00                       mov    rax,QWORD PTR [rax]
36e1f0  48 83 c0 18                    add    rax,0x18
36e1f4  48 83 c4 30                    add    rsp,0x30
36e1f8  5b                             pop    rbx
36e1f9  c3                             ret

; pdata function 0x370118..0x370168 unwind=0x3d2054
370118  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37011d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
370122  57                             push   rdi
370123  48 83 ec 20                    sub    rsp,0x20
370127  48 8b f2                       mov    rsi,rdx
37012a  49 8b d8                       mov    rbx,r8
37012d  49 8b d0                       mov    rdx,r8
370130  48 8b f9                       mov    rdi,rcx
370133  e8 6c a6 f7 ff                 call   0x2ea7a4
370138  4c 8b c0                       mov    r8,rax
37013b  48 8b d3                       mov    rdx,rbx
37013e  48 8b cf                       mov    rcx,rdi
370141  e8 1e d4 ff ff                 call   0x36d564
370146  4c 8b c0                       mov    r8,rax
370149  48 8d 4f 08                    lea    rcx,[rdi+0x8]
37014d  48 8b d6                       mov    rdx,rsi
370150  e8 af 73 f6 ff                 call   0x2d7504
370155  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
37015a  48 8b c6                       mov    rax,rsi
37015d  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
370162  48 83 c4 20                    add    rsp,0x20
370166  5f                             pop    rdi
370167  c3                             ret

; heuristic leaf/code range 0x36e460..0x36e471 unwind=0x0
36e460  48 b8 65 57 5a 51 5e 48 4e 3e  movabs rax,0x3e4e485e515a5765
36e46a  48 89 02                       mov    QWORD PTR [rdx],rax
36e46d  48 8b c2                       mov    rax,rdx
36e470  c3                             ret

; pdata function 0x2e3614..0x2e363a unwind=0x3d2038
2e3614  40 53                          rex push rbx
2e3616  48 83 ec 20                    sub    rsp,0x20
2e361a  48 8b d9                       mov    rbx,rcx
2e361d  e8 c2 9c ff ff                 call   0x2dd2e4
2e3622  84 c0                          test   al,al
2e3624  74 0b                          je     0x2e3631
2e3626  48 8b d3                       mov    rdx,rbx
2e3629  48 8b cb                       mov    rcx,rbx
2e362c  e8 cf fd ff ff                 call   0x2e3400
2e3631  48 8b c3                       mov    rax,rbx
2e3634  48 83 c4 20                    add    rsp,0x20
2e3638  5b                             pop    rbx
2e3639  c3                             ret

; pdata function 0x2d792c..0x2d7947 unwind=0x3d2038
2d792c  40 53                          rex push rbx
2d792e  48 83 ec 20                    sub    rsp,0x20
2d7932  48 83 c1 08                    add    rcx,0x8
2d7936  48 8b da                       mov    rbx,rdx
2d7939  e8 0a 00 00 00                 call   0x2d7948
2d793e  48 8b c3                       mov    rax,rbx
2d7941  48 83 c4 20                    add    rsp,0x20
2d7945  5b                             pop    rbx
2d7946  c3                             ret

; pdata function 0x2d796c..0x2d7987 unwind=0x3d2038
2d796c  40 53                          rex push rbx
2d796e  48 83 ec 20                    sub    rsp,0x20
2d7972  48 83 c1 08                    add    rcx,0x8
2d7976  48 8b da                       mov    rbx,rdx
2d7979  e8 22 00 00 00                 call   0x2d79a0
2d797e  48 8b c3                       mov    rax,rbx
2d7981  48 83 c4 20                    add    rsp,0x20
2d7985  5b                             pop    rbx
2d7986  c3                             ret

; pdata function 0x36ff84..0x36ffec unwind=0x3d206c
36ff84  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
36ff89  57                             push   rdi
36ff8a  48 83 ec 20                    sub    rsp,0x20
36ff8e  48 83 79 10 00                 cmp    QWORD PTR [rcx+0x10],0x0
36ff93  48 8b d9                       mov    rbx,rcx
36ff96  74 49                          je     0x36ffe1
36ff98  e8 73 7e f6 ff                 call   0x2d7e10
36ff9d  48 c1 e8 03                    shr    rax,0x3
36ffa1  48 3b 43 10                    cmp    rax,QWORD PTR [rbx+0x10]
36ffa5  76 14                          jbe    0x36ffbb
36ffa7  48 8b 53 08                    mov    rdx,QWORD PTR [rbx+0x8]
36ffab  48 8b cb                       mov    rcx,rbx
36ffae  4c 8b c2                       mov    r8,rdx
36ffb1  48 8b 12                       mov    rdx,QWORD PTR [rdx]
36ffb4  e8 5f fe ff ff                 call   0x36fe18
36ffb9  eb 26                          jmp    0x36ffe1
36ffbb  48 8d 4b 08                    lea    rcx,[rbx+0x8]
36ffbf  e8 28 00 00 00                 call   0x36ffec
36ffc4  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
36ffc9  48 8b cb                       mov    rcx,rbx
36ffcc  e8 9b 79 f6 ff                 call   0x2d796c
36ffd1  48 8b 53 20                    mov    rdx,QWORD PTR [rbx+0x20]
36ffd5  4c 8b c0                       mov    r8,rax
36ffd8  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
36ffdc  e8 c3 2a f6 ff                 call   0x2d2aa4
36ffe1  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
36ffe6  48 83 c4 20                    add    rsp,0x20
36ffea  5f                             pop    rdi
36ffeb  c3                             ret

