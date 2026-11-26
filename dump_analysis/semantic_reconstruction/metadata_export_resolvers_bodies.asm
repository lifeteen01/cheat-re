; pdata function 0x332d48..0x332d6c unwind=0x3d2038
332d48  40 53                          rex push rbx
332d4a  48 83 ec 20                    sub    rsp,0x20
332d4e  e8 4d 17 00 00                 call   0x3344a0
332d53  48 8b d8                       mov    rbx,rax
332d56  48 8b 00                       mov    rax,QWORD PTR [rax]
332d59  48 85 c0                       test   rax,rax
332d5c  75 08                          jne    0x332d66
332d5e  e8 a1 0a 00 00                 call   0x333804
332d63  48 89 03                       mov    QWORD PTR [rbx],rax
332d66  48 83 c4 20                    add    rsp,0x20
332d6a  5b                             pop    rbx
332d6b  c3                             ret

; pdata function 0x332cdc..0x332d00 unwind=0x3d2038
332cdc  40 53                          rex push rbx
332cde  48 83 ec 20                    sub    rsp,0x20
332ce2  e8 a1 17 00 00                 call   0x334488
332ce7  48 8b d8                       mov    rbx,rax
332cea  48 8b 00                       mov    rax,QWORD PTR [rax]
332ced  48 85 c0                       test   rax,rax
332cf0  75 08                          jne    0x332cfa
332cf2  e8 09 09 00 00                 call   0x333600
332cf7  48 89 03                       mov    QWORD PTR [rbx],rax
332cfa  48 83 c4 20                    add    rsp,0x20
332cfe  5b                             pop    rbx
332cff  c3                             ret

; pdata function 0x332d90..0x332db4 unwind=0x3d2038
332d90  40 53                          rex push rbx
332d92  48 83 ec 20                    sub    rsp,0x20
332d96  e8 ad 16 00 00                 call   0x334448
332d9b  48 8b d8                       mov    rbx,rax
332d9e  48 8b 00                       mov    rax,QWORD PTR [rax]
332da1  48 85 c0                       test   rax,rax
332da4  75 08                          jne    0x332dae
332da6  e8 f5 02 00 00                 call   0x3330a0
332dab  48 89 03                       mov    QWORD PTR [rbx],rax
332dae  48 83 c4 20                    add    rsp,0x20
332db2  5b                             pop    rbx
332db3  c3                             ret

; pdata function 0x332e44..0x332e68 unwind=0x3d2038
332e44  40 53                          rex push rbx
332e46  48 83 ec 20                    sub    rsp,0x20
332e4a  e8 19 16 00 00                 call   0x334468
332e4f  48 8b d8                       mov    rbx,rax
332e52  48 8b 00                       mov    rax,QWORD PTR [rax]
332e55  48 85 c0                       test   rax,rax
332e58  75 08                          jne    0x332e62
332e5a  e8 f1 04 00 00                 call   0x333350
332e5f  48 89 03                       mov    QWORD PTR [rbx],rax
332e62  48 83 c4 20                    add    rsp,0x20
332e66  5b                             pop    rbx
332e67  c3                             ret

; pdata function 0x332e68..0x332e8c unwind=0x3d2038
332e68  40 53                          rex push rbx
332e6a  48 83 ec 20                    sub    rsp,0x20
332e6e  e8 dd 15 00 00                 call   0x334450
332e73  48 8b d8                       mov    rbx,rax
332e76  48 8b 00                       mov    rax,QWORD PTR [rax]
332e79  48 85 c0                       test   rax,rax
332e7c  75 08                          jne    0x332e86
332e7e  e8 c9 02 00 00                 call   0x33314c
332e83  48 89 03                       mov    QWORD PTR [rbx],rax
332e86  48 83 c4 20                    add    rsp,0x20
332e8a  5b                             pop    rbx
332e8b  c3                             ret

; pdata function 0x332e20..0x332e44 unwind=0x3d2038
332e20  40 53                          rex push rbx
332e22  48 83 ec 20                    sub    rsp,0x20
332e26  e8 7d 16 00 00                 call   0x3344a8
332e2b  48 8b d8                       mov    rbx,rax
332e2e  48 8b 00                       mov    rax,QWORD PTR [rax]
332e31  48 85 c0                       test   rax,rax
332e34  75 08                          jne    0x332e3e
332e36  e8 75 0a 00 00                 call   0x3338b0
332e3b  48 89 03                       mov    QWORD PTR [rbx],rax
332e3e  48 83 c4 20                    add    rsp,0x20
332e42  5b                             pop    rbx
332e43  c3                             ret

; pdata function 0x2ed1f4..0x2ed218 unwind=0x3d2038
2ed1f4  40 53                          rex push rbx
2ed1f6  48 83 ec 20                    sub    rsp,0x20
2ed1fa  e8 7d d6 02 00                 call   0x31a87c
2ed1ff  48 8b d8                       mov    rbx,rax
2ed202  48 8b 00                       mov    rax,QWORD PTR [rax]
2ed205  48 85 c0                       test   rax,rax
2ed208  75 08                          jne    0x2ed212
2ed20a  e8 2d 12 00 00                 call   0x2ee43c
2ed20f  48 89 03                       mov    QWORD PTR [rbx],rax
2ed212  48 83 c4 20                    add    rsp,0x20
2ed216  5b                             pop    rbx
2ed217  c3                             ret

; heuristic leaf/code range 0x334768..0x33479a unwind=0x0
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

